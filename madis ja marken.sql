-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: madis
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentid` varchar(100) NOT NULL,
  `comment` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `studentid` (`studentid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Toomas Anni','Hea kool!'),(2,'Anne Veski','Halb kool!'),(3,'Üllar Jördberg','Kurjad opetajad!'),(4,'Ivo Linna','Jama!'),(5,'Uku Suviste','Liig apalju tunde!'),(6,'Helgi Sallo','Ei taha enam!');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `code` varchar(8) NOT NULL,
  `description` varchar(256) NOT NULL,
  PRIMARY KEY (`description`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('Andmeb.','Andmebaaside kasutama 6ppimine'),('Matem.','Kitsas matemaatika rumalamatele 6pilastele'),('Matem.','Kitsas matemaatika rumalamatele õpilastele'),('Matem.','Lai matemaatika targematele 6pilastele'),('Matem.','Lai matemaatika targematele õpilastele');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stgroup`
--

DROP TABLE IF EXISTS `stgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stgroup` (
  `code` varchar(8) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stgroup`
--

LOCK TABLES `stgroup` WRITE;
/*!40000 ALTER TABLE `stgroup` DISABLE KEYS */;
INSERT INTO `stgroup` VALUES ('TA-22A','Tarkvaraarendus (eesti keelne)'),('TA-22B','Tarkvaraarendus (vene keelne)'),('TA-23A','Tarkvaraarendus (eesti keelne)'),('TA-23B','Tarkvaraarendus (vene keelne)');
/*!40000 ALTER TABLE `stgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` bigint NOT NULL,
  `firstname` varchar(256) DEFAULT NULL,
  `lastname` varchar(256) DEFAULT NULL,
  `groupcode` varchar(8) DEFAULT NULL,
  `birthdate` varchar(8) DEFAULT NULL,
  `course` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groupcode` (`groupcode`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`groupcode`) REFERENCES `stgroup` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Toomas','Anni','TA-23A','2000-5-7',NULL),(2,'Anne','Veski','TA-23A','1999-9-2',NULL),(3,'Üllar','Jördberg','TA-23B','2001-5-3',NULL),(4,'Ivo','Linna','TA-22A','2000-1-5',NULL),(5,'Uku','Suviste','TA-23B','2000-8-4',NULL),(6,'Helgi','Sallo','TA-23B','2000-2-1',NULL),(7,'Jude','Koll','TA-22B','2000-2-3',NULL),(8,'Lukas','Ilu','TA-23B','2000-2-4',NULL),(9,'Eliezer','Maas','TA-23A','2000-2-5',NULL),(10,'Jordan','Talv','TA-22B','2000-2-6',NULL),(11,'Kadyn','Poli','TA-23A','2000-2-7',NULL),(12,'Yasmin','Urisk','TA-23A','2000-2-8',NULL),(13,'Donna','Tamm','TA-22B','2000-2-9',NULL),(14,'Korbin','Rumm','TA-23A','2000-3-1',NULL),(15,'Wesly','Summ','TA-23A','2000-3-2',NULL),(16,'Fran','Tumm','TA-22B','2000-3-3',NULL),(17,'Marken','Mangelsoo','TA-22A','2000-3-4',NULL),(18,'Miko','Eha','TA-23A','2000-3-5',NULL),(19,'Kaupo','Sohkin','TA-23B','2000-3-6',NULL),(20,'Andreas','Ounmann','TA-23B','2000-3-7',NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 10:29:16
