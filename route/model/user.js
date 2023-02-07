var db = require("../../db");

// 메인 페이지
exports.login = (req, res) => {
  res.render("login");
};

exports.join = (req, res) => {
  res.render("join");
};

exports.logout = (req, res) => {
  req.session.destroy(function () {
    res.redirect("/");
  });
};

exports.orderlist = (req, res) => {
  user_no = req.session.user_no;

  sql = "select * from orders where user_no = ? order by order_no desc";
  db.query(sql, user_no, (err, order_list) => {
    if (err) {
      console.log(err);
    } else {
      sql =
        "select * from order_detail natural join orders natural join product natural join product_image natural join product_option where user_no = ?";
      db.query(sql, user_no, (err, order_detail_list) => {
        if (err) {
          console.log(err);
        } else {
          res.render("orderlist", {
            order_list: order_list,
            order_detail_list: order_detail_list,
          });
        }
      });
    }
  });
};

exports.basket = (req, res) => {
  user_no = req.session.user_no;

  sql =
    "select * from basket natural join product natural join product_image natural join product_option where user_no = ? order by basket_no desc";
  db.query(sql, user_no, (err, basket_list) => {
    if (err) {
      console.log(err);
    } else {
      res.render("basket", { basket_list: basket_list });
    }
  });
};

exports.deleteBasketItem = (req, res) => {
  user_no = req.session.user_no;

  if (user_no) {
    deleteBasketItemList = JSON.parse(req.body.basket_item_list);
    deleteBasketItemList.forEach(function (basket_no) {
      sql = "delete from basket where basket_no = ? and user_no = ?";
      db.query(sql, [basket_no, user_no], (err, result) => {
        if (err) {
          console.log(err);
        }
      });
    });

    res.send(true);
  }
};

exports.loginPost = (req, res) => {
  user_id = req.body.user_id;
  user_pw = req.body.user_pw;

  sql =
    "select *, count(*) as rowCount from user where user_id = ? and user_pw = ?";
  db.query(sql, [user_id, user_pw], (err, result) => {
    if (err) {
      console.log(err);
      res.send({ sqlError: err });
    } else {
      if (result[0].rowCount) {
        req.session.user_no = result[0].user_no;
        req.session.user_name = result[0].user_name;
        req.session.user_lv = result[0].user_lv;

        res.send({ user_name: result[0].user_name });
      } else {
        res.send({ loginFailed: true });
      }
    }
  });
};

exports.joinPost = (req, res) => {
  user_id = req.body.user_id;
  user_pw = req.body.user_pw;
  user_name = req.body.user_name;
  user_phone = req.body.user_phone;
  user_address = req.body.user_address;

  sql = "select count(*) as rowCount from user where user_id = ?";
  db.query(sql, [user_id], (err, result) => {
    if (err) {
      console.log(err);
      res.send({ sqlError: err });
    } else {
      if (result[0].rowCount) {
        res.send({ overlapUserId: true });
      } else {
        sql =
          "insert into user(user_id, user_pw, user_name, user_phone, user_address, user_lv) values(?, ?, ?, ?, ?, 0)";
        db.query(
          sql,
          [user_id, user_pw, user_name, user_phone, user_address],
          (err, result) => {
            if (err) {
              console.log(err);
              res.send({ sqlError: true });
            } else {
              res.send({ joinSuccess: true });
            }
          }
        );
      }
    }
  });
};
