-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: holo
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `casa`
--

DROP TABLE IF EXISTS `casa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `casa` (
  `id_casa` int(11) NOT NULL AUTO_INCREMENT,
  `cas_pro` varchar(200) NOT NULL,
  PRIMARY KEY (`id_casa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casa`
--

LOCK TABLES `casa` WRITE;
/*!40000 ALTER TABLE `casa` DISABLE KEYS */;
INSERT INTO `casa` VALUES (1,'1');
/*!40000 ALTER TABLE `casa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contacto` (
  `id_cont` int(11) NOT NULL AUTO_INCREMENT,
  `id_sal` int(11) NOT NULL,
  `est_cont` int(11) NOT NULL,
  PRIMARY KEY (`id_cont`),
  KEY `id_sal` (`id_sal`),
  CONSTRAINT `contacto_ibfk_1` FOREIGN KEY (`id_sal`) REFERENCES `sala` (`id_sal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contactos` (
  `id_con` int(11) NOT NULL AUTO_INCREMENT,
  `dir_con` varchar(200) DEFAULT NULL,
  `ema_con` varchar(300) DEFAULT NULL,
  `tel_con` varchar(100) NOT NULL,
  `id_usu` int(11) NOT NULL,
  PRIMARY KEY (`id_con`),
  KEY `id_usu` (`id_usu`),
  CONSTRAINT `contactos_ibfk_1` FOREIGN KEY (`id_usu`) REFERENCES `usuario` (`id_usu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cortina`
--

DROP TABLE IF EXISTS `cortina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cortina` (
  `id_cort` int(11) NOT NULL AUTO_INCREMENT,
  `id_sal` int(11) NOT NULL,
  `est_cort` int(11) NOT NULL,
  PRIMARY KEY (`id_cort`),
  KEY `id_sal` (`id_sal`),
  CONSTRAINT `cortina_ibfk_1` FOREIGN KEY (`id_sal`) REFERENCES `sala` (`id_sal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cortina`
--

LOCK TABLES `cortina` WRITE;
/*!40000 ALTER TABLE `cortina` DISABLE KEYS */;
/*!40000 ALTER TABLE `cortina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luz`
--

DROP TABLE IF EXISTS `luz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `luz` (
  `id_luz` int(11) NOT NULL AUTO_INCREMENT,
  `id_sal` int(11) NOT NULL,
  `est_luz` int(11) NOT NULL,
  PRIMARY KEY (`id_luz`),
  KEY `id_sal` (`id_sal`),
  CONSTRAINT `luz_ibfk_1` FOREIGN KEY (`id_sal`) REFERENCES `sala` (`id_sal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luz`
--

LOCK TABLES `luz` WRITE;
/*!40000 ALTER TABLE `luz` DISABLE KEYS */;
/*!40000 ALTER TABLE `luz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puerta`
--

DROP TABLE IF EXISTS `puerta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `puerta` (
  `id_puer` int(11) NOT NULL AUTO_INCREMENT,
  `id_sal` int(11) NOT NULL,
  `est_puer` int(11) NOT NULL,
  PRIMARY KEY (`id_puer`),
  KEY `id_sal` (`id_sal`),
  CONSTRAINT `puerta_ibfk_1` FOREIGN KEY (`id_sal`) REFERENCES `sala` (`id_sal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puerta`
--

LOCK TABLES `puerta` WRITE;
/*!40000 ALTER TABLE `puerta` DISABLE KEYS */;
/*!40000 ALTER TABLE `puerta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recordatorios`
--

DROP TABLE IF EXISTS `recordatorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `recordatorios` (
  `id_rec` int(11) NOT NULL AUTO_INCREMENT,
  `fec_rec` datetime NOT NULL,
  `fec2_rec` datetime DEFAULT NULL,
  `info_rec` text NOT NULL,
  `id_usu` int(11) NOT NULL,
  PRIMARY KEY (`id_rec`),
  KEY `id_usu` (`id_usu`),
  CONSTRAINT `recordatorios_ibfk_1` FOREIGN KEY (`id_usu`) REFERENCES `usuario` (`id_usu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recordatorios`
--

LOCK TABLES `recordatorios` WRITE;
/*!40000 ALTER TABLE `recordatorios` DISABLE KEYS */;
/*!40000 ALTER TABLE `recordatorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutina`
--

DROP TABLE IF EXISTS `rutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rutina` (
  `id_rut` int(11) NOT NULL AUTO_INCREMENT,
  `ord_rut` varchar(20) NOT NULL,
  `id_casa` int(11) NOT NULL,
  PRIMARY KEY (`id_rut`),
  KEY `id_casa` (`id_casa`),
  CONSTRAINT `rutina_ibfk_1` FOREIGN KEY (`id_casa`) REFERENCES `casa` (`id_casa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutina`
--

LOCK TABLES `rutina` WRITE;
/*!40000 ALTER TABLE `rutina` DISABLE KEYS */;
/*!40000 ALTER TABLE `rutina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sala` (
  `id_sal` int(11) NOT NULL AUTO_INCREMENT,
  `id_casa` int(11) NOT NULL,
  PRIMARY KEY (`id_sal`),
  KEY `id_casa` (`id_casa`),
  CONSTRAINT `sala_ibfk_1` FOREIGN KEY (`id_casa`) REFERENCES `casa` (`id_casa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `id_usu` int(11) NOT NULL AUTO_INCREMENT,
  `nom_usu` varchar(200) NOT NULL,
  `cor_usu` varchar(300) NOT NULL,
  `con_usu` varchar(100) NOT NULL,
  `tip_usu` tinyint(4) NOT NULL,
  `id_casa` int(11) NOT NULL,
  PRIMARY KEY (`id_usu`),
  KEY `id_casa` (`id_casa`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_casa`) REFERENCES `casa` (`id_casa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Cracell','cracellch@gmail.com','crazy',1,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'holo'
--

--
-- Dumping routines for database 'holo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-29  2:26:25
