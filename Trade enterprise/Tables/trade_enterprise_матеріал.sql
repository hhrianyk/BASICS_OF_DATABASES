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
-- Table structure for table `матеріал`
--

DROP TABLE IF EXISTS `матеріал`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `матеріал` (
  `Код_матеріал` varchar(45) NOT NULL,
  `матеріал` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Код_матеріал`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `матеріал`
--

LOCK TABLES `матеріал` WRITE;
/*!40000 ALTER TABLE `матеріал` DISABLE KEYS */;
INSERT INTO `матеріал` VALUES 
('KM40000','Eco-leather'),
('KM40001','Aluminum'),
('KM40002','Plastic '),
('KM40004','Glass'),
('KM40005','Steel'),
('KM40006','Universally');
/*!40000 ALTER TABLE `матеріал` ENABLE KEYS */;
UNLOCK TABLES;

