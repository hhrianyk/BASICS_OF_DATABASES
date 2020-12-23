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
-- Table structure for table `партія`
--

DROP TABLE IF EXISTS `партія`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `партія` (
  `Код_партіі` varchar(45) NOT NULL,
  `Код_товара` varchar(45) NOT NULL,
  `Код_накладної` varchar(45) NOT NULL,
  `Кількість` int DEFAULT NULL,
  `Ціна` int DEFAULT NULL,
  PRIMARY KEY (`Код_партіі`),
  KEY `код товара` (`Код_товара`),
  FULLTEXT KEY `код накладної_idx` (`Код_накладної`) /*!80000 INVISIBLE */
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `партія`
--

LOCK TABLES `партія` WRITE;
/*!40000 ALTER TABLE `партія` DISABLE KEYS */;
INSERT INTO `партія` VALUES 
('KP10000','T10000','KN10000',15,4200),
('KP10001','T10001','KN10001',15,1400),
('KP10002','T10002','KN10002',25,2700),
('KP10003','T10003','KN10003',35,13500),
('KP10004','T10004','KN10002',15,4400),
('KP10005','T10005','KN10003',10,7400),
('KP10006','T10006','KN10003',13,4400),
('KP10007','T10007','KN10004',5,20000),
('KP10008','T10008','KN10005',15,1600),
('KP10009','T10009','KN10006',15,14000),
('KP10010','T10010','KN10003',35,80),
('KP10011','T10011','KN10006',13,450),
('KP10012','T10012','KN10007',20,800),
('KP10013','T10013','KN10006',20,6800),
('KP10014','T10014','KN10006',15,3100),
('KP10015','T10015','KN10007',13,450);
/*!40000 ALTER TABLE `партія` ENABLE KEYS */;
UNLOCK TABLES;
