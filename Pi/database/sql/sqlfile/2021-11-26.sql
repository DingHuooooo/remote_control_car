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

-- Dump completed on 2021-11-26 12:18:00
