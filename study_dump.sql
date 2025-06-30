-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: study
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `food_categories`
--

DROP TABLE IF EXISTS `food_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_categories`
--

LOCK TABLES `food_categories` WRITE;
/*!40000 ALTER TABLE `food_categories` DISABLE KEYS */;
INSERT INTO `food_categories` VALUES (1,'2025-06-19 00:28:03.000000','2025-06-19 00:28:03.000000','한식'),(2,'2025-06-19 00:28:03.000000','2025-06-19 00:28:03.000000','중식'),(3,'2025-06-19 00:28:03.000000','2025-06-19 00:28:03.000000','일식');
/*!40000 ALTER TABLE `food_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry_notification`
--

DROP TABLE IF EXISTS `inquiry_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiry_notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `inquiry_content` text,
  `inquiry_title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  `notification_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK953c8dkqffoxjx23u7tnx7kwo` (`member_id`),
  KEY `FK79ufp3r6sn8l0xl5ix9k6014s` (`notification_id`),
  CONSTRAINT `FK79ufp3r6sn8l0xl5ix9k6014s` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`id`),
  CONSTRAINT `FK953c8dkqffoxjx23u7tnx7kwo` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry_notification`
--

LOCK TABLES `inquiry_notification` WRITE;
/*!40000 ALTER TABLE `inquiry_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `inquiry_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `address` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `inactive_date` date DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `points` int DEFAULT '0',
  `region` varchar(20) NOT NULL,
  `social_type` varchar(255) DEFAULT NULL,
  `spec_address` varchar(40) NOT NULL,
  `status` varchar(15) DEFAULT 'ACTIVE',
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,NULL,NULL,'서울시 강남구','test@example.com','MALE',NULL,'테스트 사용자','010-1234-5678',0,'강남구',NULL,'상세주소 테스트','ACTIVE','',NULL),(2,'2025-06-19 01:28:58.559503','2025-06-19 01:28:58.559503','서울시 노원구 ','test1@naver.com','MALE',NULL,'유승인','010-1234-5678',0,'서울특별시',NULL,'태강아파트 1001동','ACTIVE','$2a$10$TTr.DYLxURUk9NSLgpeF2ubNBAo1x9VqN2p4P2g8BT87BA20QDoVO','USER'),(3,'2025-06-19 17:47:27.116171','2025-06-19 17:47:27.116171','서울시 노원구','tmddls98@naver.com','MALE',NULL,'유승인2','010-2345-6789',0,'대전광역시',NULL,'공릉2동 아파트','ACTIVE','$2a$10$drJ3BvIUy12W2MgpvoIlmug2/M/Kae99zTOSE0sP1fcPK.OZUZJZm','USER'),(4,'2025-06-19 17:55:34.854033','2025-06-19 17:55:34.854033','서울시 공릉2동','tmddls99@naver.com','MALE',NULL,'유승인3','010-1234-5342',0,'서울특별시',NULL,'태강아파트 1002동','ACTIVE','$2a$10$uHYnUXsQzGH1Z8fiyffODuWzj0a.5f6Vl7TxlQk0pNCt9nrpFPuOO','ADMIN'),(5,'2025-06-22 00:00:33.052394','2025-06-22 00:00:33.052394','서울시 노원구','test10@naver.com','MALE',NULL,'테스트10','010-2549-7047',0,'서울특별시',NULL,'태강아파트입니다','ACTIVE','$2a$10$mFfrAScfFG7UWBBIeQMLn.HgGzEVrCMKJqocjt8Tonavs7eyCCKje','USER'),(6,'2025-06-22 00:08:16.657155','2025-06-22 00:08:16.657155','서울시 노원구','test11@naver.com','MALE',NULL,'테스트11','010-2549-7047',0,'대전광역시',NULL,'아파트아파트','ACTIVE','$2a$10$gnmyG9fMVpd2mbQf2XD44eZPcwdZChM5hQBIiPoUXTFthl9SmuDqa','ADMIN');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_agree`
--

DROP TABLE IF EXISTS `member_agree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_agree` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKidc8ol6y753cph4vuq9fa9scd` (`member_id`),
  CONSTRAINT `FKidc8ol6y753cph4vuq9fa9scd` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_agree`
--

LOCK TABLES `member_agree` WRITE;
/*!40000 ALTER TABLE `member_agree` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_agree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_mission`
--

DROP TABLE IF EXISTS `member_mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_mission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `completed_date` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `member_id` bigint NOT NULL,
  `mission_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpgw7uojmq1tkna2ubpxmhlyuo` (`member_id`),
  KEY `FKibnub11mc8k2g39v44smt9jqi` (`mission_id`),
  CONSTRAINT `FKibnub11mc8k2g39v44smt9jqi` FOREIGN KEY (`mission_id`) REFERENCES `mission` (`id`),
  CONSTRAINT `FKpgw7uojmq1tkna2ubpxmhlyuo` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_mission`
--

LOCK TABLES `member_mission` WRITE;
/*!40000 ALTER TABLE `member_mission` DISABLE KEYS */;
INSERT INTO `member_mission` VALUES (1,'2025-05-29 17:25:24.119676','COMPLETE',1,1),(2,NULL,'CHALLENGING',1,2);
/*!40000 ALTER TABLE `member_mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_prefer`
--

DROP TABLE IF EXISTS `member_prefer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_prefer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `food_categories_id` bigint DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKam0xjx1hj8imnig4pctip24cc` (`food_categories_id`),
  KEY `FKt0mtbhxwyh98gfwit7uvynexi` (`member_id`),
  CONSTRAINT `FKam0xjx1hj8imnig4pctip24cc` FOREIGN KEY (`food_categories_id`) REFERENCES `food_categories` (`id`),
  CONSTRAINT `FKt0mtbhxwyh98gfwit7uvynexi` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_prefer`
--

LOCK TABLES `member_prefer` WRITE;
/*!40000 ALTER TABLE `member_prefer` DISABLE KEYS */;
INSERT INTO `member_prefer` VALUES (1,'2025-06-19 01:28:58.614017','2025-06-19 01:28:58.614017',1,2),(2,'2025-06-19 17:47:27.213743','2025-06-19 17:47:27.213743',3,3),(3,'2025-06-19 17:55:34.948865','2025-06-19 17:55:34.948865',2,4),(4,'2025-06-22 00:00:33.102721','2025-06-22 00:00:33.102721',1,5),(5,'2025-06-22 00:08:16.698958','2025-06-22 00:08:16.698958',1,6);
/*!40000 ALTER TABLE `member_prefer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission`
--

DROP TABLE IF EXISTS `mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `completed_number` varchar(255) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `explanation` text,
  `reward_points` int DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `store_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKckx1b8plp95qtdk73kylhy12n` (`store_id`),
  CONSTRAINT `FKckx1b8plp95qtdk73kylhy12n` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission`
--

LOCK TABLES `mission` WRITE;
/*!40000 ALTER TABLE `mission` DISABLE KEYS */;
INSERT INTO `mission` VALUES (1,NULL,NULL,'ABC123','2025-12-31','미션 설명입니다.',100,'CHALLENGING','샘플 미션',1),(2,'2025-05-22 14:55:01.165435','2025-05-22 14:55:01.165435','1111','2025-06-30','가게 방문 후 후기를 작성하면 포인트를 드려요!',500,'CHALLENGING','후기 이벤트',1),(3,'2025-05-29 11:46:18.000000','2025-05-29 11:46:18.000000','1234','2025-06-30','버거킹 와퍼세트 먹고 리뷰 작성',500,'CHALLENGING','버거킹 미션',2);
/*!40000 ALTER TABLE `mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_event_notification`
--

DROP TABLE IF EXISTS `new_event_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_event_notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `content` text,
  `title` varchar(255) DEFAULT NULL,
  `notification_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc10gbbgjoj8w3tbiuijrsqxrr` (`notification_id`),
  CONSTRAINT `FKc10gbbgjoj8w3tbiuijrsqxrr` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_event_notification`
--

LOCK TABLES `new_event_notification` WRITE;
/*!40000 ALTER TABLE `new_event_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_event_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `message` text,
  `status` varchar(255) DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1xep8o2ge7if6diclyyx53v4q` (`member_id`),
  CONSTRAINT `FK1xep8o2ge7if6diclyyx53v4q` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,NULL,NULL,'강남구');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `rating` decimal(2,1) NOT NULL,
  `review_text` text,
  `title` varchar(255) DEFAULT NULL,
  `member_id` bigint NOT NULL,
  `store_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk0ccx5i4ci2wd70vegug074w1` (`member_id`),
  KEY `FK74d12ba8sxxu9vpnc59b43y30` (`store_id`),
  CONSTRAINT `FK74d12ba8sxxu9vpnc59b43y30` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`),
  CONSTRAINT `FKk0ccx5i4ci2wd70vegug074w1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'2025-05-22 13:16:54.863660','2025-05-22 13:16:54.863660',4.8,'사장님도 친절하고 분위기도 좋아요.','음식이 아주 맛있었어요!',1,1),(2,'2025-05-29 09:59:37.000000','2025-05-29 09:59:37.000000',4.5,'9주차 실습중입니다.','UMC 9주차 실습',1,2),(3,'2025-05-29 10:00:25.000000','2025-05-29 10:00:25.000000',3.2,'리뷰 추가했습니다','리뷰 하나 더',1,2);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_answer_notification`
--

DROP TABLE IF EXISTS `review_answer_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_answer_notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `notification_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeumd35lchihj7fd03ujkrtjw9` (`notification_id`),
  CONSTRAINT `FKeumd35lchihj7fd03ujkrtjw9` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_answer_notification`
--

LOCK TABLES `review_answer_notification` WRITE;
/*!40000 ALTER TABLE `review_answer_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_answer_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_image`
--

DROP TABLE IF EXISTS `review_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `review_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK16wp089tx9nm0obc217gvdd6l` (`review_id`),
  CONSTRAINT `FK16wp089tx9nm0obc217gvdd6l` FOREIGN KEY (`review_id`) REFERENCES `review` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_image`
--

LOCK TABLES `review_image` WRITE;
/*!40000 ALTER TABLE `review_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `store_phone` varchar(255) DEFAULT NULL,
  `region_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKiecbc1b9m21semcf714lasyi5` (`region_id`),
  CONSTRAINT `FKiecbc1b9m21semcf714lasyi5` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,NULL,NULL,'서울시 강남구','테스트 가게',NULL,NULL,1),(2,'2025-05-22 14:06:03.356830','2025-05-22 14:06:03.356830','서울시 강남구 역삼동','버거킹',NULL,NULL,1);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_image`
--

DROP TABLE IF EXISTS `store_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) NOT NULL,
  `store_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8i0t3yr73c9h244pyv5mg6m4u` (`store_id`),
  CONSTRAINT `FK8i0t3yr73c9h244pyv5mg6m4u` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_image`
--

LOCK TABLES `store_image` WRITE;
/*!40000 ALTER TABLE `store_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-30  3:12:36
