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
-- Table structure for table `торгові_марки`
--

DROP TABLE IF EXISTS `торгові_марки`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `торгові_марки` (
  `Код_торгової_марки` varchar(45) NOT NULL,
  `Код_постачальника` varchar(45) DEFAULT NULL,
  `торгова_марка` varchar(45) DEFAULT NULL,
  `Країна` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Код_торгової_марки`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `торгові_марки`
--

LOCK TABLES `торгові_марки` WRITE;
/*!40000 ALTER TABLE `торгові_марки` DISABLE KEYS */;
INSERT INTO `торгові_марки` VALUES 
('TM20000','PT1000','TTR','Fra'),
('TM20001','PT1001','MDRA','Spain'),
('TM20003','PT1002','LOGIT','Germany'),
('TM20004','PT1003','SONY','Japan '),
('TM20005','PT1004','MLXXP','Taiwan'),
('TM20006','PT1006','MTuls','China'),
('TM20007','PT1007','Xiaomi','China'),
('TM20008','PT1007','ROZOT','Finland'),
('TM20009','PT1001','POCO','China'),
('TM20010','PT1003','AMD','USA');
/*!40000 ALTER TABLE `торгові_марки` ENABLE KEYS */;
UNLOCK TABLES;

