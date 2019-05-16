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
-- Table structure for table `d_date`
--

DROP TABLE IF EXISTS `d_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `d_date` (
  `id_date` date NOT NULL,
  `quarter` int(11) NOT NULL,
  `day_of_week` char(2) NOT NULL,
  PRIMARY KEY (`id_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_date`
--

LOCK TABLES `d_date` WRITE;
/*!40000 ALTER TABLE `d_date` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_product`
--

LOCK TABLES `d_product` WRITE;
/*!40000 ALTER TABLE `d_product` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_shopping_center`
--

LOCK TABLES `d_shopping_center` WRITE;
/*!40000 ALTER TABLE `d_shopping_center` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_shopping_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_sales_marketing`
--

DROP TABLE IF EXISTS `f_sales_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `f_sales_marketing` (
  `id_sales_marketing` int(11) NOT NULL,
  `id_date` date NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_shopping_centre` int(11) NOT NULL,
  `f_impact_point_bs` int(11) NOT NULL,
  `f_impact_point_ips` int(11) NOT NULL,
  `sales_qty` int(11) NOT NULL,
  PRIMARY KEY (`id_sales_marketing`),
  KEY `ID_DATE_idx` (`id_date`),
  KEY `ID_PRODUCT_idx` (`id_product`),
  KEY `ID_SHOPPING_CENTRE_idx` (`id_shopping_centre`)
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
  `id_visits` int(11) NOT NULL,
  `id_date` date NOT NULL,
  `id_shopping_centre` int(11) NOT NULL,
  `visits_qty` int(11) NOT NULL,
  `f_impact_points_bs` int(11) NOT NULL,
  `f_impact_points_ips` int(11) NOT NULL,
  `sales_qty` int(11) NOT NULL,
  PRIMARY KEY (`id_visits`),
  KEY `id_date_idx` (`id_date`),
  KEY `id_shopping_centre_idx` (`id_shopping_centre`)
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

-- Dump completed on 2019-05-16 14:14:52
