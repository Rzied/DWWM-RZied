-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: voiture
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `voiture`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `voiture` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `voiture`;

--
-- Table structure for table `marque`
--

DROP TABLE IF EXISTS `marque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marque` (
  `idMarque` int(11) NOT NULL AUTO_INCREMENT,
  `nomMarque` varchar(50) NOT NULL,
  PRIMARY KEY (`idMarque`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marque`
--

LOCK TABLES `marque` WRITE;
/*!40000 ALTER TABLE `marque` DISABLE KEYS */;
INSERT INTO `marque` VALUES (1,'ALFA ROMEO '),(2,'AUDI '),(3,'BENTLEY '),(4,'BMW '),(5,'CADILLAC '),(6,'CHEVROLET '),(7,'CITROEN '),(8,'DACIA '),(9,'FERRARI '),(10,'FIAT '),(11,'FORD '),(12,'HONDA '),(13,'HYUNDAI '),(14,'INFINITI '),(15,'JAGUAR '),(16,'JEEP '),(17,'KIA '),(18,'LADA '),(19,'LAMBORGHINI '),(20,'LANCIA '),(21,'LAND ROVER '),(22,'LEXUS '),(23,'MASERATI '),(24,'MAZDA '),(25,'MERCEDES '),(26,'MINI '),(27,'MITSUBISHI '),(28,'NISSAN '),(29,'OPEL '),(30,'PEUGEOT '),(31,'PORSCHE '),(32,'RENAULT '),(33,'ROLLS ROYCE '),(34,'SEAT '),(35,'SKODA '),(36,'SMART '),(37,'SSANGYONG '),(38,'SUBARU '),(39,'SUZUKI '),(40,'TESLA '),(41,'TOYOTA '),(42,'VOLKSWAGEN '),(43,'VOLVO ');
/*!40000 ALTER TABLE `marque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modele`
--

DROP TABLE IF EXISTS `modele`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modele` (
  `idModele` int(11) NOT NULL AUTO_INCREMENT,
  `nomModele` varchar(50) NOT NULL,
  `idMarque` int(11) NOT NULL,
  PRIMARY KEY (`idModele`),
  KEY `idmarque` (`idMarque`),
  CONSTRAINT `idmarque` FOREIGN KEY (`idMarque`) REFERENCES `marque` (`idMarque`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modele`
--

LOCK TABLES `modele` WRITE;
/*!40000 ALTER TABLE `modele` DISABLE KEYS */;
INSERT INTO `modele` VALUES (1,'159',1),(2,'NULL',1),(3,'8C ',1),(4,'A5',1),(5,'MITO ',1),(6,'SPIDER ',1),(7,'A1 ',2),(8,'A3 ',2),(9,'A4 ',2),(10,'A5 ',2),(11,'A6 ',2),(12,'A7 ',2),(13,'A8 ',2),(14,'Q3 ',2),(15,'Q5 ',2),(16,'Q7 ',2),(17,'R8 ',2),(18,'TT ',2),(19,'CONTINENTAL ',3),(20,'FLYING SPUR ',3),(21,'MULSANNE ',3),(22,'114',4),(23,'116',4),(24,'118',4),(25,'120',4),(26,'125',4),(27,'214',4),(28,'216',4),(29,'218',4),(30,'220',4),(31,'225',4),(32,'228',4),(33,'235',4),(34,'316',4),(35,'318',4),(36,'320',4),(37,'325',4),(38,'328',4),(39,'330',4),(40,'335',4),(41,'418',4),(42,'420',4),(43,'425',4),(44,'428',4),(45,'430',4),(46,'435',4),(47,'518',4),(48,'520',4),(49,'525',4),(50,'528',4),(51,'530',4),(52,'535',4),(53,'550',4),(54,'640',4),(55,'650',4),(56,'730',4),(57,'740',4),(58,'750',4),(59,'760',4),(60,'I3 ',4),(61,'I8 ',4),(62,'M3 ',4),(63,'M4 ',4),(64,'M5 ',4),(65,'SERIE 3 ACTIVEHYBRID ',4),(66,'SERIE 5 ACTIVEHYBRID ',4),(67,'SERIE 7 ACTIVEHYBRID ',4),(68,'X1 ',4),(69,'X3 ',4),(70,'X4 ',4),(71,'X5 ',4),(72,'X6 ',4),(73,'Z4 ',4),(74,'ATS ',5),(75,'CTS ',5),(76,'ESCALADE ',5),(77,'SRX ',5),(78,'CAMARO ',6),(79,'CORVETTE ',6),(80,'BERLINGO ',7),(81,'C-ZERO ',7),(82,'C1 ',7),(83,'C3 ',7),(84,'C3 PICASSO ',7),(85,'C4 ',7),(86,'C4 AIRCROSS ',7),(87,'C4 CACTUS ',7),(88,'C4 PICASSO ',7),(89,'C5 ',7),(90,'C8 ',7),(91,'DS3 ',7),(92,'DS4 ',7),(93,'DS5 ',7),(94,'JUMPER ',7),(95,'JUMPY ',7),(96,'NEMO ',7),(97,'DOKKER ',8),(98,'DUSTER ',8),(99,'LODGY ',8),(100,'LOGAN ',8),(101,'SANDERO ',8),(102,'458',9),(103,'CALIFORNIA ',9),(104,'F12 ',9),(105,'FF ',9),(106,'LAFERRARI ',9),(107,'500',10),(108,'500L ',10),(109,'BRAVO ',10),(110,'DOBLO ',10),(111,'DUCATO ',10),(112,'FIORINO ',10),(113,'FREEMONT ',10),(114,'PANDA ',10),(115,'PUNTO ',10),(116,'SCUDO ',10),(117,'SEDICI ',10),(118,'B-MAX ',11),(119,'C-MAX ',11),(120,'ECOSPORT ',11),(121,'FIESTA ',11),(122,'FOCUS ',11),(123,'KA ',11),(124,'KUGA ',11),(125,'MONDEO ',11),(126,'S-MAX ',11),(127,'TOURNEO CONNECT ',11),(128,'TOURNEO COURIER ',11),(129,'TOURNEO CUSTOM ',11),(130,'TRANSIT ',11),(131,'TRANSIT CUSTOM ',11),(132,'ACCORD ',12),(133,'CIVIC ',12),(134,'CR-V ',12),(135,'CR-Z ',12),(136,'INSIGHT ',12),(137,'JAZZ ',12),(138,'GENESIS ',13),(139,'I 10 ',13),(140,'I 20 ',13),(141,'I 30 ',13),(142,'I 40 ',13),(143,'IX 20 ',13),(144,'IX 35 ',13),(145,'SANTA FE ',13),(146,'VELOSTER ',13),(147,'Q50 ',14),(148,'Q60 ',14),(149,'Q70 ',14),(150,'QX50 ',14),(151,'QX70 ',14),(152,'F-TYPE ',15),(153,'XF ',15),(154,'XJ ',15),(155,'CHEROKEE ',16),(156,'COMPASS ',16),(157,'GRAND CHEROKEE ',16),(158,'WRANGLER ',16),(159,'CARENS ',17),(160,'CEED ',17),(161,'OPTIMA ',17),(162,'PICANTO ',17),(163,'RIO ',17),(164,'SORENTO ',17),(165,'SOUL ',17),(166,'SPORTAGE ',17),(167,'VENGA ',17),(168,'NIVA ',18),(169,'AVENTADOR ',19),(170,'GALLARDO ',19),(171,'HURACAN ',19),(172,'DELTA ',20),(173,'FLAVIA ',20),(174,'MUSA ',20),(175,'THEMA ',20),(176,'VOYAGER ',20),(177,'YPSILON ',20),(178,'DISCOVERY ',21),(179,'DISCOVERY SPORT ',21),(180,'FREELANDER ',21),(181,'RANGE ROVER ',21),(182,'RANGE ROVER EVOQUE ',21),(183,'RANGE ROVER SPORT ',21),(184,'CT ',22),(185,'GS ',22),(186,'IS ',22),(187,'LFA ',22),(188,'LS ',22),(189,'NX ',22),(190,'RC ',22),(191,'RX ',22),(192,'GHIBLI ',23),(193,'GRANCABRIO ',23),(194,'GRANTURISMO ',23),(195,'QUATTROPORTE ',23),(196,'2',24),(197,'3',24),(198,'5',24),(199,'6',24),(200,'CX-5 ',24),(201,'MX-5 ',24),(202,'A 160 ',25),(203,'A 180 ',25),(204,'A 200 ',25),(205,'A 220 ',25),(206,'A 250 ',25),(207,'A 45 AMG ',25),(208,'AMG GT ',25),(209,'AMG GT S ',25),(210,'B 160 ',25),(211,'B 180 ',25),(212,'B 200 ',25),(213,'B 220 ',25),(214,'B 250 ',25),(215,'B ED ',25),(216,'C 180 ',25),(217,'C 200 ',25),(218,'C 220 ',25),(219,'C 250 ',25),(220,'C 300 ',25),(221,'C 350 ',25),(222,'C 400 ',25),(223,'C 63 AMG ',25),(224,'C 63 S-AMG ',25),(225,'CITAN ',25),(226,'CL 63 AMG ',25),(227,'CLA 180 ',25),(228,'CLA 200 ',25),(229,'CLA 220 ',25),(230,'CLA 250 ',25),(231,'CLA 45 AMG ',25),(232,'CLASSE V ',25),(233,'CLS 220 ',25),(234,'CLS 250 ',25),(235,'CLS 350 ',25),(236,'CLS 400 ',25),(237,'CLS 500 ',25),(238,'CLS 63 AMG ',25),(239,'E 200 ',25),(240,'E 220 ',25),(241,'E 250 ',25),(242,'E 300 ',25),(243,'E 320 ',25),(244,'E 350 ',25),(245,'E 400 ',25),(246,'E 500 ',25),(247,'E 63 AMG ',25),(248,'G 350 ',25),(249,'G 500 ',25),(250,'G 63 AMG ',25),(251,'G 65 AMG ',25),(252,'GL 350 ',25),(253,'GL 400 ',25),(254,'GL 500 ',25),(255,'GL 63 AMG ',25),(256,'GLA 180 ',25),(257,'GLA 200 ',25),(258,'GLA 220 ',25),(259,'GLA 250 ',25),(260,'GLA 45 AMG ',25),(261,'ML 250 ',25),(262,'ML 350 ',25),(263,'ML 400 ',25),(264,'ML 500 ',25),(265,'ML 63 AMG ',25),(266,'S 300 ',25),(267,'S 350 ',25),(268,'S 400 ',25),(269,'S 500 ',25),(270,'S 600 ',25),(271,'S 63 AMG ',25),(272,'S 65 AMG ',25),(273,'SL 350 ',25),(274,'SL 400 ',25),(275,'SL 500 ',25),(276,'SL 63 AMG ',25),(277,'SL 65 AMG ',25),(278,'SLK 200 ',25),(279,'SLK 250 ',25),(280,'SLK 350 ',25),(281,'SLK 55 AMG ',25),(282,'SLS AMG GT S ',25),(283,'SPRINTER ',25),(284,'VITO ',25),(285,'CABRIO ',26),(286,'COUNTRYMAN ',26),(287,'COUPE ',26),(288,'MINI ',26),(289,'PACEMAN ',26),(290,'ROADSTER ',26),(291,'ASX ',27),(292,'I-MIEV ',27),(293,'OUTLANDER ',27),(294,'PAJERO ',27),(295,'SPACE STAR ',27),(296,'370Z ',28),(297,'GT-R ',28),(298,'JUKE ',28),(299,'LEAF ',28),(300,'MICRA ',28),(301,'MURANO ',28),(302,'NOTE ',28),(303,'NV200 ',28),(304,'NV300 ',28),(305,'NV400 ',28),(306,'PULSAR ',28),(307,'QASHQAI ',28),(308,'X-TRAIL ',28),(309,'ADAM ',29),(310,'AGILA ',29),(311,'AMPERA ',29),(312,'ANTARA ',29),(313,'ASTRA ',29),(314,'CASCADA ',29),(315,'COMBO ',29),(316,'CORSA ',29),(317,'INSIGNIA ',29),(318,'MERIVA ',29),(319,'MOKKA ',29),(320,'MOVANO ',29),(321,'VIVARO ',29),(322,'ZAFIRA ',29),(323,'108',30),(324,'2008',30),(325,'207',30),(326,'208',30),(327,'3008',30),(328,'308',30),(329,'4008',30),(330,'5008',30),(331,'508',30),(332,'BIPPER ',30),(333,'BOXER ',30),(334,'EXPERT ',30),(335,'ION ',30),(336,'PARTNER ',30),(337,'RCZ ',30),(338,'911',31),(339,'918',31),(340,'BOXSTER ',31),(341,'CAYENNE ',31),(342,'CAYMAN ',31),(343,'MACAN ',31),(344,'PANAMERA ',31),(345,'CAPTUR ',32),(346,'CLIO ',32),(347,'ESPACE ',32),(348,'KANGOO ',32),(349,'KOLEOS ',32),(350,'LAGUNA ',32),(351,'LATITUDE ',32),(352,'MASTER ',32),(353,'MEGANE ',32),(354,'SCENIC ',32),(355,'TRAFIC ',32),(356,'TWINGO ',32),(357,'ZOE ',32),(358,'GHOST ',33),(359,'PHANTOM ',33),(360,'WRAITH ',33),(361,'ALHAMBRA ',34),(362,'ALTEA ',34),(363,'IBIZA ',34),(364,'LEON ',34),(365,'MII ',34),(366,'TOLEDO ',34),(367,'CITIGO ',35),(368,'FABIA ',35),(369,'OCTAVIA ',35),(370,'RAPID ',35),(371,'ROOMSTER ',35),(372,'SUPERB ',35),(373,'YETI ',35),(374,'FORFOUR ',36),(375,'FORTWO ',36),(376,'KORANDO ',37),(377,'REXTON ',37),(378,'RODIUS ',37),(379,'BRZ ',38),(380,'FORESTER ',38),(381,'WRX ',38),(382,'XV ',38),(383,'CELERIO ',39),(384,'JIMNY ',39),(385,'SWIFT ',39),(386,'SX4 ',39),(387,'VITARA ',39),(388,'MODEL S ',40),(389,'AURIS ',41),(390,'AVENSIS ',41),(391,'AYGO ',41),(392,'GT86 ',41),(393,'IQ ',41),(394,'LAND CRUISER ',41),(395,'PRIUS ',41),(396,'PRIUS+ ',41),(397,'RAV4 ',41),(398,'VERSO ',41),(399,'VERSO S ',41),(400,'YARIS ',41),(401,'CC ',42),(402,'COCCINELLE ',42),(403,'CRAFTER ',42),(404,'EOS ',42),(405,'GOLF ',42),(406,'GOLF SPORTSVAN ',42),(407,'JETTA ',42),(408,'PASSAT ',42),(409,'PHAETON ',42),(410,'POLO ',42),(411,'SCIROCCO ',42),(412,'SHARAN ',42),(413,'TIGUAN ',42),(414,'TOUAREG ',42),(415,'TOURAN ',42),(416,'UP! ',42),(417,'S60 ',43),(418,'S80 ',43),(419,'V40 ',43),(420,'V60 ',43),(421,'V70 ',43),(422,'XC60 ',43),(423,'XC70 ',43),(424,'XC90 ',43);
/*!40000 ALTER TABLE `modele` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-30 12:10:55
