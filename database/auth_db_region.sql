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
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `region_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'804644b2-f544-43c9-a206-9694289b37e3','indonesia','jakarta','jakarta',1,'2024-03-01 09:17:45','2024-03-01 09:17:45'),(2,'73eb4e1e-866c-4d89-93f8-fe009b7794a9','eropa','aceh','bsd',1,'2024-03-01 09:18:18','2024-03-01 09:18:18'),(3,'95ddcaef-f6bf-49dd-8561-d00beca9c816','eropa','aceh','bsd',1,'2024-03-01 09:18:21','2024-03-01 09:18:21'),(4,'493674ae-665d-46b9-b16e-6bf07447e344','eropa','aceh','bsd',1,'2024-03-01 09:18:23','2024-03-01 09:18:23'),(41,'d67f51d1-6670-489e-8663-150a57a195a7','indonesia','jakarta','jakarta',1,'2024-03-05 07:16:11','2024-03-05 07:16:11'),(42,'b53c3c53-be15-4438-b059-791dbf4ff9fa','ARAB','IRAK','PAKISTAN',1,'2024-03-14 04:11:30','2024-03-14 04:11:30'),(43,'b2c434d3-59ee-4720-9a9b-92114abf9343','CHINA','YOUZHONG','CHINA TOWN',1,'2024-03-14 04:16:26','2024-03-14 04:16:26'),(44,'bd83b275-a4fb-45f2-b38f-7f9f72f7c783','RUSIA','RUDAL','AJAH',1,'2024-03-14 04:34:05','2024-03-14 04:34:05'),(47,'1e40e5d1-d34b-45b8-a51e-d84fdaf1fc6f','JAWABARAT','KUNINGAN','CIREBON',1,'2024-03-19 06:52:42','2024-03-19 06:52:42'),(48,'7826ea37-0ee3-4ba8-94d4-73bb117f0cd7','indonesia','jakarta','jakarta',1,'2024-03-21 09:07:28','2024-03-21 09:07:28');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
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
