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
  PRIMARY KEY (`basket_no`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.basket:~0 rows (대략적) 내보내기
DELETE FROM `basket`;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;

-- 테이블 tennis.detail 구조 내보내기
CREATE TABLE IF NOT EXISTS `detail` (
  `detail_no` int(11) NOT NULL,
  `product_no` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `option_no` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `option_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 tennis.detail:~0 rows (대략적) 내보내기
DELETE FROM `detail`;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail` ENABLE KEYS */;

-- 테이블 tennis.image 구조 내보내기
CREATE TABLE IF NOT EXISTS `image` (
  `image_no` int(11) NOT NULL,
  `product_no` int(11) NOT NULL,
  `file_show_name` text NOT NULL,
  `file_save_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 tennis.orders 구조 내보내기
CREATE TABLE IF NOT EXISTS `orders` (
  `order_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_no` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.orders:~59 rows (대략적) 내보내기
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`order_no`, `user_no`, `order_date`) VALUES
	(22, 1, '2022-12-05 23:23:39'),
	(23, 1, '2022-12-05 23:24:09'),
	(24, 1, '2022-12-05 23:24:41'),
	(25, 1, '2022-12-05 23:26:38'),
	(26, 1, '2022-12-05 23:29:01'),
	(27, 1, '2022-12-05 23:29:41'),
	(28, 1, '2022-12-05 23:30:20'),
	(29, 1, '2022-12-05 23:30:57'),
	(30, 1, '2022-12-05 23:32:13'),
	(31, 1, '2022-12-05 23:58:10'),
	(32, 1, '2022-12-05 23:58:29'),
	(33, 1, '2022-12-05 23:59:48'),
	(34, 1, '2022-12-06 00:00:11'),
	(35, 1, '2022-12-06 00:02:23'),
	(36, 1, '2022-12-06 00:05:32'),
	(37, 1, '2022-12-06 00:08:36'),
	(38, 1, '2022-12-06 00:08:49'),
	(39, 1, '2022-12-06 00:09:16'),
	(40, 1, '2022-12-06 00:10:18'),
	(41, 1, '2022-12-06 00:10:56'),
	(42, 1, '2022-12-06 00:12:15'),
	(43, 1, '2022-12-06 00:12:54'),
	(44, 1, '2022-12-06 00:13:42'),
	(45, 1, '2022-12-06 00:14:13'),
	(46, 1, '2022-12-06 00:23:26'),
	(47, 1, '2022-12-06 00:26:48'),
	(48, 1, '2022-12-06 00:33:53'),
	(49, 1, '2022-12-06 00:33:53'),
	(50, 1, '2022-12-06 00:36:13'),
	(51, 1, '2022-12-06 00:39:52'),
	(52, 1, '2022-12-06 00:39:52'),
	(53, 1, '2022-12-06 00:39:54'),
	(54, 1, '2022-12-06 00:39:55'),
	(55, 1, '2022-12-06 00:40:12'),
	(56, 1, '2022-12-06 00:40:12'),
	(57, 1, '2022-12-06 00:40:32'),
	(58, 1, '2022-12-06 00:43:15'),
	(59, 1, '2022-12-06 00:43:15'),
	(60, 1, '2022-12-06 00:43:28'),
	(61, 1, '2022-12-06 00:43:28'),
	(62, 1, '2022-12-06 00:43:46'),
	(63, 1, '2022-12-06 00:43:46'),
	(64, 1, '2022-12-06 00:44:20'),
	(65, 1, '2022-12-06 00:45:02'),
	(66, 1, '2022-12-06 00:48:55'),
	(67, 1, '2022-12-06 00:49:10'),
	(68, 1, '2022-12-06 00:49:34'),
	(69, 1, '2022-12-06 00:49:38'),
	(70, 1, '2022-12-06 00:49:41'),
	(71, 1, '2022-12-06 00:49:41'),
	(72, 1, '2022-12-06 00:49:43'),
	(73, 1, '2022-12-06 00:49:46'),
	(74, 1, '2022-12-06 00:52:19'),
	(75, 1, '2022-12-06 00:52:20'),
	(76, 1, '2022-12-06 00:52:39'),
	(77, 1, '2022-12-06 00:52:39'),
	(78, 1, '2022-12-06 00:52:55'),
	(79, 1, '2022-12-06 00:53:04'),
	(80, 1, '2022-12-06 00:53:24');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- 테이블 tennis.order_detail 구조 내보내기
CREATE TABLE IF NOT EXISTS `order_detail` (
  `detail_no` int(11) NOT NULL AUTO_INCREMENT,
  `product_no` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `option_no` int(11) NOT NULL,
  `detail_price` int(11) NOT NULL,
  `detail_status` varchar(15) NOT NULL,
  PRIMARY KEY (`detail_no`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.order_detail:~127 rows (대략적) 내보내기
DELETE FROM `order_detail`;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` (`detail_no`, `product_no`, `order_no`, `option_no`, `detail_price`, `detail_status`) VALUES
	(28, 2, 22, 2, 136000, '배송 준비중'),
	(29, 2, 22, 2, 136000, '배송 준비중'),
	(30, 2, 22, 2, 136000, '배송 준비중'),
	(31, 2, 23, 2, 136000, '배송 준비중'),
	(32, 2, 23, 2, 136000, '배송 준비중'),
	(33, 2, 23, 2, 136000, '배송 준비중'),
	(34, 2, 24, 2, 136000, '배송 준비중'),
	(35, 2, 24, 2, 136000, '배송 준비중'),
	(36, 2, 24, 2, 136000, '배송 준비중'),
	(37, 2, 25, 2, 136000, '배송 준비중'),
	(38, 2, 25, 2, 136000, '배송 준비중'),
	(39, 2, 25, 2, 136000, '배송 준비중'),
	(40, 2, 26, 2, 136000, '배송 준비중'),
	(41, 2, 26, 2, 136000, '배송 준비중'),
	(42, 2, 26, 2, 136000, '배송 준비중'),
	(43, 2, 27, 2, 136000, '배송 준비중'),
	(44, 2, 27, 2, 136000, '배송 준비중'),
	(45, 2, 27, 2, 136000, '배송 준비중'),
	(46, 2, 28, 2, 136000, '배송 준비중'),
	(47, 2, 28, 2, 136000, '배송 준비중'),
	(48, 2, 28, 2, 136000, '배송 준비중'),
	(49, 2, 29, 2, 136000, '배송 준비중'),
	(50, 2, 29, 2, 136000, '배송 준비중'),
	(51, 2, 29, 2, 136000, '배송 준비중'),
	(52, 2, 30, 2, 136000, '배송 준비중'),
	(53, 2, 30, 2, 136000, '배송 준비중'),
	(54, 2, 30, 2, 136000, '배송 준비중'),
	(55, 2, 31, 2, 136000, '배송 준비중'),
	(56, 2, 31, 2, 136000, '배송 준비중'),
	(57, 2, 31, 2, 136000, '배송 준비중'),
	(58, 2, 32, 2, 136000, '배송 준비중'),
	(59, 2, 32, 2, 136000, '배송 준비중'),
	(60, 2, 32, 2, 136000, '배송 준비중'),
	(61, 2, 33, 2, 136000, '배송 준비중'),
	(62, 2, 33, 2, 136000, '배송 준비중'),
	(63, 2, 33, 2, 136000, '배송 준비중'),
	(64, 2, 34, 2, 136000, '배송 준비중'),
	(65, 2, 34, 2, 136000, '배송 준비중'),
	(66, 2, 34, 2, 136000, '배송 준비중'),
	(67, 2, 35, 2, 136000, '배송 준비중'),
	(68, 2, 35, 2, 136000, '배송 준비중'),
	(69, 2, 35, 2, 136000, '배송 준비중'),
	(70, 2, 36, 2, 136000, '배송 준비중'),
	(71, 2, 36, 2, 136000, '배송 준비중'),
	(72, 2, 36, 2, 136000, '배송 준비중'),
	(73, 2, 38, 2, 136000, '배송 준비중'),
	(74, 1, 42, 1, 168000, '배송 준비중'),
	(75, 1, 42, 1, 168000, '배송 준비중'),
	(76, 2, 42, 2, 136000, '배송 준비중'),
	(77, 1, 43, 1, 168000, '배송 준비중'),
	(78, 1, 43, 1, 168000, '배송 준비중'),
	(79, 2, 43, 2, 136000, '배송 준비중'),
	(80, 1, 44, 1, 168000, '배송 준비중'),
	(81, 1, 44, 1, 168000, '배송 준비중'),
	(82, 2, 44, 2, 136000, '배송 준비중'),
	(83, 1, 45, 1, 168000, '배송 준비중'),
	(84, 1, 45, 1, 168000, '배송 준비중'),
	(85, 2, 45, 2, 136000, '배송 준비중'),
	(86, 1, 46, 1, 168000, '배송 준비중'),
	(87, 11, 47, 11, 95000, '배송 준비중'),
	(88, 1, 47, 1, 168000, '배송 준비중'),
	(89, 1, 47, 1, 168000, '배송 준비중'),
	(90, 2, 47, 2, 136000, '배송 준비중'),
	(91, 1, 47, 1, 168000, '배송 준비중'),
	(92, 11, 50, 11, 95000, '배송 준비중'),
	(93, 1, 50, 1, 168000, '배송 준비중'),
	(94, 1, 50, 1, 168000, '배송 준비중'),
	(95, 2, 50, 2, 136000, '배송 준비중'),
	(96, 1, 50, 1, 168000, '배송 준비중'),
	(97, 23, 57, 28, 109000, '배송 준비중'),
	(98, 23, 57, 27, 109000, '배송 준비중'),
	(99, 13, 57, 13, 150000, '배송 준비중'),
	(100, 2, 57, 2, 136000, '배송 준비중'),
	(101, 23, 58, 28, 109000, '배송 준비중'),
	(102, 23, 58, 27, 109000, '배송 준비중'),
	(103, 13, 58, 13, 150000, '배송 준비중'),
	(104, 2, 58, 2, 136000, '배송 준비중'),
	(105, 23, 59, 28, 109000, '배송 준비중'),
	(106, 23, 59, 27, 109000, '배송 준비중'),
	(107, 13, 59, 13, 150000, '배송 준비중'),
	(108, 2, 59, 2, 136000, '배송 준비중'),
	(109, 23, 60, 28, 109000, '배송 준비중'),
	(110, 23, 60, 27, 109000, '배송 준비중'),
	(111, 13, 60, 13, 150000, '배송 준비중'),
	(112, 2, 60, 2, 136000, '배송 준비중'),
	(113, 23, 61, 28, 109000, '배송 준비중'),
	(114, 23, 61, 27, 109000, '배송 준비중'),
	(115, 13, 61, 13, 150000, '배송 준비중'),
	(116, 2, 61, 2, 136000, '배송 준비중'),
	(117, 23, 62, 28, 109000, '배송 준비중'),
	(118, 23, 62, 27, 109000, '배송 준비중'),
	(119, 13, 62, 13, 150000, '배송 준비중'),
	(120, 2, 62, 2, 136000, '배송 준비중'),
	(121, 23, 63, 28, 109000, '배송 준비중'),
	(122, 23, 63, 27, 109000, '배송 준비중'),
	(123, 13, 63, 13, 150000, '배송 준비중'),
	(124, 2, 63, 2, 136000, '배송 준비중'),
	(125, 23, 64, 28, 109000, '배송 준비중'),
	(126, 23, 64, 27, 109000, '배송 준비중'),
	(127, 13, 64, 13, 150000, '배송 준비중'),
	(128, 2, 64, 2, 136000, '배송 준비중'),
	(129, 23, 65, 28, 109000, '배송 준비중'),
	(130, 23, 65, 27, 109000, '배송 준비중'),
	(131, 13, 65, 13, 150000, '배송 준비중'),
	(132, 2, 65, 2, 136000, '배송 준비중'),
	(133, 23, 66, 28, 109000, '배송 준비중'),
	(134, 23, 66, 27, 109000, '배송 준비중'),
	(135, 13, 66, 13, 150000, '배송 준비중'),
	(136, 2, 66, 2, 136000, '배송 준비중'),
	(137, 23, 67, 28, 109000, '배송 준비중'),
	(138, 23, 67, 27, 109000, '배송 준비중'),
	(139, 13, 67, 13, 150000, '배송 준비중'),
	(140, 2, 67, 2, 136000, '배송 준비중'),
	(141, 1, 68, 1, 168000, '배송 준비중'),
	(142, 1, 69, 1, 168000, '배송 준비중'),
	(143, 1, 71, 1, 168000, '배송 준비중'),
	(144, 1, 71, 1, 168000, '배송 준비중'),
	(145, 1, 72, 1, 168000, '배송 준비중'),
	(146, 1, 73, 1, 168000, '배송 준비중'),
	(147, 1, 74, 1, 168000, '배송 준비중'),
	(148, 1, 75, 1, 168000, '배송 준비중'),
	(149, 1, 77, 1, 168000, '배송 준비중'),
	(150, 1, 77, 1, 168000, '배송 준비중'),
	(151, 1, 78, 1, 168000, '배송 준비중'),
	(152, 1, 79, 1, 168000, '배송 준비중'),
	(153, 2, 79, 2, 136000, '배송 준비중'),
	(154, 13, 80, 13, 150000, '배송 준비중');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;

-- 테이블 tennis.product 구조 내보내기
CREATE TABLE IF NOT EXISTS `product` (
  `product_no` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_brand` varchar(50) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `product_content` text NOT NULL,
  `product_price` int(11) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.product:~27 rows (대략적) 내보내기
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
	(10, '헤드 그라핀 터치 프레스티지 투어 18x19 305g 1/4 2017', '헤드', 'racket', '1987년 첫 선을 보인 이후로 헤드의 최상급 모델로 자리 잡으며, 결코 쉽게 다루지 못하지만 그 매력에 많은 사람들의 로망이 되었으면, 궁극의 라켓으로 자리 매김한 프레스티지, 그라핀 터치 기술을 특징으로 하는 프레스티지는 극한의 힘과 궁극의 정교함을 제공하는 궁극의 투어 무기입니다.', 187000),
	(11, '윌슨 롤랑가로스 투어 백팩 2022', '가방', 'etc', '클레이 코트에서 더욱 돋보이는 윌슨 롤랑가로스 투어 백팩은 우아하고 고급스러운 스타일을 완성해 줍니다. 최대 2개의 라켓을 수납할 수 있습니다.', 95000),
	(12, '윌슨 롤랑가로스 투어 15팩 2022', '가방', 'etc', '클레이 코트에서 더욱 돋보이는 윌슨 롤랑가로스 투어 15PK는 우아하고 고급스러운 스타일을 완성해 줍니다. 최대 15개의 라켓을 수납할 수 있는 3개의 메인 수납공간이 있습니다.', 170000),
	(13, '바볼랏 퓨어 에어로 라파 라켓홀더 2단 가방 2022', '가방', 'etc', '바볼랏 퓨어 에어로 라파 라켓홀더 2단 가방은 디자인과 실용적인 기능과 함께 더욱 편안하고 라켓을 잘 보관할 수 있도록 지속적으로 개선되어진 제품입니다. 완전히 단열된 이 가방에는 2개의 메인 수납 공간, 새로운 투명 신발 수납 공간 및 액세서리용 사이드 포켓이 있습니다. 바볼랏 퓨어 에어로 라파 라켓홀더 2단 가방은 보호 및 손쉬운 유지 관리를 보장하는 방수 외부 소재가 특징입니다.', 150000),
	(14, '헤드 투어 XT 테니스볼 3개입', '공', 'etc', '헤드 투어 XT 테니스볼은 헤드의 새로운 프리미엄 공입니다. 2년 이상 동안 실험실과 코트에서 프로 테니스 선수와 함께 엄격하게 개발 및 테스트되었으며, Impact Core 기술 덕분에 독특한 터치와 손쉬운 제어를 제공하는 볼이 탄생했습니다.', 10000),
	(15, '윌슨 스타터 폼볼 6개입', '공', 'etc', '윌슨 스타터 폼 볼은 초보자용 스펀지 볼로 테니스를 처음 입문하는 플레이어 혹은 영유아, 주니어, 청소년에게 권장하는 테니스 입문 볼입니다.', 29700),
	(16, '윌슨 스타터 레드 T볼 12개입', '공', 'etc', '윌슨 스타터 폼 볼은 초보자용 스펀지 볼로 테니스를 처음 입문하는 플레이어 혹은 영유아, 주니어, 청소년에게 권장하는 테니스 입문 볼입니다.', 29700),
	(17, '요넥스 AC165EX 바이브레이션 스토퍼 블루/블랙', '댐프너', 'etc', '요넥스 댐퍼는 임팩트 시 접촉으로부터 원하지 않는 진동을 없애는데 도움이 됩니다.', 7500),
	(18, '윌슨 롤랑가로스 컬렉션 보울 댐프너 2022', '댐프너', 'etc', '롤랑가로스 대회에서 영감을 받아 제작된 이 댐프너는 테니스 볼 타구 시 충격을 효과적으로 흡수하고 진동을 줄여 줍니다.', 110000),
	(19, '요넥스 AC221 프리미엄 레더 그립 블랙', '그립', 'etc', '요넥스의 프리미엄 레더 그립인 AC221은 뛰어난 착용감과 빠른 건조력으로 많은 테니스인들의 사랑을 받아온 리플레이스먼트 그립입니다. 천연가죽소재로 더욱 편안하고 안정감 있는 그립감을 제공합니다.', 17000),
	(20, '바볼랏 내추럴 그립 브라운', '그립', 'etc', '빠른 흡수력을 자랑하는 바볼랏 내추럴 그립 브라운은 테니스, 배드민턴, 스쿼시에 주로 사용되는 그립입니다. 손에 착 감기는 최고의 그립감과 최상의 경기를 위한 최선의 선택이 될 것 입니다.', 20000),
	(21, '나이키 나이키코트 드라이 핏 플리스 헤리티지 후디', '나이키', 'cloth', '나이키 나이키코트 드라이 핏 플리스 헤리티지 후디는 코트에서 거리까지, 어디에서나 어울리는 아이템으로, 매끈한 프렌치 테리 소재는 부드럽고 따뜻한 느낌을 줍니다. 옆면과 소매 아래의 신축성 있는 골지 소재가 움직일 수 있는 충분한 공간을 제공합니다. 재생 폴리에스테르와 유기농 면 섬유를 혼방하여 75% 이상 지속 가능한 소재로 제작하였습니다.', 99000),
	(22, '나이키 나이키코트 드라이 핏 헤리티지 프렌치 팬츠', '나이키', 'cloth', '나이키 나이키코트 드라이 핏 헤리티지 프렌치 팬츠는 코트 안팎에서 포근하고 따뜻한 착용감을 선사하는 헤리티지 프렌치 테리 팬츠입니다. 이 팬츠를 입으면 중간 무게감과 여유로운 착용감으로 자유롭게 움직일 수 있습니다.', 85000),
	(23, '나이키 나이키코트 어드밴티지 재킷', '나이키', 'cloth', '나이키코트 어드밴티지 재킷으로 본 경기 시작 전, 몸을 풀어보세요. 역동적인 움직임을 추구한 설계로 부드럽고 신축성 있는 패브릭 재질로 인해 좌/우로 움직이기 편하고 스윙 폼을 잡기도 편안합니다.', 109000),
	(24, '휠라 헤리티지 반팔 티셔츠', '휠라', 'cloth', '휠라 헤리티지 숏슬리브 티셔츠는 테니스 연습복으로도 착용이 가능하며, 테니스를 칠 때 뿐만 아닌 일상 속에서도 편안함을 유지시켜 줍니다.', 72000),
	(25, '휠라 헤리티지 에센셜 우븐 팬츠', '휠라', 'cloth', '휠라 헤리티지 에센셜 우븐 팬츠를 통해 테니스 코트 위에서의 스타일을 챙겨보세요. 휠라 테니스의 헤리티지 디자인과 편안하고 시원한 느낌을 착용자에게 선사해줍니다.', 72000),
	(26, '언더아머 T2G 폴로', '언더아머', 'cloth', '언더아머 T2G 폴로는 착용감이 매우 우수하고 편안하며 땀 배출, 열 처리 효과를 제공하고, 기량 발휘에 한층 더 도움을 줍니다.', 59000),
	(27, '언더아머 T2G 폴로 Black', '언더아머', 'cloth', '언더아머 T2G 폴로는 착용감이 매우 우수하고 편안하며 땀 배출, 열 처리 효과를 제공하고, 기량 발휘에 한층 더 도움을 줍니다.', 59000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- 테이블 tennis.product_image 구조 내보내기
CREATE TABLE IF NOT EXISTS `product_image` (
  `image_no` int(11) NOT NULL AUTO_INCREMENT,
  `product_no` int(11) NOT NULL,
  `image_name` text NOT NULL,
  PRIMARY KEY (`image_no`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.product_image:~27 rows (대략적) 내보내기
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
	(10, 10, '10.jpg'),
	(11, 11, '11.jpg'),
	(12, 12, '12.jpg'),
	(13, 13, '13.jpg'),
	(14, 14, '14.jpg'),
	(15, 15, '15.jpg'),
	(16, 16, '16.jpg'),
	(17, 17, '17.jpg'),
	(18, 18, '18.jpg'),
	(19, 19, '19.jpg'),
	(20, 20, '20.jpg'),
	(21, 21, '21.jpg'),
	(22, 22, '22.jpg'),
	(23, 23, '23.jpg'),
	(24, 24, '24.jpg'),
	(25, 25, '25.jpg'),
	(26, 26, '26.jpg'),
	(27, 27, '27.jpg');
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;

-- 테이블 tennis.product_option 구조 내보내기
CREATE TABLE IF NOT EXISTS `product_option` (
  `option_no` int(11) NOT NULL AUTO_INCREMENT,
  `product_no` int(11) NOT NULL,
  `option_name` varchar(10) NOT NULL,
  `option_number` int(11) NOT NULL,
  PRIMARY KEY (`option_no`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.product_option:~41 rows (대략적) 내보내기
DELETE FROM `product_option`;
/*!40000 ALTER TABLE `product_option` DISABLE KEYS */;
INSERT INTO `product_option` (`option_no`, `product_no`, `option_name`, `option_number`) VALUES
	(1, 1, '선택안함', 47),
	(2, 2, '선택안함', 56),
	(3, 3, '선택안함', 100),
	(4, 4, '선택안함', 100),
	(5, 5, '선택안함', 100),
	(6, 6, '선택안함', 100),
	(7, 7, '선택안함', 100),
	(8, 8, '선택안함', 100),
	(9, 9, '선택안함', 100),
	(10, 10, '선택안함', 100),
	(11, 11, '선택안함', 100),
	(12, 12, '선택안함', 100),
	(13, 13, '선택안함', 99),
	(14, 14, '선택안함', 100),
	(15, 15, '선택안함', 100),
	(16, 16, '선택안함', 100),
	(17, 17, '선택안함', 100),
	(18, 18, '선택안함', 100),
	(19, 19, '선택안함', 100),
	(20, 20, '선택안함', 100),
	(21, 21, 'S', 100),
	(22, 21, 'M', 100),
	(23, 21, 'L', 100),
	(24, 22, 'S', 100),
	(25, 22, 'M', 100),
	(26, 22, 'L', 100),
	(27, 23, 'S', 100),
	(28, 23, 'M', 100),
	(29, 23, 'L', 100),
	(30, 24, 'S', 100),
	(31, 24, 'M', 100),
	(32, 24, 'L', 100),
	(33, 25, 'S', 100),
	(34, 25, 'M', 100),
	(35, 25, 'L', 100),
	(36, 26, 'S', 100),
	(37, 26, 'M', 100),
	(38, 26, 'L', 100),
	(39, 27, 'S', 100),
	(40, 27, 'M', 100),
	(41, 27, 'L', 100);
/*!40000 ALTER TABLE `product_option` ENABLE KEYS */;

-- 테이블 tennis.sessions 구조 내보내기
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.sessions:~15 rows (대략적) 내보내기
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
	('0vuup08jJ3IChzbR-4rmcG_ckbGfO23W', 1670327434, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('6JW6sB0tMTZ9_JvWgIFJuMFQCeQkqwpq', 1670342818, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('6fIB6LBfOklSVlQj8BkkOpQlKY3D_rAf', 1670329037, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('79B5EapH9s4ubgU2Gm-C4GgGeMnCtiK3', 1670352844, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('8poJRUFFXf4pSN4L8JRaZlhYb8JMqdkg', 1670331170, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('9XEaPKsI5410h3-FfrotmdPeACB-Qj3Q', 1670336494, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('9u0TlWSF_Ni0H2nhbtqtExE1-ZZARNtb', 1670347269, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('B0N_yfjoJsVC6RXJRcW2KX8MhhvlBSqx', 1670351379, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('I6Mt0-BWzELyhRWkeJPec2USArVmwn-1', 1670355868, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('JGeg8S8mo7BHCzRx_n05ZJLX-OtrwPat', 1670345733, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('LyiCUXwM0hYZA2duIvenKMfSg94kxrNM', 1670332833, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('MI_-ES25toBXBPtOxZr8JxY8RF501Gqe', 1670328427, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('P-GQNrOV9hKifNGxN_smgUN-FVoTqtlG', 1670342588, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('QLaXsQSoIF5THyANY2i1WYy9Kfonor-3', 1670345448, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('RzFh4HsFPaNUxQII-ggWKXkw5u6mBHo9', 1670347050, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('UVpr199esJ9SPmgQI9KrdCkB_CmY_HT7', 1670350266, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('WyOnE4VNRnVek-vWZjoWV62AHiCKG_yQ', 1670352792, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('XilmxPBvUDvZZvWKxrhKurTioo9CzI7t', 1670333736, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('Zv_yTAx9ilntMrfts0Cv_sv_SnI5qDxK', 1670328628, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('aiWU-cz0MSDZ2I0bFeUF1AoKi1fdb-h6', 1670336337, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('cynVi7QNMdvYSkhj7v8CwJYIXBbEpRpD', 1670329792, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('e4a1WrBRox319-okSiMJgE-Q81Sc9NOd', 1670342817, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('e9hP7AdVtOqNr3DdCHVC9Rfqey0mGa4i', 1670338336, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('fqZg5PdAsO-tq7spyNxd6dCktHF1gqSj', 1670346039, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('g7qUSZRkkfePMstJGHU93KVsKB1e0eZp', 1670350977, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('hHa_bQgPmDsM-pqf-FhGwXx4cuWK1sXn', 1670329792, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('hr3DW3EhWwMGPz9AOe7fBiGAvk-g_3un', 1670350174, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('iO2tPx4veMYhTfnOD1DfooXk0DCYAzgl', 1670342514, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"user_no":11,"user_name":"관리자","user_lv":1}'),
	('ieSd9s1oHbK7x7vwP1Co7RM0p_i5wAzR', 1670345324, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('jPXnIU86GdfYhXbKvNaQ8UOkvY-34D1f', 1670352355, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('kHOiVj-UiWAViZDFV8L1rKJNajZ4KtTw', 1670352844, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('lo9c7reXeXNB0tFxL9ucS1Dk7PlxnoPT', 1670353523, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('nE7vjUMby48tZCx_FUI_PSDKGXtYVS9o', 1670342817, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('oWiEp5eCY7ph1bbl5eo8Qf45_7eFiD56', 1670344214, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('qb67Qz-1XK6mvdP-D_61Y4LTev2URY2U', 1670337079, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('qsjiXD8pema_Qo5a0_uUyu7xHqbcsWWN', 1670329793, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}'),
	('xrhHeGqHcG1pY7krWZOjJXwFuBdYPTPh', 1670342458, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- 테이블 tennis.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `user_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `user_pw` varchar(30) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_address` text NOT NULL,
  `user_phone` varchar(18) NOT NULL,
  `user_lv` int(1) NOT NULL,
  PRIMARY KEY (`user_no`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 tennis.user:~3 rows (대략적) 내보내기
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_no`, `user_id`, `user_pw`, `user_name`, `user_address`, `user_phone`, `user_lv`) VALUES
	(1, 'test', 'test', 'test', 'test@test.com', '', 0),
	(10, 'test3', 'test', 'test3', '010-1234-1234', '010-1234-1234', 0),
	(11, 'admin', 'admin', '관리자', '관리자광역시', '010-1234-1234', 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
