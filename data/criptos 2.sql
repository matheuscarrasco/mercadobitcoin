CREATE DATABASE  IF NOT EXISTS `criptos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `criptos`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: criptos
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `ada`
--

DROP TABLE IF EXISTS `ada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ada` (
  `idcripto` int NOT NULL,
  `high` decimal(10,0) DEFAULT NULL,
  `low` decimal(10,0) DEFAULT NULL,
  `vol` decimal(10,0) DEFAULT NULL,
  `last` decimal(10,0) DEFAULT NULL,
  `buy` decimal(10,0) DEFAULT NULL,
  `sell` decimal(10,0) DEFAULT NULL,
  `date` int DEFAULT NULL,
  PRIMARY KEY (`idcripto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ada`
--

LOCK TABLES `ada` WRITE;
/*!40000 ALTER TABLE `ada` DISABLE KEYS */;
INSERT INTO `ada` VALUES (6,4,4,51474,4,4,4,1747487354);
/*!40000 ALTER TABLE `ada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bnb`
--

DROP TABLE IF EXISTS `bnb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bnb` (
  `idcripto` int NOT NULL,
  `high` decimal(10,0) DEFAULT NULL,
  `low` decimal(10,0) DEFAULT NULL,
  `vol` decimal(10,0) DEFAULT NULL,
  `last` decimal(10,0) DEFAULT NULL,
  `buy` decimal(10,0) DEFAULT NULL,
  `sell` decimal(10,0) DEFAULT NULL,
  `date` int DEFAULT NULL,
  PRIMARY KEY (`idcripto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bnb`
--

LOCK TABLES `bnb` WRITE;
/*!40000 ALTER TABLE `bnb` DISABLE KEYS */;
/*!40000 ALTER TABLE `bnb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btc`
--

DROP TABLE IF EXISTS `btc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `btc` (
  `idcripto` int NOT NULL AUTO_INCREMENT,
  `high` decimal(10,0) DEFAULT NULL,
  `low` decimal(10,0) DEFAULT NULL,
  `vol` decimal(10,0) DEFAULT NULL,
  `last` decimal(10,0) DEFAULT NULL,
  `buy` decimal(10,0) DEFAULT NULL,
  `sell` decimal(10,0) DEFAULT NULL,
  `date` int DEFAULT NULL,
  PRIMARY KEY (`idcripto`),
  CONSTRAINT `idcripto` FOREIGN KEY (`idcripto`) REFERENCES `cripto` (`idcripto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btc`
--

LOCK TABLES `btc` WRITE;
/*!40000 ALTER TABLE `btc` DISABLE KEYS */;
INSERT INTO `btc` VALUES (1,594575,584701,25,587492,587492,587964,1747485551);
/*!40000 ALTER TABLE `btc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotacoes`
--

DROP TABLE IF EXISTS `cotacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotacoes` (
  `idcripto` int NOT NULL,
  `high` decimal(10,0) DEFAULT NULL,
  `low` decimal(10,0) DEFAULT NULL,
  `vol` decimal(10,0) DEFAULT NULL,
  `last` decimal(10,0) DEFAULT NULL,
  `buy` decimal(10,0) DEFAULT NULL,
  `sell` decimal(10,0) DEFAULT NULL,
  `date` int DEFAULT NULL,
  PRIMARY KEY (`idcripto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotacoes`
--

LOCK TABLES `cotacoes` WRITE;
/*!40000 ALTER TABLE `cotacoes` DISABLE KEYS */;
INSERT INTO `cotacoes` VALUES (1,594575,584701,25,587492,587492,587964,1747485551),(2,14928,13964,443,14116,14070,14077,1747486973),(3,995,934,1205,952,951,955,1747487162),(4,14,13,82446,13,13,13,1747487204),(6,4,4,51474,4,4,4,1747487354),(7,6,6,65116,6,6,6,1747487234),(8,1,1,153176,1,1,1,1747487450),(9,2,1,13900,2,1,2,1747487490);
/*!40000 ALTER TABLE `cotacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cripto`
--

DROP TABLE IF EXISTS `cripto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cripto` (
  `idcripto` int NOT NULL AUTO_INCREMENT,
  `nomecripto` varchar(45) NOT NULL,
  PRIMARY KEY (`idcripto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cripto`
--

LOCK TABLES `cripto` WRITE;
/*!40000 ALTER TABLE `cripto` DISABLE KEYS */;
INSERT INTO `cripto` VALUES (1,'btc'),(2,'eth'),(3,'sol'),(4,'xrp'),(5,'bnb'),(6,'ada'),(7,'usdc'),(8,'doge'),(9,'trx');
/*!40000 ALTER TABLE `cripto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doge`
--

DROP TABLE IF EXISTS `doge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doge` (
  `idcripto` int NOT NULL,
  `high` decimal(10,0) DEFAULT NULL,
  `low` decimal(10,0) DEFAULT NULL,
  `vol` decimal(10,0) DEFAULT NULL,
  `last` decimal(10,0) DEFAULT NULL,
  `buy` decimal(10,0) DEFAULT NULL,
  `sell` decimal(10,0) DEFAULT NULL,
  `date` int DEFAULT NULL,
  PRIMARY KEY (`idcripto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doge`
--

LOCK TABLES `doge` WRITE;
/*!40000 ALTER TABLE `doge` DISABLE KEYS */;
INSERT INTO `doge` VALUES (8,1,1,153176,1,1,1,1747487450);
/*!40000 ALTER TABLE `doge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eth`
--

DROP TABLE IF EXISTS `eth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eth` (
  `idcripto` int NOT NULL,
  `high` decimal(10,0) DEFAULT NULL,
  `low` decimal(10,0) DEFAULT NULL,
  `vol` decimal(10,0) DEFAULT NULL,
  `last` decimal(10,0) DEFAULT NULL,
  `buy` decimal(10,0) DEFAULT NULL,
  `sell` decimal(10,0) DEFAULT NULL,
  `date` int DEFAULT NULL,
  PRIMARY KEY (`idcripto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eth`
--

LOCK TABLES `eth` WRITE;
/*!40000 ALTER TABLE `eth` DISABLE KEYS */;
INSERT INTO `eth` VALUES (2,14928,13964,443,14116,14070,14077,1747486973);
/*!40000 ALTER TABLE `eth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sol`
--

DROP TABLE IF EXISTS `sol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sol` (
  `idcripto` int NOT NULL,
  `high` decimal(10,0) DEFAULT NULL,
  `low` decimal(10,0) DEFAULT NULL,
  `vol` decimal(10,0) DEFAULT NULL,
  `last` decimal(10,0) DEFAULT NULL,
  `buy` decimal(10,0) DEFAULT NULL,
  `sell` decimal(10,0) DEFAULT NULL,
  `date` int DEFAULT NULL,
  PRIMARY KEY (`idcripto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sol`
--

LOCK TABLES `sol` WRITE;
/*!40000 ALTER TABLE `sol` DISABLE KEYS */;
INSERT INTO `sol` VALUES (3,995,934,1205,952,951,955,1747487162);
/*!40000 ALTER TABLE `sol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trx`
--

DROP TABLE IF EXISTS `trx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trx` (
  `idcripto` int NOT NULL,
  `high` decimal(10,0) DEFAULT NULL,
  `low` decimal(10,0) DEFAULT NULL,
  `vol` decimal(10,0) DEFAULT NULL,
  `last` decimal(10,0) DEFAULT NULL,
  `buy` decimal(10,0) DEFAULT NULL,
  `sell` decimal(10,0) DEFAULT NULL,
  `date` int DEFAULT NULL,
  PRIMARY KEY (`idcripto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trx`
--

LOCK TABLES `trx` WRITE;
/*!40000 ALTER TABLE `trx` DISABLE KEYS */;
INSERT INTO `trx` VALUES (9,2,1,13900,2,1,2,1747487490);
/*!40000 ALTER TABLE `trx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usdc`
--

DROP TABLE IF EXISTS `usdc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usdc` (
  `idcripto` int NOT NULL,
  `high` decimal(10,0) DEFAULT NULL,
  `low` decimal(10,0) DEFAULT NULL,
  `vol` decimal(10,0) DEFAULT NULL,
  `last` decimal(10,0) DEFAULT NULL,
  `buy` decimal(10,0) DEFAULT NULL,
  `sell` decimal(10,0) DEFAULT NULL,
  `date` int DEFAULT NULL,
  PRIMARY KEY (`idcripto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usdc`
--

LOCK TABLES `usdc` WRITE;
/*!40000 ALTER TABLE `usdc` DISABLE KEYS */;
INSERT INTO `usdc` VALUES (7,6,6,65116,6,6,6,1747487234);
/*!40000 ALTER TABLE `usdc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xrp`
--

DROP TABLE IF EXISTS `xrp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xrp` (
  `idcripto` int NOT NULL,
  `high` decimal(10,0) DEFAULT NULL,
  `low` decimal(10,0) DEFAULT NULL,
  `vol` decimal(10,0) DEFAULT NULL,
  `last` decimal(10,0) DEFAULT NULL,
  `buy` decimal(10,0) DEFAULT NULL,
  `sell` decimal(10,0) DEFAULT NULL,
  `date` int DEFAULT NULL,
  PRIMARY KEY (`idcripto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xrp`
--

LOCK TABLES `xrp` WRITE;
/*!40000 ALTER TABLE `xrp` DISABLE KEYS */;
INSERT INTO `xrp` VALUES (4,14,13,82446,13,13,13,1747487204);
/*!40000 ALTER TABLE `xrp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-17 13:51:27
