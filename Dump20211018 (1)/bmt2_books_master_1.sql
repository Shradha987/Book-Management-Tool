CREATE DATABASE  IF NOT EXISTS `bmt2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bmt2`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: bmt2
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `books_master_1`
--

DROP TABLE IF EXISTS `books_master_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_master_1` (
  `id` varchar(10) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `pub` varchar(100) NOT NULL,
  `pages` int NOT NULL,
  `price` double NOT NULL,
  `cover_of_book` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_master_1`
--

LOCK TABLES `books_master_1` WRITE;
/*!40000 ALTER TABLE `books_master_1` DISABLE KEYS */;
INSERT INTO `books_master_1` VALUES ('1','The Alchemist','Paulo Coelho','Novel','Arts','Univerty Press',800,1000,'static/book/cover_photo/1_lsBMDOv.PNG'),('2','Wings of Fire','Dr.A.P.J Abdul Kalam','Autobiography','History','Whitehall',950,1500,'static/book/cover_photo/2_y7rQ4E4.PNG'),('3','Pride and Prejudice','Jane Austen','Story','Arts','Univerty Press',500,2000,'static/book/cover_photo/3_6f3W8Tf.PNG'),('4','Kite Runner','Khaled Hosseini','Novel','History','Whitehall',2000,3000,'static/book/cover_photo/4_cAvIWpK.PNG'),('5','Rebecca','Deborah Ellis','Story','SciFiction','HarperTorch',1500,3000,'static/book/cover_photo/5_lflvK5Q.PNG');
/*!40000 ALTER TABLE `books_master_1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-18 13:47:01
