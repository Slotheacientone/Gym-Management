-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.10.2

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `Activity_id` tinyint NOT NULL AUTO_INCREMENT,
  `Acitivy_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Activity_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,'abc');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Admin_id` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Last_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Gender` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Mobile` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Is_active` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'y',
  `City_id` int DEFAULT NULL,
  PRIMARY KEY (`Admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'First_name','Last_name','abc@gmail.com','N','1234567890','abc','y',1),(2,'qwe','qqwe','test3@gmail.com','male',NULL,'cSYjNDMyO2Vxd2U=','y',1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `City_id` int NOT NULL AUTO_INCREMENT,
  `City_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`City_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'ct1');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `Feedback_id` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Member_id` int DEFAULT NULL,
  `Feedback` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Feedback_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry`
--

DROP TABLE IF EXISTS `inquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiry` (
  `Inquiry_id` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Last_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Mobile` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Massage` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Date` datetime(6) NOT NULL,
  `Is_read` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'n',
  PRIMARY KEY (`Inquiry_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry`
--

LOCK TABLES `inquiry` WRITE;
/*!40000 ALTER TABLE `inquiry` DISABLE KEYS */;
/*!40000 ALTER TABLE `inquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `Member_id` int NOT NULL AUTO_INCREMENT,
  `Member_type-id` tinyint DEFAULT NULL,
  `First_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Last_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Gender` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Mobile` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Is_active` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `City_id` int DEFAULT NULL,
  `Photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-07 21:51:50
