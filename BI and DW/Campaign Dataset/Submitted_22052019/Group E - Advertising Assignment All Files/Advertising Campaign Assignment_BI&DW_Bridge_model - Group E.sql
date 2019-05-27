CREATE DATABASE  IF NOT EXISTS `campaign` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `campaign`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: campaign
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `d_bridge`
--

DROP TABLE IF EXISTS `d_bridge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `d_bridge` (
  `id_bridge` int(11) NOT NULL AUTO_INCREMENT,
  `id_shopping_center` int(11) NOT NULL,
  `id_date` int(11) NOT NULL,
  PRIMARY KEY (`id_bridge`),
  KEY `id_shopping_center_idx` (`id_shopping_center`),
  KEY `id_date_idx` (`id_date`),
  CONSTRAINT `id_date` FOREIGN KEY (`id_date`) REFERENCES `d_date` (`id_date`),
  CONSTRAINT `id_shopping_center` FOREIGN KEY (`id_shopping_center`) REFERENCES `d_shopping_center` (`id_shopping_centre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_bridge`
--

LOCK TABLES `d_bridge` WRITE;
/*!40000 ALTER TABLE `d_bridge` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_bridge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_date`
--

DROP TABLE IF EXISTS `d_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `d_date` (
  `id_date` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  PRIMARY KEY (`id_date`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_date`
--

LOCK TABLES `d_date` WRITE;
/*!40000 ALTER TABLE `d_date` DISABLE KEYS */;
INSERT INTO `d_date` VALUES (1,'2016-01-01'),(2,'2016-01-02'),(3,'2016-01-03'),(4,'2016-01-04'),(5,'2016-01-05'),(6,'2016-01-06'),(7,'2016-01-07'),(8,'2016-01-08'),(9,'2016-01-09'),(10,'2016-01-10'),(11,'2016-01-11'),(12,'2016-01-12'),(13,'2016-01-13'),(14,'2016-01-14'),(15,'2016-01-15'),(16,'2016-01-16'),(17,'2016-01-17'),(18,'2016-01-18'),(19,'2016-01-19'),(20,'2016-01-20'),(21,'2016-01-21'),(22,'2016-01-22'),(23,'2016-01-23'),(24,'2016-01-24'),(25,'2016-01-25'),(26,'2016-01-26'),(27,'2016-01-27'),(28,'2016-01-28'),(29,'2016-01-29'),(30,'2016-01-30'),(31,'2016-01-31'),(32,'2016-02-01'),(33,'2016-02-02'),(34,'2016-02-03'),(35,'2016-02-04'),(36,'2016-02-05'),(37,'2016-02-06'),(38,'2016-02-07'),(39,'2016-02-08'),(40,'2016-02-09'),(41,'2016-02-10'),(42,'2016-02-11'),(43,'2016-02-12'),(44,'2016-02-13'),(45,'2016-02-14'),(46,'2016-02-15'),(47,'2016-02-16'),(48,'2016-02-17'),(49,'2016-02-18'),(50,'2016-02-19'),(51,'2016-02-20'),(52,'2016-02-21'),(53,'2016-02-22'),(54,'2016-02-23'),(55,'2016-02-24'),(56,'2016-02-25'),(57,'2016-02-26'),(58,'2016-02-27'),(59,'2016-02-28'),(60,'2016-02-29'),(61,'2016-03-01'),(62,'2016-03-02'),(63,'2016-03-03'),(64,'2016-03-04'),(65,'2016-03-05'),(66,'2016-03-06'),(67,'2016-03-07'),(68,'2016-03-08'),(69,'2016-03-09'),(70,'2016-03-10'),(71,'2016-03-11'),(72,'2016-03-12'),(73,'2016-03-13'),(74,'2016-03-14'),(75,'2016-03-15'),(76,'2016-03-16'),(77,'2016-03-17'),(78,'2016-03-18'),(79,'2016-03-19'),(80,'2016-03-20'),(81,'2016-03-21'),(82,'2016-03-22'),(83,'2016-03-23'),(84,'2016-03-24'),(85,'2016-03-25'),(86,'2016-03-26'),(87,'2016-03-27'),(88,'2016-03-28'),(89,'2016-03-29'),(90,'2016-03-30'),(91,'2016-03-31'),(92,'2016-04-01'),(93,'2016-04-02'),(94,'2016-04-03'),(95,'2016-04-04'),(96,'2016-04-05'),(97,'2016-04-06'),(98,'2016-04-07'),(99,'2016-04-08'),(100,'2016-04-09'),(101,'2016-04-10'),(102,'2016-04-11'),(103,'2016-04-12'),(104,'2016-04-13'),(105,'2016-04-14'),(106,'2016-04-15'),(107,'2016-04-16'),(108,'2016-04-17'),(109,'2016-04-18'),(110,'2016-04-19'),(111,'2016-04-20'),(112,'2016-04-21'),(113,'2016-04-22'),(114,'2016-04-23'),(115,'2016-04-24'),(116,'2016-04-25'),(117,'2016-04-26'),(118,'2016-04-27'),(119,'2016-04-28'),(120,'2016-04-29'),(121,'2016-04-30'),(122,'2016-05-01'),(123,'2016-05-02'),(124,'2016-05-03'),(125,'2016-05-04'),(126,'2016-05-05'),(127,'2016-05-06'),(128,'2016-05-07'),(129,'2016-05-08'),(130,'2016-05-09'),(131,'2016-05-10'),(132,'2016-05-11'),(133,'2016-05-12'),(134,'2016-05-13'),(135,'2016-05-14'),(136,'2016-05-15'),(137,'2016-05-16'),(138,'2016-05-17'),(139,'2016-05-18'),(140,'2016-05-19'),(141,'2016-05-20'),(142,'2016-05-21'),(143,'2016-05-22'),(144,'2016-05-23'),(145,'2016-05-24'),(146,'2016-05-25'),(147,'2016-05-26'),(148,'2016-05-27'),(149,'2016-05-28'),(150,'2016-05-29'),(151,'2016-05-30'),(152,'2016-05-31'),(153,'2016-06-01'),(154,'2016-06-02'),(155,'2016-06-03'),(156,'2016-06-04'),(157,'2016-06-05'),(158,'2016-06-06'),(159,'2016-06-07'),(160,'2016-06-08'),(161,'2016-06-09'),(162,'2016-06-10'),(163,'2016-06-11'),(164,'2016-06-12'),(165,'2016-06-13'),(166,'2016-06-14'),(167,'2016-06-15'),(168,'2016-06-16'),(169,'2016-06-17'),(170,'2016-06-18'),(171,'2016-06-19'),(172,'2016-06-20'),(173,'2016-06-21'),(174,'2016-06-22'),(175,'2016-06-23'),(176,'2016-06-24'),(177,'2016-06-25'),(178,'2016-06-26'),(179,'2016-06-27'),(180,'2016-06-28'),(181,'2016-06-29'),(182,'2016-06-30'),(183,'2016-07-01'),(184,'2016-07-02'),(185,'2016-07-03'),(186,'2016-07-04'),(187,'2016-07-05'),(188,'2016-07-06'),(189,'2016-07-07'),(190,'2016-07-08'),(191,'2016-07-09'),(192,'2016-07-10'),(193,'2016-07-11'),(194,'2016-07-12'),(195,'2016-07-13'),(196,'2016-07-14'),(197,'2016-07-15'),(198,'2016-07-16'),(199,'2016-07-17'),(200,'2016-07-18'),(201,'2016-07-19'),(202,'2016-07-20'),(203,'2016-07-21'),(204,'2016-07-22'),(205,'2016-07-23'),(206,'2016-07-24'),(207,'2016-07-25'),(208,'2016-07-26'),(209,'2016-07-27'),(210,'2016-07-28'),(211,'2016-07-29'),(212,'2016-07-30'),(213,'2016-07-31'),(214,'2016-08-01'),(215,'2016-08-02'),(216,'2016-08-03'),(217,'2016-08-04'),(218,'2016-08-05'),(219,'2016-08-06'),(220,'2016-08-07'),(221,'2016-08-08'),(222,'2016-08-09'),(223,'2016-08-10'),(224,'2016-08-11'),(225,'2016-08-12'),(226,'2016-08-13'),(227,'2016-08-14'),(228,'2016-08-15'),(229,'2016-08-16'),(230,'2016-08-17'),(231,'2016-08-18'),(232,'2016-08-19'),(233,'2016-08-20'),(234,'2016-08-21'),(235,'2016-08-22'),(236,'2016-08-23'),(237,'2016-08-24'),(238,'2016-08-25'),(239,'2016-08-26'),(240,'2016-08-27'),(241,'2016-08-28'),(242,'2016-08-29'),(243,'2016-08-30'),(244,'2016-08-31'),(245,'2016-09-01'),(246,'2016-09-02'),(247,'2016-09-03'),(248,'2016-09-04'),(249,'2016-09-05'),(250,'2016-09-06'),(251,'2016-09-07'),(252,'2016-09-08'),(253,'2016-09-09'),(254,'2016-09-10'),(255,'2016-09-11'),(256,'2016-09-12'),(257,'2016-09-13'),(258,'2016-09-14'),(259,'2016-09-15'),(260,'2016-09-16'),(261,'2016-09-17'),(262,'2016-09-18'),(263,'2016-09-19'),(264,'2016-09-20'),(265,'2016-09-21'),(266,'2016-09-22'),(267,'2016-09-23'),(268,'2016-09-24'),(269,'2016-09-25'),(270,'2016-09-26'),(271,'2016-09-27'),(272,'2016-09-28'),(273,'2016-09-29'),(274,'2016-09-30'),(275,'2016-10-01'),(276,'2016-10-02'),(277,'2016-10-03'),(278,'2016-10-04'),(279,'2016-10-05'),(280,'2016-10-06'),(281,'2016-10-07'),(282,'2016-10-08'),(283,'2016-10-09'),(284,'2016-10-10'),(285,'2016-10-11'),(286,'2016-10-12'),(287,'2016-10-13'),(288,'2016-10-14'),(289,'2016-10-15'),(290,'2016-10-16'),(291,'2016-10-17'),(292,'2016-10-18'),(293,'2016-10-19'),(294,'2016-10-20'),(295,'2016-10-21'),(296,'2016-10-22'),(297,'2016-10-23'),(298,'2016-10-24'),(299,'2016-10-25'),(300,'2016-10-26'),(301,'2016-10-27'),(302,'2016-10-28'),(303,'2016-10-29'),(304,'2016-10-30'),(305,'2016-10-31'),(306,'2016-11-01'),(307,'2016-11-02'),(308,'2016-11-03'),(309,'2016-11-04'),(310,'2016-11-05'),(311,'2016-11-06'),(312,'2016-11-07'),(313,'2016-11-08'),(314,'2016-11-09'),(315,'2016-11-10'),(316,'2016-11-11'),(317,'2016-11-12'),(318,'2016-11-13'),(319,'2016-11-14'),(320,'2016-11-15'),(321,'2016-11-16'),(322,'2016-11-17'),(323,'2016-11-18'),(324,'2016-11-19'),(325,'2016-11-20'),(326,'2016-11-21'),(327,'2016-11-22'),(328,'2016-11-23'),(329,'2016-11-24'),(330,'2016-11-25'),(331,'2016-11-26'),(332,'2016-11-27'),(333,'2016-11-28'),(334,'2016-11-29'),(335,'2016-11-30'),(336,'2016-12-01'),(337,'2016-12-02'),(338,'2016-12-03'),(339,'2016-12-04'),(340,'2016-12-05'),(341,'2016-12-06'),(342,'2016-12-07'),(343,'2016-12-08'),(344,'2016-12-09'),(345,'2016-12-10'),(346,'2016-12-11'),(347,'2016-12-12'),(348,'2016-12-13'),(349,'2016-12-14'),(350,'2016-12-15'),(351,'2016-12-16'),(352,'2016-12-17'),(353,'2016-12-18'),(354,'2016-12-19'),(355,'2016-12-20'),(356,'2016-12-21'),(357,'2016-12-22'),(358,'2016-12-23'),(359,'2016-12-24'),(360,'2016-12-25'),(361,'2016-12-26'),(362,'2016-12-27'),(363,'2016-12-28'),(364,'2016-12-29'),(365,'2016-12-30'),(366,'2016-12-31');
/*!40000 ALTER TABLE `d_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_product`
--

DROP TABLE IF EXISTS `d_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `d_product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `family` varchar(45) NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_product`
--

LOCK TABLES `d_product` WRITE;
/*!40000 ALTER TABLE `d_product` DISABLE KEYS */;
INSERT INTO `d_product` VALUES (1,'PIZZA TDRL','Food'),(2,'PIZZA DROE','Food'),(3,'PIZZA CUSN','Food'),(4,'TV SMRT42SNG','Electronics'),(5,'TV SMRT42PHI','Electronics'),(6,'TV SMRT42SNY','Electronics'),(7,'TROUSERS LVS','Clothing'),(8,'TROUSERS MNG','Clothing'),(9,'TROUSERS LEE','Clothing'),(10,'SHOES NKE','Sports'),(11,'SHOES ADS','Sports'),(12,'SHOES ACS','Sports'),(13,'FRAME 18X10 CK','Home'),(14,'FRAME 18X10 CH','Home'),(15,'FRAME 18X10 MD','Home');
/*!40000 ALTER TABLE `d_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_shopping_center`
--

DROP TABLE IF EXISTS `d_shopping_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `d_shopping_center` (
  `id_shopping_centre` int(11) NOT NULL AUTO_INCREMENT,
  `SC_name` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zone` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id_shopping_centre`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_shopping_center`
--

LOCK TABLES `d_shopping_center` WRITE;
/*!40000 ALTER TABLE `d_shopping_center` DISABLE KEYS */;
INSERT INTO `d_shopping_center` VALUES (1,'Gran Jonquera Outlet & Shopping','Figueres','NORTH','Periphery'),(2,'Gran Jonquera Outlet & Shopping','Figueres','NORTH','Periphery'),(3,'Girocentre','Girona','NORTH','Urban'),(4,'Girocentre','Girona','NORTH','Urban'),(5,'La Maquinista','Barcelona','CENTER','Urban'),(6,'La Maquinista','Barcelona','CENTER','Urban'),(7,'Mercat del Pla','Lleida','CENTER','Urban'),(8,'Mercat del Pla','Lleida','CENTER','Urban'),(9,'Les Gabarres','Tarragona','SOUTH','Periphery'),(10,'Les Gabarres','Tarragona','SOUTH','Periphery'),(11,'La Fira','Reus','SOUTH','Periphery'),(12,'La Fira','Reus','SOUTH','Periphery'),(13,'Gran Jonquera Outlet & Shopping','Figueres','NORTH','Periphery'),(14,'Gran Jonquera Outlet & Shopping','Figueres','NORTH','Periphery'),(15,'Girocentre','Girona','NORTH','Urban'),(16,'Girocentre','Girona','NORTH','Urban'),(17,'La Maquinista','Barcelona','CENTER','Urban'),(18,'La Maquinista','Barcelona','CENTER','Urban'),(19,'Mercat del Pla','Lleida','CENTER','Urban'),(20,'Mercat del Pla','Lleida','CENTER','Urban'),(21,'Les Gabarres','Tarragona','SOUTH','Periphery'),(22,'Les Gabarres','Tarragona','SOUTH','Periphery'),(23,'La Fira','Reus','SOUTH','Periphery'),(24,'La Fira','Reus','SOUTH','Periphery'),(25,'Gran Jonquera Outlet & Shopping','Figueres','NORTH','Periphery'),(26,'Gran Jonquera Outlet & Shopping','Figueres','NORTH','Periphery'),(27,'Girocentre','Girona','NORTH','Urban'),(28,'Girocentre','Girona','NORTH','Urban'),(29,'La Maquinista','Barcelona','CENTER','Urban'),(30,'La Maquinista','Barcelona','CENTER','Urban'),(31,'Mercat del Pla','Lleida','CENTER','Urban'),(32,'Mercat del Pla','Lleida','CENTER','Urban'),(33,'Les Gabarres','Tarragona','SOUTH','Periphery'),(34,'Les Gabarres','Tarragona','SOUTH','Periphery'),(35,'La Fira','Reus','SOUTH','Periphery'),(36,'La Fira','Reus','SOUTH','Periphery'),(37,'Gran Jonquera Outlet & Shopping','Figueres','NORTH','Periphery'),(38,'Gran Jonquera Outlet & Shopping','Figueres','NORTH','Periphery'),(39,'Girocentre','Girona','NORTH','Urban'),(40,'Girocentre','Girona','NORTH','Urban'),(41,'La Maquinista','Barcelona','CENTER','Urban'),(42,'La Maquinista','Barcelona','CENTER','Urban'),(43,'Mercat del Pla','Lleida','CENTER','Urban'),(44,'Mercat del Pla','Lleida','CENTER','Urban'),(45,'Les Gabarres','Tarragona','SOUTH','Periphery'),(46,'Les Gabarres','Tarragona','SOUTH','Periphery'),(47,'La Fira','Reus','SOUTH','Periphery'),(48,'La Fira','Reus','SOUTH','Periphery'),(49,'Gran Jonquera Outlet & Shopping','Figueres','NORTH','Periphery'),(50,'Gran Jonquera Outlet & Shopping','Figueres','NORTH','Periphery'),(51,'Girocentre','Girona','NORTH','Urban'),(52,'Girocentre','Girona','NORTH','Urban'),(53,'La Maquinista','Barcelona','CENTER','Urban'),(54,'La Maquinista','Barcelona','CENTER','Urban'),(55,'Mercat del Pla','Lleida','CENTER','Urban'),(56,'Mercat del Pla','Lleida','CENTER','Urban'),(57,'Les Gabarres','Tarragona','SOUTH','Periphery'),(58,'Les Gabarres','Tarragona','SOUTH','Periphery'),(59,'La Fira','Reus','SOUTH','Periphery'),(60,'La Fira','Reus','SOUTH','Periphery'),(61,'Gran Jonquera Outlet & Shopping','Figueres','NORTH','Periphery'),(62,'Gran Jonquera Outlet & Shopping','Figueres','NORTH','Periphery'),(63,'Girocentre','Girona','NORTH','Urban'),(64,'Girocentre','Girona','NORTH','Urban'),(65,'La Maquinista','Barcelona','CENTER','Urban'),(66,'La Maquinista','Barcelona','CENTER','Urban'),(67,'Mercat del Pla','Lleida','CENTER','Urban'),(68,'Mercat del Pla','Lleida','CENTER','Urban'),(69,'Les Gabarres','Tarragona','SOUTH','Periphery'),(70,'Les Gabarres','Tarragona','SOUTH','Periphery'),(71,'La Fira','Reus','SOUTH','Periphery'),(72,'La Fira','Reus','SOUTH','Periphery');
/*!40000 ALTER TABLE `d_shopping_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_sales_marketing`
--

DROP TABLE IF EXISTS `f_sales_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `f_sales_marketing` (
  `sales_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_bridge` int(11) NOT NULL,
  `sales_qty` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `Impact_points_bs` int(11) NOT NULL,
  `Impact_points_i` int(11) NOT NULL,
  PRIMARY KEY (`sales_id`),
  KEY `id_product_idx` (`id_product`),
  KEY `key_idx` (`id_bridge`),
  CONSTRAINT `id_bridge_sales_marketing` FOREIGN KEY (`id_bridge`) REFERENCES `d_bridge` (`id_bridge`),
  CONSTRAINT `id_product_sales_marketing` FOREIGN KEY (`id_product`) REFERENCES `d_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_sales_marketing`
--

LOCK TABLES `f_sales_marketing` WRITE;
/*!40000 ALTER TABLE `f_sales_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `f_sales_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_visits`
--

DROP TABLE IF EXISTS `f_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `f_visits` (
  `id_visits` int(11) NOT NULL AUTO_INCREMENT,
  `id_bridge` int(11) NOT NULL,
  `visits_qty` int(11) NOT NULL,
  PRIMARY KEY (`id_visits`),
  KEY `id_bridge_visits` (`id_bridge`),
  CONSTRAINT `id_bridge_visits` FOREIGN KEY (`id_bridge`) REFERENCES `d_bridge` (`id_bridge`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_visits`
--

LOCK TABLES `f_visits` WRITE;
/*!40000 ALTER TABLE `f_visits` DISABLE KEYS */;
/*!40000 ALTER TABLE `f_visits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-22 23:31:39
