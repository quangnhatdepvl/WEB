-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: ltw
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `phone` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `phoneName` varchar(255) DEFAULT NULL,
  `typePhone` varchar(255) DEFAULT NULL,
  `price` double(255,2) DEFAULT NULL,
  `nhaSanXuat` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `ngaySanXuat` date DEFAULT NULL,
  `des` longtext,
  `luotTruyCap` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (1,'Nokia 6.1','Smart Phone',3390000.00,'Nokia','user/img/nokia6.1.jpg','2017-02-02','Điện thoại Nokia 6.1 Plus Chính hãng, hay Nokia X6 Chính hãng, là một sản phẩm tầm trung vừa được Nokia ra mắt tại Việt Nam. Với ngôn ngữ thiết kế tai thỏ thời thượng, màn hình tràn viền cùng hiệu năng xuất sắc được nâng cấp mạnh mẽ, Nokia 6.1 Plus thực sự gây chú ý với cộng đồng người dùng và giới công nghệ. Đến ngay tại Hoàng Hà Mobile để có thể sở hữu chiếc điện thoại Nokia 6.1 Plus Chính hãng giá rẻ với nhiều tính năng cực kỳ hấp dẫn.',8),(2,'Nokia 7.2','Smart Phone',5490000.00,'Nokia','user/img/nokia72.jpg','2018-03-02','Nokia 7.2 là một chiếc smartphone rất đáng chú ý trong những tháng cuối năm 2019 với thiết kế thời thượng, hệ điều hành mượt mà và cụm camera chất lượng.',11),(3,'Nokia 2.2','SmartPhone',1890000.00,'Nokia','user/img/nokia22.jpg','2017-06-03','Điện thoại Nokia 2.2 -  Smartphone chạy Android One giá rẻ nhất thế giới',1),(4,'Nokia 3.2','SmartPhone',2340000.00,'Nokia','user/img/nokia32.jpg','2019-07-29','Nokia quay trở lại thị trường mạnh mẽ với những chiếc smartphone giá cả phải chăng nhưng vẫn đáp ứng tốt nhu cầu sử dụng hằng ngày của người dùng và Nokia 3.2 16GB là một chiếc máy như vậy.',3),(5,'Nokia 110','Phone',450000.00,'Nokia','user/img/nokia110.jpg','2012-05-12','Nhắc đến những chiếc điện thoại cơ bản với thời lượng pin trâu để sử dụng nhiều ngày thì không thể không nhắc tới Nokia và mới đây hãng này cũng tiếp tục giới thiệu chiếc Nokia 110 (2019) để tiếp nối ưu điểm này.',0),(6,'Nokia 130','Phone',520000.00,'Nokia','user/img/nokia130.jpg','2012-06-12','Nokia 130 2012 với thiết kế hoàn toàn mới, trang bị thêm camera độ phân giải VGA, đây hứa hẹn sẽ là một chiếc điện thoại cơ bản phù hợp với các tiêu chí gọn nhẹ, pin trâu và giá tốt cho người dùng.',NULL),(7,'Nokia 150','Phone',650000.00,'Nokia','user/img/nokia150.jpg','2016-02-12','Nokia 150 là một thiết bị hai sim rất gọn nhẹ, đặc biệt hữu dụng cho người thường xuyên di chuyển, cần một chiếc điện thoại bắt sóng tốt, dễ dàng sử dụng.',NULL),(8,'Nokia 230','Phone',1250000.00,'Nokia','user/img/nokia230.jpg','2017-03-25','Nokia 230 được trang bị khá nhiều tính năng hay ho, thiết kế đẹp cho người dùng yêu thích một chiếc điện thoại đẹp - đơn giản - tốt.',NULL),(9,'Nokia 2720','Phone',1990000.00,'Nokia','user/img/nokia2720.jpg','2019-02-01','Điện thoại nắp gập từ lâu đã được nhiều người dùng ưa chuộng, và mới đây Nokia đã giới thiệu chiếc Nokia 2720 Flip (2019) mang lại cho người dùng những trải nghiệm từ nhiều năm về trước.',NULL),(10,'Nokia 3310','Phone',1060000.00,'Nokia','user/img/nokia3310.jpg','2017-08-09','Chiếc điện thoại cơ bản gây sóng gió trên mạng xã hội nhất trong năm 2017, không ai khác chính là Nokia 3310 2017 mới toanh. Với diện mạo vừa quen thuộc vừa xa lạ, Nokia 3310 2017 hứa hẹn sẽ mang đến người dùng nhiều trải nghiệm thú vị.',NULL),(11,'SamSung A7','SmartPhone',6990000.00,'Samsung','user/img/samsunga7.jpg','2018-09-19','Samsung Galaxy A7 (2018) lột xác với nhiều thay đổi mới mẻ từ thiết kế đến hiệu năng. Bên cạnh đó, đây cũng là chiếc smartphone đầu tiên của Samsung sở hữu cụm camera sau với 3 thấu kính ấn tượng.',1),(12,'SamSung A20','SmartPhone',4190000.00,'Samsung','user/img/samsunga20.jpg','2019-01-10','Samsung Galaxy A20 là chiếc máy rẻ nhất trong dòng Galaxy A của Samsung mang lại cho người dùng những trải nghiệm cao cấp của những chiếc máy tới từ Samsung nhưng vẫn không phải bỏ ra số tiền quá lớn.',NULL),(13,'SamSung A50','SmartPhone',6990000.00,'Samsung','user/img/samsunga20.jpg','2018-09-19','Samsung Galaxy A50 64GB là chiếc smartphone tầm trung mới của Samsung trong năm 2019 với nhiều tính năng hấp dẫn, đặc biệt là có cả cảm biến vân tay dưới màn hình.',NULL),(14,'SamSung A70','SmartPhone',8290000.00,'Samsung','user/img/samsunga7.jpg','2019-01-12','Samsung Galaxy A70 là một phiên bản phóng to của chiếc Samsung Galaxy A50 đã ra mắt trước đó với nhiều cải tiến tới từ bên trong.',NULL),(15,'SamSung A80','SmartPhone',11490000.00,'Samsung','user/img/samsunga80.jpg','2019-01-12','Samsung Galaxy A80 là chiếc smartphone mang trong mình rất nhiều đột phá của Samsung và hứa hẹn sẽ là \"ngọn cờ đầu\" cho những chiếc smartphone sở hữu một màn hình tràn viền thật sự.',NULL),(16,'SamSung A9','SmartPhone',12490000.00,'Samsung','user/img/samsunga9.jpg','2017-03-25','Samsung Galaxy A9 (2018) là chiếc điện thoại đầu tiên của Samsung sở hữu hệ thống camera ấn tượng với 4 thấu kính cùng hàng loạt các nâng cấp đáng giá về cấu hình và tính năng hiện đại khác.',NULL),(17,'SamSung Galaxy A30s','SmartPhone',5090000.00,'Samsung','user/img/samsunga20.jpg','2019-01-10','Samsung Galaxy A30s, chiếc smartphone mới ra mắt sở hữu nhiều ưu điểm nổi bật trong phân khúc, nổi bật nhất phải kể đến là dung lượng pin lên tới 4000 mAh,bộ 3 camera cùng vi xử lý đủ mạnh, ổn định.',NULL),(18,'SamSung Note 10+','SmartPhone',24990000.00,'Samsung','user/img/samsungnote10.jpg','2019-01-10','Trông ngoại hình khá giống nhau, tuy nhiên Samsung Galaxy Note 10+ sở hữu khá nhiều điểm khác biệt so với Galaxy Note 10 và đây được xem là một trong những chiếc máy đáng mua nhất trong năm 2019, đặc biệt dành cho những người thích một chiếc máy màn hình lớn, camera chất lượng hàng đầu.',1),(19,'SamSung Note 9','SmartPhone',22990000.00,'Samsung','user/img/samsungnote9.jpg','2019-01-02','Mang lại sự cải tiến đặc biệt trong cây bút S Pen, siêu phẩm Samsung Galaxy Note 9 còn sở hữu dung lượng pin khủng lên tới 4.000 mAh cùng hiệu năng mạnh mẽ vượt bậc, xứng đáng là một trong những chiếc điện thoại cao cấp nhất của Samsung.',NULL),(20,'SamSung S10+','SmartPhone',22990000.00,'Samsung','user/img/samsungs10512.jpg','2019-01-02','Samsung Galaxy S10+ 128GB là một trong những chiếc smartphone được trông chờ nhiều nhất trong năm 2019 và không phụ sự kỳ vọng của mọi người thì chiếc Galaxy S thứ 10 của Samsung thực sự gây ấn tượng mạnh cho người dùng.',NULL),(21,'LG Phoneix ','Phone',450000.00,'LG','user/img/lg_phonxie_b.jpg','2012-05-12','Đây là một sản phẩm tốt đến từ LG.',NULL),(22,'LG Thrive B','Phone',555000.00,'LG','user/img/lg_thrive_b.jpg','2012-08-12','Đây là một sản phẩm tốt đến từ LG.',NULL),(23,'LG GW620','Phone',750000.00,'LG','user/img/LG-GW620_b.jpg','2013-09-25','Đây là một sản phẩm tốt đến từ LG.',NULL),(24,'LG K50s','Phone',650000.00,'LG','user/img/lg-k50s.jpg','2014-02-12','Đây là một sản phẩm tốt đến từ LG.',NULL),(25,'LG KS101','Phone',289000.00,'LG','user/img/lg-KS101.jpg','2013-02-12','Đây là một sản phẩm tốt đến từ LG.',NULL),(26,'LG Q70-Black','SmartPhone',2000000.00,'LG','user/img/lg-q70-black.jpg','2016-09-09','Đây là một sản phẩm tốt đến từ LG.',NULL),(27,'LG Double Pay','Phone',199000.00,'LG','user/img/lgdoubleplay.jpg','2017-08-08','Đây là một sản phẩm tốt đến từ LG.',4),(28,'LG G10','SmartPhone',3000000.00,'LG','user/img/lgg10.jpg','2019-01-01','Đây là một sản phẩm tốt đến từ LG.',NULL),(29,'LG K30','SmartPhone',4000000.00,'LG','user/img/lgk30.jpg','2018-08-08','Đây là một sản phẩm tốt đến từ LG.',NULL),(30,'LG K40s','SmartPhone',5000000.00,'LG','user/img/lgk40s.jpg','2018-09-10','Đây là một sản phẩm tốt đến từ LG.',NULL),(31,'LG M10','SmartPhone',27000000.00,'LG','user/img/lgm10.jpg','2018-01-12','Đây là một sản phẩm tốt đến từ LG.',1),(32,'LG Eoone','SmartPhone',5000000.00,'LG','user/img/lgneoone.jpg','2017-08-08','Đây là một sản phẩm tốt đến từ LG.',NULL),(33,'LG V50s','SmartPhone',200000.00,'LG','user/img/lgv50sthinq.jpg','2016-09-09','Đây là một sản phẩm tốt đến từ LG.',NULL),(34,'LG V60s','SmartPhone',350000.00,'LG','user/img/lgv60s.jpg','2018-09-10','Đây là một sản phẩm tốt đến từ LG.',NULL),(35,'LG V60thin','SmartPhone',230000.00,'LG','user/img/lgv60thinq.jpg','2018-01-12','Đây là một sản phẩm tốt đến từ LG.',NULL),(36,'Iphone 11 Pro 256Gb','SmartPhone',33900000.00,'Apple','user/img/iphone11pro256gb.jpg','2019-01-01','Trong năm 2019 thì chiếc smartphone được nhiều người mong muốn sở hữu trên tay và sử dụng nhất không ai khác chính là iPhone 11 Pro Max 64GB tới từ nhà Apple.',2),(37,'Iphone 11 Pro 512Gb','SmartPhone',36900000.00,'Apple','user/img/iphone11pro512gb.jpg','2019-01-01','Trong năm 2019 thì chiếc smartphone được nhiều người mong muốn sở hữu trên tay và sử dụng nhất không ai khác chính là iPhone 11 Pro Max 64GB tới từ nhà Apple.',1),(38,'Iphone 7 32Gb','SmartPhone',12000000.00,'Apple','user/img/iphone11pro256gb.jpg','2017-06-05','Mặc dù giữ nguyên vẻ bề ngoài so với dòng điện thoại iPhone đời trước, bù lại iPhone 7 Plus 32GB lại được trang bị nhiều nâng cấp đáng giá như camera kép đầu tiên cũng như cấu hình mạnh mẽ.',NULL),(39,'Iphone 8 plus','SmartPhone',16500000.00,'Apple','user/img/iphone11pro512gb.jpg','2018-09-09','Thừa hưởng những thiết kế đã đạt đến độ chuẩn mực, thế hệ iPhone 8 Plus thay đổi phong cách bóng bẩy hơn và bổ sung hàng loạt tính năng cao cấp cho trải nghiệm sử dụng vô cùng tuyệt vời.',NULL),(40,'Iphone XS Max 256GB','SmartPhone',22900000.00,'Apple','user/img/iphone11pro256gb.jpg','2019-01-01','Hoàn toàn xứng đáng với những gì được mong chờ, phiên bản cao cấp nhất iPhone Xs Max 64 GB của Apple năm nay nổi bật với chip A12 Bionic mạnh mẽ, màn hình rộng đến 6.5 inch, cùng camera kép trí tuệ nhân tạo và Face ID được nâng cấp.',NULL),(41,'HTC 4G','SmartPhone',2500000.00,'htc','user/img/htc4g.jpg','2016-02-03','Đây là một sản phẩm chất lượng đến từ HTC.',NULL),(42,'HTC Exodus','SmartPhone',3670000.00,'htc','user/img/htcexodus1s.jpg','2017-10-10','Đây là một sản phẩm chất lượng đến từ HTC.',NULL),(43,'HTC WildFire','SmartPhone',3900000.00,'htc','user/img/htcwildfiree.jpg','2017-08-09','Đây là một sản phẩm chất lượng đến từ HTC.',NULL),(44,'HTC WildFire 1','SmartPhone',4900000.00,'htc','user/img/htcwildfiree1.jpg','2012-01-03','Đây là một sản phẩm chất lượng đến từ HTC.',NULL),(45,'HTC WildFire Plus','SmartPhone',4900000.00,'htc','user/img/htcwildfireeplus.jpg','2019-02-02','Đây là một sản phẩm chất lượng đến từ HTC.',NULL),(46,'HTC WildFire 70','SmartPhone',5999000.00,'htc','user/img/htcwildfirex.jpg','2018-02-02','Đây là một sản phẩm chất lượng đến từ HTC.',NULL),(47,'HTC WildFirex','SmartPhone',30000000.00,'htc','user/img/htcwildfirex.jpg','2019-02-02','Đây là một sản phẩm chất lượng đến từ HTC.',4),(71,NULL,'',NULL,'',NULL,NULL,NULL,NULL),(72,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_db`
--

DROP TABLE IF EXISTS `role_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role_db` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_db`
--

LOCK TABLES `role_db` WRITE;
/*!40000 ALTER TABLE `role_db` DISABLE KEYS */;
INSERT INTO `role_db` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `role_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_db`
--

DROP TABLE IF EXISTS `user_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_db` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_fullname` varchar(50) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_db_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role_db` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_db`
--

LOCK TABLES `user_db` WRITE;
/*!40000 ALTER TABLE `user_db` DISABLE KEYS */;
INSERT INTO `user_db` VALUES (1,'ltn','123','lethanhnghi',1),(2,'zxc','123','zxc',2),(3,'asd','123','ads',2),(4,'ghj','123',NULL,2),(5,'asd','234',NULL,2),(7,'nhatdeptrai','123',NULL,2);
/*!40000 ALTER TABLE `user_db` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-12 21:59:07
