-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: fseletro
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `relatorio_pedidos`
--

DROP TABLE IF EXISTS `relatorio_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relatorio_pedidos` (
  `idrelatorio_pedidos` varchar(30) NOT NULL,
  `idpedidos` int NOT NULL,
  `nome_cliente` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `idprodutos` int NOT NULL,
  `produto` varchar(45) NOT NULL,
  `precototal` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idrelatorio_pedidos`,`idpedidos`,`email`,`idprodutos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatorio_pedidos`
--

LOCK TABLES `relatorio_pedidos` WRITE;
/*!40000 ALTER TABLE `relatorio_pedidos` DISABLE KEYS */;
INSERT INTO `relatorio_pedidos` VALUES ('A',1,'Regina Santos','regina@santos.com',1,'Geladeira Frost Free Brastemp Side Inverse 54',5019.00),('B',2,'João Nunes','joaon@gmail.com',6,'Micro-ondas Consul 32 Litros Inox 220V',819.00),('C',3,'Jasmine Kim','jaskim@outlook.com',12,'Lavadora de Roupas Philco Inverter 12kg',2179.90),('D',4,'Mariana Andrade','mariandra@globo.com',5,'Fogão de Piso 4 Bocas Atlas Monaco',1039.40),('E',5,'Juliana Melo','jumelo@gmail.com',8,'Forno de Micro-ondas Eletrolux 20 Litros Bran',436.05),('F',6,'Rafael Dias','rafa123@gmail.com',9,'Lava-Louças Inox com 10 Serviços, 06 Programa',2799.90),('G',7,'Sofia Marques','sofimarques@outlook.com',10,'Lava-Louças Compacta 8 Serviços branca 127V B',1730.61),('H',8,'Roberto Silva','robert@gmail.com',3,'Geladeira Frost Free Consul Prata 340 Litros',2069.00),('I',9,'Vitor Santos','vitor453@bol.com',2,'Geladeira Frost Free Brastemp Branca 375 Litr',1910.90),('J',10,'Helena Brito','helenabrito123@gmail.com',7,'Micro-ondas 25L Espelhado Philco 220V',464.53),('L',11,'Eliane da Cruz','elicruz@gmail.com',6,'Micro-ondas Consul 32 Litros Inox 220V',409.88),('M',12,'Evandro Akira','evandro@outlook.com',3,'Geladeira Frost Free Consul Prata 340 Litros',2069.00),('N',13,'Ana Rita Silva','anarita@uol.com',2,'Geladeira Frost Free Brastemp Branca 375 Litr',5732.70);
/*!40000 ALTER TABLE `relatorio_pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-05 19:05:13
