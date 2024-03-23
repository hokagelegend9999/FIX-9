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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0sHKTNCiHYexhl_lkNEdCT8bDcqnb15X','2024-03-22 06:37:56','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:37:56','2024-03-21 06:37:56'),('a6tbFU342SKV4-R-rkFukDKUOU2cOypx','2024-03-22 07:39:58','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 07:39:58','2024-03-21 07:39:58'),('AHV1AzZTm_MQENRwvQXXxOAUVW9r-OT3','2024-03-22 06:37:56','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:37:56','2024-03-21 06:37:56'),('aMlDBEhZK4Wq4RkAirp-1s76x82FvaaD','2024-03-22 06:53:14','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:53:14','2024-03-21 06:53:14'),('AWiC_HFWmWcDd9_VyOCGftQyA4H9nJSo','2024-03-22 05:25:54','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 05:25:54','2024-03-21 05:25:54'),('a_jufOZC2PJuVvTKTqHeupj1wn76WpDe','2024-03-22 07:39:57','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 07:39:57','2024-03-21 07:39:57'),('dwQfHMKHZnNK9J3avJDTn4RqJrBo5S4Z','2024-03-22 06:37:52','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:37:52','2024-03-21 06:37:52'),('ehmYX0kbIYfhT2t9nQsMuySC6cHkpeNv','2024-03-22 07:39:53','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 07:39:53','2024-03-21 07:39:53'),('eJNbZ3UE29YG8SqsoYhAcDw5ExW2eMT0','2024-03-22 06:52:20','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:52:20','2024-03-21 06:52:20'),('FvA6g85DQ1eB04cUEMX02MQDK1-hXnm7','2024-03-22 09:15:13','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"2adc2aab-4e54-42a5-83ca-074174b427fb\"}','2024-03-21 05:45:55','2024-03-21 09:15:13'),('FVVt3vGrPRu0_Dto2ZEv8NV8OsLCPMfV','2024-03-22 05:25:33','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 05:25:33','2024-03-21 05:25:33'),('fw4Dy3GFRI7SwGNVqFbqpMdrwKYZeqlD','2024-03-22 07:46:36','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 07:46:36','2024-03-21 07:46:36'),('GrfSjn9x4DPxd1Tvhvcjjv1QS5osPWDI','2024-03-22 08:38:08','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 08:38:08','2024-03-21 08:38:08'),('G_Pbze7HU7sHpq0_wjdLvW5_ZJhf0TSm','2024-03-22 06:53:14','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:53:14','2024-03-21 06:53:14'),('hJ34eSo29fYq4ctX3IpYzIigzJrC6V0K','2024-03-22 05:17:40','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 05:17:40','2024-03-21 05:17:40'),('HJIsMB2fY4_t2NNxFHpBnt5eSWjgaevD','2024-03-22 05:28:08','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 05:28:08','2024-03-21 05:28:08'),('Ii8u7qO-bWpiUhMswvQV5auQsxumEFQi','2024-03-22 07:39:51','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 07:39:51','2024-03-21 07:39:51'),('k7_M5mSO-b5Mk40JhYqFKDnoABuKto9e','2024-03-22 07:39:52','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 07:39:52','2024-03-21 07:39:52'),('LoAhuTeIrBMiBek3V0pGEec5KFY7B6Cf','2024-03-22 06:37:59','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:37:59','2024-03-21 06:37:59'),('n-xEVFwhW0JSAk1R6FKDfVw_eLndihOD','2024-03-22 06:37:59','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:37:59','2024-03-21 06:37:59'),('N3_3rK51eTT0UvQy8vCar4aRVTQIyku5','2024-03-22 06:37:57','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:37:57','2024-03-21 06:37:57'),('O7PohmuyCwfQt5Z-wO9UkA-CywEHJgVN','2024-03-22 05:28:02','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 05:28:02','2024-03-21 05:28:02'),('OIfaUdTaeWjFlDhJzc6o_ChomCpw2saU','2024-03-22 06:52:40','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:52:40','2024-03-21 06:52:40'),('QG8Wm08o-Bo-XBS6U3l2fC59VhP8LMmV','2024-03-22 06:53:12','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:53:12','2024-03-21 06:53:12'),('r1ddF1Q1S5HaEEcO97IzydkDiWLR8KNA','2024-03-22 06:33:27','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:33:27','2024-03-21 06:33:27'),('RUBznWSQkvg4gBQ__51g6d2Rb2bqGKuI','2024-03-22 06:34:38','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:34:38','2024-03-21 06:34:38'),('RyCAmyQeEfN6wDbjyGgFABRpgeO8TiFs','2024-03-22 06:33:20','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:33:20','2024-03-21 06:33:20'),('s_GI9H9_w-ZOQ0dzY6ObGg4_rpdYzAWJ','2024-03-22 07:41:46','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 07:41:46','2024-03-21 07:41:46'),('tEs_vAbXpvGgoVPD4zgM0y4ZMQ2FgT0A','2024-03-22 06:37:55','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:37:55','2024-03-21 06:37:55'),('tOwxtGgt8UxQQZBsfclhFsrMi3YDJuj5','2024-03-22 06:52:49','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:52:49','2024-03-21 06:52:49'),('w48cIIb7JyhZF9fGTCCczUT19Tfq04-q','2024-03-22 04:50:49','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 04:50:49','2024-03-21 04:50:49'),('ymDhi1602n-ADFinA4W59xZJonq8YjTA','2024-03-22 06:53:13','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:53:13','2024-03-21 06:53:13'),('YTzH3ZJQqUpbjSrpUd0pGEHDMrDRxk8A','2024-03-22 09:04:33','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"6db41a73-9595-41eb-8b0e-a0124cf1011a\"}','2024-03-21 06:52:40','2024-03-21 09:04:33'),('Yzqk_x1y69YpFzI9g-2RwGtz4IX2ME-g','2024-03-22 05:31:35','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 05:31:35','2024-03-21 05:31:35'),('zptMvs1uNuanjxchojKLlP7HS6WHZri1','2024-03-22 06:39:34','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 06:39:34','2024-03-21 06:39:34'),('zVRhNB-KnobzqaaZue0Gs5N55B8uFETZ','2024-03-22 07:39:52','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}','2024-03-21 07:39:52','2024-03-21 07:39:52');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-21 20:22:26
