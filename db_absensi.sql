-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db_absensi
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `absens`
--

DROP TABLE IF EXISTS `absens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absens` (
  `id` int(29) NOT NULL AUTO_INCREMENT,
  `id_absen` varchar(200) DEFAULT NULL,
  `id_siswa` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `absensi` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absens`
--

LOCK TABLES `absens` WRITE;
/*!40000 ALTER TABLE `absens` DISABLE KEYS */;
INSERT INTO `absens` VALUES (10,NULL,NULL,'prasetya',NULL,'2020-12-28 04:00:19','2020-12-28 04:00:19'),(11,NULL,NULL,'Angel',NULL,'2020-12-28 07:57:33','2020-12-28 07:57:33'),(16,NULL,NULL,'Zakky',NULL,'2020-12-28 14:29:16','2020-12-28 14:29:16'),(18,NULL,NULL,'Rafa',NULL,'2020-12-29 01:28:24','2020-12-29 01:28:24'),(21,NULL,NULL,'Ilham',NULL,'2020-12-29 06:44:08','2020-12-29 06:44:08'),(22,NULL,NULL,'Angel',NULL,'2020-12-30 06:54:14','2020-12-30 06:54:14');
/*!40000 ALTER TABLE `absens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'user','2020-12-22 03:40:01','2020-12-22 03:40:01'),(2,'moderator','2020-12-22 03:40:01','2020-12-22 03:40:01'),(3,'admin','2020-12-22 03:40:01','2020-12-22 03:40:01');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `userId` (`userId`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES ('2020-12-24 13:16:29','2020-12-24 13:16:29',1,13),('2020-12-25 15:46:19','2020-12-25 15:46:19',1,19),('2020-12-29 01:27:45','2020-12-29 01:27:45',1,25),('2020-12-29 06:42:44','2020-12-29 06:42:44',1,26),('2020-12-22 04:35:21','2020-12-22 04:35:21',2,2),('2020-12-22 04:02:37','2020-12-22 04:02:37',3,1);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `nisn` varchar(200) DEFAULT NULL,
  `kelas` varchar(200) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `nik` varchar(200) DEFAULT NULL,
  `absen` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@gmail.com','$2a$08$iFyuVIacPOyKDGPrJiwLTOirupFh7lcJZJvmLUHQkxCJyeWlmOrZ2','2020-12-22 04:02:34','2020-12-22 04:02:34',NULL,NULL,NULL,NULL,NULL,NULL),(2,'moderator','moderator@gmail.com','$2a$08$auBm4epW0F5GU7UFP9bWKOg/sdzvr4pX.6I8GiXxm3vfxSKEn/A8.','2020-12-22 04:35:08','2020-12-22 04:35:08',NULL,NULL,NULL,NULL,NULL,NULL),(13,'prasetya','putraprasetyadhany@gmail.com','$2a$08$Jg.ZEYwGLXyjWrzcTkdC0ejf5kLZCu6J9dkO4a6oFCDqhBZNa.P9y','2020-12-24 13:16:28','2020-12-24 13:16:28','Prasetya Dhany','6172181','X programmer 2','Ngaliyan',NULL,NULL),(19,'Angel','Angelica@gmail.com','$2a$08$HbtdYFlE0WHracv3qUnMJuQRgzH0yl4pWl4T3rZs.UHIAEEa/a2Xi','2020-12-25 15:46:18','2020-12-25 15:46:18','Angelica Vana Novia','87632891','X multimedia 7','Tidak Diketahui',NULL,NULL),(25,'Rafa','rafazhy@gmail.com','$2a$08$xb1sLX0BI3hkNhIxNXAt2eQ1s0sVxAdYz4ED1e1WdiSeVsSpilAUS','2020-12-29 01:27:43','2020-12-29 01:27:43','Rafa Zahra','3829122','X tkj 2','ngaliyan',NULL,NULL),(26,'Ilham','ilham@gmail.com','$2a$08$d.TKGm8dF2wcUgeagQdzgODqqoFKMCaLMJC.yzzqM.mnENRwC10sC','2020-12-29 06:42:40','2020-12-29 06:42:40','Ilham Santoso','938291','X tkj 2','Krapyak ',NULL,NULL);
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

-- Dump completed on 2020-12-30 14:06:29
