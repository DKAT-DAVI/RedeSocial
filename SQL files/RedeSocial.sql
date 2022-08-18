-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: RedeSocial
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.22.04.1

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
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `idComentario` int NOT NULL,
  `texto` text,
  `link` varchar(100) DEFAULT NULL,
  `dataHora` datetime DEFAULT NULL,
  `usuario` varchar(20) NOT NULL,
  `idPost` int NOT NULL,
  PRIMARY KEY (`idComentario`,`usuario`,`idPost`),
  KEY `idPost` (`idPost`),
  KEY `usuario` (`usuario`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`idPost`) REFERENCES `post` (`idPost`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`usuario`) REFERENCES `pessoa` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (111,'aí meu coração',NULL,'2022-05-10 19:00:00','@kheuhydjovanna',10),(112,'Gatinho.',NULL,'2022-07-10 19:00:00','@kheuhydjovanna',13),(113,'Caiu aí oh!',NULL,'2022-08-12 18:00:00','@davikalel',15),(114,'Lindo',NULL,'2022-09-10 15:00:00','@gabrielsoares',17),(115,'Pena que namora :(',NULL,'2022-08-10 19:00:00','@edsonjunior',14),(116,'Linda migah <3',NULL,'2022-07-12 18:00:00','@katerine_nayara',11),(117,'Feliz aniversário!',NULL,'2022-09-05 12:00:00','@brunoferreira',16),(118,'Gatão!',NULL,'2022-08-23 00:00:00','@georgelucas',12);
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contemTag`
--

DROP TABLE IF EXISTS `contemTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contemTag` (
  `idTag` int NOT NULL,
  `idPost` int NOT NULL,
  PRIMARY KEY (`idTag`,`idPost`),
  KEY `idPost` (`idPost`),
  CONSTRAINT `contemTag_ibfk_1` FOREIGN KEY (`idTag`) REFERENCES `tag` (`idTag`),
  CONSTRAINT `contemTag_ibfk_2` FOREIGN KEY (`idPost`) REFERENCES `post` (`idPost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contemTag`
--

LOCK TABLES `contemTag` WRITE;
/*!40000 ALTER TABLE `contemTag` DISABLE KEYS */;
INSERT INTO `contemTag` VALUES (1000,10),(1001,10),(1004,10),(1000,11),(1002,11),(1004,11),(1003,12),(1008,12),(1010,12),(1007,13),(1008,13),(1010,13),(1003,14),(1004,14),(1006,14),(1007,15),(1008,15),(1010,15),(1001,16),(1003,16),(1006,16),(1004,17),(1005,17),(1009,17);
/*!40000 ALTER TABLE `contemTag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link` (
  `usuario` varchar(20) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`usuario`,`link`),
  CONSTRAINT `link_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `pessoa` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES ('@brunoferreira','www.cruzeiro.com'),('@brunoferreira','www.mirabela.com'),('@davikalel','www.ifnmg.edu.br'),('@davikalel','www.oficinag3.com.br'),('@douglasbadaro','www.ifnmg.edu.br'),('@douglasbadaro','www.steam.com'),('@edsonjunior','https://www.youtube.com/channel/UCdCpty_cpcYL-FF2atKan3w'),('@edsonjunior','www.cruzeiro.com'),('@gabrielsoares','www.minhasartes.com'),('@gabrielsoares','www.paisagens.com'),('@georgelucas','www.gglucasz.com'),('@georgelucas','www.steam.com'),('@katerine_nayara','www.meuposts.com'),('@katerine_nayara','www.pequidogoias.com'),('@kheuhydjovanna','minhaarte.com'),('@kheuhydjovanna','www.ifnmg.edu.br');
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `idPost` int NOT NULL,
  `usuario` varchar(20) NOT NULL,
  PRIMARY KEY (`usuario`,`idPost`),
  KEY `idPost` (`idPost`),
  CONSTRAINT `marca_ibfk_1` FOREIGN KEY (`idPost`) REFERENCES `post` (`idPost`),
  CONSTRAINT `marca_ibfk_2` FOREIGN KEY (`usuario`) REFERENCES `pessoa` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (10,'@georgelucas'),(10,'@kheuhydjovanna'),(11,'@edsonjunior'),(11,'@katerine_nayara'),(12,'@davikalel'),(12,'@georgelucas'),(13,'@davikalel'),(13,'@douglasbadaro'),(14,'@brunoferreira'),(14,'@edsonjunior'),(15,'@douglasbadaro'),(15,'@edsonjunior'),(16,'@brunoferreira'),(16,'@douglasbadaro'),(17,'@edsonjunior'),(17,'@gabrielsoares');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `nome` varchar(50) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `fotoPerfil` blob,
  `perfilpv` varchar(20) DEFAULT NULL,
  `perfilAberto` varchar(20) DEFAULT NULL,
  `usuario` varchar(20) NOT NULL,
  PRIMARY KEY (`usuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES ('Bruno Ferreira','calvao4decria2','bfr@aluno.ifnmg.edu.br',NULL,'brunipv','brunu_fer','@brunoferreira'),('Davi Kalel Andrade Teixeira','abóbora','dkat@aluno.ifnmg.edu.br',NULL,'private_dkat','daviateixeira','@davikalel'),('Douglas Badaró','thisisme','djmb@aluno.ifnmg.edu.br',NULL,'thisisprivate','thisisbadaro','@douglasbadaro'),('Edson Mendes de Souza Junior','rural476','emsj@aluno.ifnmg.edu.br',NULL,'junim.alt','edsonms_jr','@edsonjunior'),('Gabriel Soares','Gabs777','esj@aluno.ifnmg.edu.br',NULL,'pvbiel','gabrquel','@gabrielsoares'),('George Lucas','gg427000','gl@aluno.ifnmg.edu.br',NULL,'pvd_lucasz','gee.lucasz','@georgelucas'),('Katerine Nayara','Kat123321','knrl@aluno.ifnmg.edu.br',NULL,'kat_ribeiro','ka_ribeiro09','@katerine_nayara'),('Kheuhy Barral','Keub321','kdcb@aluno.ifnmg.edu.br',NULL,'pvkeuhy','kheuhybarral','@kheuhydjovanna');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `idPost` int NOT NULL,
  `descTexto` text,
  `dataHora` datetime DEFAULT NULL,
  `foto` blob,
  `usuario` varchar(20) NOT NULL,
  PRIMARY KEY (`idPost`,`usuario`),
  KEY `usuario` (`usuario`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `pessoa` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (10,'Não há dias cinzentos para quem sonha colorido','2022-05-10 18:32:00',NULL,'@katerine_nayara'),(11,'Boas energias hoje e sempre!','2022-07-05 10:15:25',NULL,'@kheuhydjovanna'),(12,'Pessoas silenciosas têm as mentes mais barulhentas','2021-12-25 10:15:25',NULL,'@gabrielsoares'),(13,'Na fazenda :)','2022-07-25 18:10:25',NULL,'@edsonjunior'),(14,'Curtindo Mirabela','2022-08-12 18:15:25',NULL,'@brunoferreira'),(15,'I\'m Badaro','2021-06-15 12:15:55',NULL,'@douglasbadaro'),(16,'Sem legenda :)','2022-09-04 10:15:25',NULL,'@davikalel'),(17,'Assistindo um animê e jogando um joguinho.','2015-07-25 12:20:25',NULL,'@georgelucas');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reagegostei`
--

DROP TABLE IF EXISTS `reagegostei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reagegostei` (
  `idPost` int NOT NULL,
  `usuario` varchar(20) NOT NULL,
  PRIMARY KEY (`usuario`,`idPost`),
  KEY `idPost` (`idPost`),
  CONSTRAINT `reagegostei_ibfk_1` FOREIGN KEY (`idPost`) REFERENCES `post` (`idPost`),
  CONSTRAINT `reagegostei_ibfk_2` FOREIGN KEY (`usuario`) REFERENCES `pessoa` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reagegostei`
--

LOCK TABLES `reagegostei` WRITE;
/*!40000 ALTER TABLE `reagegostei` DISABLE KEYS */;
INSERT INTO `reagegostei` VALUES (10,'@douglasbadaro'),(10,'@edsonjunior'),(10,'@gabrielsoares'),(10,'@katerine_nayara'),(10,'@kheuhydjovanna'),(11,'@brunoferreira'),(11,'@gabrielsoares'),(11,'@katerine_nayara'),(11,'@kheuhydjovanna'),(12,'@brunoferreira'),(12,'@davikalel'),(12,'@douglasbadaro'),(12,'@gabrielsoares'),(12,'@katerine_nayara'),(12,'@kheuhydjovanna'),(13,'@katerine_nayara'),(14,'@davikalel'),(14,'@edsonjunior'),(14,'@georgelucas'),(15,'@brunoferreira'),(15,'@davikalel'),(15,'@douglasbadaro'),(15,'@georgelucas'),(15,'@katerine_nayara'),(16,'@brunoferreira'),(16,'@edsonjunior'),(16,'@gabrielsoares'),(16,'@georgelucas'),(16,'@kheuhydjovanna'),(17,'@davikalel'),(17,'@douglasbadaro'),(17,'@edsonjunior'),(17,'@georgelucas'),(17,'@katerine_nayara'),(17,'@kheuhydjovanna');
/*!40000 ALTER TABLE `reagegostei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recusa`
--

DROP TABLE IF EXISTS `recusa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recusa` (
  `recusado` varchar(20) NOT NULL,
  `recusador` varchar(20) NOT NULL,
  `datarecusa` datetime NOT NULL,
  PRIMARY KEY (`recusado`,`recusador`,`datarecusa`),
  KEY `recusador` (`recusador`),
  CONSTRAINT `recusa_ibfk_1` FOREIGN KEY (`recusado`) REFERENCES `pessoa` (`usuario`),
  CONSTRAINT `recusa_ibfk_2` FOREIGN KEY (`recusador`) REFERENCES `pessoa` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recusa`
--

LOCK TABLES `recusa` WRITE;
/*!40000 ALTER TABLE `recusa` DISABLE KEYS */;
INSERT INTO `recusa` VALUES ('@gabrielsoares','@brunoferreira','2021-11-26 17:32:46'),('@georgelucas','@brunoferreira','2019-11-15 11:12:26'),('@douglasbadaro','@davikalel','2022-03-09 18:25:27'),('@georgelucas','@edsonjunior','2014-03-12 11:11:26'),('@katerine_nayara','@gabrielsoares','2022-06-23 14:30:16'),('@davikalel','@katerine_nayara','2021-11-15 11:12:26'),('@edsonjunior','@katerine_nayara','2021-12-25 14:30:16'),('@douglasbadaro','@kheuhydjovanna','2020-12-30 17:32:46'),('@edsonjunior','@kheuhydjovanna','2022-06-18 00:12:00');
/*!40000 ALTER TABLE `recusa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `idTag` int NOT NULL,
  `palavraChave` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idTag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1000,'#debemcomavida'),(1001,'#livreleveesolta'),(1002,'#felicidade'),(1003,'#behappy'),(1004,'#sentimentosbons'),(1005,'#sentindosefeliz'),(1006,'#admirando'),(1007,'#ruralzao'),(1008,'#fromfarm'),(1009,'#cute'),(1010,'#natureza');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'RedeSocial'
--

--
-- Dumping routines for database 'RedeSocial'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-18  2:02:13
