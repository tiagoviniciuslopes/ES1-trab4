-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `atividadecomercial`
--

DROP TABLE IF EXISTS `atividadecomercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atividadecomercial` (
  `idAtividadeComercial` int(11) NOT NULL AUTO_INCREMENT,
  `descricaoAtividadeComercial` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idAtividadeComercial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividadecomercial`
--

LOCK TABLES `atividadecomercial` WRITE;
/*!40000 ALTER TABLE `atividadecomercial` DISABLE KEYS */;
INSERT INTO `atividadecomercial` VALUES (1,'Comercio'),(2,'Suporte');
/*!40000 ALTER TABLE `atividadecomercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atividadecomercial_cliente`
--

DROP TABLE IF EXISTS `atividadecomercial_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atividadecomercial_cliente` (
  `idAtividadeComercial` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  PRIMARY KEY (`idAtividadeComercial`,`idCliente`),
  KEY `FK_AtividadeComercial_Cliente_1` (`idCliente`),
  CONSTRAINT `FK_AtividadeComercial_Cliente_0` FOREIGN KEY (`idAtividadeComercial`) REFERENCES `atividadecomercial` (`idAtividadeComercial`),
  CONSTRAINT `FK_AtividadeComercial_Cliente_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividadecomercial_cliente`
--

LOCK TABLES `atividadecomercial_cliente` WRITE;
/*!40000 ALTER TABLE `atividadecomercial_cliente` DISABLE KEYS */;
INSERT INTO `atividadecomercial_cliente` VALUES (2,2);
/*!40000 ALTER TABLE `atividadecomercial_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atividadecomercial_fornecedor`
--

DROP TABLE IF EXISTS `atividadecomercial_fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atividadecomercial_fornecedor` (
  `idFornecedor` int(11) NOT NULL,
  `idAtividadeComercial` int(11) NOT NULL,
  PRIMARY KEY (`idFornecedor`,`idAtividadeComercial`),
  KEY `FK_AtividadeComercial_Fornecedor_1` (`idAtividadeComercial`),
  CONSTRAINT `FK_AtividadeComercial_Fornecedor_0` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`),
  CONSTRAINT `FK_AtividadeComercial_Fornecedor_1` FOREIGN KEY (`idAtividadeComercial`) REFERENCES `atividadecomercial` (`idAtividadeComercial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividadecomercial_fornecedor`
--

LOCK TABLES `atividadecomercial_fornecedor` WRITE;
/*!40000 ALTER TABLE `atividadecomercial_fornecedor` DISABLE KEYS */;
INSERT INTO `atividadecomercial_fornecedor` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `atividadecomercial_fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairro` (
  `idBairro` int(11) NOT NULL AUTO_INCREMENT,
  `nomeBairro` varchar(100) NOT NULL,
  PRIMARY KEY (`idBairro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,'Centro'),(2,'Vila A'),(3,'Vila B'),(4,'Vila C');
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `idCidade` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCidade` varchar(100) NOT NULL,
  `idUF` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCidade`),
  KEY `FK_Cidade_0` (`idUF`),
  CONSTRAINT `FK_Cidade_0` FOREIGN KEY (`idUF`) REFERENCES `uf` (`idUF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Curitiba',1),(2,'Londrina',1),(3,'Medianeira',1),(4,'Sao Paulo',2),(5,'Dublin',3),(6,'Ottawa',4);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `primeiroNomeCliente` varchar(100) NOT NULL,
  `nomeMeioCliente` varchar(100) DEFAULT NULL,
  `ultimoNomeCliente` varchar(100) DEFAULT NULL,
  `nomeAbreviadoCliente` varchar(100) DEFAULT NULL,
  `nomeCompletoCliente` varchar(100) DEFAULT NULL,
  `cpf` varchar(100) DEFAULT NULL,
  `cnpj` varchar(100) DEFAULT NULL,
  `idSexo` int(11) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `idEndereco` int(11) DEFAULT NULL,
  `numeroDoc` varchar(100) DEFAULT NULL,
  `dataExpedicao` date DEFAULT NULL,
  `idOrgaoExpeditor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `FK_Cliente_0` (`idSexo`),
  KEY `FK_Cliente_1` (`idEndereco`),
  KEY `FK_Cliente_2` (`idOrgaoExpeditor`),
  CONSTRAINT `FK_Cliente_0` FOREIGN KEY (`idSexo`) REFERENCES `sexo` (`idSexo`),
  CONSTRAINT `FK_Cliente_1` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`),
  CONSTRAINT `FK_Cliente_2` FOREIGN KEY (`idOrgaoExpeditor`) REFERENCES `orgaoexpeditor` (`idOrgaoExpeditor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Tiago','Lopes','Pereira','Tiago V L Pereira','Tiago Vinicius Lopes Pereira','09722879901',NULL,1,23,'null',2,'97667450','1997-07-03',1),(2,'Tiago V L P DevOps',NULL,NULL,'TVLP DevOps',NULL,NULL,'32864581000104',NULL,54,NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clienteempresa`
--

DROP TABLE IF EXISTS `clienteempresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clienteempresa` (
  `idClienteEmpresa` char(10) NOT NULL,
  `primeiroNomeEmpresa` varchar(10) NOT NULL,
  `nomeMeioEmpresa` varchar(10) DEFAULT NULL,
  `ultimoNomeEmpresa` varchar(10) DEFAULT NULL,
  `nomeAbreviadoEmpresa` char(10) DEFAULT NULL,
  `cnpj` varchar(10) NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(10) DEFAULT NULL,
  `idEndereco` int(11) DEFAULT NULL,
  `caminhoFoto` varchar(10) DEFAULT NULL,
  `descricaoFoto` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idClienteEmpresa`),
  KEY `FK_ClienteEmpresa_0` (`idEndereco`),
  CONSTRAINT `FK_ClienteEmpresa_0` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienteempresa`
--

LOCK TABLES `clienteempresa` WRITE;
/*!40000 ALTER TABLE `clienteempresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `clienteempresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddd`
--

DROP TABLE IF EXISTS `ddd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ddd` (
  `idDDD` int(11) NOT NULL AUTO_INCREMENT,
  `numeroDDD` int(11) NOT NULL,
  PRIMARY KEY (`idDDD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddd`
--

LOCK TABLES `ddd` WRITE;
/*!40000 ALTER TABLE `ddd` DISABLE KEYS */;
INSERT INTO `ddd` VALUES (1,45),(2,567),(3,57),(4,987);
/*!40000 ALTER TABLE `ddd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddi`
--

DROP TABLE IF EXISTS `ddi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ddi` (
  `idDDI` int(11) NOT NULL AUTO_INCREMENT,
  `numeroDDI` int(11) NOT NULL,
  PRIMARY KEY (`idDDI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddi`
--

LOCK TABLES `ddi` WRITE;
/*!40000 ALTER TABLE `ddi` DISABLE KEYS */;
INSERT INTO `ddi` VALUES (1,55),(2,1),(3,353);
/*!40000 ALTER TABLE `ddi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailcliente`
--

DROP TABLE IF EXISTS `emailcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emailcliente` (
  `idEmailCliente` int(11) NOT NULL AUTO_INCREMENT,
  `descricaoEmail` varchar(100) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEmailCliente`),
  KEY `FK_EmailCliente_0` (`idCliente`),
  CONSTRAINT `FK_EmailCliente_0` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailcliente`
--

LOCK TABLES `emailcliente` WRITE;
/*!40000 ALTER TABLE `emailcliente` DISABLE KEYS */;
INSERT INTO `emailcliente` VALUES (1,'tiago.foz@hotmail.com',1),(2,'suporte@devops.com.br',2);
/*!40000 ALTER TABLE `emailcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailfornecedor`
--

DROP TABLE IF EXISTS `emailfornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emailfornecedor` (
  `idEmailFornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `descricaoEmail` varchar(100) DEFAULT NULL,
  `idFornecedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEmailFornecedor`),
  KEY `FK_EmailFornecedor_0` (`idFornecedor`),
  CONSTRAINT `FK_EmailFornecedor_0` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailfornecedor`
--

LOCK TABLES `emailfornecedor` WRITE;
/*!40000 ALTER TABLE `emailfornecedor` DISABLE KEYS */;
INSERT INTO `emailfornecedor` VALUES (1,'atendimento@razer.com',2),(2,'suporte@hyperx.com',1);
/*!40000 ALTER TABLE `emailfornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL AUTO_INCREMENT,
  `cep` varchar(100) NOT NULL,
  `idBairro` int(11) DEFAULT NULL,
  `idCidade` int(11) DEFAULT NULL,
  `idLogradouro` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEndereco`),
  KEY `FK_Endereco_0` (`idBairro`),
  KEY `FK_Endereco_1` (`idCidade`),
  KEY `FK_Endereco_2` (`idLogradouro`),
  CONSTRAINT `FK_Endereco_0` FOREIGN KEY (`idBairro`) REFERENCES `bairro` (`idBairro`),
  CONSTRAINT `FK_Endereco_1` FOREIGN KEY (`idCidade`) REFERENCES `cidade` (`idCidade`),
  CONSTRAINT `FK_Endereco_2` FOREIGN KEY (`idLogradouro`) REFERENCES `logradouro` (`idLogradouro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'85867530',1,1,1),(2,'85867500',1,1,1),(3,'76984359',1,5,3),(4,'75489651',1,6,4);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fonecliente`
--

DROP TABLE IF EXISTS `fonecliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fonecliente` (
  `idFoneCliente` int(11) NOT NULL AUTO_INCREMENT,
  `numeroFone` varchar(100) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idDDI` int(11) DEFAULT NULL,
  `idDDD` int(11) DEFAULT NULL,
  `idTipoFone` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFoneCliente`),
  KEY `FK_FoneCliente_0` (`idCliente`),
  KEY `FK_FoneCliente_1` (`idDDI`),
  KEY `FK_FoneCliente_2` (`idDDD`),
  KEY `FK_FoneCliente_3` (`idTipoFone`),
  CONSTRAINT `FK_FoneCliente_0` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `FK_FoneCliente_1` FOREIGN KEY (`idDDI`) REFERENCES `ddi` (`idDDI`),
  CONSTRAINT `FK_FoneCliente_2` FOREIGN KEY (`idDDD`) REFERENCES `ddd` (`idDDD`),
  CONSTRAINT `FK_FoneCliente_3` FOREIGN KEY (`idTipoFone`) REFERENCES `tipofone` (`idTipoFone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fonecliente`
--

LOCK TABLES `fonecliente` WRITE;
/*!40000 ALTER TABLE `fonecliente` DISABLE KEYS */;
INSERT INTO `fonecliente` VALUES (1,'99940308',1,1,1,1),(2,'35776715',2,1,1,1);
/*!40000 ALTER TABLE `fonecliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fonefornecedor`
--

DROP TABLE IF EXISTS `fonefornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fonefornecedor` (
  `idFoneFornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `numeroFone` varchar(100) DEFAULT NULL,
  `idDDI` int(11) DEFAULT NULL,
  `idDDD` int(11) DEFAULT NULL,
  `idTipoFone` int(11) DEFAULT NULL,
  `idFornecedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFoneFornecedor`),
  KEY `FK_FoneFornecedor_0` (`idDDI`),
  KEY `FK_FoneFornecedor_1` (`idDDD`),
  KEY `FK_FoneFornecedor_2` (`idTipoFone`),
  KEY `FK_FoneFornecedor_3` (`idFornecedor`),
  CONSTRAINT `FK_FoneFornecedor_0` FOREIGN KEY (`idDDI`) REFERENCES `ddi` (`idDDI`),
  CONSTRAINT `FK_FoneFornecedor_1` FOREIGN KEY (`idDDD`) REFERENCES `ddd` (`idDDD`),
  CONSTRAINT `FK_FoneFornecedor_2` FOREIGN KEY (`idTipoFone`) REFERENCES `tipofone` (`idTipoFone`),
  CONSTRAINT `FK_FoneFornecedor_3` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fonefornecedor`
--

LOCK TABLES `fonefornecedor` WRITE;
/*!40000 ALTER TABLE `fonefornecedor` DISABLE KEYS */;
INSERT INTO `fonefornecedor` VALUES (1,'92946388',2,2,1,2),(2,'97846842',3,3,1,1);
/*!40000 ALTER TABLE `fonefornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `idFornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `nomeAbreviadoFornecedor` varchar(100) DEFAULT NULL,
  `nomeCompletoFornecedor` varchar(100) DEFAULT NULL,
  `cnpj` varchar(100) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `idEndereco` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFornecedor`),
  KEY `FK_Fornecedor_0` (`idEndereco`),
  CONSTRAINT `FK_Fornecedor_0` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'HyperX','HyperX Gaming','02863526000120',178,'Na esquina da rua',3),(2,'Razer','Razer Gaming','41182243000175',492,'Entre a farmacia e a padaria',4);
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemcompra`
--

DROP TABLE IF EXISTS `itemcompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemcompra` (
  `idNotaCompra` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `precoUnitario` float DEFAULT NULL,
  PRIMARY KEY (`idNotaCompra`,`idProduto`),
  KEY `FK_ItemCompra_1` (`idProduto`),
  CONSTRAINT `FK_ItemCompra_0` FOREIGN KEY (`idNotaCompra`) REFERENCES `notacompra` (`idNotaCompra`),
  CONSTRAINT `FK_ItemCompra_1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemcompra`
--

LOCK TABLES `itemcompra` WRITE;
/*!40000 ALTER TABLE `itemcompra` DISABLE KEYS */;
INSERT INTO `itemcompra` VALUES (1,1,14000,200),(1,2,987,490),(1,3,165,320),(2,5,28000,179.65),(2,6,735,425.98),(2,7,984,499.99);
/*!40000 ALTER TABLE `itemcompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemvenda`
--

DROP TABLE IF EXISTS `itemvenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemvenda` (
  `idProduto` int(11) NOT NULL,
  `idNotaVenda` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `precoUnitario` float DEFAULT NULL,
  PRIMARY KEY (`idProduto`,`idNotaVenda`),
  KEY `FK_ItemVenda_1` (`idNotaVenda`),
  CONSTRAINT `FK_ItemVenda_0` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`),
  CONSTRAINT `FK_ItemVenda_1` FOREIGN KEY (`idNotaVenda`) REFERENCES `notavenda` (`idNotaVenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemvenda`
--

LOCK TABLES `itemvenda` WRITE;
/*!40000 ALTER TABLE `itemvenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemvenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logradouro`
--

DROP TABLE IF EXISTS `logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logradouro` (
  `idLogradouro` int(11) NOT NULL AUTO_INCREMENT,
  `nomeLogradouro` varchar(100) NOT NULL,
  `idTipoLogradouro` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLogradouro`),
  KEY `FK_Logradouro_0` (`idTipoLogradouro`),
  CONSTRAINT `FK_Logradouro_0` FOREIGN KEY (`idTipoLogradouro`) REFERENCES `tipologradouro` (`idTipoLogradouro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logradouro`
--

LOCK TABLES `logradouro` WRITE;
/*!40000 ALTER TABLE `logradouro` DISABLE KEYS */;
INSERT INTO `logradouro` VALUES (1,'Vitorino',1),(2,'Brasil',2),(3,'Castle',1),(4,'Gladstone',2);
/*!40000 ALTER TABLE `logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notacompra`
--

DROP TABLE IF EXISTS `notacompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notacompra` (
  `idNotaCompra` int(11) NOT NULL AUTO_INCREMENT,
  `dataNota` date DEFAULT NULL,
  `totalNota` float DEFAULT NULL,
  `descontoTotal` float DEFAULT NULL,
  `valorLiquido` float DEFAULT NULL,
  `idFornecedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNotaCompra`),
  KEY `FK_NotaCompra_0` (`idFornecedor`),
  CONSTRAINT `FK_NotaCompra_0` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notacompra`
--

LOCK TABLES `notacompra` WRITE;
/*!40000 ALTER TABLE `notacompra` DISABLE KEYS */;
INSERT INTO `notacompra` VALUES (1,'2019-09-06',3336430,289870,3046560,1),(2,'2019-11-13',8418800,2583510,5835290,2);
/*!40000 ALTER TABLE `notacompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notavenda`
--

DROP TABLE IF EXISTS `notavenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notavenda` (
  `idNotaVenda` int(11) NOT NULL AUTO_INCREMENT,
  `dataNota` date DEFAULT NULL,
  `totalNota` float DEFAULT NULL,
  `descontoTotal` float DEFAULT NULL,
  `valorLiquido` float DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNotaVenda`),
  KEY `FK_NotaVenda_0` (`idCliente`),
  CONSTRAINT `FK_NotaVenda_0` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notavenda`
--

LOCK TABLES `notavenda` WRITE;
/*!40000 ALTER TABLE `notavenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `notavenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orgaoexpeditor`
--

DROP TABLE IF EXISTS `orgaoexpeditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orgaoexpeditor` (
  `idOrgaoExpeditor` int(11) NOT NULL AUTO_INCREMENT,
  `nomeOrgaoExpeditor` varchar(100) NOT NULL,
  `idUF` int(11) DEFAULT NULL,
  PRIMARY KEY (`idOrgaoExpeditor`),
  KEY `FK_OrgaoExpeditor_0` (`idUF`),
  CONSTRAINT `FK_OrgaoExpeditor_0` FOREIGN KEY (`idUF`) REFERENCES `uf` (`idUF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orgaoexpeditor`
--

LOCK TABLES `orgaoexpeditor` WRITE;
/*!40000 ALTER TABLE `orgaoexpeditor` DISABLE KEYS */;
INSERT INTO `orgaoexpeditor` VALUES (1,'SSP',1);
/*!40000 ALTER TABLE `orgaoexpeditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `idPais` int(11) NOT NULL AUTO_INCREMENT,
  `nomePais` varchar(100) NOT NULL,
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Brasil'),(2,'Argentina'),(3,'Canada'),(4,'Irlanda');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `precoCustoAtual` float DEFAULT NULL,
  `quantidadeEstoque` int(11) DEFAULT NULL,
  `nomeProduto` varchar(100) DEFAULT NULL,
  `codBarras` varchar(100) DEFAULT NULL,
  `precoVendaAtual` float DEFAULT NULL,
  `idFornecedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `FK_Produto_0` (`idFornecedor`),
  CONSTRAINT `FK_Produto_0` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,180,14000,'Headset Cloud Stinger','1547896345128',230,1),(2,480,987,'Headset Cloud Revolver','17846951235479',530,1),(3,320,165,'Headset Cloud Stinger 2','18765482314597',400,1),(4,120,519,'Headset Kraken','6840189047890',189,2),(5,260,28000,'Headset Kraken Pro','0478945896030',337.15,2),(6,880,735,'Headset Tiamat','7890548069701',1353.65,2),(7,500,984,'Headset Meka Dva','1896754098708',561.36,2),(8,480,654,'Microfone HX MICQC BK','7531896540280',609.91,1),(9,90,321,'Mouse Pulsefire Surge','1789513489078',180,1),(10,490,756,'Teclado Blackwidow','8790513489078',599.9,2),(11,410,65,'Microfone Seiren','8000003489078',525.9,2);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexo` (
  `idSexo` int(11) NOT NULL AUTO_INCREMENT,
  `descricaoSexo` varchar(100) NOT NULL,
  `siglaSexo` varchar(100) NOT NULL,
  PRIMARY KEY (`idSexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES (1,'Masculino','M'),(2,'Feminino','F');
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipofone`
--

DROP TABLE IF EXISTS `tipofone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipofone` (
  `idTipoFone` int(11) NOT NULL AUTO_INCREMENT,
  `siglaTipoFone` varchar(100) NOT NULL,
  `descricaoTipoFone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idTipoFone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipofone`
--

LOCK TABLES `tipofone` WRITE;
/*!40000 ALTER TABLE `tipofone` DISABLE KEYS */;
INSERT INTO `tipofone` VALUES (1,'Cel','Celular');
/*!40000 ALTER TABLE `tipofone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipologradouro`
--

DROP TABLE IF EXISTS `tipologradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipologradouro` (
  `idTipoLogradouro` int(11) NOT NULL AUTO_INCREMENT,
  `siglaTipo` varchar(100) DEFAULT NULL,
  `nomeTIpo` varchar(100) NOT NULL,
  PRIMARY KEY (`idTipoLogradouro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipologradouro`
--

LOCK TABLES `tipologradouro` WRITE;
/*!40000 ALTER TABLE `tipologradouro` DISABLE KEYS */;
INSERT INTO `tipologradouro` VALUES (1,'RUA','rua'),(2,'AV','avenida');
/*!40000 ALTER TABLE `tipologradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uf`
--

DROP TABLE IF EXISTS `uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uf` (
  `idUF` int(11) NOT NULL AUTO_INCREMENT,
  `siglaUF` varchar(10) DEFAULT NULL,
  `nomeUF` varchar(100) NOT NULL,
  `idPais` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUF`),
  KEY `FK_UF_0` (`idPais`),
  CONSTRAINT `FK_UF_0` FOREIGN KEY (`idPais`) REFERENCES `pais` (`idPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uf`
--

LOCK TABLES `uf` WRITE;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` VALUES (1,'PR','Parana',1),(2,'SP','Sao Paulo',1),(3,'DB','Dublin',4),(4,'ONT','Ontario',3);
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 20:57:47
