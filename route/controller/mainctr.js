const router = require("express").Router();
const main = require("../model/main");

router.get("/", main.main);

module.exports = router;
