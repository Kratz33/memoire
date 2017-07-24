-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: blogslim
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

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
-- Current Database: `blogslim`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `blogslim` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `blogslim`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(128) NOT NULL,
  `niveau` int(11) NOT NULL DEFAULT '0',
  `categ_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_categories_categories` (`categ_id`),
  CONSTRAINT `FK_categories_categories` FOREIGN KEY (`categ_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Marketing',1,NULL),(2,'Comptabilité',1,NULL),(4,'Financement',1,NULL),(5,'Business Model',1,NULL),(6,'Technique',1,NULL),(7,'Juridique',1,NULL),(8,'Vente',1,NULL),(10,'Freelance',1,NULL),(11,'Entrepreneur',1,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_billet` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_billet` (`id_billet`),
  KEY `id_utilisateur` (`id_utilisateur`),
  CONSTRAINT `fk_comm_bill` FOREIGN KEY (`id_billet`) REFERENCES `posts` (`id`),
  CONSTRAINT `fk_comm_user` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentaires`
--

LOCK TABLES `commentaires` WRITE;
/*!40000 ALTER TABLE `commentaires` DISABLE KEYS */;
INSERT INTO `commentaires` VALUES (24,'Pour créer une activité puis une structure réellement à son image, répondant à ses valeurs, ses besoins, son ambition. Pour ma part, éthique, intelligente, écologique, très innovante même avant gardiste, collaborative, et bien sûr très engagée, pouvant impacter la société, changer le monde. <br />\r\nIl n\'y a nul meilleur canal que l\'entrepreneuriat :D<br />\r\n<br />\r\nEt toi Camille ?','2016-11-17 18:29:20',357,25),(25,'Bonne question...<br />\r\n<br />\r\nIl y a eu, il y a et il y aura des tas raisons. Au menu :<br />\r\n - Indépendance ;<br />\r\n - Rémunérations ;<br />\r\n - Projets ;<br />\r\n - Qualité de vie ;<br />\r\n - Etc.<br />\r\n<br />\r\nIl ne faut toutefois pas se leurrer, la vie d\'entrepreneur n\'est et ne sera pas un long fleuve tranquille. Chaque jour sont lot d\'embêtement mais aussi de satisfaction, parfois de réussite fort heureusement.<br />\r\n<br />\r\nJe ne voudrais pas paraître désabusé mais, avec dix ans d\'expérience sur le sujet, avec d\'autres on en connaît un rayon.','2016-11-17 18:31:52',357,26),(26,'Bonjour,<br />\r\n<br />\r\nSi j\'ai bien compris un tiers souhaite exploiter certaines fonctionnalités (features) d\'une solution que vous proposez.<br />\r\n<br />\r\nDans ce cas, différentes choses sont possibles.<br />\r\nCela peut-être en effet, la possibilité de vendre une licence mais, au coup par coup pour un marché réduit en termes de base client, ça n\'a pas trop d\'intérêts.<br />\r\nUn contrat de type royalties ou bien utilisation spécifique moyennant rétribution me semble plus adapté à mon sens. Compte tenu de la spécificité du contrat, il est préférable je pense que vous vous fassiez accompagné par un avocat spécialisé à un moment donné ou un autre.<br />\r\nAprès dans les affaires tout est possible ce qui compte c\'est d\'être gagnant et de ne pas perdre de plume...','2016-11-17 18:37:51',358,26),(27,'Merci Frédéric pour tes précisions et ton avis. Je vais me renseigner sur ce type de contrat.<br />\r\nJe n\'ai pas compris le \" coup par coup sur un marché de base clients réduits\", c\'est à dire ? Si le marché auquel opère l\'application exploitante est grand ou non ?','2016-11-17 18:38:27',358,27);
/*!40000 ALTER TABLE `commentaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lu` tinyint(4) NOT NULL DEFAULT '0',
  `utilisateur_id` int(11) DEFAULT NULL,
  `posts_id` int(11) DEFAULT NULL,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_notification_utilisateurs` (`utilisateur_id`),
  KEY `FK_notification_posts` (`posts_id`),
  CONSTRAINT `FK_notification_posts` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `FK_notification_utilisateurs` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (35,'2016-11-17 18:29:20',0,25,357,'Votre post a reçu une réponse de la part deNicolasQC'),(36,'2016-11-17 18:31:52',0,26,357,'Votre post a reçu une réponse de la part deflibaud'),(37,'2016-11-17 18:37:51',0,26,358,'Votre post a reçu une réponse de la part deflibaud'),(38,'2016-11-17 18:43:59',1,27,358,'Votre post a reçu une réponse de la part deAlexandre_Duarte');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `titre` varchar(256) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_utilisateur` (`id_utilisateur`),
  KEY `id_categorie` (`id_categorie`),
  CONSTRAINT `fk_bill_cat` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_bill_user` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (357,'Chers entrepreneurs,\r\n\r\nQu\'est-ce qui vous a amené à créer votre entreprise?','2016-11-17 18:25:59','Pourquoi êtes-vous devenu entrepreneur ?',24,11),(358,'Bonsoir à tous les entrepreneurs !<br />\r\n<br />\r\nJ\'ai une question par rapport à une possibilité de flux de revenu dans notre business model. Dites moi si elle réalisable ou non : <br />\r\nEst-ce qu\'il est possible de faire payer une application mobile qui veut intégrer certaines fonctionnalités de notre application mobile au sein de celle-ci ? Peut-être au niveau de la licence ? Qu\'est-ce qu\'il est possible de faire ?<br />\r\n<br />\r\nMerci d\'avance pour vos réponses.','2016-11-17 18:37:03','Licence d’intégration d’une application',27,5);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Entrepreneur'),(2,'Professionnel');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `util_categ`
--

DROP TABLE IF EXISTS `util_categ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `util_categ` (
  `utilisateur_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  KEY `FK_util_categ_utilisateurs` (`utilisateur_id`),
  KEY `FK_util_categ_categories` (`categorie_id`),
  CONSTRAINT `FK_util_categ_categories` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `FK_util_categ_utilisateurs` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `util_categ`
--

LOCK TABLES `util_categ` WRITE;
/*!40000 ALTER TABLE `util_categ` DISABLE KEYS */;
/*!40000 ALTER TABLE `util_categ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(128) NOT NULL,
  `nom` varchar(128) NOT NULL,
  `prenom` varchar(128) NOT NULL,
  `mail` varchar(256) NOT NULL,
  `mdp` varchar(256) NOT NULL,
  `premium` tinyint(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `profil` enum('membre','admin') NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pseudo` (`pseudo`),
  KEY `FK_utilisateurs_type` (`type_id`),
  CONSTRAINT `FK_utilisateurs_type` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
INSERT INTO `utilisateurs` VALUES (24,'Camille Roux','Roux','Camille','camille.roux@gmail.com','f0589bca6a41d2da0a527092400002c4',1,NULL,'membre',1),(25,'NicolasQC','QUAY-CENDRE','Nicolas','NicolasQC@gmail.com','7db68ac3563cd4a14b58370a884bbdfd',1,NULL,'membre',2),(26,'flibaud','Libaud','Frédéric','flibaud@gmail.com','e72a4ee8e9a98d71295ec7ea679a1f66',1,NULL,'membre',2),(27,'Alexandre_Duarte','Duarte','Alexandre','Alexandre_Duarte@gmail.com','3d65fd70d95a4edfe9555d0ebeca2b17',0,NULL,'membre',1);
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valeur` int(11) NOT NULL DEFAULT '0',
  `utilisateur_id` int(11) NOT NULL DEFAULT '0',
  `commentaire_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_vote_utilisateurs` (`utilisateur_id`),
  KEY `FK_vote_commentaires` (`commentaire_id`),
  CONSTRAINT `FK_vote_commentaires` FOREIGN KEY (`commentaire_id`) REFERENCES `commentaires` (`id`),
  CONSTRAINT `FK_vote_utilisateurs` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-17 19:53:48
