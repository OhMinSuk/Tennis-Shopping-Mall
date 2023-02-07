-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.11.0-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- tennis 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `tennis` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tennis`;

-- 테이블 tennis.file 구조 내보내기
CREATE TABLE IF NOT EXISTS `file` (
  `file_no` int(11) NOT NULL AUTO_INCREMENT,
  `board_no` int(11) NOT NULL,
  `file_name` text NOT NULL,
  PRIMARY KEY (`file_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.file:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` (`file_no`, `board_no`, `file_name`) VALUES
	(1, 1, '20221001-014429_20210820_022215.jpg'),
	(2, 2, '20221001-015618_20220309_151218.jpg'),
	(3, 3, '20221001-024017_20220218_161520.jpg');
/*!40000 ALTER TABLE `file` ENABLE KEYS */;

-- 테이블 tennis.sessions 구조 내보내기
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.sessions:~8 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
	('1BaQq3zrKanXihYKwHOlFqwmqcSiemwf', 1668086183, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('Sy-81YQJs15KmG3geLtDjJ4ncZVGlOc6', 1668083005, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('oO83uwOEWAG22qFHugbdlCKGYiAQ4hrU', 1668084975, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('s32Tkg69gchlgts8XWanPYDu0nstyOQQ', 1668086184, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('tct2urdeG7Kj6lz0KU4aWWB6wnZHsoId', 1668087135, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"user_no":1,"user_name":"test","user_lv":0}'),
	('xMAGqg5oOuZDbtJXjaUv7LGv4aSnpeRz', 1668084884, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('y9lpyWS3cd5nXZCST3O6O680ksg_y10k', 1668084227, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('zxska0wW28cmv_zp_0MAyf3UMfYFXgJX', 1668083522, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- 테이블 tennis.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `user_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `user_pw` varchar(30) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_address` text NOT NULL,
  `user_lv` int(11) NOT NULL,
  PRIMARY KEY (`user_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.user:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_no`, `user_id`, `user_pw`, `user_name`, `user_address`, `user_lv`) VALUES
	(1, 'test', 'test', 'test', 'test@test.com', 0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
