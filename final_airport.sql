CREATE DATABASE  IF NOT EXISTS `airport` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `airport`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: airport
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `additional_room`
--

DROP TABLE IF EXISTS `additional_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `additional_room` (
  `Additional_room_ID` int NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Opening_time` time NOT NULL,
  `Closing_time` time NOT NULL,
  `room_Description` varchar(200) NOT NULL,
  `Amenities` varchar(200) NOT NULL,
  `Contact_info` varchar(50) NOT NULL,
  `Web_site` varchar(50) NOT NULL,
  PRIMARY KEY (`Additional_room_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_room`
--

LOCK TABLES `additional_room` WRITE;
/*!40000 ALTER TABLE `additional_room` DISABLE KEYS */;
INSERT INTO `additional_room` VALUES (1,'bla','bla','12:00:00','14:00:00','Description','50','060000000','website.com');
/*!40000 ALTER TABLE `additional_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airline`
--

DROP TABLE IF EXISTS `airline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airline` (
  `airline_ID` int NOT NULL,
  `airlane_name` text NOT NULL,
  `contact` text NOT NULL,
  `website` text NOT NULL,
  `phone` char(100) DEFAULT NULL,
  `country` text NOT NULL,
  `rating` int NOT NULL,
  PRIMARY KEY (`airline_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airline`
--

LOCK TABLES `airline` WRITE;
/*!40000 ALTER TABLE `airline` DISABLE KEYS */;
INSERT INTO `airline` VALUES (1,'Delta Airlines','John Smith','www.delta.com','+1-800-221-1212','USA',4),(2,'United Airlines','Jane Doe','www.united.com','+1-800-864-8331','USA',4),(3,'Emirates','Ahmed Ali','www.emirates.com','+971-600-555-555','UAE',5),(4,'British Airways','Kate Williams','www.ba.com','+44-207-008-0000','UK',5),(5,'Qatar Airways','Mohammed Khan','www.qatarairways.com','+974-4022-6000','Qatar',5);
/*!40000 ALTER TABLE `airline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airplane`
--

DROP TABLE IF EXISTS `airplane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airplane` (
  `AirplaneID` int NOT NULL,
  `airline_ID` int NOT NULL,
  `Pilot_ID` int NOT NULL,
  `airplane_type` varchar(400) DEFAULT NULL,
  `manufacturer` varchar(400) DEFAULT NULL,
  `model` varchar(300) DEFAULT NULL,
  `seating_capacity` int NOT NULL,
  `max_speed` int NOT NULL,
  `fuel_capacity` int NOT NULL,
  `year_of_the_plain` date DEFAULT NULL,
  `airplane_status` tinyint DEFAULT NULL,
  `maintenance_records` date DEFAULT NULL,
  PRIMARY KEY (`AirplaneID`),
  KEY `airline_ID` (`airline_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airplane`
--

LOCK TABLES `airplane` WRITE;
/*!40000 ALTER TABLE `airplane` DISABLE KEYS */;
INSERT INTO `airplane` VALUES (1,1,1,'Boeing 747','Boeing','747-400',416,988,216840,'2000-01-01',1,'2022-04-01'),(2,1,2,'Airbus A320','Airbus','A320-200',150,828,23850,'2002-01-01',1,'2022-05-01'),(3,2,3,'Boeing 787','Boeing','787-9',290,954,138200,'2010-01-01',1,'2022-03-15'),(4,3,4,'Airbus A350','Airbus','A350-1000',440,945,165000,'2017-01-01',1,'2022-02-28'),(5,4,5,'Embraer E175','Embraer','E175',76,828,11231,'2012-01-01',1,'2022-03-02');
/*!40000 ALTER TABLE `airplane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airport_security`
--

DROP TABLE IF EXISTS `airport_security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport_security` (
  `Security_ID` int NOT NULL,
  `worker_Name` varchar(50) NOT NULL,
  `worker_Surname` varchar(50) NOT NULL,
  `Contact` varchar(75) NOT NULL,
  `Company` varchar(50) NOT NULL,
  `Phone_number` varchar(50) NOT NULL,
  `Address` varchar(75) NOT NULL,
  PRIMARY KEY (`Security_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport_security`
--

LOCK TABLES `airport_security` WRITE;
/*!40000 ALTER TABLE `airport_security` DISABLE KEYS */;
INSERT INTO `airport_security` VALUES (1,'John','Doe','john.doe@email.com','ABC Security','555-1234','123 Main St'),(2,'Jane','Doe','jane.doe@email.com','DEF Security','555-5678','456 Elm St'),(3,'Bob','Smith','bob.smith@email.com','GHI Security','555-9012','789 Oak St'),(4,'Sarah','Johnson','sarah.johnson@email.com','JKL Security','555-3456','234 Maple Ave'),(5,'Tom','Wilson','tom.wilson@email.com','MNO Security','555-7890','567 Pine St'),(6,'Mary','Lee','mary.lee@email.com','PQR Security','555-2345','890 Cedar Ln');
/*!40000 ALTER TABLE `airport_security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airport_staff`
--

DROP TABLE IF EXISTS `airport_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport_staff` (
  `airport_staff_ID` int NOT NULL,
  `staff_name` text NOT NULL,
  `gmail` text NOT NULL,
  `phone_number` char(1) DEFAULT NULL,
  `position` text NOT NULL,
  `department` text NOT NULL,
  `shift_start_time` time DEFAULT NULL,
  `shift_end_time` time DEFAULT NULL,
  `salary` int NOT NULL,
  PRIMARY KEY (`airport_staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport_staff`
--

LOCK TABLES `airport_staff` WRITE;
/*!40000 ALTER TABLE `airport_staff` DISABLE KEYS */;
INSERT INTO `airport_staff` VALUES (1,'Amna Mutap','john.smith@gmail.com','5','Pilot','Flight Operations','08:00:00','16:00:00',75000),(2,'Ajdin Karavdić','jane.doe@gmail.com','5','Flight Attendant','Inflight Services','12:00:00','20:00:00',45000),(3,'Zaim Imamović','bob.johnson@gmail.com','5','Airport Manager','Administration','09:00:00','17:00:00',90000),(4,'Sara Deović','sara.lee@gmail.com','5','Air Traffic Controller','Air Traffic Control','16:00:00','00:00:00',80000),(5,'David Nihadić','david.chen@gmail.com','5','Ground Crew','Ground Operations','06:00:00','14:00:00',35000);
/*!40000 ALTER TABLE `airport_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `License_plate` varchar(20) NOT NULL,
  `Brand` varchar(35) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `Parking_tickets_ID` int NOT NULL,
  PRIMARY KEY (`License_plate`),
  KEY `Parking_tickets_ID` (`Parking_tickets_ID`),
  CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`Parking_tickets_ID`) REFERENCES `parking_tickets` (`Parking_tickets_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES ('DEF456','Honda','Blue',1),('GHI789','Ford','Silver',2),('JKL012','Chevrolet','Black',3);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `counter_ID` int NOT NULL,
  `ticket_ID` int NOT NULL,
  `services` text NOT NULL,
  `closing_time` time DEFAULT NULL,
  `location` text NOT NULL,
  `counter_type` text NOT NULL,
  `operated_by` text NOT NULL,
  `operated_time` time DEFAULT NULL,
  `staff_count` int NOT NULL,
  `availability` tinyint DEFAULT NULL,
  `additional_info` text NOT NULL,
  PRIMARY KEY (`counter_ID`),
  KEY `ticket_ID` (`ticket_ID`),
  CONSTRAINT `counter_ibfk_1` FOREIGN KEY (`ticket_ID`) REFERENCES `ticket` (`ticket_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (1,1,'Check-in, Baggage Drop-off','18:00:00','Terminal 1','A','Airline X','10:00:00',3,1,'No oversized bags'),(2,2,'Lost & Found','22:00:00','Terminal 2','B','Airport Authority','14:00:00',2,1,'Items held for 30 days'),(3,3,'Security Check','20:00:00','Terminal 3','C','Transportation Security Administration','16:00:00',4,1,'No liquids allowed'),(4,4,'Boarding Gate','19:00:00','Terminal 4','D','Airline Y','11:00:00',5,1,'Boarding begins 30 minutes before departure'),(5,5,'Currency Exchange','21:00:00','Terminal 5','E','Money Exchange Inc.','13:00:00',2,0,'Closed for renovations');
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `flight_ID` int NOT NULL,
  `airlane_ID` int NOT NULL,
  `airport_ID` int NOT NULL,
  `luggage_ID` int NOT NULL,
  `flight_number` int NOT NULL,
  `duration` time DEFAULT NULL,
  `flight_status` tinyint DEFAULT NULL,
  `price` int NOT NULL,
  `booked_seat` char(1) DEFAULT NULL,
  `seat_capacity` int DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `airplane_ID` int NOT NULL,
  PRIMARY KEY (`flight_ID`),
  KEY `luggage_ID` (`luggage_ID`),
  KEY `airplane_ID` (`airplane_ID`),
  CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`luggage_ID`) REFERENCES `luggage` (`Luggage_ID`),
  CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`airplane_ID`) REFERENCES `airplane` (`AirplaneID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES (1,2,3,4,1234,'05:30:00',1,500,'A',200,'2023-05-01 10:00:00',1),(2,1,4,3,5678,'02:45:00',0,250,'B',150,'2023-05-01 12:45:00',2),(3,3,2,2,9876,'07:15:00',1,750,'C',300,'2023-05-01 18:30:00',3),(4,4,1,1,4321,'03:00:00',0,300,'D',180,'2023-05-01 20:30:00',4),(5,5,6,5,2468,'04:30:00',1,400,'E',250,'2023-05-01 15:00:00',5);
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `license` (
  `License_number_ID` int NOT NULL,
  `license_date_issue` date DEFAULT NULL,
  `license_date_expiry` date DEFAULT NULL,
  PRIMARY KEY (`License_number_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
INSERT INTO `license` VALUES (1,'2022-01-01','2024-12-31'),(2,'2023-03-15','2025-06-30'),(3,'2020-05-10','2022-05-09'),(4,'2022-09-01','2024-08-31'),(5,'2021-11-20','2023-11-19');
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luggage`
--

DROP TABLE IF EXISTS `luggage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luggage` (
  `Luggage_ID` int NOT NULL,
  `Passenger_ID` int NOT NULL,
  `luggage_type` varchar(400) DEFAULT NULL,
  `color` varchar(400) DEFAULT NULL,
  `weight` int NOT NULL,
  `tag_number` int NOT NULL,
  `baggage_fee` int NOT NULL,
  `date_of_check_in` date DEFAULT NULL,
  `luggage_status` tinyint DEFAULT NULL,
  `date_of_pickup` date DEFAULT NULL,
  `origin` varchar(400) NOT NULL,
  `destination` varchar(400) NOT NULL,
  PRIMARY KEY (`Luggage_ID`),
  KEY `Passenger_ID` (`Passenger_ID`),
  CONSTRAINT `luggage_ibfk_1` FOREIGN KEY (`Passenger_ID`) REFERENCES `passenger` (`Passenger_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luggage`
--

LOCK TABLES `luggage` WRITE;
/*!40000 ALTER TABLE `luggage` DISABLE KEYS */;
INSERT INTO `luggage` VALUES (1,1,'Suitcase','Black',20,12345,50,'2023-04-01',1,'2023-04-15','New York','London'),(2,2,'Backpack','Red',10,54321,0,'2023-04-05',1,'2023-04-15','London','Paris'),(3,3,'Duffel Bag','Blue',15,67890,25,'2023-04-10',0,'2023-04-15','Paris','Rome'),(4,4,'Carry-On','Gray',8,24680,0,'2023-04-13',1,'2023-04-15','Rome','Barcelona'),(5,5,'Trunk','Brown',30,13579,75,'2023-04-18',1,'2023-04-15','Barcelona','New York');
/*!40000 ALTER TABLE `luggage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking`
--

DROP TABLE IF EXISTS `parking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking` (
  `Parking_ID` int NOT NULL,
  `Capacity` int NOT NULL,
  `Parking_name` varchar(50) NOT NULL,
  `parking_type` varchar(50) NOT NULL,
  `Amenities` varchar(200) NOT NULL,
  `Location` varchar(50) NOT NULL,
  PRIMARY KEY (`Parking_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking`
--

LOCK TABLES `parking` WRITE;
/*!40000 ALTER TABLE `parking` DISABLE KEYS */;
INSERT INTO `parking` VALUES (1,50,'Lot A','Outdoor','24/7 security, valet service','City Center'),(2,100,'Garage B','Indoor','Covered parking, electric car charging stations','Suburban Area'),(3,30,'Lot C','Outdoor','Free shuttle service, handicap accessible','Near Airport'),(4,200,'Garage D','Indoor','Reserved parking, car wash service','Downtown'),(5,70,'Lot E','Outdoor','Covered parking, bike racks','Beachside');
/*!40000 ALTER TABLE `parking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking_space`
--

DROP TABLE IF EXISTS `parking_space`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking_space` (
  `Parking_space_ID` int NOT NULL,
  `Parking_ID` int NOT NULL,
  `Status_ID` int NOT NULL,
  `Space_type` varchar(50) NOT NULL,
  PRIMARY KEY (`Parking_space_ID`),
  KEY `Parking_ID` (`Parking_ID`),
  KEY `Status_ID` (`Status_ID`),
  CONSTRAINT `parking_space_ibfk_1` FOREIGN KEY (`Parking_ID`) REFERENCES `parking` (`Parking_ID`),
  CONSTRAINT `parking_space_ibfk_2` FOREIGN KEY (`Status_ID`) REFERENCES `parking_status` (`Status_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_space`
--

LOCK TABLES `parking_space` WRITE;
/*!40000 ALTER TABLE `parking_space` DISABLE KEYS */;
INSERT INTO `parking_space` VALUES (1,1,1,'Regular'),(2,1,2,'Regular'),(3,2,1,'Regular'),(4,2,2,'Regular'),(5,3,1,'Handicapped'),(6,3,2,'Regular');
/*!40000 ALTER TABLE `parking_space` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking_status`
--

DROP TABLE IF EXISTS `parking_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking_status` (
  `Status_ID` int NOT NULL,
  `Availability` varchar(3) NOT NULL,
  PRIMARY KEY (`Status_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_status`
--

LOCK TABLES `parking_status` WRITE;
/*!40000 ALTER TABLE `parking_status` DISABLE KEYS */;
INSERT INTO `parking_status` VALUES (1,'YES'),(2,'NO');
/*!40000 ALTER TABLE `parking_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking_tickets`
--

DROP TABLE IF EXISTS `parking_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking_tickets` (
  `Parking_tickets_ID` int NOT NULL,
  `Time_of_arrival` time NOT NULL,
  `Time_of_departure` time DEFAULT NULL,
  `Licence_plate_ID` int NOT NULL,
  `Parking_space_ID` int NOT NULL,
  `Parking_duration` time NOT NULL,
  PRIMARY KEY (`Parking_tickets_ID`),
  KEY `Parking_space_ID` (`Parking_space_ID`),
  CONSTRAINT `parking_tickets_ibfk_1` FOREIGN KEY (`Parking_space_ID`) REFERENCES `parking_space` (`Parking_space_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_tickets`
--

LOCK TABLES `parking_tickets` WRITE;
/*!40000 ALTER TABLE `parking_tickets` DISABLE KEYS */;
INSERT INTO `parking_tickets` VALUES (1,'10:30:00','12:30:00',123456,1,'02:00:00'),(2,'11:00:00','13:00:00',654321,2,'02:00:00'),(3,'12:30:00','14:30:00',987654,3,'02:00:00'),(4,'14:00:00','16:00:00',111222,4,'02:00:00'),(5,'15:30:00','17:30:00',333444,5,'02:00:00'),(6,'17:00:00','19:00:00',555666,6,'02:00:00');
/*!40000 ALTER TABLE `parking_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `Passenger_ID` int NOT NULL,
  `first_name` varchar(400) DEFAULT NULL,
  `last_name` varchar(400) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `nationality` varchar(400) DEFAULT NULL,
  `passport_number` int NOT NULL,
  `e_mail` varchar(400) DEFAULT NULL,
  `phone_number` int NOT NULL,
  `street_number` int NOT NULL,
  `city` varchar(400) NOT NULL,
  `country_of_origin` varchar(400) NOT NULL,
  `frequent_flyer_number` int NOT NULL,
  `seat_preference` int NOT NULL,
  `meal_preference` varchar(400) DEFAULT NULL,
  `special_needs` varchar(400) DEFAULT NULL,
  `emergency_contact` varchar(400) DEFAULT NULL,
  `flight_number` int NOT NULL,
  `status_passenger` tinyint DEFAULT NULL,
  `booking_number` int NOT NULL,
  PRIMARY KEY (`Passenger_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (1,'Ali','Mašić','1990-05-12','American',123456789,'johndoe@example.com',1234567890,123,'New York','USA',987654321,1,'Vegetarian','Wheelchair assistance','Jane Doe',1234,1,5678),(2,'Alisa','Siručić','1985-11-02','British',987654321,'alicesmith@example.com',2147483647,456,'London','UK',123456789,2,'Kosher',NULL,NULL,5678,1,9012),(3,'Maria','Topić','1995-02-24','Spanish',246813579,'mariagonzalez@example.com',2147483647,789,'Madrid','Spain',135792468,3,'Meat','Hearing impairment','Juan Perez',1234,0,3456),(4,'Mohammed','Ali','1980-08-16','Egyptian',555555555,'mohammedali@example.com',1231231234,246,'Cairo','Egypt',444444444,1,'Halal','Visual impairment','Fatima Omar',5678,1,7890),(5,'Vasvija','Mehić','1998-01-01','Japanese',999999999,'yumikim@example.com',2147483647,369,'Tokyo','Japan',888888888,2,'Gluten-free',NULL,NULL,9012,0,2345);
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Payment_ID` int NOT NULL,
  `Price` double NOT NULL,
  `Payment_method` varchar(50) NOT NULL,
  `Payment_status` varchar(10) NOT NULL,
  `Parking_tickets_ID` int DEFAULT NULL,
  PRIMARY KEY (`Payment_ID`),
  KEY `Parking_tickets_ID` (`Parking_tickets_ID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Parking_tickets_ID`) REFERENCES `parking_tickets` (`Parking_tickets_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,15.5,'Credit card','Paid',1),(2,10.75,'Cash','Paid',2),(3,5,'Debit card','Pending',3),(4,12.25,'Credit card','Paid',4),(5,8.5,'Cash','Paid',5),(6,7,'Debit card','Pending',6);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pilot`
--

DROP TABLE IF EXISTS `pilot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pilot` (
  `Pilot_ID` int NOT NULL,
  `first_name` varchar(400) DEFAULT NULL,
  `last_name` varchar(400) DEFAULT NULL,
  `salary` int NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `nationality` varchar(400) DEFAULT NULL,
  `status_pilot` tinyint DEFAULT NULL,
  `flight_record` int NOT NULL,
  `total_flight_hours` int NOT NULL,
  `rating` double NOT NULL,
  `License_number_ID` int NOT NULL,
  PRIMARY KEY (`Pilot_ID`),
  KEY `License_number_ID` (`License_number_ID`),
  CONSTRAINT `pilot_ibfk_1` FOREIGN KEY (`License_number_ID`) REFERENCES `license` (`License_number_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilot`
--

LOCK TABLES `pilot` WRITE;
/*!40000 ALTER TABLE `pilot` DISABLE KEYS */;
INSERT INTO `pilot` VALUES (1,'Amna','Mutap',50000,'2001-01-01','Bosnian',1,50,1000,4.5,1),(2,'Ajdin','Karavdic',60000,'1980-02-15','Bosnian',1,75,1500,4.8,2),(3,'Din','Novalić',55000,'1988-05-10','Bosnian',0,25,500,4.2,3),(4,'Roman','Petrović',45000,'1990-11-20','Croatian',1,40,800,4,4),(5,'Nedžad','Zajić',65000,'2001-01-01','Serbian',1,100,2000,4.9,5);
/*!40000 ALTER TABLE `pilot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `the_airport`
--

DROP TABLE IF EXISTS `the_airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `the_airport` (
  `Airport_ID` int NOT NULL,
  `airport_name` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `elevation` int NOT NULL,
  `time_zone` varchar(200) DEFAULT NULL,
  `website` varchar(200) NOT NULL,
  `departure` int NOT NULL,
  `arrival` datetime DEFAULT NULL,
  `airport_staff_ID` int NOT NULL,
  `gates` int NOT NULL,
  `counter_ID` int NOT NULL,
  `waiting_room_ID` int NOT NULL,
  `security_ID` int NOT NULL,
  `parking_ID` int NOT NULL,
  `additional_room_ID` int NOT NULL,
  PRIMARY KEY (`Airport_ID`),
  KEY `additional_room_ID` (`additional_room_ID`),
  KEY `waiting_room_ID` (`waiting_room_ID`),
  KEY `airport_staff_ID` (`airport_staff_ID`),
  KEY `security_ID` (`security_ID`),
  KEY `parking_ID` (`parking_ID`),
  KEY `counter_ID` (`counter_ID`),
  CONSTRAINT `the_airport_ibfk_1` FOREIGN KEY (`additional_room_ID`) REFERENCES `additional_room` (`Additional_room_ID`),
  CONSTRAINT `the_airport_ibfk_2` FOREIGN KEY (`waiting_room_ID`) REFERENCES `waiting_room` (`Waiting_room_ID`),
  CONSTRAINT `the_airport_ibfk_3` FOREIGN KEY (`airport_staff_ID`) REFERENCES `airport_staff` (`airport_staff_ID`),
  CONSTRAINT `the_airport_ibfk_4` FOREIGN KEY (`security_ID`) REFERENCES `airport_security` (`Security_ID`),
  CONSTRAINT `the_airport_ibfk_5` FOREIGN KEY (`parking_ID`) REFERENCES `parking` (`Parking_ID`),
  CONSTRAINT `the_airport_ibfk_6` FOREIGN KEY (`counter_ID`) REFERENCES `counter` (`counter_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `the_airport`
--

LOCK TABLES `the_airport` WRITE;
/*!40000 ALTER TABLE `the_airport` DISABLE KEYS */;
INSERT INTO `the_airport` VALUES (1,'Sarajevo','Sarajevo','BiH','Aerodromsko naselje',567,'+1','sjj.com',2,NULL,1,4,1,1,1,1,1),(2,'Zagreb','Zagreb','Hrvatska','Zagreb',158,'+1','zagreb-airport.hr',3,NULL,2,6,2,2,2,2,1),(3,'Beograd','Beograd','Srbija','Beograd',120,'+1','beograd-airport.rs',4,NULL,3,6,3,3,3,3,1);
/*!40000 ALTER TABLE `the_airport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `ticket_ID` int NOT NULL,
  `airline_ID` int NOT NULL,
  `class` text NOT NULL,
  `seat_number` int NOT NULL,
  `departure_date` datetime DEFAULT NULL,
  `arrival_date` datetime DEFAULT NULL,
  `departure_airport` varchar(100) DEFAULT NULL,
  `arrival_airport` varchar(100) NOT NULL,
  `ticket_price` int NOT NULL,
  `currency` varchar(100) NOT NULL,
  `payment_method` text NOT NULL,
  `coupon_code` int NOT NULL,
  `refound_amount` int NOT NULL,
  `ticket_status` varchar(100) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `ticket_type` text NOT NULL,
  PRIMARY KEY (`ticket_ID`),
  KEY `airline_ID` (`airline_ID`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`airline_ID`) REFERENCES `airline` (`airline_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,1,'Economy',12,'2023-05-15 08:30:00','0023-05-15 12:45:00','LAX','JFK',456,'USD','Credit Card',0,0,'VALID','2023-05-12','One-way'),(2,4,'Business',4,'2023-06-01 14:45:00','2023-06-01 18:15:00','JFK','SFO',900,'GBP','Paypal',0,0,'VALID','2023-05-20','Round-trip'),(3,5,'First',1,'2023-07-08 09:30:00','2023-07-08 13:15:00','LHR','LAX',2000,'USD','Debit Card',0,0,'VALID','2023-06-20','Multi-city'),(4,3,'Economy',36,'2023-05-20 11:00:00','2023-05-20 16:30:00','SFO','JFK',150,'USD','Credit Card',0,0,'INVALID','2023-05-18','One-way'),(5,2,'Business',7,'2023-06-15 07:30:00','2023-06-15 11:45:00','LHR','SFO',850,'USD','Google Pay',0,0,'INVALID','2023-06-08','Round-trip');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waiting_room`
--

DROP TABLE IF EXISTS `waiting_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waiting_room` (
  `Waiting_room_ID` int NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Capacity` int NOT NULL,
  `Amenities` varchar(200) NOT NULL,
  `Availability` varchar(200) NOT NULL,
  `Additional_info` varchar(200) NOT NULL,
  `Type_of_WR` varchar(50) NOT NULL,
  PRIMARY KEY (`Waiting_room_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waiting_room`
--

LOCK TABLES `waiting_room` WRITE;
/*!40000 ALTER TABLE `waiting_room` DISABLE KEYS */;
INSERT INTO `waiting_room` VALUES (1,'Ground Floor',10,'Chairs, table, wifi','Available','Wheelchair accessible','General'),(2,'2nd Floor',15,'Sofas, TV, coffee machine','Reserved','No food allowed','VIP'),(3,'3rd Floor',20,'Magazines, charging ports','Available','No pets allowed','Family'),(4,'4th Floor',12,'Rocking chairs, plants','Available','Quiet zone','Senior'),(5,'5th Floor',8,'Bean bags, board games','Reserved','No smoking allowed','Children'),(6,'6th Floor',18,'Desks, reading lamps','Available','Study zone','Student');
/*!40000 ALTER TABLE `waiting_room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-05 20:45:41
