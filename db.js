var mysql = require("mysql");
var db = mysql.createConnection({
  host: "127.0.0.1", //db주소
  user: "root", //아이디
  password: "457312", //비밀번호
  database: "tennis", //스키마이름
  charset: "utf8", //문자셋
});
// db.connect(); //접속
module.exports = db;
//alldaysql의 정보를 담을 db의 설정파일
