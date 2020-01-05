-- MySQL dump 10.15  Distrib 10.0.28-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: Biblioteca    Database: Biblioteca
-- ------------------------------------------------------
-- Server version	10.0.28-MariaDB-2+b1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `Biblioteca`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `Biblioteca`;

--
-- Table structure for table `Autore`
--

DROP TABLE IF EXISTS `Autore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Autore` (
  `id_Autore` int(10) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `Cognome` varchar(50) DEFAULT NULL,
  `Data_nascita` date DEFAULT NULL,
  PRIMARY KEY (`id_Autore`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autore`
--

LOCK TABLES `Autore` WRITE;
/*!40000 ALTER TABLE `Autore` DISABLE KEYS */;
INSERT INTO `Autore` VALUES (1,'Scott','Granneman',NULL),(2,'Edward','Snowden',NULL),(3,'Giovanni','Filocamo',NULL),(4,'Stefano','Novelli',NULL),(5,'Giulio','Giorello',NULL),(6,'Vincenzo','Barone',NULL),(7,'Costantino','Sigismondi',NULL),(8,'Silvio Umberto','Zanzi',NULL),(9,'Simone','Piaccardi',NULL),(10,'Saverio','Rubini',NULL),(11,'Eric A.','Meyer',NULL),(12,'Abraham','Pais',NULL),(13,'G. E.','Fogg',NULL),(14,'Silvio Umberto','Zanzi',NULL),(15,'Julia','Collins',NULL),(16,'Carlo Alberto','Salustri',NULL),(17,'Antonino','Cannavaciuolo',NULL),(18,'Anna','Guglielmi',NULL),(19,'Vadim','Zeland',NULL),(20,'Giacomo Keison','Bevilacqua',NULL),(21,'Cesare','Beccaria',NULL),(22,'Paul','Ekman',NULL),(23,'Mark','Addon',NULL),(24,'Alessandro','Baricco',NULL),(25,'Mauro','Corona',NULL);
/*!40000 ALTER TABLE `Autore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Casa_Editrice`
--

DROP TABLE IF EXISTS `Casa_Editrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Casa_Editrice` (
  `id_Casa_Editrice` int(10) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_Casa_Editrice`),
  UNIQUE KEY `Nome` (`Nome`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Casa_Editrice`
--

LOCK TABLES `Casa_Editrice` WRITE;
/*!40000 ALTER TABLE `Casa_Editrice` DISABLE KEYS */;
INSERT INTO `Casa_Editrice` VALUES (9,'Altro'),(17,'Amazon Italia Logistica s.r.l.'),(1,'Apogeo'),(2,'Bollati Boringhieri'),(12,'Bompiani'),(19,'Chiare Lettere'),(11,'Edizione Dedalo'),(3,'Einaudi'),(4,'Feltrinellli'),(13,'Gribaudo'),(16,'Hops Tecniche Nuove'),(10,'Il Mulino'),(5,'Longanesi'),(18,'Macro Edizioni'),(6,'Mondatori'),(7,'Pearson Education'),(8,'Pickwick'),(14,'Truelite'),(15,'Universale scientifica Boringhieri');
/*!40000 ALTER TABLE `Casa_Editrice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genere`
--

DROP TABLE IF EXISTS `Genere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genere` (
  `id_Genere` int(10) NOT NULL AUTO_INCREMENT,
  `Genere` varchar(50) NOT NULL,
  `Descrizione` text,
  PRIMARY KEY (`id_Genere`),
  UNIQUE KEY `Genere` (`Genere`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genere`
--

LOCK TABLES `Genere` WRITE;
/*!40000 ALTER TABLE `Genere` DISABLE KEYS */;
INSERT INTO `Genere` VALUES (1,'Arte',NULL),(2,'Fantascienza',NULL),(3,'Fantasy',NULL),(4,'Filosofia',NULL),(5,'Fotografia',NULL),(6,'Fumetti',NULL),(7,'Gastronomia',NULL),(8,'Informatica',NULL),(9,'Matematica',NULL),(10,'Narrativa',NULL),(11,'Novella',NULL),(12,'Poesia',NULL),(13,'Politica',NULL),(14,'d',NULL),(15,'Psicologia',NULL),(16,'Religione',NULL),(17,'Romanzo',NULL),(18,'Scienza',NULL),(19,'Storia breve',NULL),(20,'Trhiller e Gialli',NULL);
/*!40000 ALTER TABLE `Genere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Libro`
--

DROP TABLE IF EXISTS `Libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Libro` (
  `ISBN` varchar(13) NOT NULL,
  `Titolo` varchar(50) NOT NULL,
  `Data_pubblicazione` date DEFAULT NULL,
  `Collana` varchar(100) DEFAULT NULL,
  `Data_Lettura` date DEFAULT NULL,
  `Lingua` varchar(15) DEFAULT NULL,
  `Pagine` int(3) DEFAULT NULL,
  `Prezzo` float DEFAULT NULL,
  `Descrizione` text,
  `Copie` int(3) DEFAULT NULL,
  `Stato` varchar(30) DEFAULT NULL,
  `fk_Genere` int(10) DEFAULT NULL,
  `fk_Casa_Editrice` int(10) DEFAULT NULL,
  PRIMARY KEY (`ISBN`),
  UNIQUE KEY `Titolo` (`Titolo`),
  KEY `fk_Genere` (`fk_Genere`),
  KEY `fk_Casa_Editrice` (`fk_Casa_Editrice`),
  CONSTRAINT `Libro_ibfk_1` FOREIGN KEY (`fk_Genere`) REFERENCES `Genere` (`id_Genere`),
  CONSTRAINT `Libro_ibfk_2` FOREIGN KEY (`fk_Casa_Editrice`) REFERENCES `Casa_Editrice` (`id_Casa_Editrice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Libro`
--

LOCK TABLES `Libro` WRITE;
/*!40000 ALTER TABLE `Libro` DISABLE KEYS */;
INSERT INTO `Libro` VALUES ('20383657','GERBERTVS','2016-00-00',NULL,NULL,NULL,NULL,NULL,NULL,1,'Letto',NULL,NULL),('8850222445','JavaScript Pocket','2008-05-00','In tasca',NULL,'Italiano',208,NULL,NULL,NULL,NULL,8,1),('8883780280','CSS Guida pocket','2012-02-02','Tecnologie','2001-00-00','Italiano',94,7.23,NULL,1,NULL,8,16),('9780244403713','Amministrare GNU/Linux','2018-07-31',NULL,NULL,'Italiano',688,40.53,NULL,1,NULL,8,14),('9781794435094','Hacklog Volume 1 - Anonimato','2019-01-20','Hacklog','2019-12-00','Italiano',222,15.59,'',1,NULL,8,17),('9781794443297','Hacklog Volume 2 - Web Hacking ','2019-01-19','Hacklog','2020-01-01','Italiano',374,23.84,NULL,1,'Letto',8,17),('9788806237356','A tavola si sta insieme','2018-04-24','Einaudi. Stile libero extra',NULL,'Italiano',224,19.5,NULL,1,NULL,7,3),('9788807550034','A Panda piace - Questo nuovo libro qui','2018-05-10','Feltrinelli Comics',NULL,'Italiano',160,16,NULL,1,'Letto',6,4),('9788807813023','Novecento','1994-01-01','Universale economica',NULL,'Italiano',64,5,NULL,1,'Letto',17,4),('9788807887376','La casa dei sette ponti','2016-01-14','Universale economica',NULL,'Italiano',64,6.5,NULL,1,'Letto',10,4),('9788822068866','Obiettivo matematica -Tutto quello che devi sapere',NULL,'La scienza è facile',NULL,NULL,NULL,18.9,NULL,NULL,NULL,9,13),('9788833922911','Einstein - La scienza e la vita di Albert Einstein','2012-00-00','I grandi pensatori',NULL,'Italiano',676,16,NULL,1,NULL,18,2),('9788850334797','Linux server per l\'amministratore di rete - VIª Ed','2019-04-04','Guida completa',NULL,'Italiano',480,39.9,NULL,1,NULL,8,1),('9788858018316','La matematica è un\'opera d\'arte','2017-11-23','Straordinariamente',NULL,'Italiano',384,17.9,NULL,1,NULL,7,13),('9788861909984','Confessioni ultime','2018-01-11','Narrazioni','2018-12-24','Italiano',120,12,NULL,1,'Letto',10,19),('9788862294003','Reality transurfing - La trilogia','2009-01-01','Nuova saggezza',NULL,'Italiano',734,29,NULL,1,'Letto',NULL,18),('9788868366032','Il linguaggio segreto del volto','2013-07-09','Pickwick',NULL,'Italiano',240,8,NULL,NULL,NULL,15,8),('9788868366209','Il linguaggio segreto del corpo','2013-06-28','Pickwick',NULL,'Italiano',256,8.9,NULL,1,'Letto',15,8),('9788871924045','Linux','2017-01-01','In tasca',NULL,'Italiano',382,12,'',1,NULL,8,7);
/*!40000 ALTER TABLE `Libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Libro_Autore`
--

DROP TABLE IF EXISTS `Libro_Autore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Libro_Autore` (
  `id_Libro_Autore` int(10) NOT NULL AUTO_INCREMENT,
  `fk_Libro` varchar(13) DEFAULT NULL,
  `fk_Autore` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_Libro_Autore`),
  KEY `fk_Libro` (`fk_Libro`),
  KEY `fk_Autore` (`fk_Autore`),
  CONSTRAINT `Libro_Autore_ibfk_1` FOREIGN KEY (`fk_Libro`) REFERENCES `Libro` (`ISBN`),
  CONSTRAINT `Libro_Autore_ibfk_2` FOREIGN KEY (`fk_Autore`) REFERENCES `Autore` (`id_Autore`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Libro_Autore`
--

LOCK TABLES `Libro_Autore` WRITE;
/*!40000 ALTER TABLE `Libro_Autore` DISABLE KEYS */;
INSERT INTO `Libro_Autore` VALUES (1,'9781794435094',4),(2,'9781794443297',4),(3,'9788871924045',1),(4,'9788871924045',9),(5,'9788871924045',9),(6,'9788858018316',3),(7,'8883780280',11),(8,'8850222445',10),(9,'20383657',7),(10,'9788833922911',12),(11,'9788822068866',15),(12,'9788806237356',17),(13,'9788862294003',19),(14,'9788868366032',18),(15,'9788807813023',24),(16,'9788807550034',20),(17,'9788868366209',18),(18,'9788807887376',25),(19,'9788861909984',25);
/*!40000 ALTER TABLE `Libro_Autore` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-05 15:59:43
