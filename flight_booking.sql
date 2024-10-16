-- Table structure for table `admin`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Admin_id` varchar(20) NOT NULL,
  `Password` varchar(30) NOT NULL,
  PRIMARY KEY (`Admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('AdminAe','AliceADmin3'),('AdminDd','DavidADmin1'),('AdminDl','DanielADmin6'),('AdminEy','EmilyADmin7'),('AdminJn','JohnADmin2'),('AdminKb','KalebADmin4'),('AdminKm','KimADmin5'),('AdminMl','MichaelADmin8'),('AdminOa','OliviaADmin9'),('AdminSh','SophiaADmin10');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airline`
--

DROP TABLE IF EXISTS `airline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airline` (
  `Company_name` varchar(30) NOT NULL,
  PRIMARY KEY (`Company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airline`
--

LOCK TABLES `airline` WRITE;
/*!40000 ALTER TABLE `airline` DISABLE KEYS */;
INSERT INTO `airline` VALUES ('Canada airline'),('fastVjet'),('maplejet'),('safeair'),('USair');
/*!40000 ALTER TABLE `airline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport` (
  `Airport_code` varchar(30) NOT NULL,
  `City_name` varchar(30) NOT NULL,
  PRIMARY KEY (`Airport_code`),
  KEY `City_name` (`City_name`),
  CONSTRAINT `airport_ibfk_1` FOREIGN KEY (`City_name`) REFERENCES `city` (`City_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES ('CA101','Calgary');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `Booking_number` varchar(30) NOT NULL,
  `Passport_number` varchar(30) NOT NULL,
  `Admin_id` char(30) NOT NULL,
  `Flight_number` varchar(30) NOT NULL,
  `Departure_date` varchar(20) NOT NULL,
  `Arrival_date` varchar(20) NOT NULL,
  PRIMARY KEY (`Booking_number`),
  KEY `Passport_number` (`Passport_number`),
  KEY `Admin_id` (`Admin_id`),
  KEY `Flight_number` (`Flight_number`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`Passport_number`) REFERENCES `user` (`Passport_number`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`),
  CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`Flight_number`) REFERENCES `flight` (`Flight_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `City_name` varchar(30) NOT NULL,
  `Country_name` varchar(30) NOT NULL,
  PRIMARY KEY (`City_name`),
  KEY `Country_name` (`Country_name`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`Country_name`) REFERENCES `country` (`COUNTRY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES ('Buenos Aires','Argentina'),('Melbourne','Australia'),('Sydney','Australia'),('Brasilia','Brazil'),('Calgary','Canada'),('Toronto','Canada'),('Vancouver','Canada'),('Beijing','China'),('Shanghai','China'),('Cairo','Egypt'),('London','England'),('Paris','France'),('Berlin','Germany'),('Tokyo','Japan'),('Mexico City','Mexico'),('Seoul','South Korea'),('Madrid','Spain'),('Los Angeles','USA'),('NYC','USA'),('WashingtonDC','USA');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `COUNTRY_NAME` varchar(30) NOT NULL,
  PRIMARY KEY (`COUNTRY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('Argentina'),('Australia'),('Brazil'),('Canada'),('China'),('Egypt'),('England'),('France'),('Germany'),('Japan'),('Mexico'),('South Korea'),('Spain'),('USA');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `Flight_number` varchar(30) NOT NULL,
  `Airport_code` varchar(30) NOT NULL,
  `Company_name` varchar(30) NOT NULL,
  `Departure_date` varchar(30) NOT NULL,
  `Arrival_date` varchar(30) NOT NULL,
  `Number_of_seats` varchar(30) NOT NULL,
  `Flight_time` varchar(30) NOT NULL,
  `Departure_gate` varchar(30) NOT NULL,
  `Arrival_gate` varchar(30) NOT NULL,
  `Dept_airport` varchar(30) NOT NULL,
  `Arrival_airport` varchar(30) NOT NULL,
  PRIMARY KEY (`Flight_number`),
  KEY `Airport_code` (`Airport_code`),
  KEY `Company_name` (`Company_name`),
  CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`Airport_code`) REFERENCES `airport` (`Airport_code`),
  CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`Company_name`) REFERENCES `airline` (`Company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loyalty_plan`
--

DROP TABLE IF EXISTS `loyalty_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loyalty_plan` (
  `Passport_number` varchar(30) NOT NULL,
  `Plan_number` varchar(30) NOT NULL,
  `Tier` char(20) DEFAULT NULL,
  PRIMARY KEY (`Plan_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loyalty_plan`
--

LOCK TABLES `loyalty_plan` WRITE;
/*!40000 ALTER TABLE `loyalty_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `loyalty_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Passport_number` varchar(30) NOT NULL,
  `Country_name` varchar(30) NOT NULL,
  `Admin_id` char(30) NOT NULL,
  `First_name` char(20) NOT NULL,
  `Last_name` char(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Passport_number`),
  KEY `Admin_id` (`Admin_id`),
  KEY `Country_name` (`Country_name`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`Country_name`) REFERENCES `country` (`COUNTRY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

INSERT INTO user(Passport_number, Country_name, Admin_id , First_name, Last_name, password)
VALUES ('10178538'  , 'Canada' , 'AdminAe'  , 'John'  , 'Smith', 'cleo');
INSERT INTO user(Passport_number, Country_name, Admin_id , First_name, Last_name, password)
VALUES ('12314533'  , 'Colombia' , 'AdminAe'  , 'Carlos'  , 'Santana', 'chisel');
INSERT INTO user(Passport_number, Country_name, Admin_id , First_name, Last_name, password)
VALUES ('23452345'  , 'South Korea' , 'AdminAe'  , 'Ken'  , 'Park', 'mddee343');
