-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: logsystem
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.12.04.1

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
-- Table structure for table `cpuinfo`
--

DROP TABLE IF EXISTS `cpuinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpuinfo` (
  `cpu_id` int(6) NOT NULL AUTO_INCREMENT,
  `us` int(12) DEFAULT NULL,
  `sy` int(12) DEFAULT NULL,
  `id` int(12) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `statu` char(10) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`cpu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpuinfo`
--

LOCK TABLES `cpuinfo` WRITE;
/*!40000 ALTER TABLE `cpuinfo` DISABLE KEYS */;
INSERT INTO `cpuinfo` VALUES (1,2,3,94,'192.168.1.90','ok','1404900887'),(2,2,2,95,'192.168.1.90','ok','1404902955'),(3,2,2,95,'192.168.1.90','ok','1404903046'),(4,2,2,96,'192.168.1.90','ok','1404905531'),(5,2,2,96,'192.168.1.90','ok','1404924741'),(6,2,2,96,'192.168.1.90','ok','1404924801'),(7,2,2,96,'192.168.1.90','ok','1404924861'),(8,2,2,96,'192.168.1.90','ok','1404924921'),(9,2,2,96,'192.168.1.90','ok','1404924982'),(10,2,2,96,'192.168.1.90','ok','1404925042'),(11,2,2,96,'192.168.1.90','ok','1404925102'),(12,2,2,96,'192.168.1.90','ok','1404925162'),(13,2,2,96,'192.168.1.90','ok','1404925222'),(14,2,2,96,'192.168.1.90','ok','1404925283'),(15,2,2,96,'192.168.1.90','ok','1404925343'),(16,2,2,96,'192.168.1.90','ok','1404925403'),(17,2,2,96,'192.168.1.90','ok','1404925463'),(18,2,2,96,'192.168.1.90','ok','1404925721'),(19,2,2,96,'192.168.1.90','ok','1404926895'),(20,3,5,91,'192.168.1.90','ok','1404983361'),(21,13,63,24,'192.168.1.90','ok','1404990718'),(22,13,63,24,'192.168.1.90','ok','1404990727'),(23,13,63,24,'192.168.1.90','ok','1404990830'),(24,13,63,24,'192.168.1.90','ok','1404990904'),(25,13,63,24,'192.168.1.90','ok','1404990906'),(26,13,65,21,'192.168.1.90','ok','1404991976'),(27,13,65,21,'192.168.1.90','ok','1404992061'),(28,13,65,21,'192.168.1.90','ok','1404992066');
/*!40000 ALTER TABLE `cpuinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diskinfo`
--

DROP TABLE IF EXISTS `diskinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diskinfo` (
  `disk_id` int(6) NOT NULL AUTO_INCREMENT,
  `filesystem` char(10) DEFAULT NULL,
  `type` char(10) DEFAULT NULL,
  `size` char(5) DEFAULT NULL,
  `used` char(5) DEFAULT NULL,
  `avil` char(5) DEFAULT NULL,
  `statu` char(5) DEFAULT NULL,
  `ip` varchar(12) DEFAULT NULL,
  `time` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`disk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diskinfo`
--

LOCK TABLES `diskinfo` WRITE;
/*!40000 ALTER TABLE `diskinfo` DISABLE KEYS */;
INSERT INTO `diskinfo` VALUES (1,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404913026'),(2,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404913623'),(3,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404915905'),(4,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404922601'),(5,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404922644'),(6,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404924741'),(7,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404924801'),(8,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404924861'),(9,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404924921'),(10,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404924982'),(11,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404925042'),(12,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404925102'),(13,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404925162'),(14,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404925222'),(15,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404925283'),(16,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404925343'),(17,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404925403'),(18,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404925463'),(19,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404925721'),(20,'/dev/sda1','ext4','39G','2.8G','34G','ok','192.168.1.90','1404926895'),(21,'/dev/sda1','ext4','39G','2.7G','34G','ok','192.168.1.90','1404983361'),(22,'/dev/sda1','ext4','39G','2.7G','34G','ok','192.168.1.90','1404990717'),(23,'/dev/sda1','ext4','39G','2.7G','34G','ok','192.168.1.90','1404990727'),(24,'/dev/sda1','ext4','39G','2.7G','34G','ok','192.168.1.90','1404990830'),(25,'/dev/sda1','ext4','39G','2.7G','34G','ok','192.168.1.90','1404990904'),(26,'/dev/sda1','ext4','39G','2.7G','34G','ok','192.168.1.90','1404990906'),(27,'/dev/sda1','ext4','39G','2.7G','34G','ok','192.168.1.90','1404991976'),(28,'/dev/sda1','ext4','39G','2.7G','34G','ok','192.168.1.90','1404992060'),(29,'/dev/sda1','ext4','39G','2.7G','34G','ok','192.168.1.90','1404992066');
/*!40000 ALTER TABLE `diskinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memoryinfo`
--

DROP TABLE IF EXISTS `memoryinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memoryinfo` (
  `mem_id` int(6) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `time` varchar(11) DEFAULT NULL,
  `statu` char(8) DEFAULT NULL,
  `total` int(7) DEFAULT NULL,
  `used` int(7) DEFAULT NULL,
  `buffers` int(7) DEFAULT NULL,
  `cached` int(7) DEFAULT NULL,
  `free` int(7) DEFAULT NULL,
  PRIMARY KEY (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memoryinfo`
--

LOCK TABLES `memoryinfo` WRITE;
/*!40000 ALTER TABLE `memoryinfo` DISABLE KEYS */;
INSERT INTO `memoryinfo` VALUES (1,'192.168.1.90','1404905305','ok',1009724,535556,70248,167256,474168),(2,'192.168.1.90','1404905531','ok',1009724,535648,70424,167256,474076),(3,'192.168.1.90','1404922644','ok',1009724,800360,75220,387464,209364),(4,'192.168.1.90','1404924741','ok',1009724,821244,76244,387532,188480),(5,'192.168.1.90','1404924801','ok',1009724,821220,76284,387532,188504),(6,'192.168.1.90','1404924861','ok',1009724,821212,76316,387532,188512),(7,'192.168.1.90','1404924921','ok',1009724,821524,76372,387532,188200),(8,'192.168.1.90','1404924982','ok',1009724,833492,76468,387520,176232),(9,'192.168.1.90','1404925042','ok',1009724,835484,76548,387532,174240),(10,'192.168.1.90','1404925102','ok',1009724,835436,76588,387532,174288),(11,'192.168.1.90','1404925162','ok',1009724,835512,76620,387532,174212),(12,'192.168.1.90','1404925222','ok',1009724,835528,76652,387532,174196),(13,'192.168.1.90','1404925283','ok',1009724,835596,76684,387536,174128),(14,'192.168.1.90','1404925343','ok',1009724,835548,76716,387536,174176),(15,'192.168.1.90','1404925403','ok',1009724,835688,76748,387536,174036),(16,'192.168.1.90','1404925463','ok',1009724,840728,76804,387516,168996),(17,'192.168.1.90','1404925721','ok',1009724,840852,76920,387516,168872),(18,'192.168.1.90','1404926895','ok',1009724,868944,77196,387520,140780),(19,'192.168.1.90','1404983361','ok',1009724,448248,74008,150300,561476),(20,'192.168.1.90','1404990718','ok',1009724,535692,78360,154888,474032),(21,'192.168.1.90','1404990727','ok',1009724,535676,78384,154896,474048),(22,'192.168.1.90','1404990830','ok',1009724,542684,78496,154912,467040),(23,'192.168.1.90','1404990904','ok',1009724,549932,78576,154912,459792),(24,'192.168.1.90','1404990906','ok',1009724,549940,78600,154920,459784),(25,'192.168.1.90','1404991976','ok',1009724,573436,79240,154988,436288),(26,'192.168.1.90','1404992061','ok',1009724,580536,79296,154988,429188),(27,'192.168.1.90','1404992066','ok',1009724,580520,79320,154988,429204);
/*!40000 ALTER TABLE `memoryinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL,
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `login` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,'root',0,0,1),(2,'daemon',1,1,0),(3,'bin',2,2,0),(4,'sys',3,3,0),(5,'sync',4,65534,0),(6,'games',5,60,0),(7,'man',6,12,0),(8,'lp',7,7,0),(9,'mail',8,8,0),(10,'news',9,9,0),(11,'uucp',10,10,0),(12,'proxy',13,13,0),(13,'www-data',33,33,0),(14,'backup',34,34,0),(15,'list',38,38,0),(16,'irc',39,39,0),(17,'gnats',41,41,0),(18,'nobody',65534,65534,0),(19,'libuuid',100,101,0),(20,'syslog',101,103,0),(21,'messagebus',102,105,0),(22,'colord',103,108,0),(23,'lightdm',104,111,0),(24,'whoopsie',105,114,0),(25,'avahi-autoipd',106,117,0),(26,'avahi',107,118,0),(27,'usbmux',108,46,0),(28,'kernoops',109,65534,0),(29,'pulse',110,119,0),(30,'rtkit',111,122,0),(31,'speech-dispatcher',112,29,0),(32,'hplip',113,7,0),(33,'saned',114,123,0),(34,'vincent',1000,1000,1),(35,'sshd',115,65534,0),(36,'mysql',116,125,0);
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-10 19:55:10
