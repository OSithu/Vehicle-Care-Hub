-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: vehiclecare
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fuel`
--

DROP TABLE IF EXISTS `fuel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fuelType` varchar(45) NOT NULL DEFAULT 'NOTNULL',
  `date` varchar(45) DEFAULT 'NOTNULL',
  `fuelQuantity` int DEFAULT NULL,
  `tankIdentification` varchar(45) DEFAULT 'NOTNULL',
  `unitPrice` int DEFAULT NULL,
  `totalCost` int DEFAULT NULL,
  `supplier` varchar(45) DEFAULT 'NOTNULL',
  `employeeID` varchar(45) DEFAULT 'NOTNULL',
  `note` varchar(105) CHARACTER SET big5 COLLATE big5_chinese_ci DEFAULT 'NOTNULL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuel`
--

LOCK TABLES `fuel` WRITE;
/*!40000 ALTER TABLE `fuel` DISABLE KEYS */;
INSERT INTO `fuel` VALUES (119,'Petrol','23/04/2023',600000,'tank(p1)',140,60000000,'nimsi','it2232','paid'),(120,'SuperDiesel','12/05/2023',45555,'tank(sd1)',450,800000,'dinara','id3345','problem with quantity'),(122,'Petrol','30/07/2023',400000,'tank(p2)',400,5000000,'oshan','it320023','not paid'),(123,'Petrol','8/7/2023',560000,'tank(p1)',500,5000000,'anjali','it4560','successful'),(124,'SuperDiesel','4/08/2023',547000,'tank(p1)',250,75000000,'naduni','it7634','completed');
/*!40000 ALTER TABLE `fuel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-26 19:44:44
