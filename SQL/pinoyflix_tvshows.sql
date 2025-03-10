-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: pinoyflix
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `tvshows`
--

DROP TABLE IF EXISTS `tvshows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tvshows` (
  `ShowID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `ReleaseYear` int GENERATED ALWAYS AS (year(`ReleaseDate`)) STORED,
  `ContentRatingID` int DEFAULT NULL,
  `PopularityScore` int DEFAULT NULL,
  PRIMARY KEY (`ShowID`),
  UNIQUE KEY `unique_tvshow_title_year` (`Title`,`ReleaseYear`),
  KEY `ContentRatingID` (`ContentRatingID`),
  CONSTRAINT `tvshows_ibfk_1` FOREIGN KEY (`ContentRatingID`) REFERENCES `contentrating` (`ContentRatingID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tvshows`
--

LOCK TABLES `tvshows` WRITE;
/*!40000 ALTER TABLE `tvshows` DISABLE KEYS */;
INSERT INTO `tvshows` (`ShowID`, `Title`, `ReleaseDate`, `ContentRatingID`, `PopularityScore`) VALUES (1,'The Walking Dead','2010-10-31',3,1),(2,'The Big Bang Theory','2007-09-24',3,1),(3,'Brooklyn Nine-Nine','2013-09-17',3,2),(4,'Squid Game','2021-09-17',4,2),(5,'Sweet Home','2020-12-18',4,NULL),(6,'Stranger Things','2016-07-15',3,1),(7,'Breaking Bad','2008-01-20',4,2),(8,'Game of Thrones','2011-04-17',5,2);
/*!40000 ALTER TABLE `tvshows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-04 23:13:41
