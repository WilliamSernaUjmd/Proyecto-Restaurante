-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: dbrestaurante
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `acompañamiento`
--

DROP TABLE IF EXISTS `acompañamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acompañamiento` (
  `idAcompañamiento` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Precio` float NOT NULL,
  `IdTipoAcompañamiento` int DEFAULT NULL,
  PRIMARY KEY (`idAcompañamiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acompañamiento`
--

LOCK TABLES `acompañamiento` WRITE;
/*!40000 ALTER TABLE `acompañamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `acompañamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_acompañamiento`
--

DROP TABLE IF EXISTS `detalle_acompañamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_acompañamiento` (
  `idDetalle_Acompañamiento` int NOT NULL,
  `Id_Acompañamiento` int NOT NULL,
  `Id_Orden` int NOT NULL,
  `Cantidad` int DEFAULT NULL,
  PRIMARY KEY (`idDetalle_Acompañamiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_acompañamiento`
--

LOCK TABLES `detalle_acompañamiento` WRITE;
/*!40000 ALTER TABLE `detalle_acompañamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_acompañamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_especiales`
--

DROP TABLE IF EXISTS `detalle_especiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_especiales` (
  `idDetalle_Especial` int NOT NULL,
  `Codigo_Especial` int NOT NULL,
  `Id_Orden` int NOT NULL,
  `Cantidad` int NOT NULL,
  PRIMARY KEY (`idDetalle_Especial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_especiales`
--

LOCK TABLES `detalle_especiales` WRITE;
/*!40000 ALTER TABLE `detalle_especiales` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_especiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_orden`
--

DROP TABLE IF EXISTS `detalle_orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_orden` (
  `idDetalle_Orden` int NOT NULL,
  `Cod_Platillo` int NOT NULL,
  `Cantidad` int DEFAULT NULL,
  `Descuento` float DEFAULT NULL,
  `Id_Orden` int DEFAULT NULL,
  PRIMARY KEY (`idDetalle_Orden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_orden`
--

LOCK TABLES `detalle_orden` WRITE;
/*!40000 ALTER TABLE `detalle_orden` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_platillo_especial`
--

DROP TABLE IF EXISTS `detalle_platillo_especial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_platillo_especial` (
  `idDetalle_Platillo_Especial` int NOT NULL,
  `Cod_Pla_Especial` int NOT NULL,
  `Id_Ingredientes` int DEFAULT NULL,
  PRIMARY KEY (`idDetalle_Platillo_Especial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_platillo_especial`
--

LOCK TABLES `detalle_platillo_especial` WRITE;
/*!40000 ALTER TABLE `detalle_platillo_especial` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_platillo_especial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `Id_Direccion` int NOT NULL,
  `Municipio` varchar(30) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Id_Usuario` int DEFAULT NULL,
  PRIMARY KEY (`Id_Direccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `Id_Empleado` int NOT NULL,
  `Primer_Nom` varchar(45) DEFAULT NULL,
  `Segundo_Nom` varchar(25) DEFAULT NULL,
  `Primer_Ape` varchar(25) DEFAULT NULL,
  `Segundo_Ape` varchar(25) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Contraseña` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id_Empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientes`
--

DROP TABLE IF EXISTS `ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredientes` (
  `Id_Ingrediente` int NOT NULL,
  `Nom_Ingre` varchar(30) DEFAULT NULL,
  `Costo_Ingre` float DEFAULT NULL,
  PRIMARY KEY (`Id_Ingrediente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientes`
--

LOCK TABLES `ingredientes` WRITE;
/*!40000 ALTER TABLE `ingredientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenes` (
  `Id_Orden` int NOT NULL,
  `Id_Usuario` int NOT NULL,
  `Id_Direccion` int DEFAULT NULL,
  `Crea_Orden` date DEFAULT NULL,
  `Pro_Orden` int DEFAULT NULL,
  `Status` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`Id_Orden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platillos`
--

DROP TABLE IF EXISTS `platillos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platillos` (
  `Id_Platillo` int NOT NULL,
  `Cod_Platillo` int NOT NULL,
  `Id_Ingrediente` int NOT NULL,
  PRIMARY KEY (`Id_Platillo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platillos`
--

LOCK TABLES `platillos` WRITE;
/*!40000 ALTER TABLE `platillos` DISABLE KEYS */;
/*!40000 ALTER TABLE `platillos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platillos_especiales`
--

DROP TABLE IF EXISTS `platillos_especiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platillos_especiales` (
  `Id_PlaEspeciales` int NOT NULL,
  `Cod_PlatilloEspecial` int NOT NULL,
  PRIMARY KEY (`Id_PlaEspeciales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platillos_especiales`
--

LOCK TABLES `platillos_especiales` WRITE;
/*!40000 ALTER TABLE `platillos_especiales` DISABLE KEYS */;
/*!40000 ALTER TABLE `platillos_especiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocomplemento`
--

DROP TABLE IF EXISTS `tipocomplemento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipocomplemento` (
  `Id_Complemento` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Complemento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocomplemento`
--

LOCK TABLES `tipocomplemento` WRITE;
/*!40000 ALTER TABLE `tipocomplemento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipocomplemento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `Id_Usuario` int NOT NULL,
  `Prim_Nom` varchar(25) NOT NULL,
  `Seg_Nom` varchar(25) NOT NULL,
  `Pri_Ape` varchar(25) NOT NULL,
  `Seg_Ape` varchar(25) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Contraseña` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-10 20:02:19
