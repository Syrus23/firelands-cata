-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: firelands_world
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `access_requirement`
--

DROP TABLE IF EXISTS `access_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_requirement` (
  `mapId` int unsigned NOT NULL,
  `difficulty` tinyint unsigned NOT NULL DEFAULT '0',
  `level_min` tinyint unsigned NOT NULL DEFAULT '0',
  `level_max` tinyint unsigned NOT NULL DEFAULT '0',
  `item` int unsigned NOT NULL DEFAULT '0',
  `item2` int unsigned NOT NULL DEFAULT '0',
  `quest_done_A` int unsigned NOT NULL DEFAULT '0',
  `quest_done_H` int unsigned NOT NULL DEFAULT '0',
  `completed_achievement` int unsigned NOT NULL DEFAULT '0',
  `heroic_exclusive` tinyint(1) DEFAULT '0',
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`mapId`,`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Access Requirements';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_requirement`
--

LOCK TABLES `access_requirement` WRITE;
/*!40000 ALTER TABLE `access_requirement` DISABLE KEYS */;
INSERT INTO `access_requirement` VALUES (33,0,14,0,0,0,0,0,0,0,'Shadowfang Keep Entrance'),(34,0,15,0,0,0,0,0,0,0,'Stormwind Stockades Entrance'),(36,0,10,0,0,0,0,0,0,0,'DeadMines Entrance'),(43,0,10,0,0,0,0,0,0,0,'The Barrens - Wailing Caverns'),(47,0,17,0,0,0,0,0,0,0,'Razorfen Kraul Entrance'),(48,0,19,0,0,0,0,0,0,0,'Blackphantom Deeps Entrance'),(70,0,30,0,0,0,0,0,0,0,'Uldaman Entrance'),(90,0,15,0,0,0,0,0,0,0,'Gnomeregan Entrance'),(109,0,35,0,0,0,0,0,0,0,'Altar of Atal\'Hakkar Entrance'),(129,0,25,0,0,0,0,0,0,0,'Razorfen Downs Entrance'),(189,0,20,0,0,0,0,0,0,0,'Scarlet Monastery - Graveyard (Entrance)'),(209,0,35,0,0,0,0,0,0,0,'Zul\'Farrak Entrance'),(229,0,45,0,0,0,0,0,0,0,'Blackrock Spire - Searing Gorge Instance (Inside)'),(230,0,40,0,0,0,0,0,0,0,'Blackrock Mountain - Searing Gorge Instance?'),(249,0,80,0,0,0,0,0,0,0,'Onyxia\'s Lair Entrance'),(249,1,80,0,0,0,0,0,0,0,'Onyxia\'s Lair Entrance'),(269,0,66,0,0,0,10285,10285,0,0,'Caverns Of Time,Black Morass (Entrance)'),(269,1,70,0,0,0,10285,10285,0,0,'Caverns Of Time,Black Morass (Entrance)'),(289,0,45,0,0,0,0,0,0,0,'Scholomance Entrance'),(309,0,50,0,0,0,0,0,0,0,'Zul\'Gurub Entrance '),(329,0,45,0,0,0,0,0,0,0,'Stratholme - Eastern Plaguelands Instance'),(349,0,30,0,0,0,0,0,0,0,'Maraudon'),(389,0,8,0,0,0,0,0,0,0,'Ragefire Chasm - Ogrimmar Instance'),(409,0,50,0,0,0,0,0,0,0,'The Molten Bridge'),(429,0,45,0,0,0,0,0,0,0,'Dire Maul'),(469,0,60,0,0,0,0,0,0,0,'Blackwing Lair - Blackrock Mountain - Eastern Kingdoms'),(509,0,50,0,0,0,0,0,0,0,'Ruins Of Ahn\'Qiraj (Outside)'),(531,0,50,0,0,0,0,0,0,0,'Ahn\'Qiraj Temple (Outside)'),(532,0,68,0,0,0,0,0,0,0,'Karazhan,Main (Entrance)'),(533,0,80,0,0,0,0,0,0,0,'Naxxramas'),(533,1,80,0,0,0,0,0,0,0,'Naxxramas'),(534,0,70,0,0,0,0,0,0,0,'Battle Of Mount Hyjal,Alliance Base (Entrance)'),(540,0,55,0,0,0,0,0,0,0,'The Shattered Halls (Entrance)'),(542,0,55,0,0,0,0,0,0,0,'The Blood Furnace (Entrance)'),(543,0,55,0,0,0,0,0,0,0,'Hellfire Ramparts (Entrance)'),(544,0,65,0,0,0,0,0,0,0,'Magtheridon\'s Lair (Entrance)'),(545,0,55,0,0,0,0,0,0,0,'The Steamvault (Entrance)'),(546,0,55,0,0,0,0,0,0,0,'The Underbog (Entrance)'),(547,0,55,0,0,0,0,0,0,0,'The Slave Pens (Entrance)'),(548,0,68,0,0,0,0,0,0,0,'Serpentshrine Cavern (Entrance)'),(550,0,70,0,0,0,0,0,0,0,'The Eye (Entrance)'),(552,0,68,0,0,0,0,0,0,0,'The Arcatraz (Entrance)'),(553,0,68,0,0,0,0,0,0,0,'The Botanica (Entrance)'),(554,0,68,0,0,0,0,0,0,0,'The Mechanar (Entrance)'),(555,0,65,0,0,0,0,0,0,0,'Shadow Labyrinth (Entrance)'),(556,0,55,0,0,0,0,0,0,0,'Sethekk Halls (Entrance)'),(557,0,55,0,0,0,0,0,0,0,'Mana Tombs (Entrance)'),(558,0,55,0,0,0,0,0,0,0,'Auchenai Crypts (Entrance)'),(560,0,66,0,0,0,10277,10277,0,0,'Caverns Of Time,Old Hillsbrad Foothills (Entrance)'),(564,0,70,0,0,0,0,0,0,0,'Black Temple (Entrance)'),(565,0,70,0,0,0,0,0,0,0,'Gruul\'s Lair (Entrance)'),(568,0,0,0,0,0,0,0,0,1,'Zul\'Aman - Heroic Exclusive'),(568,1,85,0,0,0,0,0,0,0,'Zul\'Aman (Entrance)'),(574,0,65,0,0,0,0,0,0,0,'Utgarde Keep (entrance)'),(574,1,80,0,0,0,0,0,0,0,'Utgarde Keep (entrance)'),(575,0,75,0,0,0,0,0,0,0,'Utgarde Pinnacle (entrance)'),(575,1,80,0,0,0,0,0,0,0,'Utgarde Pinnacle (entrance)'),(576,0,66,0,0,0,0,0,0,0,'The Nexus (entrance)'),(576,1,80,0,0,0,0,0,0,0,'The Nexus (entrance)'),(578,0,75,0,0,0,0,0,0,0,'The Oculus (entrance)'),(578,1,80,0,0,0,0,0,0,0,'The Oculus (entrance)'),(580,0,70,0,0,0,0,0,0,0,'Sunwell Plateau (Entrance)'),(585,0,65,0,0,0,0,0,0,0,'Magisters\' Terrace (Entrance)'),(585,1,65,0,0,0,0,0,0,0,'Magisters\' Terrace (Entrance)'),(595,0,75,0,0,0,0,0,0,0,'Culling of Stratholme (entrance)'),(595,1,80,0,0,0,0,0,0,0,'Culling of Stratholme (entrance)'),(599,0,72,0,0,0,0,0,0,0,'Ulduar,Halls of Stone (entrance)'),(599,1,80,0,0,0,0,0,0,0,'Ulduar,Halls of Stone (entrance)'),(600,0,69,0,0,0,0,0,0,0,'Drak\'Tharon Keep (entrance)'),(600,1,80,0,0,0,0,0,0,0,'Drak\'Tharon Keep (entrance)'),(601,0,67,0,0,0,0,0,0,0,'Azjol-Nerub (entrance)'),(601,1,80,0,0,0,0,0,0,0,'Azjol-Nerub (entrance)'),(602,0,75,0,0,0,0,0,0,0,'Ulduar,Halls of Lightning (entrance)'),(602,1,80,0,0,0,0,0,0,0,'Ulduar,Halls of Lightning (entrance)'),(603,0,80,0,0,0,0,0,0,0,'Ulduar Raid entrance'),(603,1,80,0,0,0,0,0,0,0,'Ulduar Raid entrance'),(604,0,71,0,0,0,0,0,0,0,'Gundrak (entrance north)'),(604,1,80,0,0,0,0,0,0,0,'Gundrak (entrance north)'),(608,0,70,0,0,0,0,0,0,0,'Violet Hold (entrance)'),(608,1,80,0,0,0,0,0,0,0,'Violet Hold (entrance)'),(615,0,80,0,0,0,0,0,0,0,'Chamber of Aspects,Obsidian Sanctum (entrance)'),(615,1,80,0,0,0,0,0,0,0,'Chamber of Aspects,Obsidian Sanctum (entrance)'),(616,0,80,0,0,0,0,0,0,0,'The Eye of Eternity (entrance)'),(616,1,80,0,0,0,0,0,0,0,'The Eye of Eternity (entrance)'),(619,0,68,0,0,0,0,0,0,0,'Ahn\'Kahet (entrance)'),(619,1,80,0,0,0,0,0,0,0,'Ahn\'Kahet (entrance)'),(624,0,80,0,0,0,0,0,0,0,'Vault of Archavon (Entrance)'),(624,1,80,0,0,0,0,0,0,0,'Vault of Archavon (Entrance)'),(631,0,80,0,0,0,0,0,0,0,'IceCrown Citadel (Entrance)'),(631,1,80,0,0,0,0,0,0,0,'IceCrown Citadel (Entrance)'),(631,2,80,0,0,0,0,0,4530,0,'IceCrown Citadel (Entrance)'),(631,3,80,0,0,0,0,0,4597,0,'IceCrown Citadel (Entrance)'),(632,0,75,0,0,0,0,0,0,0,'Forge of Souls (Entrance)'),(632,1,80,0,0,0,0,0,0,0,'Forge of Souls (Entrance)'),(643,0,77,0,0,0,0,0,0,0,'Throne of the Tides (Entrance)'),(643,1,85,0,0,0,0,0,0,0,'Throne of the Tides (Entrance)'),(644,0,83,0,0,0,0,0,0,0,'Halls of Origination (Entrance)'),(644,1,85,0,0,0,0,0,0,0,'Halls of Origination (Entrance)'),(645,0,77,0,0,0,0,0,0,0,'Blackrock Caverns (Entrance)'),(645,1,85,0,0,0,0,0,0,0,'Blackrock Caverns (Entrance)'),(649,0,80,0,0,0,0,0,0,0,'Trial of the Crusader'),(649,1,80,0,0,0,0,0,0,0,'Trial of the Crusader'),(649,2,80,0,0,0,0,0,0,0,'Trial of the Crusader'),(649,3,80,0,0,0,0,0,0,0,'Trial of the Crusader'),(650,0,75,0,0,0,0,0,0,0,'Trial of the Champion'),(650,1,80,0,0,0,0,0,0,0,'Trial of the Champion'),(657,0,80,0,0,0,0,0,0,0,'The Vortex Pinnacle (Entrance)'),(657,1,85,0,0,0,0,0,0,0,'The Vortex Pinnacle (Entrance)'),(658,0,75,0,0,0,24499,24511,0,0,'Pit of Saron (Entrance)'),(658,1,80,0,0,0,24499,24511,0,0,'Pit of Saron (Entrance)'),(668,0,75,0,0,0,24710,24712,0,0,'Halls of Reflection (Entrance)'),(668,1,80,0,0,0,24710,24712,0,0,'Halls of Reflection (Entrance)'),(669,0,85,0,0,0,0,0,0,0,'Blackwing Descent (Entrance) - 10N'),(669,1,85,0,0,0,0,0,0,0,'Blackwing Descent (Entrance) - 25N'),(669,2,85,0,0,0,0,0,4842,0,'Blackwing Descent (Entrance) - 10H'),(669,3,85,0,0,0,0,0,4842,0,'Blackwing Descent (Entrance) - 25H'),(670,0,83,0,0,0,0,0,0,0,'Grim Batol (Entrance)'),(670,1,85,0,0,0,0,0,0,0,'Grim Batol (Entrance)'),(671,0,85,0,0,0,0,0,0,0,'The Bastion of Twilight (Entrance) - 10N'),(671,1,85,0,0,0,0,0,0,0,'The Bastion of Twilight (Entrance) - 25N'),(671,2,85,0,0,0,0,0,4850,0,'The Bastion of Twilight (Entrance) - 10H'),(671,3,85,0,0,0,0,0,4850,0,'The Bastion of Twilight (Entrance) - 25H'),(720,0,85,0,0,0,0,0,0,0,'Firelands (Entrance) - 10N'),(720,1,85,0,0,0,0,0,0,0,'Firelands (Entrance) - 25N'),(720,2,85,0,0,0,0,0,5802,0,'Firelands (Entrance) - 10H'),(720,3,85,0,0,0,0,0,5802,0,'Firelands (Entrance) - 25H'),(724,0,80,0,0,0,0,0,0,0,'The Ruby Sanctum (Entrance)'),(724,1,80,0,0,0,0,0,0,0,'The Ruby Sanctum (Entrance)'),(724,2,80,0,0,0,0,0,0,0,'The Ruby Sanctum (Entrance)'),(724,3,80,0,0,0,0,0,0,0,'The Ruby Sanctum (Entrance)'),(725,0,80,0,0,0,0,0,0,0,'The Stonecore (Entrance)'),(725,1,85,0,0,0,0,0,0,0,'The Stonecore (Entrance)'),(754,0,85,0,0,0,0,0,0,0,'Throne of the Four Winds (Entrance)'),(754,1,85,0,0,0,0,0,0,0,'Throne of the Four Winds (Entrance)'),(754,2,85,0,0,0,0,0,4851,0,'Throne of the Four Winds (Entrance)'),(754,3,85,0,0,0,0,0,4851,0,'Throne of the Four Winds (Entrance)'),(755,0,83,0,0,0,0,0,0,0,'Lost City of the Tol\'vir (Entrance)'),(755,1,85,0,0,0,0,0,0,0,'Lost City of the Tol\'vir (Entrance)'),(757,0,85,0,0,0,0,0,0,0,'Baradin Hold (Entrance) - 10N'),(757,1,85,0,0,0,0,0,0,0,'Baradin Hold (Entrance) - 25N'),(859,0,0,0,0,0,0,0,0,1,'Zul\'Gurub - Heroic Exclusive'),(859,1,85,0,0,0,0,0,0,0,'Zul\'Gurub (Entrance)'),(938,0,0,0,0,0,0,0,0,1,'End Time - Heroic Exclusive'),(938,1,85,0,0,0,0,0,0,0,'End Time (Entrance)'),(939,0,0,0,0,0,0,0,0,1,'Well of Eternity - Heroic Exclusive'),(939,1,85,0,0,0,0,0,6117,0,'Well of Eternity (Entrance)'),(940,0,0,0,0,0,0,0,0,1,'Hour of Twilight - Heroic Exclusive'),(940,1,85,0,0,0,0,0,6118,0,'Hour of Twilight (Entrance)'),(967,0,85,0,0,0,0,0,0,0,'Dragon Soul (Entrance) - 10N'),(967,1,85,0,0,0,0,0,0,0,'Dragon Soul (Entrance) - 25N'),(967,2,85,0,0,0,0,0,6177,0,'Dragon Soul (Entrance) - 10H'),(967,3,85,0,0,0,0,0,6177,0,'Dragon Soul (Entrance) - 25H');
/*!40000 ALTER TABLE `access_requirement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-09 10:22:08
