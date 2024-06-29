CREATE DATABASE  IF NOT EXISTS `hotel` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotel`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_cred`
--

DROP TABLE IF EXISTS `admin_cred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_cred` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(150) DEFAULT NULL,
  `admin_pass` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_cred`
--

LOCK TABLES `admin_cred` WRITE;
/*!40000 ALTER TABLE `admin_cred` DISABLE KEYS */;
INSERT INTO `admin_cred` VALUES (1,'admin','password');
/*!40000 ALTER TABLE `admin_cred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_details`
--

DROP TABLE IF EXISTS `booking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_details` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `booking_id` int DEFAULT NULL,
  `room_name` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `total_pay` int DEFAULT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `phonenum` varchar(100) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`sr_no`),
  KEY `bbid_idx` (`booking_id`),
  CONSTRAINT `bbid` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_details`
--

LOCK TABLES `booking_details` WRITE;
/*!40000 ALTER TABLE `booking_details` DISABLE KEYS */;
INSERT INTO `booking_details` VALUES (1,1,'makis 17',100,1500,NULL,'alk','12','as'),(2,3,'makis 17',100,200,NULL,'alk','12','as'),(3,4,'makis 17',100,2000,NULL,'alk','12','as'),(4,5,'makis 17',100,100,NULL,'alk','12','as'),(5,6,'makis 17',100,1500,NULL,'alk','12','as'),(6,7,'makis 17',100,100,NULL,'alk','12','as'),(7,8,'makis 17',100,200,'a1','alk','12','as'),(8,8,'makis 17',100,200,'a1','alk','12','as'),(9,9,'makis 17',100,100,'c7','alk','12','as'),(10,10,'makis 17',100,200,'bb','alk','12','as'),(11,11,'makis 17',100,100,'bb','alk','12','as'),(12,12,'makis 17',100,100,NULL,'alk','12','as'),(13,13,'makis 17',100,100,'ads','alk','12','as'),(14,14,'makis 17',100,900,NULL,'alk','12','as'),(15,15,'makis 17',100,100,NULL,'alk','12','as'),(16,16,'makis 17',100,100,NULL,'alk','12','as'),(17,17,'makis 17',100,200,'a3','alk','12','as'),(18,18,'makis 17',100,200,'g8','alk','12','as'),(19,19,'makis 17',100,200,NULL,'alk','12','as'),(20,20,'makis 17',100,200,'hellcat v8','alk','12','as'),(21,21,'makis 17',100,200,'fg3','alk','12','as'),(22,22,'makis 17',100,1400,'boudroumi','alk','12','as'),(23,23,'makis 17',100,100,'klouvi sto boudroumi','alk','12','as'),(24,24,'makis 17',100,800,'boudromu','alk','12','as'),(25,25,'makis 17',100,100,'saita','alk','12','as'),(26,26,'makis 17',100,100,'souita','alk','12','as'),(27,27,'makis 17',100,100,'ipogeio','alk','12','as'),(28,28,'makis 17',100,100,NULL,'alk','12','as'),(29,29,'makis 17',100,100,NULL,'alk','12','as'),(30,30,'makis 17',100,100,'ston kanape','alk','12','as'),(31,31,'makis 17',100,100,NULL,'alk','12','as'),(32,32,'makis 17',100,100,NULL,'alk','12','as'),(33,33,'makis 17',100,100,NULL,'alk','12','as'),(34,34,'makis 17',100,100,NULL,'alk','12','as'),(35,35,'makis 17',100,100,NULL,'alk','12','as'),(36,36,'takis',1000,1000,NULL,'alk','12','as'),(37,37,'takis',1000,1000,NULL,'alk','12','as'),(38,38,'takis',1000,1000,NULL,'alk','12','as'),(39,39,'takis',1000,1000,NULL,'alk','12','as'),(40,40,'takis',1000,1000,'da','alk','12','as'),(41,41,'takis',1000,1000,NULL,'alk','12','as'),(42,42,'takis',1000,1000,NULL,'alk','12','as'),(43,43,'takis',1000,2000,NULL,'alk','12','as'),(44,44,'takis',1000,1000,NULL,'alk','12','as'),(45,45,'takis',1000,1000,NULL,'alk','12','as'),(46,46,'makis 17',100,100,NULL,'alk','12','as'),(47,47,'makis 17',100,100,NULL,'alk','12','as'),(48,48,'makis 17',100,100,NULL,'alk','12','as'),(49,49,'makis 17',100,100,NULL,'alk','12','as'),(50,50,'makis 17',100,100,NULL,'alk','12','as'),(51,51,'sakis',200,200,NULL,'alk','12','as'),(52,52,'sakis',200,200,'sa','alk','12','as'),(53,53,'sakis',200,200,NULL,'alk','12','as'),(54,54,'sakis',200,200,NULL,'alk','12','as'),(55,55,'sakis',200,200,NULL,'alk','12','as'),(56,56,'sakis',200,200,NULL,'alk','12','as'),(57,57,'sakis',200,200,NULL,'alk','12','as'),(58,58,'sakis',200,200,NULL,'alk','12','as'),(59,59,'sakis',200,200,'as','alk','12','as'),(60,60,'sakis',200,200,'as','alk','12','as'),(61,61,'makis 17',100,100,NULL,'alk','12','as'),(62,62,'makis 17',100,100,NULL,'alk','12','as'),(63,63,'makis 17',100,100,NULL,'alk','12','as'),(64,64,'sakis',200,5600,NULL,'alkin','12','ass'),(65,65,'sakis',200,5600,NULL,'alkin','12','ass'),(66,66,'sakis',200,5600,NULL,'alkin','12','ass'),(67,67,'makis 17',100,2800,NULL,'alkin','12','ass'),(68,68,'sakis',200,5600,NULL,'alkin','12','ass'),(69,69,'sakis',200,5600,NULL,'alkin','12','ass'),(70,70,'sakis',200,5600,NULL,'alkin','12','ass'),(71,71,'sakis',200,5600,NULL,'alkin','12','ass'),(72,72,'takis',1000,27000,NULL,'alkin','12','ass'),(73,73,'sakis',200,200,NULL,'alkin','12','ass'),(74,74,'sakis',200,200,'abc1','alkin','12','ass'),(75,77,'souita',1000,1000,NULL,'alkin','12','spiti mou'),(76,78,'sakis',200,3400,NULL,'alkin','12','spiti mou'),(77,79,'souita',1000,6000,NULL,'alkin','12','spiti mou'),(78,80,'souita',1000,8000,NULL,'alkin','12','spiti mou'),(79,81,'souita',1000,8000,NULL,'alkin','12','spiti mou');
/*!40000 ALTER TABLE `booking_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_order`
--

DROP TABLE IF EXISTS `booking_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_order` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `arrival` int DEFAULT '0',
  `refund` int DEFAULT NULL,
  `booking_status` varchar(100) DEFAULT 'pending',
  `order_id` varchar(150) DEFAULT NULL,
  `trans_id` varchar(100) DEFAULT NULL,
  `trans_amt` int DEFAULT '0',
  `trans_status` varchar(100) DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int DEFAULT NULL,
  `datentime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`booking_id`),
  KEY `uid_idx` (`user_id`),
  KEY `rid_idx` (`room_id`),
  CONSTRAINT `rid` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `uid` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_order`
--

LOCK TABLES `booking_order` WRITE;
/*!40000 ALTER TABLE `booking_order` DISABLE KEYS */;
INSERT INTO `booking_order` VALUES (1,21,2,'2024-01-02','2024-01-17',0,NULL,'pending','ORD_215749479',NULL,100,'pending',NULL,NULL,'2024-01-01 23:38:47'),(2,21,2,'2024-01-03','2024-01-25',0,NULL,'pending','ORD_218494480',NULL,1000,'pending',NULL,NULL,'2024-01-01 23:43:26'),(3,21,2,'2024-01-02','2024-01-04',0,NULL,'pending','ORD_218388875',NULL,200,'pending',NULL,NULL,'2024-01-01 23:44:41'),(4,21,2,'2024-01-03','2024-01-23',0,NULL,'pending','ORD_213622202',NULL,200,'pending',NULL,NULL,'2024-01-01 23:49:44'),(5,21,2,'2024-01-02','2024-01-03',0,NULL,'pending','ORD_214264676',NULL,250,'pending',NULL,NULL,'2024-01-01 23:50:45'),(6,21,2,'2024-01-03','2024-01-18',0,NULL,'pending','ORD_21918008',NULL,5,'pending',NULL,NULL,'2024-01-02 00:50:43'),(7,21,2,'2024-01-03','2024-01-04',0,NULL,'pending','ORD_219306428',NULL,1,'pending',NULL,NULL,'2024-01-02 00:53:35'),(8,21,2,'2024-01-09','2024-01-11',1,NULL,'booked','ORD_212695156','1',200,'success','ola good',NULL,'2024-01-02 01:01:55'),(9,21,2,'2024-01-03','2024-01-04',1,NULL,'booked','ORD_212702329','trid',100,'success','ola good',NULL,'2024-01-02 01:03:03'),(10,21,2,'2024-01-03','2024-01-05',1,NULL,'booked','ORD_21238521','1',200,'success','ola good',1,'2024-01-02 01:33:49'),(11,21,2,'2024-01-03','2024-01-04',1,NULL,'booked','ORD_217259032','1',100,'success','ola good',NULL,'2024-01-02 01:34:32'),(12,21,2,'2024-01-04','2024-01-05',0,0,'canceled','ORD_212014009','1',100,'success','ola good',NULL,'2024-01-02 01:34:55'),(13,21,2,'2024-01-03','2024-01-04',1,NULL,'booked','ORD_219515729','1',100,'success','ola good',NULL,'2024-01-02 01:35:40'),(14,21,2,'2024-01-10','2024-01-19',0,0,'canceled','ORD_215715355','1',900,'success','ola good',NULL,'2024-01-02 01:35:58'),(15,21,2,'2024-01-10','2024-01-11',0,1,'canceled','ORD_21943345','1',100,'success','ola good',NULL,'2024-01-02 01:37:19'),(16,21,2,'2024-01-03','2024-01-04',0,1,'canceled','ORD_212132010','1',100,'success','ola good',NULL,'2024-01-02 01:39:55'),(17,21,2,'2024-01-03','2024-01-05',1,NULL,'booked','ORD_217285657','1',200,'success','ola good',1,'2024-01-02 01:40:22'),(18,21,2,'2024-01-03','2024-01-05',1,NULL,'booked','ORD_214166990','1',200,'success','ola good',0,'2024-01-02 01:40:23'),(19,21,2,'2024-01-03','2024-01-05',0,0,'canceled','ORD_213146535','1',200,'success','ola good',NULL,'2024-01-02 01:40:24'),(20,21,2,'2024-01-03','2024-01-05',1,NULL,'booked','ORD_218201834','1',200,'success','ola good',1,'2024-01-02 01:40:24'),(21,21,2,'2024-01-03','2024-01-05',1,NULL,'booked','ORD_216284682','1',200,'success','ola good',0,'2024-01-02 01:40:24'),(22,21,2,'2024-01-03','2024-01-17',1,NULL,'booked','ORD_211457846','1',1400,'success','ola good',0,'2024-01-02 01:41:33'),(23,21,2,'2024-01-03','2024-01-04',1,NULL,'booked','ORD_218270559','1',100,'success','ola good',1,'2024-01-02 01:41:58'),(24,21,2,'2024-01-03','2024-01-11',1,NULL,'booked','ORD_211750226','1',800,'success','ola good',0,'2024-01-02 01:42:33'),(25,21,2,'2024-01-03','2024-01-04',1,NULL,'booked','ORD_213942412','1',100,'success','ola good',0,'2024-01-02 01:43:58'),(26,21,2,'2024-01-03','2024-01-04',1,NULL,'booked','ORD_218074639','1',100,'success','ola good',1,'2024-01-02 01:44:14'),(27,21,2,'2024-01-03','2024-01-04',1,NULL,'booked','ORD_218336830','1',100,'success','ola good',1,'2024-01-02 01:44:28'),(28,21,2,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_216220840','1',100,'success','ola good',NULL,'2024-01-02 01:46:03'),(29,21,2,'2024-01-03','2024-01-04',0,1,'canceled','ORD_215076705','1',100,'success','ola good',NULL,'2024-01-02 01:47:18'),(30,21,2,'2024-01-03','2024-01-04',1,NULL,'booked','ORD_211782593','1',100,'success','ola good',0,'2024-01-02 01:48:34'),(31,21,2,'2024-01-03','2024-01-04',0,NULL,'payment failed','ORD_212073743','1',100,'failed','not good',NULL,'2024-01-02 01:51:22'),(32,21,2,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_211014615','1',100,'success','ola good',NULL,'2024-01-02 01:51:23'),(33,21,2,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_217741531','1',100,'success','ola good',NULL,'2024-01-02 01:51:24'),(34,21,2,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_219846606','1',100,'success','ola good',NULL,'2024-01-02 01:51:24'),(35,21,2,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_217860487','1',100,'success','ola good',NULL,'2024-01-02 01:52:39'),(36,21,4,'2024-01-04','2024-01-05',0,NULL,'payment failed','ORD_212419446','1',1000,'failed','not good',NULL,'2024-01-02 11:02:42'),(37,21,4,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_213608258','1',1000,'success','ola good',NULL,'2024-01-02 11:03:10'),(38,21,4,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_213507612','1',1000,'success','ola good',NULL,'2024-01-02 11:04:25'),(39,21,4,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_212185236','1',1000,'success','ola good',NULL,'2024-01-02 11:04:46'),(40,21,4,'2024-01-03','2024-01-04',1,NULL,'booked','ORD_219738627','1',1000,'success','ola good',NULL,'2024-01-02 11:05:29'),(41,21,4,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_217618499','1',1000,'success','ola good',NULL,'2024-01-02 11:05:30'),(42,21,4,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_217528278','1',1000,'success','ola good',NULL,'2024-01-02 11:06:04'),(43,21,4,'2024-01-03','2024-01-05',0,NULL,'payment failed','ORD_21436840','1',2000,'failed','not good',NULL,'2024-01-02 11:06:27'),(44,21,4,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_214978948','1',1000,'success','ola good',NULL,'2024-01-02 11:16:36'),(45,21,4,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_218214483','1',1000,'success','ola good',NULL,'2024-01-02 11:17:49'),(46,21,2,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_212836045','1',100,'success','ola good',NULL,'2024-01-02 11:20:03'),(47,21,2,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_214667091','1',100,'success','ola good',NULL,'2024-01-02 11:20:50'),(48,21,2,'2024-01-03','2024-01-04',0,NULL,'payment failed','ORD_212001987','1',100,'failed','not good',NULL,'2024-01-02 11:21:29'),(49,21,2,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_213716759','1',100,'success','ola good',NULL,'2024-01-02 11:22:50'),(50,21,2,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_217048072','1',100,'success','ola good',NULL,'2024-01-02 11:30:41'),(51,21,3,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_213452637','1',200,'success','ola good',NULL,'2024-01-02 11:33:32'),(52,21,3,'2024-01-03','2024-01-04',1,NULL,'booked','ORD_219486207','1',200,'success','ola good',NULL,'2024-01-02 11:34:34'),(53,21,3,'2024-01-03','2024-01-04',0,NULL,'pending','ORD_214047701',NULL,0,'pending',NULL,NULL,'2024-01-02 11:37:37'),(54,21,3,'2024-01-03','2024-01-04',0,NULL,'pending','ORD_213141586',NULL,0,'pending',NULL,NULL,'2024-01-02 11:38:03'),(55,21,3,'2024-01-03','2024-01-04',0,NULL,'pending','ORD_218316547',NULL,0,'pending',NULL,NULL,'2024-01-02 11:40:18'),(56,21,3,'2024-01-03','2024-01-04',0,NULL,'pending','ORD_217731037',NULL,0,'pending',NULL,NULL,'2024-01-02 11:40:22'),(57,21,3,'2024-01-03','2024-01-04',0,NULL,'pending','ORD_213469207',NULL,0,'pending',NULL,NULL,'2024-01-02 11:40:22'),(58,21,3,'2024-01-03','2024-01-04',0,NULL,'booked','ORD_217858315','1',200,'success','ola good',NULL,'2024-01-02 11:48:00'),(59,21,3,'2024-01-03','2024-01-04',1,NULL,'booked','ORD_216865989','1',200,'success','ola good',1,'2024-01-02 11:48:41'),(60,21,3,'2024-01-03','2024-01-04',1,NULL,'booked','ORD_217390921','1',200,'success','ola good',NULL,'2024-01-02 11:54:16'),(61,21,2,'2024-01-09','2024-01-10',0,NULL,'booked','ORD_215586469','1',100,'success','ola good',NULL,'2024-01-02 23:22:51'),(62,21,2,'2024-01-09','2024-01-10',0,NULL,'booked','ORD_21472073','1',100,'success','ola good',NULL,'2024-01-02 23:23:05'),(63,21,2,'2024-01-09','2024-01-10',0,NULL,'booked','ORD_212683796','1',100,'success','ola good',NULL,'2024-01-02 23:23:37'),(64,21,3,'2024-01-03','2024-01-31',0,NULL,'booked','ORD_219368347','1',5600,'success','ola good',NULL,'2024-01-03 02:17:31'),(65,21,3,'2024-01-03','2024-01-31',0,NULL,'booked','ORD_214901758','1',5600,'success','ola good',NULL,'2024-01-03 02:17:34'),(66,21,3,'2024-01-03','2024-01-31',0,NULL,'booked','ORD_212870833','1',5600,'success','ola good',NULL,'2024-01-03 02:19:47'),(67,21,2,'2024-01-03','2024-01-31',0,NULL,'booked','ORD_215329418','1',2800,'success','ola good',NULL,'2024-01-03 02:20:01'),(68,21,3,'2024-01-03','2024-01-31',0,NULL,'booked','ORD_217864906','1',5600,'success','ola good',NULL,'2024-01-03 02:20:17'),(69,21,3,'2024-01-03','2024-01-31',0,NULL,'booked','ORD_215603477','1',5600,'success','ola good',NULL,'2024-01-03 02:22:00'),(70,21,3,'2024-01-03','2024-01-31',0,NULL,'booked','ORD_213339377','1',5600,'success','ola good',NULL,'2024-01-03 02:22:06'),(71,21,3,'2024-01-03','2024-01-31',0,NULL,'booked','ORD_215456894','1',5600,'success','ola good',NULL,'2024-01-03 02:22:12'),(72,21,4,'2024-01-04','2024-01-31',0,NULL,'booked','ORD_211825060','1',27000,'success','ola good',NULL,'2024-01-03 14:07:27'),(73,21,3,'2024-02-01','2024-02-02',0,NULL,'booked','ORD_212066035','1',200,'success','ola good',NULL,'2024-01-03 14:10:44'),(74,21,3,'2024-02-01','2024-02-02',1,NULL,'booked','ORD_212875702','1',200,'success','ola good',1,'2024-01-03 14:11:21'),(75,21,3,'2023-02-01','2023-02-02',1,NULL,'booked','ORD_212875702','1',200,'success','ola good',1,'2022-01-03 14:11:21'),(76,21,3,'2024-02-01','2024-02-02',1,NULL,'booked','ORD_212875702','1',200,'success','ola good',1,'2023-05-03 14:11:21'),(77,21,8,'2024-01-10','2024-01-11',0,0,'canceled','ORD_216981650','1',1000,'success','ola good',NULL,'2024-01-10 21:03:17'),(78,21,3,'2024-02-12','2024-02-29',0,NULL,'booked','ORD_216599171','1',3400,'success','ola good',NULL,'2024-01-10 21:04:05'),(79,21,8,'2024-01-24','2024-01-30',0,NULL,'booked','ORD_219646258','1',6000,'success','ola good',NULL,'2024-01-11 12:42:05'),(80,21,8,'2024-01-23','2024-01-31',0,NULL,'booked','ORD_216868464','1',8000,'success','ola good',NULL,'2024-01-11 12:44:09'),(81,21,8,'2024-01-23','2024-01-31',0,NULL,'booked','ORD_217416574','1',8000,'success','ola good',NULL,'2024-01-11 12:44:14');
/*!40000 ALTER TABLE `booking_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carousel`
--

DROP TABLE IF EXISTS `carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carousel` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `image` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousel`
--

LOCK TABLES `carousel` WRITE;
/*!40000 ALTER TABLE `carousel` DISABLE KEYS */;
INSERT INTO `carousel` VALUES (3,'IMG_13100.png'),(4,'IMG_55842.png'),(5,'IMG_96517.png'),(6,'IMG_32864.png'),(7,'IMG_48724.png'),(8,'IMG_87501.png');
/*!40000 ALTER TABLE `carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_details`
--

DROP TABLE IF EXISTS `contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_details` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `address` varchar(50) DEFAULT NULL,
  `gmap` varchar(100) DEFAULT NULL,
  `pn1` bigint DEFAULT NULL,
  `pn2` bigint DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tw` varchar(100) DEFAULT NULL,
  `fb` varchar(100) DEFAULT NULL,
  `insta` varchar(100) DEFAULT NULL,
  `iframe` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_details`
--

LOCK TABLES `contact_details` WRITE;
/*!40000 ALTER TABLE `contact_details` DISABLE KEYS */;
INSERT INTO `contact_details` VALUES (1,'XYZ, DIPAE, SERRES','https://maps.app.goo.gl/7BCURPpMZe17zqSv8',307778889990,307778889990,'alkanastasiadis@gmail.com','https://twitter.com/','https://www.facebook.com/','https://www.instagram.com/alkinoos_an/','https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d48115.12721797468!2d23.548055!3d41.086576!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14a9718b6729e5d5:0x9dd7c70595ce357!2sSerres!5e0!3m2!1sen!2sgr!4v1703779382416!5m2!1sen!2sgr');
/*!40000 ALTER TABLE `contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES (7,'Air Conditioning','IMG_69251.svg','klimatistiko douleuei kanonika krio aera'),(8,'aerothermo','IMG_69263.svg','aerothermo gia an krioneis'),(9,'Spa &amp; Massage','IMG_35777.svg','autonoito'),(10,'200&#039; TV','IMG_85624.svg','poli megali tileorasi'),(11,'WiFi','IMG_34543.svg','WiFi autonoito'),(12,'Fortnite','IMG_63266.svg','Fortnite stin 200&#039; tileorasi');
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (10,'krevati'),(11,'kanapes'),(12,'mpanio'),(13,'vasanistes'),(14,'kati agnosto me matia'),(15,'organa vasanistirion'),(16,'persika xalia'),(17,'3 plires geumata tin imera');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_review`
--

DROP TABLE IF EXISTS `rating_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_review` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `booking_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `review` varchar(200) DEFAULT NULL,
  `seen` int DEFAULT '0',
  `datentime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sr_no`),
  KEY `rrbid_idx` (`booking_id`),
  KEY `rrrid_idx` (`room_id`),
  KEY `rruid_idx` (`user_id`),
  CONSTRAINT `rrbid` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `rrrid` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `rruid` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_review`
--

LOCK TABLES `rating_review` WRITE;
/*!40000 ALTER TABLE `rating_review` DISABLE KEYS */;
INSERT INTO `rating_review` VALUES (1,74,3,21,5,'tis good',0,'2024-01-03 15:38:31'),(2,17,2,21,3,'its ok',1,'2024-01-03 15:44:23'),(3,27,2,21,5,'amazing best ever',0,'2024-01-03 16:10:53'),(4,59,3,21,5,'amzaing best ever',0,'2024-01-03 16:11:07'),(5,26,2,21,1,'den einai kalo to boudroumi',0,'2024-01-03 16:11:36'),(6,23,2,21,4,'eixe katsarides',0,'2024-01-03 16:11:55'),(7,20,2,21,5,'me evalan se klouva',1,'2022-01-03 16:12:10'),(8,10,2,21,5,'mou estrosan ena sentoni sto ipogeio mono. tha tous protimousa xana, to proteino',0,'2024-01-03 16:13:42');
/*!40000 ALTER TABLE `rating_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_facilities`
--

DROP TABLE IF EXISTS `room_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_facilities` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `room_id` int DEFAULT NULL,
  `facilities_id` int DEFAULT NULL,
  PRIMARY KEY (`sr_no`),
  KEY `id_idx` (`room_id`),
  KEY `id_idx1` (`facilities_id`),
  CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_facilities`
--

LOCK TABLES `room_facilities` WRITE;
/*!40000 ALTER TABLE `room_facilities` DISABLE KEYS */;
INSERT INTO `room_facilities` VALUES (40,7,7),(41,7,8),(42,7,9),(43,7,10),(44,7,11),(45,7,12),(46,8,7),(47,8,8),(48,8,9),(49,8,10),(50,8,11),(51,8,12),(67,3,7),(68,3,9),(69,3,12),(72,5,11),(79,2,7),(80,2,8),(81,2,9),(82,2,10),(83,2,11),(84,2,12);
/*!40000 ALTER TABLE `room_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_features`
--

DROP TABLE IF EXISTS `room_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_features` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `room_id` int DEFAULT NULL,
  `features_id` int DEFAULT NULL,
  PRIMARY KEY (`sr_no`),
  KEY `rm id_idx` (`room_id`),
  KEY `features id_idx` (`features_id`),
  CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_features`
--

LOCK TABLES `room_features` WRITE;
/*!40000 ALTER TABLE `room_features` DISABLE KEYS */;
INSERT INTO `room_features` VALUES (76,6,14),(77,7,10),(78,7,11),(79,7,12),(80,7,16),(81,7,17),(82,8,10),(83,8,11),(84,8,12),(85,8,13),(86,8,16),(87,8,17),(108,3,10),(109,3,12),(110,3,14),(111,3,15),(117,5,13),(118,5,15),(125,2,11),(126,2,12),(127,2,13),(128,2,15),(129,2,16),(130,2,17);
/*!40000 ALTER TABLE `room_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_images`
--

DROP TABLE IF EXISTS `room_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_images` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `room_id` int DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `thumb` tinyint DEFAULT '0',
  PRIMARY KEY (`sr_no`),
  KEY `room_img_idx` (`room_id`),
  CONSTRAINT `room_img` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_images`
--

LOCK TABLES `room_images` WRITE;
/*!40000 ALTER TABLE `room_images` DISABLE KEYS */;
INSERT INTO `room_images` VALUES (9,2,'IMG_92495.jpg',1),(10,3,'IMG_32033.png',1),(14,3,'IMG_16784.png',0),(15,3,'IMG_17781.png',0),(16,5,'IMG_46595.jpg',0),(17,5,'IMG_54310.jpg',1),(18,5,'IMG_20765.jpg',0),(19,6,'IMG_75481.jpg',0),(20,6,'IMG_32223.webp',1),(21,7,'IMG_80632.webp',1),(22,7,'IMG_34331.webp',0),(23,7,'IMG_13403.webp',0),(24,8,'IMG_67034.jpg',1),(25,8,'IMG_17567.jpg',0),(26,8,'IMG_80017.webp',0),(27,2,'IMG_29288.jpg',0),(28,4,'IMG_86991.png',1);
/*!40000 ALTER TABLE `room_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `area` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `adult` int DEFAULT NULL,
  `children` int DEFAULT NULL,
  `description` varchar(350) DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  `removed` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'adssaf',12,12,21,21,21,'svdzcf',1,1),(2,'makis 17',100,100,1001,100,100,'100100fortnite',1,0),(3,'sakis',200,200,2,200,200,'200 dasda\r\nfdsfc\r\nhello\r\nwhos this\r\nFacilities\r\nasda\r\nfortnite',1,0),(4,'takis',300,1000,1,15,100,'lets gooooooooooooooooo \r\ni hate my life\r\nallo ena re',1,0),(5,'boudroumi',20,5,2,3,1,'boudroumi einai autonoita ta pragmata pou ginontai se boudroumia',0,0),(6,'ipogeio',100000,1,1,100,100,'den xeroume ti iparxei ekei kato. tha se plirosoume emeis gia na pas',0,0),(7,'palati',10000,10000,1,1001,2000,'monadiko palati den einai ceutiko i klemmeno',0,0),(8,'souita',100,1000,3,15,2,'souita gia ton stelio xoris tzives',0,0);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `site_title` varchar(50) DEFAULT NULL,
  `site_about` varchar(250) DEFAULT NULL,
  `shutdown` tinyint DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'ALK HOTEL','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsum repellendus iusto quae laborum necessitatibus, dolore numquam dignissimos eligendi accusamus veritatis. Omnis eius iure quam error soluta libero dolorem quasi quidem?',0);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_details`
--

DROP TABLE IF EXISTS `team_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_details` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `picture` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_details`
--

LOCK TABLES `team_details` WRITE;
/*!40000 ALTER TABLE `team_details` DISABLE KEYS */;
INSERT INTO `team_details` VALUES (15,'stelios xoris','IMG_65068.jpg'),(16,'stelios me','IMG_62832.jpg'),(18,'tsonidis','IMG_33079.jpg'),(19,'tzegkas','IMG_34326.jpg');
/*!40000 ALTER TABLE `team_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_cred`
--

DROP TABLE IF EXISTS `user_cred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_cred` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `phonenum` varchar(100) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `is_verified` int DEFAULT '0',
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int DEFAULT '1',
  `datentime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_cred`
--

LOCK TABLES `user_cred` WRITE;
/*!40000 ALTER TABLE `user_cred` DISABLE KEYS */;
INSERT INTO `user_cred` VALUES (21,'alkin','alkanastasiadis@gmail.com','spiti mou','12',1,'2023-12-04','IMG_22324.jpeg','$2y$10$8Bz66k8Qrq1I3IP7UT8H7uY2/qirmsRBWcDqdbN/7SbLGEeDdLrsy',1,NULL,NULL,1,'2023-12-31 20:09:42'),(22,'alkin','alkanastasiadis@gmail.com','denseleo','12',1,'2023-12-04','IMG_40217.jpeg','$2y$10$8Bz66k8Qrq1I3IP7UT8H7uY2/qirmsRBWcDqdbN/7SbLGEeDdLrsy',0,NULL,NULL,1,'2023-12-31 20:09:42');
/*!40000 ALTER TABLE `user_cred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_queries`
--

DROP TABLE IF EXISTS `user_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_queries` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seen` tinyint DEFAULT '0',
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_queries`
--

LOCK TABLES `user_queries` WRITE;
/*!40000 ALTER TABLE `user_queries` DISABLE KEYS */;
INSERT INTO `user_queries` VALUES (14,'sadsada','adasdsaddesf@ewfdnl.com','gzsrwhz','hbsgzxv gfzhb','2023-12-29 00:00:00',0),(15,'hstdfghsztgx','adasdsaddesf@ewfdnl.com','jr65rrjth xx','jnvg xzsbrty','2023-12-29 00:00:00',0),(16,'sfddsfsdbhfd','erusicgrlefd@klsfkrjn.com','aghfecdrgt5h','6ht6r5eru6he5utdh','2023-12-29 00:00:00',0),(17,'rhy56e','erusicgrlefd@klsfkrjn.com','yfng bcvzhtyd','n vcgfdty xvcbhy','2023-12-29 00:00:00',0),(18,'gnythj dh','erusicgrlefd@klsfkrjn.com','fg vchydt','ikujn bjkmiu9.,','2023-12-29 00:00:00',0),(19,'b nlovgfdijgfl','erusicgrlefd@klsfkrjn.com','h iorlbk;l','kljhgfddfgbhn','2023-12-29 00:00:00',0),(20,'sdadsa','alkanastasiadis@gmail.com','dsadsa','adsddsa','2024-01-02 00:00:00',0);
/*!40000 ALTER TABLE `user_queries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-11 14:32:41
