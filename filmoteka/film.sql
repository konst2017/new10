-- MySQL dump 10.13  Distrib 5.6.40, for Win32 (AMD64)
--
-- Host: localhost    Database: film
-- ------------------------------------------------------
-- Server version	5.6.40-log

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
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `teg` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (2,'зомби',1957,'ужасы,драма'),(3,'шурик',1987,'ужасы'),(4,'кошмары на улицевязов',1957,'ужасы'),(6,'красная жара',1989,NULL);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_tegs`
--

DROP TABLE IF EXISTS `film_tegs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_tegs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `film_id` int(11) NOT NULL,
  `teg_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-film_tegs-film_id` (`film_id`),
  KEY `idx-film_tegs-teg_id` (`teg_id`),
  CONSTRAINT `fk-film_tegs-film_id` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-film_tegs-teg_id` FOREIGN KEY (`teg_id`) REFERENCES `teg` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_tegs`
--

LOCK TABLES `film_tegs` WRITE;
/*!40000 ALTER TABLE `film_tegs` DISABLE KEYS */;
INSERT INTO `film_tegs` VALUES (7,3,3),(9,2,2),(10,4,3),(13,2,3),(15,3,1),(18,4,2),(19,6,6);
/*!40000 ALTER TABLE `film_tegs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'Products/Product1/11fa01.jpg',1,0,'Product','3827d67a76-3',''),(2,'Products/Product1/1b67db.jpg',1,0,'Product','aaacbf99e6-4',''),(3,'Products/Product1/ec17c1.jpg',1,0,'Product','47a77abd18-5',''),(4,'Products/Product1/34ea12.jpg',1,0,'Product','91630b9025-6',''),(5,'Products/Product1/dcce9b.jpg',1,0,'Product','327b4633f2-7',''),(6,'Products/Product1/14572d.jpg',1,0,'Product','d94faace8b-8',''),(7,'Products/Product1/1dd2a4.jpg',1,0,'Product','1610f67315-9',''),(8,'Products/Product1/02cbc8.jpg',1,0,'Product','a82dd6d474-10',''),(9,'Products/Product1/0a345c.jpg',1,0,'Product','e3c606597b-11',''),(10,'Products/Product1/7879f3.jpg',1,0,'Product','8b98d314bf-12',''),(11,'Products/Product1/77762c.jpg',1,0,'Product','6cfeaefd12-13',''),(12,'Products/Product1/b60a8b.jpg',1,0,'Product','c703110db0-14',''),(13,'Products/Product1/e3b5e4.jpg',1,0,'Product','d9b5a192a9-15',''),(14,'Products/Product1/a56812.jpg',1,0,'Product','60ad88c4cf-16',''),(15,'Products/Product1/81a7f1.jpg',1,0,'Product','def1fd7555-17',''),(16,'Products/Product1/152bdf.jpg',1,0,'Product','84c1565525-18',''),(17,'Products/Product1/807c48.jpg',1,0,'Product','89cb1af6c9-19',''),(18,'Products/Product1/25099f.jpg',1,0,'Product','73b6cb0804-20',''),(19,'Products/Product2/1a9e0f.jpg',2,0,'Product','7055ae64ad-3',''),(20,'Products/Product2/c86bb2.jpg',2,0,'Product','04764259a1-4',''),(21,'Products/Product2/dcb4d7.jpg',2,0,'Product','8152a0e253-5',''),(22,'Products/Product2/3d62a1.jpg',2,0,'Product','1ab0a343f5-6',''),(23,'Products/Product2/7917a1.jpg',2,0,'Product','5e4201055a-7',''),(24,'Products/Product1/6ae81e.jpg',1,0,'Product','e6a1ea110a-21',''),(25,'Products/Product1/d57a98.jpg',1,0,'Product','d58109b14b-22',''),(26,'Products/Product1/e7b319.jpg',1,0,'Product','52b83c70ba-23',''),(27,'Products/Product1/a9f71e.jpg',1,0,'Product','4e9ead2a5a-24',''),(28,'Products/Product1/4ee355.jpg',1,0,'Product','9daf812b89-25',''),(29,'Products/Product6/802cc3.jpg',6,0,'Product','f33adf97d7-3',''),(30,'Products/Product6/a7ccce.jpg',6,0,'Product','2468f45344-2',''),(31,'Products/Product7/ae1131.jpg',7,0,'Product','ff0140465d-3',''),(32,'Products/Product1/f8e457.jpg',1,0,'Product','7588043464-26',''),(33,'Products/Product1/2e0f55.jpg',1,0,'Product','720a870f40-27',''),(34,'Products/Product2/cb69f7.jpg',2,0,'Product','a4de5afe64-8',''),(35,'Products/Product8/deb2f9.jpg',8,0,'Product','26be0a3d67-3',''),(36,'Products/Product3/2b26d1.jpg',3,0,'Product','0000458ae2-2',''),(37,'Products/Product4/115a09.png',4,0,'Product','cd6ae798d4-3',''),(38,'Products/Product5/b9e2f9.jpg',5,0,'Product','c3221927b6-3',''),(39,'Products/Product2/08ba07.jpg',2,0,'Product','a3778512bb-9',''),(40,'Products/Product1/8f8223.jpg',1,0,'Product','e7c0339c29-28',''),(41,'Products/Product2/72834b.jpg',2,0,'Product','8b15225285-2',''),(42,'Products/Product1/75f56a.jpg',1,0,'Product','1cba02386a-29',''),(43,'Products/Product7/fd4b0b.jpg',7,0,'Product','f577f213f8-2',''),(44,'Products/Product3/0b24b1.png',3,1,'Product','e432728b1b-1',''),(45,'Products/Product4/d894c9.jpg',4,0,'Product','56e1d0b7ae-2',''),(46,'Products/Product5/e53de5.jpg',5,0,'Product','11b277c378-2',''),(47,'Products/Product5/be281c.jpg',5,1,'Product','7706685800-1',''),(48,'Products/Product4/374a3b.jpg',4,1,'Product','203364fd1b-1',''),(49,'Products/Product8/826d3e.png',8,0,'Product','1e6cd8b903-4',''),(50,'Logos/Logo19/4e9d89.png',19,0,'Logo','d6830cd185-2',''),(51,'Logos/Logo19/ad1e42.jpg',19,1,'Logo','83e44a957b-1',''),(52,'Logos/Logo9/95388d.png',9,1,'Logo','9627773a2b-1',''),(53,'Products/Product8/03fa31.jpg',8,0,'Product','fc9f5535b4-5',''),(54,'Products/Product8/a240db.jpg',8,0,'Product','3580b549c4-6',''),(55,'Products/Product8/b30aca.jpg',8,0,'Product','9f2618a2cc-2',''),(56,'Logos/Logo3/cec69c.jpg',3,0,'Logo','b303b900f9-2',''),(57,'Logos/Logo3/8e1316.jpg',3,1,'Logo','51fb9bca56-1',''),(58,'Products/Product7/497e82.jpg',7,1,'Product','48f357235f-1',''),(59,'Products/Product1/367c85.jpg',1,0,'Product','3471adc31b-30',''),(60,'Products/Product2/9682ee.jpg',2,1,'Product','92f5ae1c6e-1',''),(61,'Products/Product8/4fc22f.jpg',8,1,'Product','dc9863a99e-1',''),(62,'Products/Product9/35efc9.jpg',9,1,'Product','5b08195eed-1',''),(63,'Products/Product6/a69633.jpg',6,1,'Product','49cc765b26-1',''),(64,'Products/Product1/756b2f.jpg',1,0,'Product','2d12827cf3-31',''),(65,'Products/Product1/e7c4dc.jpg',1,0,'Product','fcc91c8a90-32',''),(66,'Products/Product1/51a058.jpg',1,0,'Product','fa9f0a5295-33',''),(67,'Products/Product1/3918f4.jpg',1,0,'Product','816a3f8212-34',''),(68,'Products/Product1/5f3921.jpg',1,0,'Product','bad67f034f-35',''),(69,'Products/Product1/71140a.jpg',1,0,'Product','453a5a2b55-2',''),(70,'Nagrads/Nagrad1/98a278.jpg',1,0,'Nagrad','0110e31f6e-2',''),(71,'Nagrads/Nagrad1/b45d1b.jpg',1,1,'Nagrad','25c9a7b86f-1',''),(72,'Products/Product1/e26f20.jpg',1,1,'Product','8356fcc021-1',''),(73,'Towars/Towar4/5dbd81.jpg',4,0,'Towar','b7945aee1d-2',''),(74,'Towars/Towar4/107d85.jpg',4,1,'Towar','87894d6a80-1',''),(75,'Towars/Towar2/2de9dc.jpg',2,0,'Towar','be655961bc-3',''),(76,'Towars/Towar2/f018f2.jpg',2,0,'Towar','62459c5b76-2',''),(77,'Towars/Towar1/a3c2b2.jpg',1,1,'Towar','56518a6ff7-1',''),(78,'Towars/Towar2/852c2c.jpg',2,1,'Towar','74c1be5a47-1','');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1524224397),('m140622_111540_create_image_table',1524224402),('m140622_111545_add_name_to_image_table',1524224403),('m200430_121500_film_tegs',1588249230);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teg`
--

DROP TABLE IF EXISTS `teg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teg`
--

LOCK TABLES `teg` WRITE;
/*!40000 ALTER TABLE `teg` DISABLE KEYS */;
INSERT INTO `teg` VALUES (6,'боевик'),(3,'драма'),(2,'комедия'),(1,'ужасы');
/*!40000 ALTER TABLE `teg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (8,'konst','HTQR0ssvk1M3kpoMDzMMLw_UKZlGqKid','$2y$13$oprTiLjrbw2WXE6V1JqCbOg5rjamTOCjlXcNsSHvA1yxW51hvk/su',NULL,'spirin.costia@yandex.ru',10,1571141599,1571141627,'qpehCC-XREi1HCOdWfWJq1IBtuH7aT-5_1571141599');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-20 15:17:03
