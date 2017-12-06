-- MySQL dump 10.11
--
-- Host: localhost    Database: dbmastersrvex
-- ------------------------------------------------------
-- Server version	5.0.95

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
-- Table structure for table `local_back_db`
--

DROP TABLE IF EXISTS `local_back_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local_back_db` (
  `seqnum` bigint(25) NOT NULL,
  `sqlquery` varchar(1024) NOT NULL,
  PRIMARY KEY  (`seqnum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `source_info_0`
--

DROP TABLE IF EXISTS `source_info_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source_info_0` (
  `gcid` varchar(40) NOT NULL,
  `sourcetype` int(10) default '0',
  `publishtime` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastreporttime` datetime NOT NULL default '0000-00-00 00:00:00',
  `copynum` int(10) default '0',
  PRIMARY KEY  (`gcid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `source_info_1`
--

--
-- Table structure for table `t_valid_ip`
--

DROP TABLE IF EXISTS `t_valid_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_valid_ip` (
  `ipbeg` int(10) unsigned default '0',
  `ipend` int(10) unsigned default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `task_info`
--

DROP TABLE IF EXISTS `task_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_info` (
  `taskgcid` varchar(40) NOT NULL,
  `starttime` datetime NOT NULL default '0000-00-00 00:00:00',
  `tasktype` int(10) default '0',
  `tasktarget` int(10) default '0',
  `sourcetype` int(10) default '0',
  `copynum` int(10) default '0',
  `publishtime` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastreporttime` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`taskgcid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-13 18:39:47
