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
-- Table structure for table `2021_11_3_log`
--

DROP TABLE IF EXISTS `2021_11_3_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2021_11_3_log` (
  `Time` char(50) DEFAULT NULL,
  `Id` char(50) DEFAULT NULL,
  `Name` char(50) DEFAULT NULL,
  `Ip` char(50) DEFAULT NULL,
  `Command` char(50) DEFAULT NULL,
  `Text_sent` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2021_11_3_log`
--

LOCK TABLES `2021_11_3_log` WRITE;
/*!40000 ALTER TABLE `2021_11_3_log` DISABLE KEYS */;
INSERT INTO `2021_11_3_log` VALUES ('04:22:31','id','name','192.168.0.39','login',''),('04:22:31','id','name','192.168.0.39','login',''),('04:22:42','id','name','192.168.0.39','sendtext','dadas'),('04:22:42','id','name','192.168.0.39','sendtext','dadas'),('04:22:46','id','name','192.168.0.39','sendtext','的激昂的'),('04:22:46','id','name','192.168.0.39','sendtext','的激昂的'),('04:22:48','id','name','192.168.0.39','rightRear',''),('04:22:49','id','name','192.168.0.39','leftRear',''),('04:22:49','id','name','192.168.0.39','rear',''),('04:22:49','id','name','192.168.0.39','stop',''),('04:22:50','id','name','192.168.0.39','leftFront',''),('04:22:50','id','name','192.168.0.39','rightFront',''),('04:22:50','id','name','192.168.0.39','front',''),('04:23:26','id','name','192.168.0.39','sendtext','da'),('04:23:26','id','name','192.168.0.39','sendtext','da'),('04:25:03','id','name','192.168.0.39','rightRear',''),('04:25:05','id','name','192.168.0.39','leftRear',''),('04:25:08','id','name','192.168.0.39','sendtext','还没'),('04:25:14','id','name','192.168.0.39','sendtext','隔离'),('09:16:53','id','name','*.*.*.*','sendtext','嘿嘿'),('09:16:57','id','name','*.*.*.*','sendtext','02.16'),('09:17:03','id','name','*.*.*.*','sendtext','02.17'),('09:28:34','id','name','*.*.*.*','sendtext','明'),('09:33:26','id','name','*.*.*.*','front',''),('09:33:26','id','name','*.*.*.*','stop',''),('09:33:26','id','name','*.*.*.*','rear',''),('09:33:26','id','name','*.*.*.*','leftFront',''),('09:33:27','id','name','*.*.*.*','rightFront',''),('09:33:27','id','name','*.*.*.*','leftRear',''),('09:33:27','id','name','*.*.*.*','rightRear',''),('09:33:27','id','name','*.*.*.*','camturnup',''),('09:33:27','id','name','*.*.*.*','camturnleft',''),('09:33:28','id','name','*.*.*.*','camini',''),('09:33:28','id','name','*.*.*.*','camturndown',''),('09:33:28','id','name','*.*.*.*','camturnright',''),('09:33:30','id','name','*.*.*.*','sendtext','后续'),('09:34:28','id','name','*.*.*.*','rightRear',''),('09:34:30','id','name','*.*.*.*','leftRear',''),('09:34:33','id','name','*.*.*.*','sendtext','懒'),('10:01:46','id','name','*.*.*.*','rightRear',''),('10:01:46','id','name','*.*.*.*','leftRear',''),('10:01:47','id','name','*.*.*.*','rightFront',''),('10:01:47','id','name','*.*.*.*','front',''),('10:01:47','id','name','*.*.*.*','rear',''),('10:01:47','id','name','*.*.*.*','rear',''),('10:01:50','id','name','*.*.*.*','sendtext','哈哈哈');
/*!40000 ALTER TABLE `2021_11_3_log` ENABLE KEYS */;
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

-- Dump completed on 2021-11-03 15:09:00
