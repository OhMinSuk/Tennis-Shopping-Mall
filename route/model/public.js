var db = require("../../db");

// 테니스 라켓 페이지
exports.racket = (req, res) => {
  product_type = req.params.product_type;
  product_brand = req.query.product_brand || null;

  switch (product_type) {
    case "racket":
      type_name = "테니스 라켓";
      break;
    case "etc":
      type_name = "테니스 용품";
      break;
    case "cloth":
      type_name = "테니스 의류";
      break;
    default:
      type_name = "전체";
      break;
  }

  where = "";

  sql = "select distinct product_brand from product where product_type = ?";
  db.query(sql, product_type, (err, product_brand_list) => {
    if (product_brand != null) {
      where += " AND product_brand = '" + product_brand + "'";
    }
    sql =
      "select * from product natural join product_image where product_type = '" +
      product_type +
      "'" +
      where;
    db.query(sql, (err, product_list) => {
      if (err) {
        console.log(err);
      } else {
        res.render("productlist", {
          product_type: product_type,
          type_name: type_name,
          product_brand_list: product_brand_list,
          product_list: product_list,
        });
      }
    });
  });
};

exports.productdetail = (req, res) => {
  product_no = req.query.product_no;

  sql = "select * from product natural join product_image where product_no = ?";
  db.query(sql, product_no, (err, product) => {
    if (err) {
      console.log(err);
    } else {
      sql = "select * from product_option where product_no = ?";
      db.query(sql, product_no, (err, product_option_list) => {
        if (err) {
          console.log(err);
        } else {
          res.render("productdetail", {
            product: product[0],
            product_option_list: product_option_list,
          });
        }
      });
    }
  });
};

exports.productbuy = (req, res) => {
  user_no = req.session.user_no || null;
  product_buy_item_list = JSON.parse(req.body.product_buy_item_list);
  whereAreYouFrom = req.body.whereAreYouFrom;

  if (user_no == null) {
    res.send({ loginRequired: true });
  } else {
    sql = "insert into orders(user_no) values (?)";
    db.query(sql, user_no, (err, result) => {
      if (err) {
        console.log(err);
      } else {
        sql = "select max(order_no) as order_no from orders where user_no = ?";
        db.query(sql, user_no, (err, result) => {
          if (err) {
            console.log(err);
          } else {
            latest_order_no = result[0].order_no;

            product_buy_item_array = [];
            product_buy_after_delete_basket_item_array = [];

            Object.keys(product_buy_item_list).forEach(function (key) {
              product_no = product_buy_item_list[key].product_no;
              option_no = product_buy_item_list[key].option_no;
              detail_price = product_buy_item_list[key].detail_price;
              detail_status = "배송 준비중";

              product_buy_item_array.push([
                product_no,
                latest_order_no,
                option_no,
                detail_price,
                detail_status,
              ]);

              if (whereAreYouFrom == "basket") {
                basket_no = product_buy_item_list[key].basket_no;
                product_buy_after_delete_basket_item_array.push([
                  basket_no,
                  user_no,
                ]);
              }
            });

            sql =
              "update product_option set option_number = option_number - 1 where option_no = ?";
            db.query(sql, option_no, (err, result) => {
              if (err) {
                console.log(err);
              } else {
                sql =
                  "insert into order_detail(product_no, order_no, option_no, detail_price, detail_status) values ?";
                db.query(sql, [product_buy_item_array], (err, result2) => {
                  if (err) {
                    console.log(err);
                  } else {
                    if (
                      result2.affectedRows == product_buy_item_array.length &&
                      whereAreYouFrom == "basket"
                    ) {
                      sql =
                        "delete from basket where (basket_no, user_no) in (?)";
                      db.query(
                        sql,
                        [product_buy_after_delete_basket_item_array],
                        (err, result3) => {
                          if (err) {
                            console.log(err);
                          } else {
                            if (result2.affectedRows == result3.affectedRows) {
                              res.send({ productBuySuccess: true });
                            }
                          }
                        }
                      );
                    } else {
                      res.send({ productBuySuccess: true });
                    }
                  }
                });
              }
            });
          }
        });
      }
    });
  }
};

exports.productbasket = (req, res) => {
  user_no = req.session.user_no || null;

  product_buy_item_list = JSON.parse(req.body.product_buy_item_list);

  product_no = product_buy_item_list[0].product_no;
  option_no = product_buy_item_list[0].option_no;

  if (user_no == null) {
    res.send({ loginRequired: true });
  } else {
    sql = "insert into basket(user_no, product_no, option_no) values(?, ?, ?)";
    db.query(sql, [user_no, product_no, option_no], (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send({ basketInsertSuccess: true });
      }
    });
  }
};
