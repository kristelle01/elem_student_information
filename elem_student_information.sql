CREATE DATABASE  IF NOT EXISTS `elem_student_information` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `elem_student_information`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: elem_student_information
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Temporary view structure for view `attendacesummary`
--

DROP TABLE IF EXISTS `attendacesummary`;
/*!50001 DROP VIEW IF EXISTS `attendacesummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `attendacesummary` AS SELECT 
 1 AS `student_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `present_days`,
 1 AS `absent_days`,
 1 AS `late_days`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  `attendance_date` date NOT NULL,
  `status` enum('Present','Absent','Late') NOT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `student_id` (`student_id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,1,1,'2024-01-01','Present','Kristelle Miranda','Grade 2 - section 2 '),(2,2,2,'2024-01-02','Absent','Ana Smith','Grade 2 - section 1'),(3,3,3,'2024-01-01','Late','Willy Johnson','Grade 3 - section 1'),(4,4,4,'2024-01-04','Present','Megan Brown','Grade 4 - section 1'),(5,5,5,'2024-01-01','Absent','Noah Davis','Grade 5 - section 1'),(6,6,6,'2024-01-02','Late','Ish Martinez','Grade 6 - section 1'),(7,7,7,'2024-01-12','Present','King Garcia','Grade 1 - section 2'),(8,8,8,'2024-01-01','Absent','Marie Wilson','Grade 2 - section 2'),(9,9,9,'2024-01-01','Late','John Anderson','Grade 3 - section 2'),(10,10,10,'2024-01-01','Present','Anne Thomas','Grade 4 - section 2'),(11,2,4,'2024-01-03','Present','Ana Smith','Grade 4 - section 1'),(13,33,1,'2025-05-21','Present','Ereka De Borja','Grade 2 - section 2');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(20) DEFAULT NULL,
  `table_name` varchar(50) DEFAULT NULL,
  `record_id` int DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
INSERT INTO `audit_log` VALUES (1,'INSERT','students',20,'2025-03-23 16:16:23'),(2,'INSERT','students',21,'2025-03-23 16:29:27'),(3,'UPDATE','students',21,'2025-03-23 16:30:45'),(4,'INSERT','students',22,'2025-03-23 16:54:02'),(5,'DELETE','students',21,'2025-03-23 16:56:44'),(6,'INSERT','students',23,'2025-03-23 17:10:22'),(7,'UPDATE','students',23,'2025-03-23 17:12:28'),(8,'DELETE','students',23,'2025-03-23 17:13:33'),(9,'INSERT','students',24,'2025-04-03 16:36:53'),(10,'UPDATE','students',24,'2025-04-03 16:38:09'),(11,'DELETE','students',24,'2025-04-03 16:42:09'),(12,'INSERT','students',25,'2025-04-03 16:45:48'),(13,'INSERT','students',26,'2025-05-17 08:00:30'),(14,'UPDATE','students',26,'2025-05-17 08:06:51'),(15,'DELETE','students',26,'2025-05-17 08:06:56'),(16,'UPDATE','students',25,'2025-05-18 04:14:09'),(17,'INSERT','students',27,'2025-05-21 09:43:00'),(18,'UPDATE','students',27,'2025-05-21 09:43:19'),(19,'DELETE','students',27,'2025-05-21 09:43:55'),(20,'INSERT','students',28,'2025-05-21 09:45:31'),(21,'INSERT','students',29,'2025-05-21 14:36:47'),(22,'UPDATE','students',29,'2025-05-21 14:37:09'),(23,'DELETE','students',29,'2025-05-21 14:38:02'),(24,'INSERT','students',30,'2025-05-21 14:38:10'),(25,'UPDATE','students',30,'2025-05-21 14:38:19'),(26,'UPDATE','students',30,'2025-05-21 14:38:27'),(27,'INSERT','students',31,'2025-05-21 14:44:04'),(28,'UPDATE','students',31,'2025-05-21 14:44:22'),(29,'DELETE','students',31,'2025-05-21 14:44:51'),(30,'INSERT','students',32,'2025-05-21 14:47:08'),(31,'INSERT','students',33,'2025-05-21 15:46:29'),(32,'UPDATE','students',33,'2025-05-21 15:46:43'),(33,'DELETE','students',32,'2025-05-21 15:46:54');
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup`
--

DROP TABLE IF EXISTS `backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(20) DEFAULT 'active',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup`
--

LOCK TABLES `backup` WRITE;
/*!40000 ALTER TABLE `backup` DISABLE KEYS */;
INSERT INTO `backup` VALUES (1,'Kristelle','Miranda','2003-11-23','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(2,'Ana','Smith','2011-08-25','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(3,'Willy','Johnson','2013-03-14','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(4,'Megan','Brown','2012-11-02','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(5,'Noah','Davis','2011-07-19','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(6,'Ish','Martinez','2010-09-09','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(7,'King','Garcia','2012-02-22','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(8,'Marie','Wilson','2013-04-17','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(9,'John','Anderson','2011-06-30','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(10,'Anne','Thomas','2010-12-08','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(14,'Kris','Borja','2011-12-15','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(15,'Diane','Herrera','2010-11-10','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(16,'John','Doe','2003-11-23','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(17,'Miko','Yu','2011-07-20','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(19,'Jazmin','Lee','2012-05-20','Female','2025-03-23 16:13:12','2025-03-23 16:26:33','active'),(20,'Anne','Monatales','2011-06-25','Female','2025-03-23 16:16:23','2025-03-23 16:26:33','active'),(25,'Karylle','Mendones','2012-05-28','Female','2025-04-03 16:45:48','2025-04-03 16:45:48','active');
/*!40000 ALTER TABLE `backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_students`
--

DROP TABLE IF EXISTS `backup_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backup_students` (
  `student_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'active',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_students`
--

LOCK TABLES `backup_students` WRITE;
/*!40000 ALTER TABLE `backup_students` DISABLE KEYS */;
INSERT INTO `backup_students` VALUES (21,'Fyang','Smith','active'),(22,'John','Doe','active'),(23,'Alliah','Malabanan','active'),(24,'kaye','miranda','active'),(26,'Mary ','Sy','active'),(27,'Kaye','Benedicto','active'),(29,'Mark Anthony','Leosala','Active'),(31,'Mark Jovin ','Calaminos','Active'),(32,'Jovin','Naz','Active');
/*!40000 ALTER TABLE `backup_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) NOT NULL,
  `teacher_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `teacher_name` varchar(100) DEFAULT NULL,
  `subject_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'Grade 2 - section 2 ',1,1,'Michael Johnson','Mathematics'),(2,'Grade 2 - section 1',2,2,'Lainy Williams','Science'),(3,'Grade 3 - section 1',3,3,'David Brown','English'),(4,'Grade 4 - section 1',4,4,'Emily Davis','History'),(5,'Grade 5 - section 1',5,5,'Chris Miller','Physical Education'),(6,'Grade 6 - section 1',6,6,'Jessica Wilson','Values Education'),(7,'Grade 1 - section 2',7,7,'Daniel Moore','Art'),(8,'Grade 2 - section 2',8,8,'Laura Taylor','Life Skills'),(9,'Grade 3 - section 2',9,9,'Brian Anderson','Geography'),(10,'Grade 4 - section 2',10,10,'Sophia Harris','Health Education'),(11,'Grade 5 - section 2',4,2,'Emily Davis','Science');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `enrolled_students`
--

DROP TABLE IF EXISTS `enrolled_students`;
/*!50001 DROP VIEW IF EXISTS `enrolled_students`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `enrolled_students` AS SELECT 
 1 AS `enrollment_id`,
 1 AS `student_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `class_id`,
 1 AS `class_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `enrollment_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  `status` enum('enrolled','not enrolled','pending') NOT NULL DEFAULT 'enrolled',
  PRIMARY KEY (`enrollment_id`),
  KEY `student_id` (`student_id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (11,1,1,'enrolled'),(12,2,2,'not enrolled'),(13,3,3,'enrolled'),(14,4,4,'enrolled'),(15,5,5,'not enrolled'),(16,6,6,'enrolled'),(17,7,7,'enrolled'),(18,8,8,'enrolled'),(19,9,9,'enrolled'),(20,10,10,'enrolled'),(21,14,4,'enrolled'),(22,15,8,'enrolled'),(23,10,5,'enrolled'),(24,25,4,'enrolled'),(25,28,1,'enrolled'),(26,30,1,'enrolled'),(27,33,1,'enrolled');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `grade` decimal(5,2) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`grade_id`),
  KEY `student_id` (`student_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (11,1,1,90.00,NULL,NULL),(12,2,2,87.00,NULL,NULL),(13,3,3,98.00,NULL,NULL),(14,4,4,87.00,NULL,NULL),(15,5,5,90.00,NULL,NULL),(16,6,6,80.00,NULL,NULL),(17,7,7,75.00,NULL,NULL),(18,8,8,86.00,NULL,NULL),(19,9,9,89.00,NULL,NULL),(20,10,10,79.00,NULL,NULL),(21,14,4,89.00,NULL,NULL),(22,15,5,78.00,NULL,NULL),(23,4,2,89.00,NULL,NULL),(24,6,1,97.00,NULL,NULL),(26,16,4,85.50,NULL,NULL),(28,10,5,95.00,'2025-03-23 23:07:26','2025-03-23 23:19:01'),(38,15,6,89.00,NULL,NULL),(40,1,2,90.00,NULL,NULL),(42,30,1,98.00,NULL,NULL),(44,30,10,90.00,NULL,NULL);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) DEFAULT 'active',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Kristelle','Miranda','2003-11-23','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(2,'Ana','Smith','2011-08-25','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(3,'Willy','Johnson','2013-03-14','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(4,'Megan','Brown','2012-11-02','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(5,'Noah','Davis','2011-07-19','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(6,'Ish','Martinez','2010-09-09','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(7,'King','Garcia','2012-02-22','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(8,'Marie','Wilson','2013-04-17','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(9,'John','Anderson','2011-06-30','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(10,'Anne','Thomas','2010-12-08','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(14,'Kris','Borja','2011-12-15','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(15,'Diane','Herrera','2010-11-10','Female','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(16,'John','Doe','2003-11-23','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(17,'Miko','Yu','2011-07-20','Male','2025-03-23 16:10:02','2025-03-23 16:26:33','active'),(19,'Jazmin','Lee','2012-05-20','Female','2025-03-23 16:13:12','2025-03-23 16:26:33','active'),(20,'Anne','Monatales','2011-06-25','Female','2025-03-23 16:16:23','2025-03-23 16:26:33','active'),(25,'Karylle','Mendones','2012-05-28','Female','2025-04-03 16:45:48','2025-05-18 04:14:09','active'),(28,'Danielle','Rubis','2012-11-21','Female','2025-05-21 09:45:31','2025-05-21 09:45:31','active'),(30,'John Anthony','Leosala','2013-11-18','Male','2025-05-21 14:38:10','2025-05-21 14:38:27','Active'),(33,'Ereka','De Borja','2013-08-09','Female','2025-05-21 15:46:29','2025-05-21 15:46:43','active');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_student_insert` BEFORE INSERT ON `students` FOR EACH ROW BEGIN
    SET NEW.created_at = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_student_insert` AFTER INSERT ON `students` FOR EACH ROW BEGIN
    INSERT INTO audit_log (action, table_name, record_id, timestamp)
    VALUES ('INSERT', 'students', NEW.student_id, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_student_update` BEFORE UPDATE ON `students` FOR EACH ROW BEGIN
    SET NEW.updated_at = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_student_update` AFTER UPDATE ON `students` FOR EACH ROW BEGIN
    INSERT INTO audit_log (action, table_name, record_id, timestamp)
    VALUES ('UPDATE', 'students', NEW.student_id, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_student_delete` BEFORE DELETE ON `students` FOR EACH ROW BEGIN
    INSERT INTO backup_students (student_id, first_name, last_name, status)
    VALUES (OLD.student_id, OLD.first_name, OLD.last_name, COALESCE(OLD.status, 'inactive'));
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_student_delete` AFTER DELETE ON `students` FOR EACH ROW BEGIN
    INSERT INTO audit_log (action, table_name, record_id, timestamp)
    VALUES ('DELETE', 'students', OLD.student_id, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(50) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Mathematics'),(2,'Science'),(3,'English'),(4,'History'),(5,'Physical Education'),(6,'Values Education'),(7,'Art'),(8,'Life Skills'),(9,'Geography'),(10,'Health Education'),(11,'Language '),(12,'Makabansa '),(13,'Good manners and right conduct '),(14,'Reading'),(15,'Social studies'),(16,'Filipino'),(17,'MAPEH'),(18,'EPP'),(22,'Writing');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `teacher_assigned_classes`
--

DROP TABLE IF EXISTS `teacher_assigned_classes`;
/*!50001 DROP VIEW IF EXISTS `teacher_assigned_classes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `teacher_assigned_classes` AS SELECT 
 1 AS `teacher_id`,
 1 AS `teacher_name`,
 1 AS `class_id`,
 1 AS `class_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `teacher_subject_load`
--

DROP TABLE IF EXISTS `teacher_subject_load`;
/*!50001 DROP VIEW IF EXISTS `teacher_subject_load`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `teacher_subject_load` AS SELECT 
 1 AS `teacher_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `subject_name`,
 1 AS `total_classes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `subject_id` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `username` (`username`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Michael','Johnson',1,'Mike','mike123','michaeljohnson@gmail.com'),(2,'Lainy','Williams',2,'Lain','lainy321','lainywilliams@gmail.com'),(3,'David','Brown',3,'dave','david01','davidebrown@gmail.com'),(4,'Emily','Davis',4,'emie','emie432','emilydavis@gmail.com'),(5,'Chris','Miller',5,'chris','chris234','chrismiller@gmail.com'),(6,'Jessica','Wilson',6,'jess_me','jess012','jessicawilson@gmail.com'),(7,'Daniel','Moore',7,'niel','daniel45','danielmoore@gmail.com'),(8,'Laura','Taylor',8,'lau','laura34','laurataylor@gmail.com'),(9,'Brian','Anderson',9,'bry','brian123','briananderson@gmail.com'),(10,'Sophia','Harris',10,'phia_me','phia54','sophiaharris@gmail.com'),(11,'Kristian','Miranda',3,'kris','kris1234','kristianmiranda@gmail.com'),(12,'Kristian ','Miranda',18,'kris_2','kris123','kristianmiranda2@gmail.com'),(15,'Kristelle','Miranda',4,'Tell','Telle123','kristellemiranda@gmail.com');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `teachersubjectsummary`
--

DROP TABLE IF EXISTS `teachersubjectsummary`;
/*!50001 DROP VIEW IF EXISTS `teachersubjectsummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `teachersubjectsummary` AS SELECT 
 1 AS `teacher_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `total_subjects`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_students_per_class`
--

DROP TABLE IF EXISTS `view_students_per_class`;
/*!50001 DROP VIEW IF EXISTS `view_students_per_class`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_students_per_class` AS SELECT 
 1 AS `class_id`,
 1 AS `class_name`,
 1 AS `student_name`,
 1 AS `student_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'elem_student_information'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `backup` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `backup` ON SCHEDULE AT '2025-04-04 01:02:50' ON COMPLETION PRESERVE DISABLE DO INSERT INTO backup (student_id, first_name, last_name, birth_date, gender, created_at, updated_at, status)
SELECT student_id, first_name, last_name, birth_date, gender, created_at, updated_at, status FROM students */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `mark_absent_daily` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `mark_absent_daily` ON SCHEDULE EVERY 1 DAY STARTS '2025-04-04 18:00:00' ON COMPLETION NOT PRESERVE ENABLE DO INSERT INTO attendance (student_id, date, Sstatus)
SELECT id, CURDATE(), 'Absent' FROM students
WHERE id NOT IN (SELECT student_id FROM attendance WHERE date = CURDATE()) */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'elem_student_information'
--
/*!50003 DROP FUNCTION IF EXISTS `GetStudentAverageGrade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetStudentAverageGrade`(studentID INT) RETURNS decimal(5,2)
    DETERMINISTIC
BEGIN
    DECLARE avg_grade DECIMAL(5,2);

    -- Compute the student's overall average grade
    SELECT AVG(grade) INTO avg_grade
    FROM grades
    WHERE student_id = studentID;

    -- Handle cases where no grades exist (return NULL as 0)
    IF avg_grade IS NULL THEN
        SET avg_grade = 0;
    END IF;

    RETURN avg_grade;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetTotalAttendance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetTotalAttendance`(classID INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total INT;

    -- Calculate total attendance directly without calling the procedure
    SELECT COUNT(a.attendance_id) 
    INTO total
    FROM students s
    LEFT JOIN attendance a ON s.student_id = a.student_id AND a.class_id = classID
    WHERE EXISTS (
        SELECT 1 FROM enrollments e WHERE e.student_id = s.student_id AND e.class_id = classID
    );

    RETURN IFNULL(total, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetTotalStudentsInClass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetTotalStudentsInClass`(classID INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(*) INTO total
    FROM enrollments
    WHERE class_id = classID;

    RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetTotalSubjectsPerTeacher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetTotalSubjectsPerTeacher`(teacher_id_param INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE subject_count INT;
    
    -- Count subjects assigned to the teacher
    SELECT COUNT(*) INTO subject_count
    FROM teacher_subject_load
    WHERE teacher_id = teacher_id_param;
    
    RETURN subject_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `IsStudentEnrolled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `IsStudentEnrolled`(student_id INT) RETURNS char(12) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE enrollment_status CHAR(12);

    SELECT status INTO enrollment_status
    FROM enrollments
    WHERE enrollments.student_id = student_id
    LIMIT 1;

    RETURN COALESCE(enrollment_status, 'UNKNOWN');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `TotalStudentsInClass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `TotalStudentsInClass`() RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_students INT;

    SELECT COUNT(*) INTO total_students 
    FROM view_students_per_class;
    
    RETURN total_students;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetStudentAttendance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStudentAttendance`(IN classID INT)
BEGIN
    SELECT 
        s.student_id,
        CONCAT(s.first_name, ' ', s.last_name) AS student_name,
        COUNT(a.attendance_id) AS total_attendance
    FROM students s
    LEFT JOIN attendance a ON s.student_id = a.student_id AND a.class_id = classID
    WHERE EXISTS (
        SELECT 1 FROM enrollments e WHERE e.student_id = s.student_id AND e.class_id = classID
    )
    GROUP BY s.student_id, student_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetStudentGrades` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStudentGrades`(IN studentID INT)
BEGIN
    DECLARE avg_grade DECIMAL(5,2);

    -- Compute the student's overall average grade
    SELECT GetStudentAverageGrade(studentID) INTO avg_grade;

    -- Retrieve detailed grade records, including student_id and subject_id
    SELECT 
        g.grade_id,
        g.student_id,        -- Included student_id
        g.subject_id,        -- Included subject_id
        g.grade,
        sub.subject_name,
        c.class_id,
        t.first_name AS teacher_first_name,
        t.last_name AS teacher_last_name,
        avg_grade AS average_grade  
    FROM grades g
    JOIN subjects sub ON g.subject_id = sub.subject_id
    JOIN classes c ON c.subject_id = sub.subject_id
    JOIN enrollments e ON e.student_id = g.student_id
    JOIN teachers t ON c.teacher_id = t.teacher_id
    WHERE g.student_id = studentID
    GROUP BY g.grade_id, g.student_id, g.subject_id, sub.subject_name, c.class_id, t.first_name, t.last_name
    ORDER BY sub.subject_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSubjectEnrollmentCounts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSubjectEnrollmentCounts`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE subjectID INT;
    DECLARE subjectName VARCHAR(255);
    DECLARE studentCount INT;

    DECLARE subject_cursor CURSOR FOR 
        SELECT s.subject_id, s.subject_name, COUNT(e.student_id)
        FROM subjects s
        LEFT JOIN classes c ON s.subject_id = c.subject_id
        LEFT JOIN enrollments e ON c.class_id = e.class_id
        GROUP BY s.subject_id, s.subject_name;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN subject_cursor;

    read_loop: LOOP
        FETCH subject_cursor INTO subjectID, subjectName, studentCount;
        IF done THEN 
            LEAVE read_loop;
        END IF;

        SELECT subjectID AS subject_id, subjectName AS subject_name, studentCount AS total_students;
    END LOOP;

    CLOSE subject_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ListStudentsWithTotalClasses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ListStudentsWithTotalClasses`()
BEGIN
	DECLARE done INT DEFAULT 0;
    DECLARE studentID INT;
    DECLARE studentName VARCHAR(225);
    DECLARE totalClasses INT;
    
DECLARE student_cursor CURSOR FOR  -- declare cursor to fetch students and their total class count
	SELECT s.student_id, CONCAT(s.first_name, ' ', s.last_name), COUNT(e.class_id)
    FROM students s
    LEFT JOIN enrollments e ON s.student_id = e.student_id
    GROUP BY s.student_id, s.first_name, s.last_name;
 
 -- handle enf of cursor
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

OPEN student_cursor;

-- loop through the cursor
read_loop: LOOP
	FETCH student_cursor INTO studentID, studentName, totalClasses;
    IF done THEN 
		LEAVE read_loop;
	END IF;
   
   -- directly output result 
    SELECT studentID AS student_id,studentName AS student_name, totalClasses AS total_classes;
    END LOOP;
    
    CLOSE student_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `attendacesummary`
--

/*!50001 DROP VIEW IF EXISTS `attendacesummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `attendacesummary` AS select `s`.`student_id` AS `student_id`,`s`.`first_name` AS `first_name`,`s`.`last_name` AS `last_name`,count((case when (`a`.`status` = 'Present') then 1 end)) AS `present_days`,count((case when (`a`.`status` = 'Absent') then 1 end)) AS `absent_days`,count((case when (`a`.`status` = 'Late') then 1 end)) AS `late_days` from (`students` `s` left join `attendance` `a` on((`s`.`student_id` = `a`.`student_id`))) group by `s`.`student_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `enrolled_students`
--

/*!50001 DROP VIEW IF EXISTS `enrolled_students`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `enrolled_students` AS select `e`.`enrollment_id` AS `enrollment_id`,`s`.`student_id` AS `student_id`,`s`.`first_name` AS `first_name`,`s`.`last_name` AS `last_name`,`c`.`class_id` AS `class_id`,`c`.`class_name` AS `class_name` from ((`enrollments` `e` join `students` `s` on((`e`.`student_id` = `s`.`student_id`))) join `classes` `c` on((`e`.`class_id` = `c`.`class_id`))) where (`e`.`status` = 'enrolled') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `teacher_assigned_classes`
--

/*!50001 DROP VIEW IF EXISTS `teacher_assigned_classes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teacher_assigned_classes` AS select `t`.`teacher_id` AS `teacher_id`,concat(`t`.`first_name`,' ',`t`.`last_name`) AS `teacher_name`,`c`.`class_id` AS `class_id`,`c`.`class_name` AS `class_name` from (`teachers` `t` join `classes` `c` on((`t`.`teacher_id` = `c`.`teacher_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `teacher_subject_load`
--

/*!50001 DROP VIEW IF EXISTS `teacher_subject_load`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teacher_subject_load` AS select `t`.`teacher_id` AS `teacher_id`,`t`.`first_name` AS `first_name`,`t`.`last_name` AS `last_name`,`sub`.`subject_name` AS `subject_name`,count(`c`.`class_id`) AS `total_classes` from ((`teachers` `t` join `classes` `c` on((`t`.`teacher_id` = `c`.`teacher_id`))) join `subjects` `sub` on((`c`.`subject_id` = `sub`.`subject_id`))) group by `t`.`teacher_id`,`t`.`first_name`,`t`.`last_name`,`sub`.`subject_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `teachersubjectsummary`
--

/*!50001 DROP VIEW IF EXISTS `teachersubjectsummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teachersubjectsummary` AS select `teacher_subject_load`.`teacher_id` AS `teacher_id`,`teacher_subject_load`.`first_name` AS `first_name`,`teacher_subject_load`.`last_name` AS `last_name`,`GetTotalSubjectsPerTeacher`(`teacher_subject_load`.`teacher_id`) AS `total_subjects` from `teacher_subject_load` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_students_per_class`
--

/*!50001 DROP VIEW IF EXISTS `view_students_per_class`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_students_per_class` AS select `c`.`class_id` AS `class_id`,`c`.`class_name` AS `class_name`,concat(`s`.`first_name`,' ',`s`.`last_name`) AS `student_name`,count(`e`.`student_id`) OVER (PARTITION BY `c`.`class_id` )  AS `student_count` from ((`classes` `c` left join `enrollments` `e` on((`c`.`class_id` = `e`.`class_id`))) left join `students` `s` on((`e`.`student_id` = `s`.`student_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-24  0:08:11
