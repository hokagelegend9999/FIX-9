-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: auth_db
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vendingpoint`
--

DROP TABLE IF EXISTS `vendingpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendingpoint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `pointname` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contactperson` varchar(255) DEFAULT NULL,
  `tlp` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdAt` varchar(255) DEFAULT NULL,
  `updatedAt` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendingpoint`
--

LOCK TABLES `vendingpoint` WRITE;
/*!40000 ALTER TABLE `vendingpoint` DISABLE KEYS */;
INSERT INTO `vendingpoint` VALUES (1,'8afb3423-bf8f-4855-9e66-c2ef95192374','sdsdDD','sfASDSD','DFDSffdSFsdf','fdFdfdfDF','FDADSDFSDF','hokage@gmail.com','2024-03-16 15:59:39','2024-03-21 07:39:51','1','active'),(2,'d247ccc0-3e4c-4040-804c-4042302bdeed','hinata','surabaya','jawa','hinata naruto','08121212','hinata@gmail.com','2024-03-17 07:02:50','2024-03-21 07:39:52','3','active'),(3,'60476c61-c92d-41d3-a986-2511bb667ba6','tem02','surabaya','jl.simatupang','pamulang','0812','hokagelegend9999@gmail.com','2024-03-18 08:54:17','2024-03-21 07:39:52','3','active'),(4,'94c72438-f6e9-4926-8a27-25349bbb5a8f','tem02','jakarta','jakarta','pamulang','0813','minato@gmail.com','2024-03-18 08:57:44','2024-03-21 07:39:53','3','active');
/*!40000 ALTER TABLE `vendingpoint` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-21 20:22:25
