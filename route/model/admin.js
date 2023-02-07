var db = require("../../db");
var fs = require("fs");
const MySQLStore = require("express-mysql-session");

// 관리자 페이지
exports.member = (req, res) => {
  sql = "select * from user order by user_no desc";
  db.query(sql, (err, user_list) => {
    if (err) {
      console.log(err);
    } else {
      res.render("member", { user_list: user_list });
    }
  });
};

exports.product = (req, res) => {
  sql = "select * from product order by product_no desc";
  db.query(sql, (err, product_list) => {
    if (err) {
      console.log(err);
    } else {
      sql = "select * from product_option order by option_name desc";
      db.query(sql, (err, option_list) => {
        if (err) {
          console.log(err);
        } else {
          res.render("product", {
            product_list: product_list,
            option_list: option_list,
          });
        }
      });
    }
  });
};

exports.product_add = (req, res) => {
  res.render("productadd");
};

exports.product_add_post = (req, res) => {
  product_name = req.body.product_name;
  image_name = req.file.filename;
  product_type = req.body.product_type;
  product_brand = req.body.product_brand;
  product_price = req.body.product_price;

  option_array = [];
  option_number_null = req.body.option_number_null;
  option_number_small = req.body.option_number_small;
  option_number_medium = req.body.option_number_medium;
  option_number_large = req.body.option_number_large;

  product_content = req.body.product_content;

  sql =
    "insert into product(product_name, product_brand, product_type, product_content, product_price) values(?, ?, ?, ?, ?)";
  db.query(
    sql,
    [product_name, product_brand, product_type, product_content, product_price],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        if (result.insertId) {
          product_no = result.insertId;

          sql =
            "insert into product_image(product_no, image_name) values(?, ?)";
          db.query(sql, [product_no, image_name], (err, result) => {
            if (err) {
              console.log(err);
            } else {
              if (result.insertId) {
                option_array.push([product_no, "선택안함", option_number_null]);
                option_array.push([product_no, "S", option_number_small]);
                option_array.push([product_no, "M", option_number_medium]);
                option_array.push([product_no, "L", option_number_large]);

                sql =
                  "insert into product_option(product_no, option_name, option_number) values ?";
                db.query(sql, [option_array], (err, result) => {
                  if (err) {
                    console.log(err);
                  } else {
                    res.send(
                      "<script>alert('상품 등록이 완료되었습니다.'); document.location.href = '/admin/product/'</script>"
                    );
                  }
                });
              }
            }
          });
        }
      }
    }
  );
};

exports.product_delete = (req, res) => {
  product_no = req.body.product_no;

  // 상품 테이블에서 삭제
  sql = "delete from product where product_no = ?";
  db.query(sql, product_no, (err, result) => {
    if (err) {
      console.log(err);
    } else {
      // 상품 옵션 테이블에서 삭제
      sql = "delete from product_option where product_no = ?";
      db.query(sql, product_no, (err, result) => {
        if (err) {
          console.log(err);
        } else {
          sql = "select * from product_image where product_no = ?";
          db.query(sql, product_no, (err, product_image) => {
            if (err) {
              console.log(err);
            } else {
              try {
                //동기 방식으로 파일 삭제
                fs.unlinkSync(
                  "resources/uploadFiles/" + product_image[0].image_name
                );
              } catch (error) {
                if (error.code == "ENOENT") {
                  console.log("파일 삭제 Error 발생");
                }
              }
              sql = "delete from product_image where product_no = ?";
              db.query(sql, product_no, (err, result) => {
                if (err) {
                  console.log(err);
                } else {
                  res.send({ product_delete_success: true });
                }
              });
            }
          });
        }
      });
    }
  });
};

exports.product_modify = (req, res) => {
  product_no = req.params.product_no;
  product_option_list_array = [0, 0, 0, 0];

  sql = "select * from product natural join product_image where product_no = ?";
  db.query(sql, product_no, (err, product) => {
    if (err) {
      console.log(err);
    } else {
      sql =
        "select option_name, option_number from product_option natural join product where product_no = ?";
      db.query(sql, product_no, (err, product_option_list) => {
        if (err) {
          console.log(err);
        } else {
          product_option_list.forEach(function (product_option) {
            option_name = product_option.option_name;
            option_number = product_option.option_number;

            if (option_name == "선택안함") {
              product_option_list_array[0] = option_number;
            }

            if (option_name == "S") {
              product_option_list_array[1] = option_number;
            }

            if (option_name == "M") {
              product_option_list_array[2] = option_number;
            }

            if (option_name == "L") {
              product_option_list_array[3] = option_number;
            }
          });

          res.render("productmodify", {
            product: product,
            product_option_list: product_option_list_array,
          });
        }
      });
    }
  });
};

exports.product_modify_post = (req, res) => {
  product_no = req.params.product_no;

  product_name = req.body.product_name;
  image_name = req.file.filename;
  product_type = req.body.product_type;
  product_brand = req.body.product_brand;
  product_price = req.body.product_price;

  option_array = [];
  option_number_null = req.body.option_number_null;
  option_number_small = req.body.option_number_small;
  option_number_medium = req.body.option_number_medium;
  option_number_large = req.body.option_number_large;

  product_content = req.body.product_content;

  sql =
    "update product set product_name = ?, product_brand = ?, product_type = ?, product_content = ?, product_price = ? where product_no = ?";
  db.query(
    sql,
    [
      product_name,
      product_brand,
      product_type,
      product_content,
      product_price,
      product_no,
    ],
    (err, result) => {
      if (err) {
        console.log(err);
      } else {
        if (result.affectedRows) {
          sql = "update product_image set image_name = ? where product_no = ?";
          db.query(sql, [image_name, product_no], (err, result) => {
            if (err) {
              console.log(err);
            } else {
              if (result.affectedRows) {
                sql =
                  "select option_no, option_name from product_option where product_no = ?";
                db.query(sql, product_no, (err, option_list) => {
                  if (err) {
                    console.log(err);
                  } else {
                    option_list.forEach(function (option) {
                      option_no = option.option_no;
                      option_name = option.option_name;

                      option_name == "선택안함"
                        ? option_array.push([option_number_null, option_no])
                        : null;
                      option_name == "S"
                        ? option_array.push([option_number_small, option_no])
                        : null;
                      option_name == "M"
                        ? option_array.push([option_number_medium, option_no])
                        : null;
                      option_name == "L"
                        ? option_array.push([option_number_large, option_no])
                        : null;
                    });

                    sql =
                      "update product_option set option_number = ? where option_no = ?";
                    option_array.forEach(function (option) {
                      db.query(sql, [option[0], option[1]], (err, result) => {
                        if (err) {
                          console.log(err);
                        } else {
                        }
                      });
                    });

                    res.send(
                      "<script>alert('상품 수정이 완료되었습니다.'); document.location.href = '/admin/product/'</script>"
                    );
                  }
                });
              }
            }
          });
        }
      }
    }
  );
};

exports.order = (req, res) => {
  sql =
    "select * from orders natural join user natural join order_detail natural join product natural join product_option";
  db.query(sql, (err, order_list) => {
    if (err) {
      console.log(err);
    } else {
      res.render("order", { order_list: order_list });
    }
  });
};

exports.order_change_detail_status = (req, res) => {
  detail_no = req.body.detail_no;
  detail_status = req.body.detail_status;

  sql = "update order_detail set detail_status = ? where detail_no = ?";
  db.query(sql, [detail_status, detail_no], (err, result) => {
    if (err) {
      console.log(err);
    } else {
    }
  });
};
