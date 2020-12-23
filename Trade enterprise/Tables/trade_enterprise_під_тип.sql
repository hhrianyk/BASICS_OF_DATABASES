-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trade_enterprise
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `під_тип`
--

DROP TABLE IF EXISTS `під_тип`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `під_тип` (
  `Код_під_типу` varchar(45) NOT NULL,
  `Код_типу` varchar(45) NOT NULL,
  `Під_тип` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Код_під_типу`),
  KEY `Код типу` (`Код_типу`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `під_тип`
--

LOCK TABLES `під_тип` WRITE;
/*!40000 ALTER TABLE `під_тип` DISABLE KEYS */;
INSERT INTO `під_тип` VALUES 
('PT30000','KPT10001','Flipchart '),
('PT30001','KPT10001','Сhair'),
('PT30002','KPT10002','Computer components'),
('PT30003','KPT10003','Console'),
('PT30004','KPT10004','Path'),
('PT30005','KPT10005','Universal set'),
('PT30006','KPT10006','RoboRock '),
('PT30007','KPT10001','Seat'),
('PT30008','KPT10007','Rosette'),
('PT30009','KPT1000','phone');
/*!40000 ALTER TABLE `під_тип` ENABLE KEYS */;
UNLOCK TABLES;

