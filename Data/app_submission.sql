-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: app
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS `submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_id` int(11) NOT NULL,
  `label` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sentence_id` (`s_id`),
  CONSTRAINT `fk_sentence_id` FOREIGN KEY (`s_id`) REFERENCES `sentence` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission`
--

LOCK TABLES `submission` WRITE;
/*!40000 ALTER TABLE `submission` DISABLE KEYS */;
INSERT INTO `submission` VALUES (1,247,2),(2,161,1),(3,183,0),(4,49,0),(5,380,1),(6,380,1),(7,87,0),(8,390,0),(9,349,0),(10,12,1),(11,19,0),(12,26,2),(13,33,1),(14,40,0),(15,47,1),(16,54,2),(17,61,1),(18,68,0),(19,75,1),(20,82,2),(21,89,1),(22,96,1),(23,103,0),(24,185,0),(25,193,1),(26,201,2),(27,441,0),(28,300,0),(29,307,1),(30,314,2),(31,437,0),(32,444,1),(33,451,2),(34,458,1),(35,465,0),(36,430,1),(37,437,1),(38,89,1),(39,96,2),(40,103,1),(41,110,0),(42,117,1),(43,124,2),(44,239,0),(45,246,2),(46,253,1),(47,260,0),(48,267,1),(49,274,2),(50,281,1),(51,288,1),(52,436,0),(53,443,1),(54,450,2),(55,457,1),(56,464,0),(57,3,1),(58,10,2),(59,17,1),(60,24,0),(61,31,1),(62,38,1),(63,45,1),(64,52,1),(65,305,0),(66,312,1),(67,319,2),(68,326,1),(69,333,0),(70,340,1),(71,347,2),(72,354,0),(73,361,0),(74,368,1),(75,375,2),(76,382,1),(77,389,2),(78,396,0),(79,146,2),(80,153,1),(81,160,0),(82,157,2),(83,164,2),(84,171,2),(85,178,1),(86,185,0),(87,192,1),(88,199,1),(89,206,1),(90,213,0),(91,220,1),(92,227,2),(93,234,0),(94,241,1),(95,248,2),(96,357,2),(97,364,2),(98,371,1),(99,378,0),(100,219,0),(101,226,1),(102,233,2),(103,279,1),(104,286,0),(105,293,0),(106,300,2),(107,395,0),(108,38,0),(109,45,1),(110,52,2),(111,66,0),(112,73,1),(113,87,0),(114,168,0);
/*!40000 ALTER TABLE `submission` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger count_num_of_labels
after insert on submission for each row 
begin
update sentence set sentence.nums = sentence.nums+1 where new.s_id = sentence.id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-15 11:00:03
