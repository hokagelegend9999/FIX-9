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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `vending_point` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `address` text,
  `user_group` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `userId` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2adc2aab-4e54-42a5-83ca-074174b427fb','hokage2','hokage@gmail.com','1234','admin','2024-03-01 03:00:58','2024-03-21 07:41:46',NULL,NULL,NULL,NULL,NULL,NULL,'active',''),(3,'844a732c-5d13-4168-a546-6b86a026bcbc','hinata','hinata@gmail.com','$argon2id$v=19$m=4096,t=3,p=1$V0cznZdJDs5h/G3ZKJ8VZA$+Mi0Cz1e2jtE9FM67C6mclZkOUCJ3Sm8IZlppDFz56M','admin','2024-03-07 04:18:51','2024-03-21 06:37:52',NULL,NULL,NULL,NULL,NULL,NULL,'active',''),(6,'6db41a73-9595-41eb-8b0e-a0124cf1011a','minato','minato@gmail.com','$argon2id$v=19$m=4096,t=3,p=1$VZJTdZyLo5J5zdVgAtMpcw$YqKRaNuVcLNt98AQwvID/PdGRr6lXw79CWm5iGc395Y','admin','2024-03-07 06:52:53','2024-03-21 07:46:36',NULL,NULL,NULL,NULL,NULL,NULL,'active',''),(7,'c50f3043-4759-41b1-819f-b589eac6cc38','naruto','naruto@gmail.com','$argon2id$v=19$m=4096,t=3,p=1$gFpmlMTNzoGEe5HwbgFuoQ$6zG/LKum6RUn8SFLufeN4Kee4FlLLtoqg4pSLZeQpuI','user','2024-03-08 02:45:09','2024-03-21 07:39:58',NULL,NULL,NULL,NULL,NULL,NULL,'active',''),(8,'6c0c10ce-1f93-45d4-ae1d-4a0bf27fa6a2','naruto','naruto@gmail.com','$argon2id$v=19$m=4096,t=3,p=1$/Uv97VCxYoFb2Zof6XiTUw$ijmWW7RDoEWSijp9SYlg52HF0KU6otSVpRhu09QwZLg','admin','2024-03-08 02:45:12','2024-03-21 06:37:56',NULL,NULL,NULL,NULL,NULL,NULL,'active',''),(16,'2bfe6608-577d-49d4-b79b-893205a83dbd','kakasih','kakasih@gmail.com','$argon2id$v=19$m=4096,t=3,p=1$OLtuWGLv3H+LnRy3sR/rcA$bb/dea3W1TOLNgkKXPq/XuZtO0APEFkQNMeFV8Wt34g','admin','2024-03-08 02:48:13','2024-03-21 06:37:57',NULL,NULL,NULL,NULL,NULL,NULL,'active',''),(17,'fcedcdd0-6484-40ab-aa52-a12efe6277f7','jiraya','jiraya@gmail.com','$argon2id$v=19$m=4096,t=3,p=1$UJu5WR4W2SY1thO723zmBA$aO4kyutyzUyuub6s6SnJBI6jQAOglgnXEx8CJ2mb3rk','user','2024-03-08 02:56:30','2024-03-21 06:37:59',NULL,NULL,NULL,NULL,NULL,NULL,'active',''),(18,'35a818a6-c47f-4e09-a5ab-f9a217f2cc7d','tahu','tahu@gmail.com','$argon2id$v=19$m=4096,t=3,p=1$zpQynbeTZ+huiqy2cTJmuA$kpUo9dr00VR3CDRTYUBSSuhumusfyAQuTS/Q56lBS0U','user','2024-03-13 07:15:31','2024-03-21 06:37:59',NULL,NULL,NULL,NULL,NULL,NULL,'active','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
