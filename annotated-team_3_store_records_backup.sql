-- MySQL dump 10.13 Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost Database: store_records
-- ------------------------------------------------------
-- Server version 8.0.21
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
-- Temporary view structure for view `customer_sales`
--
DROP TABLE IF EXISTS `customer_sales`;
/*!50001 DROP VIEW IF EXISTS `customer_sales`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_sales` AS SELECT 
 1 AS `customer_name`,
 1 AS `sale_total`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `customers`
--
DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
 `customer_id` int NOT NULL,
 `fname` varchar(45) NOT NULL,
 `lname` varchar(45) NOT NULL,
 `sale_amount` double NOT NULL,
 `employee_id` int NOT NULL,
 PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `customers`
--
LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (302,'John','Doe',26.4,13),
(303,'Lauren','Benjamin',13.5,1),(304,'Eleni',' Lane',11.99,4),
(306,'Louisa','Quinn',86.65,3),(307,'Joanne','Raymond',69.29,5),
(309,'Jago','Sutton',16.92,6),(310,'Barry','Donovan',34.99,1),
(311,'Jannat','Matthams',49.27,2),(313,'Vivian','Becker',35.12,8),
(314,'Damian','Barker',70.92,11),(316,'Lillie','Eaton',69.28,10),
(317,'Cara','Finley',98.6,9),(319,'Addie','Blevins',37.5,20),
(322,'Beatrix','Escobar',36.11,17),(323,'Carl','Espinoza',15.05,15),
(324,'Annie','Osborne',57.97,19),(328,'Kristian','Irwin',110.76,17),
(330,'Amira','Ramirez',37.85,18),(331,'Leyla','Beck',80.48,17),
(332,'Faith','Decker',25.35,13),(334,'Elysia','Lowe',70.3,12),
(335,'Emre','Castaneda',81.32,14),(337,'Marion','Erickson',107.43,11),
(338,'Janice','Brennan',48.72,5),(340,'Zainab','Hodge',98.56,3),
(342,'Enzo','Blankenship',17.65,2),(343,'Rachael','Gallagher',75.61,6),
(345,'Bertie','Roach',32.84,1),(346,'Sapphire','Lawson',40.99,5),
(348,'Ayrton','Boyer',35.6,7),(349,'Lara','Hammond',11.33,9),
(350,'Stella','Stephens',111.77,5),(351,'Jenna','Welch',63.25,7),
(352,'Darcey','Welsh',92.4,8),(353,'Steffan','Burgess',26.89,18),
(354,'Saffron','Rivas',88.88,16),(355,'Kyron','Price',39.59,14),
(356,'Kadie','Duffy',104.63,19),(357,'Safiyyah','Stewart',46.34,20);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `employee_most_hours_under_10_years`
--
DROP TABLE IF EXISTS `employee_most_hours_under_10_years`;
/*!50001 DROP VIEW IF EXISTS `employee_most_hours_under_10_years`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employee_most_hours_under_10_years` AS SELECT 
 1 AS `Employee_name`,
 1 AS `hours_worked`,
 1 AS `salary`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `employees`
--
DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
 `employee_id` int NOT NULL,
 `payroll_id` int NOT NULL,
 `position_id` int NOT NULL,
 `fname` varchar(45) NOT NULL,
 `lname` varchar(45) NOT NULL,
 `years_worked` int NOT NULL,
 PRIMARY KEY (`employee_id`),
 KEY `fk_employees_payroll1` (`payroll_id`),
 KEY `fk_employees_positions1` (`position_id`),
 CONSTRAINT `fk_employees_payroll1` FOREIGN KEY (`payroll_id`) REFERENCES 
`payroll` (`payroll_id`),
 CONSTRAINT `fk_employees_positions1` FOREIGN KEY (`position_id`) REFERENCES 
`positions` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `employees`
--
LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (11174009,33,122,'Diandra','Cleugh',9),
(29082188,20,137,'Alfie','Bugbird',10),(31926786,40,150,'Royall','Perren',2),
(58966311,11,116,'Hale','Jellman',6),(120752814,22,132,'Amandie','Howson',11),
(133566405,14,132,'Florence','Capstick',3),(137950921,32,110,'Mindy','Burrett',7),
(166246518,17,125,'Gilbertine','Cockayne',7),
(186040740,45,130,'Ernest','Squirrell',3),(200490561,36,144,'Lotti','Van Halle',9),
(201372362,24,145,'Cecilla','Karolewski',8),
(214332180,6,134,'Barbette','Whitbread',4),(227297388,26,125,'Lay','Candlish',5),
(234208462,27,105,'Datha','Kleinpeltz',9),(252247557,23,133,'Gay','Stichel',12),
(316243163,10,124,'Creighton','Gingle',9),(337887636,30,146,'Kissee','Eyes',7),
(346749936,18,135,'Annamaria','Wormstone',1),(355211005,7,110,'Carter','Wilber',1),
(385481849,5,146,'Ruby','Torrisi',3),(424380394,2,137,'Tierney','Rother',9),
(427135086,42,103,'Dacie','Skipworth',2),
(430515613,29,103,'Emmalyn','Camellini',9),(454470844,1,145,'Willis','Trinder',10),
(463609673,19,150,'Debera','Hourihane',4),
(464683043,34,127,'Ellissa','Gathercoal',1),(496812682,3,109,'Roma','Braxton',2),
(522200831,21,141,'Orson','Lapwood',4),(559092846,28,111,'Karoline','Leggon',1),
(601094495,31,125,'Murial','Thomasson',10),(609177290,49,144,'Addy','Punchard',6),
(661407051,13,135,'Sholom','McCory',3),(685810879,47,101,'Mel','Arington',4),
(717441276,16,110,'Greggory','Innett',1),(738826906,50,106,'Genni','Garrad',11),
(759171430,39,112,'Petronille','Gotter',12),(767742174,12,102,'Elisha','Eliaz',5),
(779409688,37,120,'Tommi','Kilbee',8),(790357946,35,103,'Jonathan','Stuchbury',12),
(801094901,4,144,'Audre','Maudett',11),(823756551,38,130,'Carlene','Zanini',2),
(872993987,15,113,'Amaleta','Oakwell',1),(896043756,43,144,'Kari','Paaso',9),
(919025675,44,116,'Porter','Fasset',5),(946467750,9,133,'Coletta','Lyall',2),
(950825133,25,123,'Waring','Tytler',9),(955535977,46,149,'Giuditta','Kerin',5),
(976585009,48,148,'Lyman','Rosita',10),(993863312,41,107,'Marjorie','McCole',1),
(998292337,8,123,'Chevy','Niblett',10);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `hours_worked_common_state`
--
DROP TABLE IF EXISTS `hours_worked_common_state`;
/*!50001 DROP VIEW IF EXISTS `hours_worked_common_state`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hours_worked_common_state` AS SELECT 
 1 AS `Employee_name`,
 1 AS `hours_worked`,
 1 AS `state`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `items`
--
DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
 `item_id` int NOT NULL,
 `type_id` int NOT NULL,
 `item_name` varchar(45) NOT NULL,
 `profit_per_item` int NOT NULL,
 `item_price` int NOT NULL,
 PRIMARY KEY (`item_id`),
 KEY `fk_items_types_of_items1` (`type_id`),
 CONSTRAINT `fk_items_types_of_items1` FOREIGN KEY (`type_id`) REFERENCES 
`types_of_items` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `items`
--
LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1146,1,'Journal',1,3),(1225,2,'Rice',1,10),
(1377,2,'Broth',1,2),(1465,1,'Ruler',1,2),(1514,1,'Led Pencil',1,2),
(2022,1,'Sharpener',3,5),(2096,4,'Provolone',1,2),(2235,1,'Paper',1,2),
(2305,2,'Tomato',1,7),(2934,2,'Chips',2,3),(2987,2,'Potato',1,7),
(3346,1,'Eraser',1,1),(3584,2,'Vegetable Oil',2,4),(3892,3,'Pudding',2,3),
(4245,2,'Soda',2,4),(4444,1,'Pencil',0,1),(4616,1,'Sticky Note',1,2),
(4866,3,'Almond Milk',2,4),(4983,2,'Water',1,3),(5127,1,'Bread',1,2),
(5522,1,'Pen',1,2),(5534,2,'Chicken',3,5),(5646,2,'Granola Bar',2,4),
(6254,2,'Cabbage',2,3),(6575,1,'Book',4,8),(6615,2,'Steak',5,8),(6659,3,'Whole 
Milk',2,5),(6712,2,'Spaghetti',1,4),(7343,2,'Pork',4,7),
(7521,1,'Calculator',10,15),(7757,4,'Mozzarella ',1,2),(8453,2,'Olives',0,6),
(8564,3,'Keifer',3,5),(8669,1,'Notebook',2,3),(8888,2,'Beef',4,7),
(9001,3,'Yogurt',1,2),(9024,3,'Skim Milk',1,2),(9200,3,'Ice Cream',2,4),
(9720,1,'Construction Paper',1,3),(9999,4,'Munster',1,2);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `locations`
--
DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
 `location_id` int NOT NULL,
 `address` varchar(45) NOT NULL,
 `state` varchar(45) NOT NULL,
 PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `locations`
--
LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (52,'7125 Rowland Terrace','Texas'),(54,'8 Tony 
Plaza','New York'),(55,'75396 Manley Circle','Pennsylvania'),(56,'1118 Eastwood 
Parkway','New York'),(60,'0068 Farragut Park','Texas'),(61,'06850 Lake View 
Crossing','West Virginia'),(62,'591 Linden Trail','Colorado'),(63,'46249 Cascade 
Crossing','Louisiana'),(64,'412 Novick Park','California'),(66,'52514 Amoth 
Alley','District of Columbia'),(67,'161 Parkside Point','Nevada'),(68,'7580 
Namekagon Road','New York'),(69,'8534 Village Terrace','California'),(71,'0 Ruskin 
Circle','Ohio'),(72,'207 Surrey Avenue','Virginia'),(73,'7554 Hooker 
Trail','Indiana'),(74,'3072 Ridgeway Terrace','Texas'),(76,'19693 Debra 
Hill','Florida'),(77,'7532 Golf Course Circle','Michigan'),(82,'785 Victoria 
Avenue','Missouri'),(83,'03022 Westridge Avenue','Florida'),(85,'05795 Walton 
Plaza','Minnesota'),(86,'19860 Haas Trail','Washington'),(87,'432 Shopko 
Parkway','Pennsylvania'),(89,'273 Brown Court','Pennsylvania'),(91,'6533 Dunning 
Street','New Jersey'),(92,'9180 Glendale Circle','Maryland'),(93,'6 Basil 
Point','California'),(94,'89017 Barnett Plaza','Georgia'),(95,'9 Farmco 
Avenue','Florida'),(96,'49 Susan Hill','District of Columbia'),(100,'81 Brown 
Lane','Pennsylvania'),(101,'00 Nevada Court','Texas'),(102,'3748 Atwood 
Junction','Arizona'),(103,'84 Blackbird Hill','Missouri'),(105,'7610 Quincy 
Hill','Connecticut'),(108,'25 Myrtle Court','Illinois'),(110,'6135 Springs 
Alley','Ohio'),(111,'092 North Drive','Minnesota'),(112,'536 Columbus 
Center','Florida'),(113,'2627 John Wall Place','District of Columbia'),(114,'2089 
Badeau Junction','Illinois'),(115,'6421 Coolidge Point','Colorado'),(116,'5331 
Westport Lane','Minnesota'),(117,'6 Graedel Trail','California'),(120,'182 Carberry
Alley','Virginia'),(121,'10538 Randy Point','California'),(122,'3718 Ludington 
Pass','Arizona'),(123,'70 Mesta Court','Minnesota'),(124,'17046 Lukken 
Pass','Georgia');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `low_position_employee_sales`
--
DROP TABLE IF EXISTS `low_position_employee_sales`;
/*!50001 DROP VIEW IF EXISTS `low_position_employee_sales`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `low_position_employee_sales` AS SELECT 
 1 AS `position_description`,
 1 AS `sale_from_transaction`,
 1 AS `Employee_name`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `payroll`
--
DROP TABLE IF EXISTS `payroll`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll` (
 `payroll_id` int NOT NULL,
 `location_id` int NOT NULL,
 `position_id` int NOT NULL,
 `date` datetime NOT NULL,
 `company` varchar(45) NOT NULL,
 `hours_worked` int NOT NULL,
 `salary` double NOT NULL,
 PRIMARY KEY (`payroll_id`),
 KEY `fk_payroll_positions` (`location_id`),
 KEY `fk_position_positions` (`position_id`),
 CONSTRAINT `fk_payroll_positions` FOREIGN KEY (`location_id`) REFERENCES 
`locations` (`location_id`),
 CONSTRAINT `fk_position_positions` FOREIGN KEY (`position_id`) REFERENCES 
`positions` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `payroll`
--
LOCK TABLES `payroll` WRITE;
/*!40000 ALTER TABLE `payroll` DISABLE KEYS */;
INSERT INTO `payroll` VALUES (1,64,145,'2022-09-23 
00:00:00','HyperMarket',45,19.32),(2,100,137,'2022-09-19 
00:00:00','Eare',57,19.36),(3,56,109,'2022-06-11 00:00:00','Jetpulse',73,18.74),
(4,89,144,'2022-10-05 00:00:00','Babbleset',60,18.96),(5,85,146,'2022-04-28 
00:00:00','Flashspan',70,19.34),(6,54,134,'2022-03-18 00:00:00','Devify',57,18.97),
(7,60,110,'2022-02-20 00:00:00','Shuffledrive',74,19.08),(8,91,123,'2022-07-25 
00:00:00','Miboo',54,18.85),(9,87,133,'2022-01-13 00:00:00','Tazzy',72,19.01),
(10,73,124,'2022-06-23 00:00:00','Ainyx',62,18.4),(11,61,116,'2022-03-04 
00:00:00','Vinte',78,19.2),(12,100,102,'2022-11-14 00:00:00','Wikido',58,18.06),
(13,74,135,'2022-09-09 00:00:00','Oozz',52,18.77),(14,68,132,'2022-02-26 
00:00:00','Edgewire',61,18.26),(15,63,113,'2022-04-10 00:00:00','Quaxo',48,18.38),
(16,71,110,'2022-03-21 00:00:00','Twitterworks',57,18.29),(17,52,125,'2022-10-05 
00:00:00','Zoomzone',76,18.52),(18,93,135,'2022-08-01 
00:00:00','Brainsphere',48,19.19),(19,72,150,'2022-05-03 00:00:00','Kwinu',69,20),
(20,56,137,'2022-04-08 00:00:00','Einti',69,18.4),(21,71,141,'2022-09-07 
00:00:00','Avamba',59,19.95),(22,100,132,'2022-06-12 00:00:00','Jazzy',59,19.26),
(23,92,133,'2022-03-28 00:00:00','Jaxspan',56,19.47),(24,83,145,'2022-05-13 
00:00:00','Mynte',57,19.56),(25,66,123,'2022-06-21 00:00:00','Flipbug',62,19.03),
(26,69,125,'2022-01-12 00:00:00','Photobug',79,18.27),(27,92,105,'2022-06-28 
00:00:00','Edgeblab',50,18.07),(28,93,111,'2022-01-21 00:00:00','Kayveo',56,18.73),
(29,74,103,'2022-11-27 00:00:00','Wordify',53,18.95),(30,95,146,'2022-09-01 
00:00:00','Ntags',48,19.85),(31,86,125,'2022-02-21 
00:00:00','Blognation',72,18.69),(32,64,110,'2022-02-19 
00:00:00','Rhynoodle',77,18.44),(33,83,122,'2022-04-19 00:00:00','Fivechat',66,18),
(34,62,127,'2022-06-07 00:00:00','Avamba',69,19.41),(35,94,103,'2022-01-08 
00:00:00','Meejo',67,18.59),(36,67,144,'2022-05-21 00:00:00','InnoZ',65,18.62),
(37,93,120,'2022-07-13 00:00:00','Meejo',58,18.49),(38,82,130,'2022-08-17 
00:00:00','Thoughtsphere',45,19.88),(39,94,112,'2022-02-21 
00:00:00','Skimia',51,18.27),(40,74,150,'2022-06-01 
00:00:00','Jabberbean',46,18.69),(41,55,107,'2022-05-04 
00:00:00','Yambee',45,19.23),(42,91,103,'2022-11-11 00:00:00','Ntag',76,18.21),
(43,55,144,'2022-06-17 00:00:00','Twinte',55,19.23),(44,73,116,'2022-01-21 
00:00:00','Edgepulse',50,18.45),(45,96,130,'2022-09-04 
00:00:00','Divanoodle',68,19.39),(46,55,149,'2022-01-31 
00:00:00','Quatz',76,19.52),(47,77,101,'2022-11-10 00:00:00','Edgewire',75,18.54),
(48,52,148,'2022-07-21 00:00:00','Realcube',49,19.05),(49,89,144,'2022-09-18 
00:00:00','Bubblemix',78,18.5),(50,76,106,'2022-04-07 00:00:00','Ainyx',51,18.4);
/*!40000 ALTER TABLE `payroll` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `positions`
--
DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
 `position_id` int NOT NULL,
 `position_description` varchar(45) NOT NULL,
 `base_hourly_wage` double NOT NULL,
 PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `positions`
--
LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (101,'Bagger',13.71),(102,'Bakery Associate',11.97),
(103,'Overnight Stock Assistant',19.67),(105,'Janitor',19.74),
(106,'Pharmacist',15.03),(107,'Janitor',12.95),(109,'Custodian',15),(110,'Project 
Manager',16.37),(111,'Store Security',12.21),(112,'Custodian',15.75),
(113,'Cashier',17.94),(116,'Seafood Specialist',15.11),(120,'Pharmacy 
Technician',16.14),(122,'Janitor',16.38),(123,'Floral Assistant',12.22),
(124,'Inventory Control Specialist',12.63),(125,'Sales Representative',11.61),
(127,'Cashier',19),(130,'Stock clerk',14.82),(132,'Customer Service Representative 
',18.17),(133,'Butcher',15.02),(134,'Pharmacy Technician',13.77),(135,'Loss 
Prevention Associate',13.8),(137,'Store Manager',19.7),(141,'HR Specialist',14.55),
(144,'Stock Clerk',13.72),(145,'Assistant Store Manager',11.21),
(146,'Custodian',19.61),(148,'Cashier',14.94),(149,'Food Preparation 
Workers',15.97),(150,'Bagger',13.91),(200,'Bagger',15.97),(201,'Shipping and 
Receiving Clerks',17.38),(203,'Customer Service Representative ',19.17),
(204,'Surveillance Operator',13.12),(205,'Cart Attendent ',13.67),(208,'Cart 
Attendent ',15.05),(209,'Overnight Stock Clerks',11.27),(210,'Signage Specialist 
',19.3),(211,'Sales Representative',11.75),(212,'Stock Clerk Assistant ',16.15),
(213,'Stock clerk',16.4),(214,'Store Security',19.99),(215,'Lead Floral 
Associate',12.83),(216,'Bakery Associate',15.05),(217,'Store Decorator ',19.88),
(219,'Bagger',11.15),(220,'Bakery Associate',13.36),(221,'Electronics Specialist 
',15.56),(223,'HR Associate Assistant ',18.04);
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `sale_transaction_view`
--
DROP TABLE IF EXISTS `sale_transaction_view`;
/*!50001 DROP VIEW IF EXISTS `sale_transaction_view`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sale_transaction_view` AS SELECT 
 1 AS `employee_id`,
 1 AS `sale_from_transaction`,
 1 AS `date_of_sale`,
 1 AS `quantity`,
 1 AS `item_name`,
 1 AS `profit_per_item`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `sales`
--
DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
 `sales_id` int NOT NULL,
 `employee_id` int NOT NULL,
 `customer_id` int NOT NULL,
 `sale_from_transaction` int NOT NULL,
 `date_of_sale` datetime NOT NULL,
 PRIMARY KEY (`sales_id`),
 KEY `fk_sales_employee1` (`employee_id`),
 KEY `fk_sales_customers1` (`customer_id`),
 CONSTRAINT `fk_sales_customers1` FOREIGN KEY (`customer_id`) REFERENCES 
`customers` (`customer_id`),
 CONSTRAINT `fk_sales_employee1` FOREIGN KEY (`employee_id`) REFERENCES 
`employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `sales`
--
LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (202,661407051,334,75,'2022-10-30 00:00:00'),
(203,385481849,309,6,'2022-09-08 00:00:00'),(204,955535977,311,19,'2022-07-06 
00:00:00'),(205,522200831,338,8,'2022-09-01 00:00:00'),(206,346749936,306,23,'2022-
01-02 00:00:00'),(207,496812682,349,12,'2022-07-19 00:00:00'),
(210,133566405,316,7,'2022-08-07 00:00:00'),(212,31926786,346,95,'2022-07-05 
00:00:00'),(214,252247557,337,92,'2022-07-04 00:00:00'),
(215,823756551,303,90,'2022-02-08 00:00:00'),(217,801094901,311,62,'2022-12-10 
00:00:00'),(218,11174009,317,90,'2022-06-13 00:00:00'),(219,214332180,313,95,'2022-
01-21 00:00:00'),(221,946467750,330,88,'2022-06-19 00:00:00'),
(222,200490561,331,87,'2022-03-25 00:00:00'),(223,316243163,319,15,'2022-10-16 
00:00:00'),(224,685810879,340,19,'2022-09-25 00:00:00'),
(225,717441276,338,46,'2022-09-19 00:00:00'),(226,137950921,311,84,'2022-06-20 
00:00:00'),(228,166246518,324,54,'2022-07-31 00:00:00'),
(229,779409688,314,91,'2022-03-22 00:00:00'),(230,29082188,335,54,'2022-02-10 
00:00:00'),(231,227297388,324,47,'2022-01-29 00:00:00'),
(234,454470844,304,61,'2022-09-21 00:00:00'),(235,430515613,307,64,'2022-04-11 
00:00:00'),(236,767742174,323,24,'2022-02-20 00:00:00'),(238,58966311,338,43,'2022-
01-12 00:00:00'),(239,424380394,343,90,'2022-01-02 00:00:00'),
(240,120752814,317,66,'2022-07-27 00:00:00'),(243,201372362,307,12,'2022-08-08 
00:00:00'),(244,998292337,314,59,'2022-06-25 00:00:00'),
(245,896043756,310,76,'2022-12-19 00:00:00'),(248,976585009,330,42,'2022-01-11 
00:00:00'),(249,609177290,323,43,'2022-09-26 00:00:00'),
(300,355211005,328,60,'2022-07-02 00:00:00'),(301,993863312,342,44,'2022-05-13 
00:00:00'),(302,872993987,324,96,'2022-08-15 00:00:00'),
(303,950825133,309,86,'2022-06-26 00:00:00'),(304,559092846,324,90,'2022-01-09 
00:00:00'),(305,601094495,332,31,'2022-01-25 00:00:00'),
(306,427135086,345,61,'2022-04-05 00:00:00'),(307,463609673,322,34,'2022-10-04 
00:00:00'),(308,919025675,304,64,'2022-01-14 00:00:00'),
(310,337887636,335,75,'2022-02-14 00:00:00'),(311,234208462,346,63,'2022-01-25 
00:00:00'),(312,464683043,348,64,'2022-04-10 00:00:00'),(313,759171430,323,7,'2022-
03-21 00:00:00'),(314,790357946,350,78,'2022-02-02 00:00:00'),
(315,738826906,304,18,'2022-02-18 00:00:00'),(316,186040740,302,15,'2022-08-06 
00:00:00');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `sales_items_link`
--
DROP TABLE IF EXISTS `sales_items_link`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_items_link` (
 `item_id` int NOT NULL,
 `sales_id` int NOT NULL,
 `quantity` int NOT NULL,
 PRIMARY KEY (`item_id`,`sales_id`),
 KEY `fk_sales_items_link_sales1` (`sales_id`),
 CONSTRAINT `fk_sales_items_link_sales1` FOREIGN KEY (`sales_id`) REFERENCES 
`sales` (`sales_id`),
 CONSTRAINT `fk_sales_items_link_sales2` FOREIGN KEY (`item_id`) REFERENCES 
`items` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `sales_items_link`
--
LOCK TABLES `sales_items_link` WRITE;
/*!40000 ALTER TABLE `sales_items_link` DISABLE KEYS */;
INSERT INTO `sales_items_link` VALUES (1146,215,4),(1225,248,3),(1377,210,4),
(1465,307,5),(1514,243,2),(2022,303,3),(2096,207,1),(2235,313,2),(2305,205,2),
(2934,236,2),(2987,240,7),(3346,212,4),(3584,230,4),(3892,228,5),(4245,231,20),
(4444,301,3),(4616,311,11),(4866,203,1),(4983,214,12),(5127,302,1),(5522,234,12),
(5534,306,5),(5646,217,2),(6254,202,3),(6575,238,8),(6615,300,3),(6659,245,6),
(6712,249,10),(7343,244,6),(7521,221,5),(7757,308,7),(8453,315,3),(8564,219,1),
(8669,223,3),(8888,316,5),(9001,225,6),(9024,224,4),(9200,206,7),(9720,239,1),
(9999,204,2);
/*!40000 ALTER TABLE `sales_items_link` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `types_of_items`
--
DROP TABLE IF EXISTS `types_of_items`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types_of_items` (
 `type_id` int NOT NULL,
 `type_name` varchar(45) NOT NULL,
 `position_id` int NOT NULL,
 PRIMARY KEY (`type_id`),
 KEY `fk_types_of_items_positions1` (`position_id`),
 CONSTRAINT `fk_types_of_items_positions1` FOREIGN KEY (`position_id`) REFERENCES 
`positions` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `types_of_items`
--
LOCK TABLES `types_of_items` WRITE;
/*!40000 ALTER TABLE `types_of_items` DISABLE KEYS */;
INSERT INTO `types_of_items` VALUES (1,'Stationary',145),(2,'Stationary',137),
(3,'Stationary',109),(4,'Stationary',144),(2566,'grocery',103),
(21231,'stationary',208);
/*!40000 ALTER TABLE `types_of_items` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Final view structure for view `customer_sales`
--
/*!50001 DROP VIEW IF EXISTS `customer_sales`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_sales` AS select concat(`customers`.`fname`,' 
',`customers`.`lname`) AS `customer_name`,sum(`sales`.`sale_from_transaction`) AS 
`sale_total` from (`customers` join `sales` on((`customers`.`customer_id` = 
`sales`.`customer_id`))) group by `sales`.`customer_id` order by `sale_total` */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `employee_most_hours_under_10_years`
--
/*!50001 DROP VIEW IF EXISTS `employee_most_hours_under_10_years`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_most_hours_under_10_years` AS select 
concat(`employees`.`fname`,' ',`employees`.`lname`) AS 
`Employee_name`,`payroll`.`hours_worked` AS `hours_worked`,`payroll`.`salary` AS 
`salary` from (`employees` join `payroll` on((`payroll`.`payroll_id` = 
`employees`.`payroll_id`))) where (`employees`.`years_worked` < 10) order by 
`payroll`.`hours_worked` desc */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `hours_worked_common_state`
--
/*!50001 DROP VIEW IF EXISTS `hours_worked_common_state`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hours_worked_common_state` AS select concat(`employees`.`fname`,' 
',`employees`.`lname`) AS `Employee_name`,`payroll`.`hours_worked` AS 
`hours_worked`,`locations`.`state` AS `state` from ((`payroll` join `employees` 
on((`employees`.`payroll_id` = `payroll`.`payroll_id`))) join `locations` 
on((`payroll`.`location_id` = `locations`.`location_id`))) where 
(`locations`.`state` = (select `locations`.`state` from `locations` group by 
`locations`.`state` order by count(0) desc limit 1)) order by 
`payroll`.`hours_worked` */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `low_position_employee_sales`
--
/*!50001 DROP VIEW IF EXISTS `low_position_employee_sales`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `low_position_employee_sales` AS select 
`positions`.`position_description` AS 
`position_description`,`sales`.`sale_from_transaction` AS 
`sale_from_transaction`,concat(`employees`.`fname`,' ',`employees`.`lname`) AS 
`Employee_name` from ((`employees` join `positions` on((`employees`.`position_id` =
`positions`.`position_id`))) join `sales` on((`sales`.`employee_id` = 
`employees`.`employee_id`))) where (`positions`.`base_hourly_wage` < 15) */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `sale_transaction_view`
--
/*!50001 DROP VIEW IF EXISTS `sale_transaction_view`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sale_transaction_view` AS select `sales`.`employee_id` AS 
`employee_id`,`sales`.`sale_from_transaction` AS 
`sale_from_transaction`,`sales`.`date_of_sale` AS 
`date_of_sale`,`sales_items_link`.`quantity` AS `quantity`,`items`.`item_name` AS 
`item_name`,`items`.`profit_per_item` AS `profit_per_item` from 
((`sales_items_link` join `sales` on((`sales`.`sales_id` = 
`sales_items_link`.`sales_id`))) join `items` on((`items`.`item_id` = 
`sales_items_link`.`item_id`))) */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- Dump completed on 2022-12-12 16:38:53
