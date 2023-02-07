const router = require("express").Router();
const admin = require("../model/admin");
const multer = require("multer");
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "resources/uploadFiles");
  },
  filename: function (req, file, cb) {
    timestamp = new Date().getTime();
    file.originalname = Buffer.from(file.originalname, "latin1").toString(
      "utf8"
    );

    cb(null, timestamp + "-" + file.originalname);
  },
});
const upload = multer({
  storage: storage,
});

module.exports = router;

router.get("/member", admin.member);
router.get("/product", admin.product);
router.get("/product/add", admin.product_add);
router.get("/product/modify/:product_no", admin.product_modify);
router.get("/order", admin.order);

router.post(
  "/product/add",
  upload.single("product_image"),
  admin.product_add_post
);

router.post(
  "/product/modify/:product_no",
  upload.single("product_image"),
  admin.product_modify_post
);

router.post("/product/delete", admin.product_delete);

router.post("/order/change_detail_status", admin.order_change_detail_status);
