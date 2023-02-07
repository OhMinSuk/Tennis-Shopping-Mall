const router = require("express").Router();
const public = require("../model/public");

router.get(
  ["/productdetail", "/productdetail?product_no=:product_no"],
  public.productdetail
);
router.get(
  ["/:product_type", "/:product_type?product_brand=:product_brand"],
  public.racket
);

router.post("/product/buy", public.productbuy);
router.post("/product/basket", public.productbasket);

module.exports = router;
