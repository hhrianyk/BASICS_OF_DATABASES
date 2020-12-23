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
-- Table structure for table `товари`
--

DROP TABLE IF EXISTS `товари`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `товари` (
  `Код_товара` varchar(45) NOT NULL,
  `Код_торгової_марки` varchar(45) NOT NULL,
  `Код_під_типу` varchar(45) DEFAULT NULL,
  `Назва_товару` varchar(70) DEFAULT NULL,
  `Ціна_закупки` int DEFAULT NULL,
  `Код_матеріал` varchar(45) NOT NULL,
  PRIMARY KEY (`Код_товара`),
  KEY `Код торгової марки_idx` (`Код_торгової_марки`),
  KEY `Матеріал` (`Код_матеріал`) /*!80000 INVISIBLE */,
  KEY `Код товара` (`Код_товара`),
  KEY `Код під типу товару` (`Код_під_типу`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `товари`
--

LOCK TABLES `товари` WRITE;
/*!40000 ALTER TABLE `товари` DISABLE KEYS */;
INSERT INTO `товари` VALUES 
('T10000','TM20001','PT30001','Armchair for gamers',4000,'KM40000'),
('T10001','TM20007','PT30001','Flipchart on a tripod',1300,'KM40001'),
('T10002','TM20001','PT30002','RAMx4',2500,'KM40002'),
('T10003','TM20003','PT30003','PlayStation 5',13000,'KM40002'),
('T10004','TM20001','PT30002','RAMx8',4200,'KM40002'),
('T10005','TM20003','PT30003','PlayStation 4',7000,'KM40002'),
('T10006','TM20004','PT30001','Armchair for gamers',3800,'KM40000'),
('T10007','TM20005','PT30004','Jogway TJ532C',19000,'KM40005'),
('T10008','TM20006','PT30005','Alloid 3/8 ',1400,'KM40005'),
('T10009','TM20007','PT30006','S5 Max White',12000,'KM40002'),
('T10010','TM20007','PT30007','Champion seat-mat',70,'KM40000'),
('T10011','TM20008','PT30002','Set wire Ergo MK-540 USB Black',400,'KM40002'),
('T10012','TM20001','PT30008','Logan WS8-2',700,'KM40002'),
('T10013','TM20009','PT30009','X3 6/64GB Cobalt Blue',6400,'KM40001'),
('T10014','TM20010','PT30002','MSI B450 Gaming Plus Max',2600,'KM40006'),
('T10015','TM20001','PT30008','Allocacoc Powercube Extended',390,'KM40002');
/*!40000 ALTER TABLE `товари` ENABLE KEYS */;
UNLOCK TABLES;

