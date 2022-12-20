-- MySQL dump 10.19  Distrib 10.3.31-MariaDB, for debian-linux-gnueabihf (armv8l)
--
-- Host: localhost    Database: car
-- ------------------------------------------------------
-- Server version	10.3.31-MariaDB-0+deb10u1

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
-- Current Database: `car`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `car` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `car`;

--
-- Table structure for table `2021_11_5_log`
--

DROP TABLE IF EXISTS `2021_11_5_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2021_11_5_log` (
  `Time` char(50) DEFAULT NULL,
  `Id` char(50) DEFAULT NULL,
  `Name` char(50) DEFAULT NULL,
  `Ip` char(50) DEFAULT NULL,
  `Command` char(50) DEFAULT NULL,
  `Text_sent` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2021_11_5_log`
--

LOCK TABLES `2021_11_5_log` WRITE;
/*!40000 ALTER TABLE `2021_11_5_log` DISABLE KEYS */;
INSERT INTO `2021_11_5_log` VALUES ('08:08:58','id','name','*.*.*.*','login',''),('08:09:24','id','name','*.*.*.*','rightRear',''),('08:09:25','id','name','*.*.*.*','rear',''),('08:09:25','id','name','*.*.*.*','leftRear',''),('08:09:25','id','name','*.*.*.*','leftFront',''),('08:09:25','id','name','*.*.*.*','stop',''),('08:09:26','id','name','*.*.*.*','rightFront',''),('08:09:26','id','name','*.*.*.*','front',''),('08:09:32','id','name','*.*.*.*','sendtext','dad;\';2137891dj及科技'),('08:12:31','id','name','*.*.*.*','rightRear',''),('08:12:32','id','name','*.*.*.*','stop',''),('08:12:33','id','name','*.*.*.*','leftRear',''),('08:12:37','id','name','*.*.*.*','sendtext','dadas'),('08:19:10','id','name','*.*.*.*','login',''),('08:20:20','id','name','*.*.*.*','sendtext','dasd');
/*!40000 ALTER TABLE `2021_11_5_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2022_1_18_log`
--

DROP TABLE IF EXISTS `2022_1_18_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2022_1_18_log` (
  `Time` char(50) DEFAULT NULL,
  `Id` char(50) DEFAULT NULL,
  `Name` char(50) DEFAULT NULL,
  `Ip` char(50) DEFAULT NULL,
  `Command` char(50) DEFAULT NULL,
  `Text_sent` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2022_1_18_log`
--

LOCK TABLES `2022_1_18_log` WRITE;
/*!40000 ALTER TABLE `2022_1_18_log` DISABLE KEYS */;
INSERT INTO `2022_1_18_log` VALUES ('03:38:23','id','name','*.*.*.*','login',''),('03:38:39','id','name','*.*.*.*','turnright',''),('03:38:40','id','name','*.*.*.*','turnleft',''),('03:38:58','id','name','*.*.*.*','forward',''),('03:38:58','id','name','*.*.*.*','backward',''),('03:38:59','id','name','*.*.*.*','left',''),('03:38:59','id','name','*.*.*.*','right',''),('03:39:00','id','name','*.*.*.*','stop',''),('03:41:38','id','name','*.*.*.*','login',''),('03:41:38','id','name','*.*.*.*','login',''),('03:52:18','id','name','*.*.*.*','forward',''),('03:52:20','id','name','*.*.*.*','backward',''),('03:52:22','id','name','*.*.*.*','left',''),('03:52:23','id','name','*.*.*.*','right',''),('03:52:24','id','name','*.*.*.*','stop',''),('03:52:25','id','name','*.*.*.*','turnleft',''),('03:52:26','id','name','*.*.*.*','turnright',''),('03:52:29','id','name','*.*.*.*','sendtext','ddd'),('06:01:54','id','name','*.*.*.*','forward',''),('06:01:56','id','name','*.*.*.*','backward',''),('06:01:58','id','name','*.*.*.*','left',''),('06:01:58','id','name','*.*.*.*','right',''),('06:01:59','id','name','*.*.*.*','stop',''),('06:02:00','id','name','*.*.*.*','turnleft',''),('06:02:01','id','name','*.*.*.*','turnright',''),('06:05:15','id','name','*.*.*.*','forward',''),('06:05:18','id','name','*.*.*.*','stop',''),('06:05:19','id','name','*.*.*.*','left',''),('06:05:24','id','name','*.*.*.*','stop',''),('06:05:25','id','name','*.*.*.*','backward',''),('06:05:27','id','name','*.*.*.*','backward',''),('06:05:28','id','name','*.*.*.*','backward',''),('06:05:29','id','name','*.*.*.*','backward',''),('06:05:30','id','name','*.*.*.*','right',''),('06:05:31','id','name','*.*.*.*','stop',''),('06:05:35','id','name','*.*.*.*','forward',''),('06:06:24','id','name','*.*.*.*','forward',''),('06:10:08','id','name','*.*.*.*','stop',''),('06:10:59','id','name','*.*.*.*','forward',''),('06:11:02','id','name','*.*.*.*','stop',''),('06:12:50','id','name','*.*.*.*','forward',''),('06:12:50','id','name','*.*.*.*','forward',''),('06:12:53','id','name','*.*.*.*','stop',''),('06:12:54','id','name','*.*.*.*','backward',''),('06:12:55','id','name','*.*.*.*','stop',''),('06:12:56','id','name','*.*.*.*','left',''),('06:12:57','id','name','*.*.*.*','stop',''),('06:12:58','id','name','*.*.*.*','forward',''),('06:12:59','id','name','*.*.*.*','stop',''),('06:13:15','id','name','*.*.*.*','stop',''),('06:13:15','id','name','*.*.*.*','left',''),('06:13:16','id','name','*.*.*.*','stop',''),('06:13:17','id','name','*.*.*.*','right',''),('06:13:18','id','name','*.*.*.*','stop',''),('06:13:19','id','name','*.*.*.*','backward',''),('06:13:19','id','name','*.*.*.*','backward',''),('06:13:20','id','name','*.*.*.*','backward',''),('06:13:21','id','name','*.*.*.*','backward',''),('06:13:22','id','name','*.*.*.*','stop',''),('06:13:22','id','name','*.*.*.*','forward',''),('06:13:23','id','name','*.*.*.*','stop',''),('06:13:24','id','name','*.*.*.*','turnleft',''),('06:13:25','id','name','*.*.*.*','stop',''),('06:13:26','id','name','*.*.*.*','turnright',''),('06:13:29','id','name','*.*.*.*','turnright',''),('06:13:31','id','name','*.*.*.*','turnleft',''),('06:13:33','id','name','*.*.*.*','turnright',''),('06:13:35','id','name','*.*.*.*','stop',''),('06:13:42','id','name','*.*.*.*','backward',''),('06:14:37','id','name','*.*.*.*','turnright',''),('06:14:40','id','name','*.*.*.*','turnleft',''),('06:14:42','id','name','*.*.*.*','turnright',''),('06:14:44','id','name','*.*.*.*','turnleft',''),('06:14:54','id','name','*.*.*.*','forward',''),('06:14:56','id','name','*.*.*.*','stop',''),('06:14:58','id','name','*.*.*.*','backward',''),('06:15:00','id','name','*.*.*.*','stop',''),('06:15:02','id','name','*.*.*.*','turnright',''),('06:15:04','id','name','*.*.*.*','turnright',''),('06:15:08','id','name','*.*.*.*','forward',''),('06:15:09','id','name','*.*.*.*','stop',''),('06:15:11','id','name','*.*.*.*','turnright',''),('06:15:14','id','name','*.*.*.*','forward',''),('06:15:15','id','name','*.*.*.*','stop',''),('06:15:17','id','name','*.*.*.*','turnleft',''),('06:15:18','id','name','*.*.*.*','turnleft',''),('06:15:20','id','name','*.*.*.*','turnleft',''),('06:15:26','id','name','*.*.*.*','forward',''),('06:15:27','id','name','*.*.*.*','stop',''),('06:15:29','id','name','*.*.*.*','turnleft',''),('06:15:30','id','name','*.*.*.*','stop',''),('06:15:31','id','name','*.*.*.*','forward',''),('06:15:32','id','name','*.*.*.*','stop',''),('06:15:40','id','name','*.*.*.*','forward',''),('06:15:43','id','name','*.*.*.*','stop',''),('06:15:45','id','name','*.*.*.*','turnleft',''),('06:15:48','id','name','*.*.*.*','forward',''),('06:15:49','id','name','*.*.*.*','stop',''),('06:35:45','id','name','*.*.*.*','login',''),('06:35:47','id','name','*.*.*.*','login',''),('06:36:08','id','name','*.*.*.*','turnright',''),('06:41:41','id','name','*.*.*.*','login',''),('06:41:59','id','name','*.*.*.*','login',''),('06:46:37','id','name','*.*.*.*','login',''),('06:48:26','id','name','*.*.*.*','turnleft',''),('06:48:35','id','name','*.*.*.*','forward',''),('06:48:37','id','name','*.*.*.*','stop',''),('06:48:39','id','name','*.*.*.*','backward',''),('06:48:41','id','name','*.*.*.*','stop',''),('06:48:48','id','name','*.*.*.*','left',''),('06:48:50','id','name','*.*.*.*','stop',''),('06:48:52','id','name','*.*.*.*','right',''),('06:48:54','id','name','*.*.*.*','stop',''),('06:48:58','id','name','*.*.*.*','turnleft',''),('06:52:56','id','name','*.*.*.*','turnright',''),('06:52:59','id','name','*.*.*.*','stop',''),('06:53:00','id','name','*.*.*.*','forward',''),('06:53:01','id','name','*.*.*.*','stop',''),('06:53:04','id','name','*.*.*.*','right',''),('06:53:06','id','name','*.*.*.*','stop',''),('06:53:08','id','name','*.*.*.*','turnright',''),('06:53:10','id','name','*.*.*.*','stop',''),('06:53:11','id','name','*.*.*.*','forward',''),('06:53:13','id','name','*.*.*.*','stop',''),('06:58:08','id','name','*.*.*.*','forward',''),('06:58:10','id','name','*.*.*.*','stop',''),('07:01:31','id','name','*.*.*.*','login',''),('07:01:41','id','name','*.*.*.*','stop',''),('07:01:46','id','name','*.*.*.*','backward',''),('07:01:47','id','name','*.*.*.*','backward',''),('07:01:48','id','name','*.*.*.*','stop',''),('07:01:49','id','name','*.*.*.*','stop',''),('07:06:14','id','name','*.*.*.*','right',''),('07:06:16','id','name','*.*.*.*','stop',''),('07:06:17','id','name','*.*.*.*','left',''),('07:06:19','id','name','*.*.*.*','stop',''),('07:06:24','id','name','*.*.*.*','forward',''),('07:06:24','id','name','*.*.*.*','forward',''),('07:06:25','id','name','*.*.*.*','forward',''),('07:06:26','id','name','*.*.*.*','stop',''),('07:06:33','id','name','*.*.*.*','forward',''),('07:06:34','id','name','*.*.*.*','forward',''),('07:06:35','id','name','*.*.*.*','stop',''),('07:06:59','id','name','*.*.*.*','login',''),('07:07:10','id','name','*.*.*.*','backward',''),('07:07:11','id','name','*.*.*.*','stop',''),('07:07:20','id','name','*.*.*.*','left',''),('07:07:21','id','name','*.*.*.*','stop',''),('07:07:23','id','name','*.*.*.*','right',''),('07:07:23','id','name','*.*.*.*','right',''),('07:07:24','id','name','*.*.*.*','stop',''),('07:08:05','id','name','*.*.*.*','left',''),('07:08:07','id','name','*.*.*.*','stop',''),('07:08:09','id','name','*.*.*.*','turnright',''),('07:08:12','id','name','*.*.*.*','turnleft',''),('07:08:15','id','name','*.*.*.*','right',''),('07:08:16','id','name','*.*.*.*','stop',''),('07:08:17','id','name','*.*.*.*','forward',''),('07:08:19','id','name','*.*.*.*','stop',''),('07:08:25','id','name','*.*.*.*','backward',''),('07:08:27','id','name','*.*.*.*','stop',''),('07:08:30','id','name','*.*.*.*','left',''),('07:08:31','id','name','*.*.*.*','stop',''),('07:08:33','id','name','*.*.*.*','right',''),('07:08:34','id','name','*.*.*.*','stop',''),('07:08:35','id','name','*.*.*.*','turnleft',''),('07:08:37','id','name','*.*.*.*','turnleft',''),('07:08:39','id','name','*.*.*.*','turnleft',''),('07:08:43','id','name','*.*.*.*','turnleft',''),('07:08:46','id','name','*.*.*.*','forward',''),('07:08:48','id','name','*.*.*.*','stop',''),('07:08:49','id','name','*.*.*.*','turnright',''),('07:08:51','id','name','*.*.*.*','turnright',''),('07:08:54','id','name','*.*.*.*','turnright','');
/*!40000 ALTER TABLE `2022_1_18_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2022_1_23_log`
--

DROP TABLE IF EXISTS `2022_1_23_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2022_1_23_log` (
  `Time` char(50) DEFAULT NULL,
  `Id` char(50) DEFAULT NULL,
  `Name` char(50) DEFAULT NULL,
  `Ip` char(50) DEFAULT NULL,
  `Command` char(50) DEFAULT NULL,
  `Text_sent` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2022_1_23_log`
--

LOCK TABLES `2022_1_23_log` WRITE;
/*!40000 ALTER TABLE `2022_1_23_log` DISABLE KEYS */;
INSERT INTO `2022_1_23_log` VALUES ('17:40:39','id','name','*.*.*.*','login',''),('17:43:11','id','name','*.*.*.*','login',''),('17:43:11','id','name','*.*.*.*','login',''),('17:46:14','id','name','*.*.*.*','forward',''),('17:46:15','id','name','*.*.*.*','backward',''),('17:46:15','id','name','*.*.*.*','left',''),('17:46:15','id','name','*.*.*.*','stop',''),('17:46:16','id','name','*.*.*.*','right',''),('17:46:16','id','name','*.*.*.*','turnright',''),('17:46:16','id','name','*.*.*.*','turnleft',''),('17:46:22','id','name','*.*.*.*','sendtext','hello'),('17:49:59','id','name','*.*.*.*','backward',''),('17:50:01','id','name','*.*.*.*','stop',''),('17:50:34','id','name','*.*.*.*','turnright',''),('17:50:51','id','name','*.*.*.*','turnright',''),('17:50:54','id','name','*.*.*.*','turnleft',''),('17:50:56','id','name','*.*.*.*','backward',''),('17:50:57','id','name','*.*.*.*','stop',''),('17:50:58','id','name','*.*.*.*','forward',''),('17:50:58','id','name','*.*.*.*','stop',''),('17:51:00','id','name','*.*.*.*','left',''),('17:51:00','id','name','*.*.*.*','stop',''),('17:51:01','id','name','*.*.*.*','right',''),('17:51:01','id','name','*.*.*.*','stop',''),('17:51:02','id','name','*.*.*.*','turnleft',''),('17:51:04','id','name','*.*.*.*','forward',''),('17:51:05','id','name','*.*.*.*','stop',''),('17:51:05','id','name','*.*.*.*','backward',''),('17:51:06','id','name','*.*.*.*','stop',''),('17:51:07','id','name','*.*.*.*','left',''),('17:51:07','id','name','*.*.*.*','stop',''),('17:51:08','id','name','*.*.*.*','forward',''),('17:51:09','id','name','*.*.*.*','stop',''),('17:51:09','id','name','*.*.*.*','right',''),('17:51:10','id','name','*.*.*.*','stop',''),('17:51:10','id','name','*.*.*.*','backward',''),('17:51:11','id','name','*.*.*.*','stop',''),('18:00:08','id','name','*.*.*.*','login',''),('18:00:51','id','name','*.*.*.*','right',''),('18:00:52','id','name','*.*.*.*','stop',''),('18:00:53','id','name','*.*.*.*','left',''),('18:00:54','id','name','*.*.*.*','stop',''),('18:00:54','id','name','*.*.*.*','backward',''),('18:00:55','id','name','*.*.*.*','stop',''),('18:01:08','id','name','*.*.*.*','forward',''),('18:01:09','id','name','*.*.*.*','stop',''),('18:01:10','id','name','*.*.*.*','backward',''),('18:01:10','id','name','*.*.*.*','stop',''),('18:01:11','id','name','*.*.*.*','left',''),('18:01:11','id','name','*.*.*.*','stop',''),('18:01:12','id','name','*.*.*.*','right',''),('18:01:13','id','name','*.*.*.*','stop',''),('18:01:14','id','name','*.*.*.*','turnleft',''),('18:01:16','id','name','*.*.*.*','turnleft',''),('18:01:18','id','name','*.*.*.*','turnleft',''),('18:01:20','id','name','*.*.*.*','turnright',''),('18:01:21','id','name','*.*.*.*','turnright',''),('18:01:23','id','name','*.*.*.*','turnright',''),('18:01:26','id','name','*.*.*.*','turnright',''),('18:01:28','id','name','*.*.*.*','left',''),('18:01:28','id','name','*.*.*.*','stop',''),('18:01:29','id','name','*.*.*.*','turnleft',''),('18:01:31','id','name','*.*.*.*','backward',''),('18:01:31','id','name','*.*.*.*','stop',''),('18:01:32','id','name','*.*.*.*','forward',''),('18:01:32','id','name','*.*.*.*','stop',''),('18:01:33','id','name','*.*.*.*','left',''),('18:01:34','id','name','*.*.*.*','stop',''),('18:01:34','id','name','*.*.*.*','right',''),('18:01:35','id','name','*.*.*.*','stop',''),('18:05:00','id','name','*.*.*.*','forward',''),('18:05:00','id','name','*.*.*.*','stop',''),('18:05:01','id','name','*.*.*.*','backward',''),('18:05:01','id','name','*.*.*.*','stop',''),('18:05:02','id','name','*.*.*.*','left',''),('18:05:03','id','name','*.*.*.*','stop',''),('18:05:03','id','name','*.*.*.*','right',''),('18:05:04','id','name','*.*.*.*','stop',''),('18:05:06','id','name','*.*.*.*','left',''),('18:05:07','id','name','*.*.*.*','stop',''),('18:05:07','id','name','*.*.*.*','turnleft',''),('18:05:09','id','name','*.*.*.*','turnright',''),('18:05:11','id','name','*.*.*.*','forward',''),('18:05:12','id','name','*.*.*.*','stop',''),('18:05:12','id','name','*.*.*.*','right',''),('18:05:12','id','name','*.*.*.*','stop',''),('18:05:14','id','name','*.*.*.*','left',''),('18:05:14','id','name','*.*.*.*','stop',''),('18:05:15','id','name','*.*.*.*','right',''),('18:05:16','id','name','*.*.*.*','stop',''),('18:05:17','id','name','*.*.*.*','stop',''),('18:05:21','id','name','*.*.*.*','backward',''),('18:05:22','id','name','*.*.*.*','stop',''),('18:05:23','id','name','*.*.*.*','left',''),('18:05:24','id','name','*.*.*.*','stop',''),('18:05:26','id','name','*.*.*.*','backward',''),('18:05:26','id','name','*.*.*.*','stop',''),('18:05:27','id','name','*.*.*.*','right',''),('18:05:28','id','name','*.*.*.*','right',''),('18:05:28','id','name','*.*.*.*','stop',''),('18:05:29','id','name','*.*.*.*','stop',''),('18:05:30','id','name','*.*.*.*','left',''),('18:05:30','id','name','*.*.*.*','stop',''),('18:05:31','id','name','*.*.*.*','left',''),('18:05:32','id','name','*.*.*.*','stop',''),('18:05:32','id','name','*.*.*.*','left',''),('18:05:33','id','name','*.*.*.*','stop',''),('18:05:37','id','name','*.*.*.*','left',''),('18:05:38','id','name','*.*.*.*','stop',''),('18:05:39','id','name','*.*.*.*','right',''),('18:05:40','id','name','*.*.*.*','stop',''),('18:05:41','id','name','*.*.*.*','forward',''),('18:05:41','id','name','*.*.*.*','stop',''),('18:05:42','id','name','*.*.*.*','backward',''),('18:05:43','id','name','*.*.*.*','stop',''),('18:05:44','id','name','*.*.*.*','left',''),('18:05:44','id','name','*.*.*.*','stop',''),('18:05:45','id','name','*.*.*.*','turnright',''),('18:05:48','id','name','*.*.*.*','turnleft',''),('18:05:51','id','name','*.*.*.*','stop','');
/*!40000 ALTER TABLE `2022_1_23_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `users`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `users` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `users`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 19:07:00
