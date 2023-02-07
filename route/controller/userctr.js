const router = require("express").Router();
const user = require("../model/user");

router.get("/login", user.login);
router.get("/join", user.join);
router.get("/logout", user.logout);
router.get("/orderlist", user.orderlist);
router.get("/basket", user.basket);

router.post("/login", user.loginPost);
router.post("/join", user.joinPost);
router.post("/basket/delete", user.deleteBasketItem);

module.exports = router;
