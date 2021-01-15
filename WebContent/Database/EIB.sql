-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: EIB
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `emp_biodata`
--

DROP TABLE IF EXISTS `emp_biodata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_biodata` (
  `EID` varchar(20) DEFAULT NULL,
  `Efname` varchar(20) DEFAULT NULL,
  `Emname` varchar(20) DEFAULT NULL,
  `Elname` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(15) DEFAULT NULL,
  `MaritalStatus` varchar(20) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Native` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `Pin` varchar(20) DEFAULT NULL,
  `Qual` varchar(40) DEFAULT NULL,
  `Lang` varchar(50) DEFAULT NULL,
  `Experiences` varchar(100) DEFAULT NULL,
  `OldCompany` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_biodata`
--

LOCK TABLES `emp_biodata` WRITE;
/*!40000 ALTER TABLE `emp_biodata` DISABLE KEYS */;
INSERT INTO `emp_biodata` VALUES ('1','d','d','d',33,'male','d','d','d','d','d','d','d','d','d','d','','d'),('101','BHARATH','BHUSHAN','KS',21,'male','UNMARRIED','+919900999000','BHARATHKS@GMAIL.COM','KYATHSANDRA','TUMKUR','KTAKA','INDIA','572140','BCA','KAN,ENG','3 YEARS','EBIZ'),('22','Chetan','S','H',23,'male','Single','9035263435','c@c.com','Tumkur','Blore','Ktaka','Ind','560057','BE','Sumaru','45','Ebiz'),('101','Bharath','Bhushan','K S',21,'male','Single','8892508467','bharathbhushanks@gmail.com','Kyathsandra','Bengaluru','Karnataka','India','572140','BCA','Kan,English,Tel','4 Years','Ebiz.Com Pvt, Brans ');
/*!40000 ALTER TABLE `emp_biodata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_ex`
--

DROP TABLE IF EXISTS `emp_ex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_ex` (
  `EID` varchar(10) DEFAULT NULL,
  `Efname` varchar(20) DEFAULT NULL,
  `DeptNo` varchar(20) DEFAULT NULL,
  `Dept` varchar(30) DEFAULT NULL,
  `Role` varchar(40) DEFAULT NULL,
  `Salary` double(20,2) DEFAULT NULL,
  `HireDate` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_ex`
--

LOCK TABLES `emp_ex` WRITE;
/*!40000 ALTER TABLE `emp_ex` DISABLE KEYS */;
INSERT INTO `emp_ex` VALUES ('101','CHETAN','323','CSE','Java Developer',4000000.00,'02-03-1999');
/*!40000 ALTER TABLE `emp_ex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_hof`
--

DROP TABLE IF EXISTS `emp_hof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_hof` (
  `EID` varchar(10) DEFAULT NULL,
  `Efname` varchar(20) DEFAULT NULL,
  `Appreciation` varchar(40) DEFAULT NULL,
  `Role` varchar(20) DEFAULT NULL,
  `Benefits` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_hof`
--

LOCK TABLES `emp_hof` WRITE;
/*!40000 ALTER TABLE `emp_hof` DISABLE KEYS */;
INSERT INTO `emp_hof` VALUES ('101','Chetan','Java Developer','Best Developer','Trip To BRAZIL'),('333','MADHU','Chemical Engineer','Best Chemist','TRIPS TO GOA');
/*!40000 ALTER TABLE `emp_hof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_login`
--

DROP TABLE IF EXISTS `emp_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_login` (
  `uname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_login`
--

LOCK TABLES `emp_login` WRITE;
/*!40000 ALTER TABLE `emp_login` DISABLE KEYS */;
INSERT INTO `emp_login` VALUES ('c','c'),('bharat','12345'),('',''),('b','b'),('a','a'),('bgh','bgh');
/*!40000 ALTER TABLE `emp_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_login_data`
--

DROP TABLE IF EXISTS `emp_login_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_login_data` (
  `EID` varchar(20) DEFAULT NULL,
  `Efname` varchar(20) DEFAULT NULL,
  `Elname` varchar(20) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_login_data`
--

LOCK TABLES `emp_login_data` WRITE;
/*!40000 ALTER TABLE `emp_login_data` DISABLE KEYS */;
INSERT INTO `emp_login_data` VALUES ('3','c','c','c','c','c'),('101','Bharat','Bushan','bharat','12345','bharat@gmail.com'),('','','','','',''),('22','Chetan','S','a','a','a@gmail.com'),('136','Bharath','Bhushan','bgh','bgh','din@emial.gom');
/*!40000 ALTER TABLE `emp_login_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_pro`
--

DROP TABLE IF EXISTS `emp_pro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_pro` (
  `EID` varchar(10) DEFAULT NULL,
  `Efname` varchar(20) DEFAULT NULL,
  `DeptNo` varchar(10) DEFAULT NULL,
  `Dept` varchar(20) DEFAULT NULL,
  `Role` varchar(20) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `HireDate` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_pro`
--

LOCK TABLES `emp_pro` WRITE;
/*!40000 ALTER TABLE `emp_pro` DISABLE KEYS */;
INSERT INTO `emp_pro` VALUES ('','','','','',4,''),('101','CHETAN','323','CSE','Java Developer',4000000,'02-03-1999'),('122','vvv','v','vv','vv',22,'vvv'),('101','Bharath','304','Development','H R Manager',4000000,'03-07-1998');
/*!40000 ALTER TABLE `emp_pro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `sub` varchar(50) DEFAULT NULL,
  `msg` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('Madhu','madhu@madhu.com','HI','Good Website.. Shruthi...');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stats` (
  `Year` varchar(20) DEFAULT NULL,
  `Networth` double(20,2) DEFAULT NULL,
  `Expenditure` double(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
INSERT INTO `stats` VALUES ('2000',4.00,1.00),('2001',5.00,1.00),('2002',6.00,1.00),('2002',6.00,1.00);
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-26 18:07:46
