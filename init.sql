-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: calendar
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `scheduled_time` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `zoom_account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqae7j3ej8ry1tb0l5rnidkwe6` (`zoom_account_id`),
  CONSTRAINT `FKqae7j3ej8ry1tb0l5rnidkwe6` FOREIGN KEY (`zoom_account_id`) REFERENCES `zoom_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,'2025-03-24 09:00:00.000000','Riunione 1',1),(2,'2025-03-24 09:00:00.000000','Riunione 2',2),(3,'2025-03-24 09:00:00.000000','Riunione 3',3),(4,'2025-03-24 09:00:00.000000','Riunione 4',4),(5,'2025-03-24 09:00:00.000000','Riunione 5',5),(6,'2025-03-24 10:00:00.000000','Riunione 6',1),(7,'2025-03-24 10:00:00.000000','Riunione 7',2),(8,'2025-03-24 10:00:00.000000','Riunione 8',3),(9,'2025-03-24 10:00:00.000000','Riunione 9',4),(10,'2025-03-24 11:00:00.000000','Riunione 10',1),(11,'2025-03-25 14:00:00.000000','Riunione 11',1),(12,'2025-03-25 14:00:00.000000','Riunione 12',2),(13,'2025-03-25 14:00:00.000000','Riunione 13',3),(14,'2025-03-25 15:00:00.000000','Riunione 14',1),(15,'2025-03-25 15:00:00.000000','Riunione 15',2),(16,'2025-03-26 09:00:00.000000','Riunione 16',1),(17,'2025-03-26 09:00:00.000000','Riunione 17',2),(18,'2025-03-26 09:00:00.000000','Riunione 18',3),(19,'2025-03-26 10:00:00.000000','Riunione 19',1),(20,'2025-03-26 11:00:00.000000','Riunione 20',1),(21,'2025-03-27 14:00:00.000000','Riunione 21',1),(22,'2025-03-27 14:00:00.000000','Riunione 22',2),(23,'2025-03-27 14:00:00.000000','Riunione 23',3),(24,'2025-03-27 14:00:00.000000','Riunione 24',4),(25,'2025-03-27 14:00:00.000000','Riunione 25',5),(26,'2025-03-28 16:00:00.000000','Riunione 26',1),(27,'2025-03-28 16:00:00.000000','Riunione 27',2),(28,'2025-03-28 16:00:00.000000','Riunione 28',3),(29,'2025-03-24 10:00:00.000000','Prenotazione automatica',5),(30,'2025-03-24 11:00:00.000000','Prenotazione automatica',2),(31,'2025-03-24 11:00:00.000000','Prenotazione automatica',3),(32,'2025-03-24 11:00:00.000000','Prenotazione automatica',4),(33,'2025-03-24 11:00:00.000000','Prenotazione automatica',5),(34,'2025-03-26 10:00:00.000000','Prenotazione automatica',2),(35,'2025-03-26 11:00:00.000000','Prenotazione automatica',2),(36,'2025-03-26 12:00:00.000000','Prenotazione automatica',1),(37,'2025-03-26 12:00:00.000000','Prenotazione automatica',2),(38,'2025-03-26 12:00:00.000000','Prenotazione automatica',3),(39,'2025-03-26 12:00:00.000000','Prenotazione automatica',4),(40,'2025-03-26 12:00:00.000000','Prenotazione automatica',5),(41,'2025-03-26 11:00:00.000000','Prenotazione automatica',3),(42,'2025-03-27 09:00:00.000000','Prenotazione automatica',1),(43,'2025-03-27 10:00:00.000000','Prenotazione automatica',1),(44,'2025-01-14 09:00:00.000000','Prenotazione automatica',1),(45,'2025-03-24 12:00:00.000000','Prenotazione automatica',1),(46,'2025-03-25 14:00:00.000000','Prenotazione automatica',4),(47,'2025-03-26 14:00:00.000000','Prenotazione automatica',1),(48,'2025-03-26 15:00:00.000000','Prenotazione automatica',1),(49,'2025-03-24 12:00:00.000000','Prenotazione automatica',2),(50,'2025-03-27 11:00:00.000000','Prenotazione automatica',1),(51,'2025-04-02 11:00:00.000000','Prenotazione automatica',1),(52,'2025-04-02 10:00:00.000000','Prenotazione automatica',1),(53,'2025-04-02 10:00:00.000000','Prenotazione automatica',2),(54,'2025-04-02 11:00:00.000000','Prenotazione automatica',2),(55,'2025-04-02 11:00:00.000000','Prenotazione automatica',3),(56,'2025-04-03 11:00:00.000000','Prenotazione automatica',1),(57,'2025-04-03 11:00:00.000000','Prenotazione automatica',2),(58,'2025-04-02 10:00:00.000000','Prenotazione automatica',3),(59,'2025-04-01 16:00:00.000000','Prenotazione automatica',1),(60,'2025-04-05 09:00:00.000000','Prenotazione automatica',1),(61,'2025-04-05 09:00:00.000000','Prenotazione automatica',2),(62,'2025-04-05 10:00:00.000000','Prenotazione automatica',1),(63,'2025-03-21 09:00:00.000000','Prenotazione automatica',1),(64,'2025-04-04 10:00:00.000000','Prenotazione automatica',1),(65,'2025-04-04 11:00:00.000000','Prenotazione automatica',1),(66,'2025-04-04 12:00:00.000000','Prenotazione automatica',1),(67,'2025-04-04 12:00:00.000000','Prenotazione automatica',2),(68,'2025-03-31 09:00:00.000000','Prenotazione automatica',1),(69,'2025-03-31 09:00:00.000000','Prenotazione automatica',2),(70,'2025-04-01 09:00:00.000000','Prenotazione automatica',4),(71,'2025-04-01 09:00:00.000000','Prenotazione automatica',5),(72,'2025-04-01 10:00:00.000000','Prenotazione automatica',5),(73,'2025-04-01 15:00:00.000000','Prenotazione automatica',5),(74,'2025-04-01 16:00:00.000000','Prenotazione automatica',5),(75,'2025-04-01 17:00:00.000000','Prenotazione automatica',5),(76,'2025-03-26 10:00:00.000000','Prenotazione automatica',3),(77,'2025-03-27 11:00:00.000000','Prenotazione automatica',5),(78,'2025-03-27 11:00:00.000000','Prenotazione automatica',2),(79,'2025-04-02 09:00:00.000000','Prenotazione automatica',3),(80,'2025-04-01 12:00:00.000000','Prenotazione automatica',1),(81,'2025-04-01 09:00:00.000000','Prenotazione automatica',1),(82,'2025-04-08 10:00:00.000000','Prenotazione automatica',1),(83,'2025-04-08 10:00:00.000000','Prenotazione automatica',5),(84,'2025-04-08 12:00:00.000000','Prenotazione automatica',5),(85,'2025-04-08 14:00:00.000000','Prenotazione automatica',5),(86,'2025-04-08 15:00:00.000000','Prenotazione automatica',5),(87,'2025-04-08 16:00:00.000000','Prenotazione automatica',5),(88,'2025-04-08 17:00:00.000000','Prenotazione automatica',4),(89,'2025-04-09 15:00:00.000000','Prenotazione automatica',3),(90,'2025-04-09 14:00:00.000000','Prenotazione automatica',2),(91,'2025-04-09 12:00:00.000000','Prenotazione automatica',2),(92,'2025-04-09 11:00:00.000000','Prenotazione automatica',5),(93,'2025-04-09 10:00:00.000000','Prenotazione automatica',3),(94,'2025-04-09 11:00:00.000000','Prenotazione automatica',3),(95,'2025-04-10 14:00:00.000000','Prenotazione automatica',1),(96,'2025-04-10 12:00:00.000000','Prenotazione automatica',1),(97,'2025-04-11 10:00:00.000000','Prenotazione automatica',1),(98,'2025-04-11 09:00:00.000000','Prenotazione automatica',1),(99,'2025-04-11 14:00:00.000000','Prenotazione automatica',1),(100,'2025-04-07 11:00:00.000000','Prenotazione automatica',1),(101,'2025-04-07 09:00:00.000000','Prenotazione automatica',1),(102,'2025-04-08 10:00:00.000000','Prenotazione automatica',2);
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_intervals`
--

DROP TABLE IF EXISTS `booking_intervals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_intervals` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_end` datetime(6) DEFAULT NULL,
  `date_start` datetime(6) DEFAULT NULL,
  `zoom_account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK118a08kmfqlar8c8poseqm5a2` (`zoom_account_id`),
  CONSTRAINT `FK118a08kmfqlar8c8poseqm5a2` FOREIGN KEY (`zoom_account_id`) REFERENCES `zoom_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_intervals`
--

LOCK TABLES `booking_intervals` WRITE;
/*!40000 ALTER TABLE `booking_intervals` DISABLE KEYS */;
INSERT INTO `booking_intervals` VALUES (1,'2025-03-24 10:00:00.000000','2025-03-24 09:00:00.000000',1),(2,'2025-03-24 10:00:00.000000','2025-03-24 09:00:00.000000',2),(3,'2025-03-24 10:00:00.000000','2025-03-24 09:00:00.000000',3),(4,'2025-03-24 10:00:00.000000','2025-03-24 09:00:00.000000',4),(5,'2025-03-24 10:00:00.000000','2025-03-24 09:00:00.000000',5),(6,'2025-03-24 11:00:00.000000','2025-03-24 10:00:00.000000',1),(7,'2025-03-24 11:00:00.000000','2025-03-24 10:00:00.000000',2),(8,'2025-03-24 11:00:00.000000','2025-03-24 10:00:00.000000',3),(9,'2025-03-24 11:00:00.000000','2025-03-24 10:00:00.000000',4),(10,'2025-03-24 12:00:00.000000','2025-03-24 11:00:00.000000',1),(11,'2025-03-25 15:00:00.000000','2025-03-25 14:00:00.000000',1),(12,'2025-03-25 15:00:00.000000','2025-03-25 14:00:00.000000',2),(13,'2025-03-25 15:00:00.000000','2025-03-25 14:00:00.000000',3),(14,'2025-03-25 16:00:00.000000','2025-03-25 15:00:00.000000',1),(15,'2025-03-25 16:00:00.000000','2025-03-25 15:00:00.000000',2),(16,'2025-03-26 10:00:00.000000','2025-03-26 09:00:00.000000',1),(17,'2025-03-26 10:00:00.000000','2025-03-26 09:00:00.000000',2),(18,'2025-03-26 10:00:00.000000','2025-03-26 09:00:00.000000',3),(19,'2025-03-26 11:00:00.000000','2025-03-26 10:00:00.000000',1),(20,'2025-03-26 12:00:00.000000','2025-03-26 11:00:00.000000',1),(21,'2025-03-27 15:00:00.000000','2025-03-27 14:00:00.000000',1),(22,'2025-03-27 15:00:00.000000','2025-03-27 14:00:00.000000',2),(23,'2025-03-27 15:00:00.000000','2025-03-27 14:00:00.000000',3),(24,'2025-03-27 15:00:00.000000','2025-03-27 14:00:00.000000',4),(25,'2025-03-27 15:00:00.000000','2025-03-27 14:00:00.000000',5),(26,'2025-03-28 17:00:00.000000','2025-03-28 16:00:00.000000',1),(27,'2025-03-28 17:00:00.000000','2025-03-28 16:00:00.000000',2),(28,'2025-03-28 17:00:00.000000','2025-03-28 16:00:00.000000',3),(29,'2025-03-24 11:00:00.000000','2025-03-24 10:00:00.000000',5),(30,'2025-03-24 12:00:00.000000','2025-03-24 11:00:00.000000',2),(31,'2025-03-24 12:00:00.000000','2025-03-24 11:00:00.000000',3),(32,'2025-03-24 12:00:00.000000','2025-03-24 11:00:00.000000',4),(33,'2025-03-24 12:00:00.000000','2025-03-24 11:00:00.000000',5),(34,'2025-03-26 11:00:00.000000','2025-03-26 10:00:00.000000',2),(35,'2025-03-26 12:00:00.000000','2025-03-26 11:00:00.000000',2),(36,'2025-03-26 13:00:00.000000','2025-03-26 12:00:00.000000',1),(37,'2025-03-26 13:00:00.000000','2025-03-26 12:00:00.000000',2),(38,'2025-03-26 13:00:00.000000','2025-03-26 12:00:00.000000',3),(39,'2025-03-26 13:00:00.000000','2025-03-26 12:00:00.000000',4),(40,'2025-03-26 13:00:00.000000','2025-03-26 12:00:00.000000',5),(41,'2025-03-26 12:00:00.000000','2025-03-26 11:00:00.000000',3),(42,'2025-03-27 10:00:00.000000','2025-03-27 09:00:00.000000',1),(43,'2025-03-27 11:00:00.000000','2025-03-27 10:00:00.000000',1),(44,'2025-01-14 10:00:00.000000','2025-01-14 09:00:00.000000',1),(45,'2025-03-24 13:00:00.000000','2025-03-24 12:00:00.000000',1),(46,'2025-03-25 15:00:00.000000','2025-03-25 14:00:00.000000',4),(47,'2025-03-26 15:00:00.000000','2025-03-26 14:00:00.000000',1),(48,'2025-03-26 16:00:00.000000','2025-03-26 15:00:00.000000',1),(49,'2025-03-24 13:00:00.000000','2025-03-24 12:00:00.000000',2),(50,'2025-03-27 12:00:00.000000','2025-03-27 11:00:00.000000',1),(51,'2025-04-02 12:00:00.000000','2025-04-02 11:00:00.000000',1),(52,'2025-04-02 11:00:00.000000','2025-04-02 10:00:00.000000',1),(53,'2025-04-02 11:00:00.000000','2025-04-02 10:00:00.000000',2),(54,'2025-04-02 12:00:00.000000','2025-04-02 11:00:00.000000',2),(55,'2025-04-02 12:00:00.000000','2025-04-02 11:00:00.000000',3),(56,'2025-04-03 12:00:00.000000','2025-04-03 11:00:00.000000',1),(57,'2025-04-03 12:00:00.000000','2025-04-03 11:00:00.000000',2),(58,'2025-04-02 11:00:00.000000','2025-04-02 10:00:00.000000',3),(59,'2025-04-01 17:00:00.000000','2025-04-01 16:00:00.000000',1),(60,'2025-04-05 10:00:00.000000','2025-04-05 09:00:00.000000',1),(61,'2025-04-05 10:00:00.000000','2025-04-05 09:00:00.000000',2),(62,'2025-04-05 11:00:00.000000','2025-04-05 10:00:00.000000',1),(63,'2025-03-21 10:00:00.000000','2025-03-21 09:00:00.000000',1),(64,'2025-04-04 11:00:00.000000','2025-04-04 10:00:00.000000',1),(65,'2025-04-04 12:00:00.000000','2025-04-04 11:00:00.000000',1),(66,'2025-04-04 13:00:00.000000','2025-04-04 12:00:00.000000',1),(67,'2025-04-04 13:00:00.000000','2025-04-04 12:00:00.000000',2),(68,'2025-03-31 10:00:00.000000','2025-03-31 09:00:00.000000',1),(69,'2025-03-31 10:00:00.000000','2025-03-31 09:00:00.000000',2),(70,'2025-04-01 10:00:00.000000','2025-04-01 09:00:00.000000',4),(71,'2025-04-01 10:00:00.000000','2025-04-01 09:00:00.000000',5),(72,'2025-04-01 11:00:00.000000','2025-04-01 10:00:00.000000',5),(73,'2025-04-01 16:00:00.000000','2025-04-01 15:00:00.000000',5),(74,'2025-04-01 17:00:00.000000','2025-04-01 16:00:00.000000',5),(75,'2025-04-01 18:00:00.000000','2025-04-01 17:00:00.000000',5),(76,'2025-03-26 11:00:00.000000','2025-03-26 10:00:00.000000',3),(77,'2025-03-27 12:00:00.000000','2025-03-27 11:00:00.000000',5),(78,'2025-03-27 12:00:00.000000','2025-03-27 11:00:00.000000',2),(79,'2025-04-02 10:00:00.000000','2025-04-02 09:00:00.000000',3),(80,'2025-04-01 13:00:00.000000','2025-04-01 12:00:00.000000',1),(81,'2025-04-01 10:00:00.000000','2025-04-01 09:00:00.000000',1),(82,'2025-04-08 11:00:00.000000','2025-04-08 10:00:00.000000',1),(83,'2025-04-08 11:00:00.000000','2025-04-08 10:00:00.000000',5),(84,'2025-04-08 13:00:00.000000','2025-04-08 12:00:00.000000',5),(85,'2025-04-08 15:00:00.000000','2025-04-08 14:00:00.000000',5),(86,'2025-04-08 16:00:00.000000','2025-04-08 15:00:00.000000',5),(87,'2025-04-08 17:00:00.000000','2025-04-08 16:00:00.000000',5),(88,'2025-04-08 18:00:00.000000','2025-04-08 17:00:00.000000',4),(89,'2025-04-09 16:00:00.000000','2025-04-09 15:00:00.000000',3),(90,'2025-04-09 15:00:00.000000','2025-04-09 14:00:00.000000',2),(91,'2025-04-09 13:00:00.000000','2025-04-09 12:00:00.000000',2),(92,'2025-04-09 12:00:00.000000','2025-04-09 11:00:00.000000',5),(93,'2025-04-09 11:00:00.000000','2025-04-09 10:00:00.000000',3),(94,'2025-04-09 12:00:00.000000','2025-04-09 11:00:00.000000',3),(95,'2025-04-10 15:00:00.000000','2025-04-10 14:00:00.000000',1),(96,'2025-04-10 13:00:00.000000','2025-04-10 12:00:00.000000',1),(97,'2025-04-11 11:00:00.000000','2025-04-11 10:00:00.000000',1),(98,'2025-04-11 10:00:00.000000','2025-04-11 09:00:00.000000',1),(99,'2025-04-11 15:00:00.000000','2025-04-11 14:00:00.000000',1),(100,'2025-04-07 12:00:00.000000','2025-04-07 11:00:00.000000',1),(101,'2025-04-07 10:00:00.000000','2025-04-07 09:00:00.000000',1),(102,'2025-04-08 11:00:00.000000','2025-04-08 10:00:00.000000',2);
/*!40000 ALTER TABLE `booking_intervals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `daily_calendar_summary`
--

DROP TABLE IF EXISTS `daily_calendar_summary`;
/*!50001 DROP VIEW IF EXISTS `daily_calendar_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `daily_calendar_summary` AS SELECT 
 1 AS `date`,
 1 AS `working`,
 1 AS `appointments_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `day_status`
--

DROP TABLE IF EXISTS `day_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_status` (
  `date` date NOT NULL,
  `working` bit(1) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_status`
--

LOCK TABLES `day_status` WRITE;
/*!40000 ALTER TABLE `day_status` DISABLE KEYS */;
INSERT INTO `day_status` VALUES ('2025-03-21',_binary ''),('2025-03-22',_binary '\0'),('2025-03-23',_binary '\0'),('2025-03-24',_binary ''),('2025-03-25',_binary ''),('2025-03-26',_binary ''),('2025-03-27',_binary ''),('2025-03-28',_binary ''),('2025-03-29',_binary '\0'),('2025-03-30',_binary '\0'),('2025-03-31',_binary ''),('2025-04-01',_binary ''),('2025-04-02',_binary ''),('2025-04-03',_binary ''),('2025-04-04',_binary ''),('2025-04-05',_binary ''),('2025-04-06',_binary '\0'),('2025-04-07',_binary ''),('2025-04-08',_binary ''),('2025-04-09',_binary ''),('2025-04-10',_binary ''),('2025-04-11',_binary ''),('2025-04-12',_binary '\0'),('2025-04-13',_binary '\0'),('2025-04-14',_binary ''),('2025-04-15',_binary ''),('2025-04-16',_binary ''),('2025-04-17',_binary ''),('2025-04-18',_binary ''),('2025-04-19',_binary '\0'),('2025-04-20',_binary '\0'),('2025-04-21',_binary ''),('2025-04-22',_binary ''),('2025-04-23',_binary ''),('2025-04-24',_binary ''),('2025-04-25',_binary ''),('2025-04-26',_binary '\0'),('2025-04-27',_binary '\0'),('2025-04-28',_binary ''),('2025-04-29',_binary ''),('2025-04-30',_binary ''),('2025-05-01',_binary ''),('2025-05-02',_binary ''),('2025-05-03',_binary '\0'),('2025-05-04',_binary '\0'),('2025-05-05',_binary ''),('2025-05-06',_binary ''),('2025-05-07',_binary ''),('2025-05-08',_binary ''),('2025-05-09',_binary ''),('2025-05-10',_binary '\0'),('2025-05-11',_binary '\0'),('2025-05-12',_binary ''),('2025-05-13',_binary ''),('2025-05-14',_binary ''),('2025-05-15',_binary ''),('2025-05-16',_binary ''),('2025-05-17',_binary '\0'),('2025-05-18',_binary '\0'),('2025-05-19',_binary ''),('2025-05-20',_binary ''),('2025-05-21',_binary ''),('2025-05-22',_binary ''),('2025-05-23',_binary ''),('2025-05-24',_binary '\0'),('2025-05-25',_binary '\0'),('2025-05-26',_binary ''),('2025-05-27',_binary ''),('2025-05-28',_binary ''),('2025-05-29',_binary ''),('2025-05-30',_binary ''),('2025-05-31',_binary '\0'),('2025-06-01',_binary '\0'),('2025-06-02',_binary ''),('2025-06-03',_binary ''),('2025-06-04',_binary ''),('2025-06-05',_binary ''),('2025-06-06',_binary ''),('2025-06-07',_binary '\0'),('2025-06-08',_binary '\0'),('2025-06-09',_binary ''),('2025-06-10',_binary ''),('2025-06-11',_binary ''),('2025-06-12',_binary ''),('2025-06-13',_binary ''),('2025-06-14',_binary '\0'),('2025-06-15',_binary '\0'),('2025-06-16',_binary ''),('2025-06-17',_binary ''),('2025-06-18',_binary ''),('2025-06-19',_binary ''),('2025-06-20',_binary ''),('2025-06-21',_binary '\0'),('2025-06-22',_binary '\0'),('2025-06-23',_binary ''),('2025-06-24',_binary '');
/*!40000 ALTER TABLE `day_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `most_used_account`
--

DROP TABLE IF EXISTS `most_used_account`;
/*!50001 DROP VIEW IF EXISTS `most_used_account`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_used_account` AS SELECT 
 1 AS `date`,
 1 AS `working`,
 1 AS `appointment_number`,
 1 AS `most_used_account`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `zoom_accounts`
--

DROP TABLE IF EXISTS `zoom_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zoom_accounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zoom_accounts`
--

LOCK TABLES `zoom_accounts` WRITE;
/*!40000 ALTER TABLE `zoom_accounts` DISABLE KEYS */;
INSERT INTO `zoom_accounts` VALUES (1,'zoom1@gmail.com'),(2,'zoom2@gmail.com'),(3,'zoom3@gmail.com'),(4,'zoom4@gmail.com'),(5,'zoom5@gmail.com');
/*!40000 ALTER TABLE `zoom_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `daily_calendar_summary`
--

/*!50001 DROP VIEW IF EXISTS `daily_calendar_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `daily_calendar_summary` AS select `ds`.`date` AS `date`,`ds`.`working` AS `working`,count(`a`.`id`) AS `appointments_count` from (`day_status` `ds` left join `appointments` `a` on((cast(`a`.`scheduled_time` as date) = `ds`.`date`))) group by `ds`.`date`,`ds`.`working` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_used_account`
--

/*!50001 DROP VIEW IF EXISTS `most_used_account`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_used_account` AS select `day_status`.`date` AS `date`,`day_status`.`working` AS `working`,count(`appointments`.`id`) AS `appointment_number`,(select `zoom_accounts`.`email` from (`appointments` join `zoom_accounts` on((`appointments`.`zoom_account_id` = `zoom_accounts`.`id`))) where (cast(`appointments`.`scheduled_time` as date) = `day_status`.`date`) group by `zoom_accounts`.`email` order by count(`zoom_accounts`.`id`) desc limit 1) AS `most_used_account` from (`day_status` left join `appointments` on((cast(`appointments`.`scheduled_time` as date) = `day_status`.`date`))) group by `day_status`.`date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-24 17:01:53
