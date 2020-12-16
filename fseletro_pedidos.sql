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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `idpedidos` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `n_casa` int NOT NULL,
  `telefone` bigint NOT NULL,
  `email` varchar(45) NOT NULL,
  `produto` varchar(300) NOT NULL,
  `preco` decimal(8,2) NOT NULL,
  `quantidade` int NOT NULL,
  `precototal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idpedidos`,`email`),
  KEY `idprodutos_idx` (`idpedidos`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Regina Santos','Rua das FLores',40,56098970,'regina@santos.com','Geladeira Frost Free Brastemp Side Inverse 540 Litros',5019.00,1,5019.00),(2,'João Nunes','Rua Severino Costa',104,50793578,'joaon@gmail.com','Micro-ondas Consul 32 Litros Inox 220V',409.88,2,819.00),(3,'Jasmine Kim','Av. Ataliba',23,72340986,'jaskim@outlook.com','Lavadora de Roupas Philco Inverter 12kg',2179.90,1,2179.90),(4,'Mariana Andrade','Rua Prado',249,61239124,'mariandra@globo.com','Fogão de Piso 4 Bocas Atlas Monaco',519.70,2,1039.40),(5,'Juliana Melo','Av. Penha Brasil',780,37651234,'jumelo@gmail.com','Forno de Micro-ondas Eletrolux 20 Litros Branco 220V',436.05,1,436.05),(6,'Rafael Dias','Av. Itaberaba',78,25437654,'rafa123@gmail.com','Lava-Louças Inox com 10 Serviços, 06 Programas de lavagem e Painel Blue Touch',2799.90,1,2799.90),(7,'Sofia Marques','Rua João Crudo',3,12651243,'sofimarques@outlook.com','Lava-Louças Compacta 8 Serviços branca 127V Brastemp',1730.61,1,1730.61),(8,'Roberto Silva','Rua Altino',50,77653423,'robert@gmail.com','Geladeira Frost Free Consul Prata 340 Litros',2069.00,1,2069.00),(9,'Vitor Santos','Rua Expedito',267,17853853,'vitor453@bol.com','Geladeira Frost Free Brastemp Branca 375 Litros',1910.90,1,1910.90),(10,'Helena Brito','Av. Pq Novo Mundo',356,92648638,'helenabrito123@gmail.com','Micro-ondas 25L Espelhado Philco 220V',464.53,1,464.53),(11,'Eliane da Cruz','Rua Itatiba do Sul',9,41829554,'elicruz@gmail.com','Micro-ondas Consul 32 Litros Inox 220V',409.88,1,409.88),(12,'Evandro Akira','Rua Maria José',765,12763345,'evandro@outlook.com','Geladeira Frost Free Consul Prata 340 Litros',2069.00,1,2069.00),(13,'Ana Rita Silva','Rua São Pedro',90,55447788,'anarita@uol.com','Geladeira Frost Free Brastemp Branca 375 Litros',1910.00,3,5732.70);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-05 17:03:04
