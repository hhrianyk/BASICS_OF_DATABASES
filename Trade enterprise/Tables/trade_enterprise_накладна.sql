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
-- Table structure for table `накладна`
--

DROP TABLE IF EXISTS `накладна`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `накладна` (
  `Код_накладної` varchar(45) NOT NULL,
  `Код_виду_операції` varchar(45) NOT NULL,
  `Код_статусу_операції` varchar(45) NOT NULL,
  `Номер` int DEFAULT NULL,
  `Дата` date DEFAULT NULL,
  `Код_співробітника` varchar(45) NOT NULL,
  PRIMARY KEY (`Код_накладної`),
  KEY `Код співробітник` (`Код_співробітника`),
  KEY `Код Статус` (`Код_статусу_операції`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `накладна`
--

LOCK TABLES `накладна` WRITE;
/*!40000 ALTER TABLE `накладна` DISABLE KEYS */;
INSERT INTO `накладна` VALUES 
('KN10000','KVO10000','KSO1000',12345,'2020-03-22','KS5232h'),
('KN10001','KVO10001','KSO1001',12346,'2020-09-20','KS5232h'),
('KN10002','KVO10002','KSO1000',12347,'2020-08-08','KS5232h'),
('KN10003','KVO10003','KSO1002',12348,'2020-11-19','KS5232h'),
('KN10004','KVO10003','KSO1002',12349,'2020-10-19','KS5232h'),
('KN10005','KVO10003','KSO1002',12350,'2020-01-19','KS5232h'),
('KN10006','KVO10004','KSO1004',12351,'2020-11-28','KS5232h'),
('KN10007','KVO10005','KSO1003',12352,'2020-12-28','KS5232h');
/*!40000 ALTER TABLE `накладна` ENABLE KEYS */;
UNLOCK TABLES;

