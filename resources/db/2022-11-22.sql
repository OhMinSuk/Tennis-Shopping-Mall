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

-- 테이블 tennis.basket 구조 내보내기
CREATE TABLE IF NOT EXISTS `basket` (
  `basket_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_no` int(11) NOT NULL,
  `product_no` int(11) NOT NULL,
  `option_no` int(11) NOT NULL,
  `option_number` int(11) NOT NULL,
  PRIMARY KEY (`basket_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.basket:~0 rows (대략적) 내보내기
DELETE FROM `basket`;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;

-- 테이블 tennis.order 구조 내보내기
CREATE TABLE IF NOT EXISTS `order` (
  `order_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_no` int(11) NOT NULL,
  `order_status` varchar(15) NOT NULL,
  `order_date` timestamp NOT NULL,
  PRIMARY KEY (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.order:~0 rows (대략적) 내보내기
DELETE FROM `order`;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- 테이블 tennis.product 구조 내보내기
CREATE TABLE IF NOT EXISTS `product` (
  `product_no` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_brand` varchar(50) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `product_content` text DEFAULT NULL,
  `product_price` int(11) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.product:~10 rows (대략적) 내보내기
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`product_no`, `product_name`, `product_brand`, `product_type`, `product_content`, `product_price`) VALUES
	(1, '헤드 그라핀 터치 래디컬 프로 1/4 2017', '헤드', 'racket', '헤드 그라핀 터치 래디컬 프로는 모든 플레이어 유형에 완벽한 파워, 컨트롤 및 스핀 조합을 제공합니다. 혁신적인 그라핀 터치 기술을 도입하여 놀라운 터치와 단단한 느낌을 제공합니다.', 168000),
	(2, '요넥스 이존 에이스 260g 1/4 2022', '요넥스', 'racket', '요넥스 이존 에이스는 빠른 스윙과 쉬운 타겟팅을 제공하며 요넥스 특유의 느낌을 제공합니다. 파워와 편안함을 추가하여 코트를 지휘하려는 만능 플레이어를 위한 테니스라켓입니다. 타원형 프레스 샤프트는 플레이어에게 더 많은 스핀, 제어 및 감각을 제공합니다.', 136000),
	(3, '요넥스 브이코어 프로 97L G/PU 290g 1/4 2021', '요넥스', 'racket', '요넥스 브이코어 프로 97L는 아이소메트릭 디자인으로 스윗스팟이 7% 늘어났으며, 메인 스트링과 크로스 스트링의 교차를 최적화하였습니다. 또한 그립 내부를 감싸는 신축성 있는 메쉬 소재로 원치 않는 진동을 걸러내고 터치와 정밀도를 향상시킵니다.', 264000),
	(4, '헤드 스피드 프로 310g 1/4 2022', '헤드', 'racket', '헤드 스피드 프로는 속도감 있는 빠른 스윙에 강점을 둔 라켓입니다. 빠르게 진행되는 게임에서 최적의 컨트롤을 원하는 플레이어에게 추천합니다.', 372000),
	(5, '헤드 그라핀 360+ 그래비티 MP 295g 3/8 2021', '헤드', 'racket', '헤드 그라핀 360+ 그래비티 MP는 새로운 그라핀 구조인 그라핀 360+로 태어난 전에 없던 DNA를 가지고 출시되었습니다. 스윗 스팟이 넓어 편안하고 쉬운 테니스 플레이가 가능하며, 헤드 프레임이 라운드형인 것과 크로스 스트링의 기존 스피드와 프레스티지 대비 5mm 늘려 더 넓은 스윗스팟이 형성된 것이 특징입니다.', 337000),
	(6, '바볼랏 퓨어 에어로 팀 285g 16x19 1/4 2023', '바볼랏', 'racket', '완전히 새로운 세대의 플레이어를 위한 2023 퓨어 에어로가 돌아 왔습니다. 퓨어 에어로 2023은 최적의 충격 흡수를 위해 3시, 9시 방향 및 핸들 위치에 전략적으로 배치된 NF2 테크놀로지를 추가했습니다. 또한, 프랑스 항공 우주 회사인 SMAC에서 제공하는 Pure Feel SMACWRAP 기술을 포함한 기술이 사용되어 탁월한 타구 감각을 선사합니다.', 299000),
	(7, '헤드 익스트림 팀 275g 1/4 2023', '헤드', 'racket', '새롭게 돌아온 익스트림 2023으로 극한의 스핀을 끌어올려 코트 위의 상대를 혼란스럽게 만들어 보세요. 혁신적인 보조 테크놀로지로 업그레이드 되어, 뛰어난 임팩트를 발휘하고 스핀과 파워를 요구하는 퍼포먼스 플레이어에게 매우 적합합니다. 추가 스핀을 가능하게 하는 샤프트와 더불어 독특한 스핀 그로밋을 갖추고 있어 보다 많이 스트링을 움직일 수 있으며 임팩트 시 강력한 트램펄린 효과를 발휘합니다.', 315000),
	(8, '헤드 그라핀 360+ 래디컬 라이트 260g 1/4 2021', '헤드', 'racket', '헤드 그라핀 360+ 래디컬 시리즈, 헤드의 프랜차이즈 시리즈 중 가장 인기가 많은 라켓 중 하나로 안드레 아가시/앤디 머레이/슬로안 스티븐스/테일러 프리츠 등 다양한 상위 투어 선수들의 선택을 받았던 라켓입니다. 새로운 래디컬 시리즈로 2021년 코트 위에서 승리를 경험하세요.', 297000),
	(9, '바볼랏 퓨어 드라이브 300g 3/8 2021', '바볼랏', 'racket', '바볼랏의 가장 현대적인 테니스 플레이어 라켓에 새로운 장을 선보입니다. 퓨어 드라이브의 이전 버전과 마찬가지로 폭발적인 파워가 특징인 퓨어 드라이브 시리즈는 새로운 HTR 시스템으로 업그레이드 되어 한층 더 타구 시 공에 효율적인 에너지를 전달할 수 있습니다. 바볼랏의 탄소 층 사이에 있는 얇고 유연한 점탄성 고무인 SWX Pure Feel에 더 많은 공간을 할당하였습니다.', 270000),
	(10, '헤드 그라핀 터치 프레스티지 투어 18x19 305g 1/4 2017', '헤드', 'racket', '1987년 첫 선을 보인 이후로 헤드의 최상급 모델로 자리 잡으며, 결코 쉽게 다루지 못하지만 그 매력에 많은 사람들의 로망이 되었으면, 궁극의 라켓으로 자리 매김한 프레스티지, 그라핀 터치 기술을 특징으로 하는 프레스티지는 극한의 힘과 궁극의 정교함을 제공하는 궁극의 투어 무기입니다.', 187000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- 테이블 tennis.product_image 구조 내보내기
CREATE TABLE IF NOT EXISTS `product_image` (
  `image_no` int(11) NOT NULL AUTO_INCREMENT,
  `product_no` int(11) NOT NULL,
  `image_name` text NOT NULL,
  PRIMARY KEY (`image_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.product_image:~10 rows (대략적) 내보내기
DELETE FROM `product_image`;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` (`image_no`, `product_no`, `image_name`) VALUES
	(1, 1, '1.jpg'),
	(2, 2, '2.jpg'),
	(3, 3, '3.jpg'),
	(4, 4, '4.jpg'),
	(5, 5, '5.jpg'),
	(6, 6, '6.jpg'),
	(7, 7, '7.jpg'),
	(8, 8, '8.jpg'),
	(9, 9, '9.jpg'),
	(10, 10, '10.jpg');
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;

-- 테이블 tennis.product_option 구조 내보내기
CREATE TABLE IF NOT EXISTS `product_option` (
  `option_no` int(11) NOT NULL AUTO_INCREMENT,
  `product_no` int(11) NOT NULL,
  `option_name` varchar(10) NOT NULL,
  PRIMARY KEY (`option_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.product_option:~0 rows (대략적) 내보내기
DELETE FROM `product_option`;
/*!40000 ALTER TABLE `product_option` DISABLE KEYS */;
INSERT INTO `product_option` (`option_no`, `product_no`, `option_name`) VALUES
	(1, 1, '선택안함'),
	(2, 2, '선택안함'),
	(3, 3, '선택안함'),
	(4, 4, '선택안함'),
	(5, 5, '선택안함'),
	(6, 6, '선택안함'),
	(7, 7, '선택안함'),
	(8, 8, '선택안함'),
	(9, 9, '선택안함'),
	(10, 10, '선택안함');
/*!40000 ALTER TABLE `product_option` ENABLE KEYS */;

-- 테이블 tennis.sessions 구조 내보내기
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.sessions:~4 rows (대략적) 내보내기
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
	('1TSHHcLTgi1JP5HQLRWNlPy0AnuEXdek', 1669211857, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('NBHxWWHZzW2DVQX-Zd7q_DiWW6UGA_Fs', 1669203910, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('SrcsI9AyuXkbtkYWm_4BT-chmX6eCQHq', 1669211790, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('mLcm7o7JodaDW4bkxkESwpMb9c_xdcXZ', 1669209377, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('meScKCafrQEElCkSoiMcM23NcC1Nh5S7', 1669212578, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('obMhR7xcCJtmsbRBf4IwEVCPgVwjY-aU', 1669212652, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('vLTXs7ay_ZV9zHLWXCJ3P92ggNWe8OB6', 1669203331, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- 테이블 tennis.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `user_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `user_pw` varchar(30) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_phone` varchar(25) NOT NULL,
  `user_address` text NOT NULL,
  `user_lv` int(11) NOT NULL,
  PRIMARY KEY (`user_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.user:~1 rows (대략적) 내보내기
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_no`, `user_id`, `user_pw`, `user_name`, `user_phone`, `user_address`, `user_lv`) VALUES
	(1, 'test', 'test', 'test', '', 'test@test.com', 0),
	(9, 'test2', 'test', 'test2', '010-1234-1234', '광주광역시', 0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
