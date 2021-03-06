-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: rentacar
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `automobili`
--

DROP TABLE IF EXISTS `automobili`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automobili` (
  `ID_automobili` varchar(3) NOT NULL,
  `ID_trenutna_lokacija` varchar(33) NOT NULL,
  `ID_tip_automobila` varchar(4) NOT NULL,
  `boja_automobila` varchar(45) DEFAULT NULL,
  `brend_automobila` varchar(45) DEFAULT NULL,
  `deskripcija_automobila` varchar(45) DEFAULT NULL,
  `datum_kupovine_automobila` date DEFAULT NULL,
  PRIMARY KEY (`ID_automobili`),
  UNIQUE KEY `ID_trenutna_lokacija_UNIQUE` (`ID_trenutna_lokacija`),
  UNIQUE KEY `ID_tip_vozila_UNIQUE` (`ID_tip_automobila`),
  CONSTRAINT `tip_automobila` FOREIGN KEY (`ID_tip_automobila`) REFERENCES `tip_automobila` (`ID_tip_automobila`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automobili`
--

LOCK TABLES `automobili` WRITE;
/*!40000 ALTER TABLE `automobili` DISABLE KEYS */;
INSERT INTO `automobili` VALUES ('1','1','1','Plava','Mercedes','Ispravan','2020-05-05'),('10','10','10','Crna','BMW','Ispravan ','2020-01-01'),('11','11','11','Crna','Skoda','Ispravan','2014-05-06'),('12','12','12','Bijela','Renault','Neispravan','2014-05-15'),('13','13','13','Plava','BMW','Ispravan','2013-10-10'),('14','14','14','Crvena','Seat','Ispravan','2019-05-19'),('15','15','15','Siva','Volskwagen','Neispravan','2014-04-04'),('2','2','2','Crvena','Audi','Ispravan','2020-04-03'),('3','3','3','Bijela','Skoda','Ispravan','2017-05-01'),('4','4','4','Crna','Seat','Ispravan','2013-10-25'),('5','5','5','Crna','Mercedes','Ispravan','2019-10-10'),('6','6','6','Plava','Volskwagen','Ispravan','2014-05-15'),('7','7','7','Crvena','Opel','Neispravan','2017-05-11'),('8','8','8','Bijela','Volvo','Ispravan','2019-01-01'),('9','9','9','Plava','Mercedes','Ispravan','2015-10-06');
/*!40000 ALTER TABLE `automobili` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brojevi_tel`
--

DROP TABLE IF EXISTS `brojevi_tel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brojevi_tel` (
  `glavni_broj_tel` varchar(35) NOT NULL,
  `telefon_1` varchar(35) DEFAULT NULL,
  `telefon_2` varchar(35) DEFAULT NULL,
  `telefon_3` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`glavni_broj_tel`),
  UNIQUE KEY `glavni_broj_tel_UNIQUE` (`glavni_broj_tel`),
  CONSTRAINT `brojevi_tel` FOREIGN KEY (`glavni_broj_tel`) REFERENCES `poslovnice` (`glavni_broj_telefona`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brojevi_tel`
--

LOCK TABLES `brojevi_tel` WRITE;
/*!40000 ALTER TABLE `brojevi_tel` DISABLE KEYS */;
INSERT INTO `brojevi_tel` VALUES ('+38733555111','+38761526752','+38761536341','+38761234668'),('+38733555222','+38761259426','+38762469333','+38762369433'),('+38733555333','+38761316164','+38763146275','+38762749632'),('+38733555444','+38762616444','+38763486219','+38762345945'),('+38733555555','+38763365955','+38763349951','+38762315697');
/*!40000 ALTER TABLE `brojevi_tel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kupci`
--

DROP TABLE IF EXISTS `kupci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kupci` (
  `ID_kupac` int NOT NULL,
  `broj_LK` varchar(20) DEFAULT NULL,
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `mobitel` varchar(45) NOT NULL,
  `grad` varchar(45) NOT NULL,
  `drzava` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_kupac`),
  UNIQUE KEY `broj_LK_UNIQUE` (`broj_LK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kupci`
--

LOCK TABLES `kupci` WRITE;
/*!40000 ALTER TABLE `kupci` DISABLE KEYS */;
INSERT INTO `kupci` VALUES (1,'29A875M1','Amir','Amirović','+387605554411','Sarajevo','BiH','amir_22@gmail.com'),(2,'11H5422K47','Ahmed','Ahmedović','+387603145655','Sarajevo','BiH','ahmed@gmail.com'),(3,'45J859K66','Faris','Mekić','+381994025516','Zagreb','Hrvatska','faris1@yahoo.com'),(4,'5566M44F1','Srđan','Vuletić','+38590355411','Novi Sad','Srbija','srle123@gmail.com'),(5,'66J88K992','Jasmin','Trokić','+436764805126','Beč','Austrija','zako0@gmail.com'),(6,'7A90601J5','Lejla','Muratović','+38761123456','Zenica','BiH','lejla12@gmail.com'),(7,'L123A4567','Amar','Hodžić','+38266543210','Budva','Crna Gora','amarh00@yahoo.com'),(8,'DE4170152','Angela','Muller','+49554563982','Berlin','Njemačka','angelam@hager.de'),(9,'P52K24789','Mahir','Oručević','+3876014567893','Bihać','BiH','mahiroruc1234@gmail.com'),(10,'E526T4532','Azra','Šetkić','+38761546321','Tuzla','BiH','azra1@oriflame.ba'),(11,'NN1CHD1OJ ','Selma','Agić','+3876650180702','Mostar','BiH','sagic@gmail.com'),(12,'ZM4VJ2MCV ','Adna','Pašić','+3876654939911','Sarajevo','BiH','adnap@gmail.com'),(13,'CVC1O23JZ','Mirza','Komor','+3875149556959','Sarajevo','BiH','mirza1243@gmail.com'),(14,'351G6LH4A ','Timur','Džafić','+3876656524444','Sarajevo','BiH','timur24@gmail.com'),(15,'CNO8EC8NM ','Damir','Kos','+3871849426628','Brčko','BiH','damirk@gmail.com'),(16,'G7RS1SZKS ','Harun','Kapić','+3876064949261','Tuzla','BiH','harunw534634@gmail.com'),(17,'T8NPKHEMV ','Kenan','Kikić','+3871184819191','Zenica','BiH','kenank123@gmail.com'),(18,'SF7BHDVOE ','Haris','Šehić','+3875161919199','Bihać','BiH','sehahars@gmail.com'),(19,'6JT2Z8UOK ','Mak','Arnautović','+3871619578686','Banja Luka','BiH','makarnaut@gmail.com'),(20,'OTKOF17AO ','Din','Šehović','+3871626203625','Goražde','BiH','din1111@gmail.com'),(21,'H0L23R0IH ','Ismar','Dovadžija','+3871261616116','Banovići','BiH','ismarismo111@gmail.com'),(22,'3DL6CMW70 ','Elma','Kisić','+3873456789352','Trebinje','BiH','elmak11@gmail.com'),(23,'5283J4IFR ','Irfan','Hodžić','+3872634758463','Gacko','BiH','irfanhodzic1@gmail.com'),(24,'H0RA57JZI ','Merima','Leka','+3872350324504','Cazin','BiH','mleka1@gmail.com'),(25,'LT0RRW7D6 ','Meris','Abaza','+3879320493253','Sarajevo','BiH','meris2@gmail.com'),(26,'AWGOH9TKA ','Belma','Islamović','+3875685663452','Sarajevo','BiH','belma333@gmail.com'),(27,'O3HFBADEF','Alex','Gramlich','+412335324634','Munchen','Njemačka','alex55@gmail.com'),(28,'1PCIBZAIB ','Marko','Aleksejević','+3813253246346','Novi Sad','Srbija','markomarko@gmail.com'),(29,'5C0H2R1LS ','Andrej','Savić','+3812353463546','Beograd','Srbija','andrej6@gmail.com'),(30,'3EB67OKTC ','Sebastian','Wille','+42345634636','Tirol','Austrija','sebawille@gmail.com'),(31,'DJALSPP53 ','Nedeljko','Šarić','+3872432534675','Niš','Srbija','nedasara@gmail.com'),(32,'V3L7KI4HV ','Dejan','Rokvić','+3813465474887','Niš','Srbija','dejorok@gmail.com'),(33,'M30ZEARB8 ','Vladimir','Popović','+3876565565956','Kruševac','Srbija','vladovlado1@gmail.com'),(34,'ERGAWF96V ','Saša','Nikolić','+3872345678987','Zrenjanin','Srbija','salesale111@gmail.com'),(35,'T1SDKI8UJ ','Henry','Rohr','+3872345987645','Paris','Francuska','henrihenri@gmail.com'),(36,'BZJVFV2T0 ','Slobodan','Miličević','+3872654634556','Leskovac','Srbija','sloboooo@gmail.com'),(37,'F6AC2HDAH ','Sven','Domičević','+3873253265555','Zadar','Hrvatska','sven224254@gmail.com'),(38,'AE8IONLP1 ','Philipp','Boll','+4111111111111','Beč','Austrija','filipbolll@gmail.com'),(39,'ZRJWCM7I2 ','Elmedin','Siručić','+3877862453848','Kalesija','BiH','elmedinsirucic@gmail.com'),(40,'9WW9LPL0C ','Armin','Sijamija','+3871444944945','Bijeljina','BiH','armisijamija@gmail.com'),(41,'4RGUHSP8R ','Naida','Karabeg','+3873253467375','Sarajevo','BiH','naidakarabeg@gmail.com'),(42,'ZLR7J705M ','Sabita','Helać','+3872336375754','Prijedor','BiH','sabith1@gmail.com'),(43,'F38OZONP2 ','Elmina','Nišić','+3873534635643','Trnovo','BiH','elminanisic@gmail.com'),(44,'DWN1LA9C8','Irma','Kalajdzić','+3878445456454','Kakanj','BiH','irmakalaj@gmail.com'),(45,'440ISRS8O ','Semir','Isić','+3872353463574','Zenica','BiH','sema22@gmail.com'),(46,'D4DA4BSMF ','Amar','Vilajet','+3873463447457','Zenica','BiH','amarvili@gmail.com'),(47,'R08S8P994 ','Nedžad','Babović','+3872143252464','Zenica','BiH','nelebabo@gmail.com'),(48,'VVSA53AVD ','Ibrahim','Husić','+3876461632265','Tuzla','BiH','ibrahim11111@gmail.com'),(49,'A2VM2RA9F ','Teufik','Bahtanović','+3875161616166','Tuzla','BiH','teufikkkk@gmail.com'),(50,'9HNUGJ2UO ','Ajla','Zuko','+3872432634757','Mostar','BiH','ajlaz@gmail.com');
/*!40000 ALTER TABLE `kupci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poslovnice`
--

DROP TABLE IF EXISTS `poslovnice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poslovnice` (
  `ID_poslovnice` varchar(3) NOT NULL,
  `ulica` varchar(45) NOT NULL,
  `grad` varchar(45) NOT NULL,
  `drzava` varchar(45) NOT NULL,
  `glavni_broj_telefona` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_poslovnice`),
  KEY `broj_idx` (`glavni_broj_telefona`),
  CONSTRAINT `automobili` FOREIGN KEY (`ID_poslovnice`) REFERENCES `automobili` (`ID_automobili`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poslovnice`
--

LOCK TABLES `poslovnice` WRITE;
/*!40000 ALTER TABLE `poslovnice` DISABLE KEYS */;
INSERT INTO `poslovnice` VALUES ('1','Maglajska 17A','Sarajevo','BiH','+38733555111'),('2','Behdžeta Mutevelića 28','Sarajevo','BiH','+38733555222'),('3','Braće Fejića 3','Mostar','BiH','+38733555333'),('4','Gajeva BB','Banja Luka','BiH','+38733555444'),('5','Malkočeva 55','Tuzla','BiH','+38733555555');
/*!40000 ALTER TABLE `poslovnice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rezervacija_automobila`
--

DROP TABLE IF EXISTS `rezervacija_automobila`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rezervacija_automobila` (
  `ID_rezervacija_automobila` varchar(3) NOT NULL,
  `cijena` varchar(20) DEFAULT NULL,
  `datum_preuzimanja` date NOT NULL,
  `datum_povratka` date NOT NULL,
  `lokacija_preuzimanja` varchar(30) NOT NULL,
  `lokacija_vracanja` varchar(30) NOT NULL,
  `ID_kupac` int NOT NULL,
  `ID_automobila` varchar(3) NOT NULL,
  PRIMARY KEY (`ID_rezervacija_automobila`),
  UNIQUE KEY `ID_kupac_UNIQUE` (`ID_kupac`),
  UNIQUE KEY `ID_vozila_UNIQUE` (`ID_automobila`),
  KEY `Lokacija` (`lokacija_preuzimanja`),
  CONSTRAINT `ID_automobili` FOREIGN KEY (`ID_rezervacija_automobila`) REFERENCES `automobili` (`ID_automobili`),
  CONSTRAINT `ID_kupac` FOREIGN KEY (`ID_kupac`) REFERENCES `kupci` (`ID_kupac`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Lokacija` FOREIGN KEY (`lokacija_preuzimanja`) REFERENCES `poslovnice` (`ID_poslovnice`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezervacija_automobila`
--

LOCK TABLES `rezervacija_automobila` WRITE;
/*!40000 ALTER TABLE `rezervacija_automobila` DISABLE KEYS */;
INSERT INTO `rezervacija_automobila` VALUES ('1','2270','2020-11-12','2020-12-11','1','Sarajevo',1,'1'),('10','1400','2020-12-01','2020-12-31','4','Sarajevo',10,'10'),('11','470','2020-12-15','2020-12-17','1','Tuzla',11,'11'),('12','100','2020-12-01','2020-12-03','1','Sarajevo',12,'13'),('2','150','2020-12-04','2020-12-07','2','Sarajevo',2,'2'),('3','100','2020-12-08','2020-12-10','3','Mostar',3,'3'),('4','470','2020-12-10','2020-12-13','4','Banja Luka',4,'4'),('5','100','2020-12-05','2020-12-12','5','Sarajevo',5,'5'),('6','500','2020-12-01','2020-12-30','3','Tuzla',6,'6'),('7','40','2020-12-12','2020-12-13','4','Sarajevo',7,'14'),('8','300','2020-11-11','2020-12-12','5','Mostar',8,'8'),('9','900','2020-12-14','2020-12-28','2','Banja Luka',9,'9');
/*!40000 ALTER TABLE `rezervacija_automobila` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_automobila`
--

DROP TABLE IF EXISTS `tip_automobila`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tip_automobila` (
  `ID_tip_automobila` varchar(4) NOT NULL,
  `broj_sasije_automobila` varchar(45) NOT NULL,
  `opis_automobila` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_tip_automobila`),
  UNIQUE KEY `broj_sasije_vozila_UNIQUE` (`broj_sasije_automobila`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_automobila`
--

LOCK TABLES `tip_automobila` WRITE;
/*!40000 ALTER TABLE `tip_automobila` DISABLE KEYS */;
INSERT INTO `tip_automobila` VALUES ('1','5TFDY5F10CX228504','Karavan'),('10','5TBRT34193S488555','Karavan'),('11','1FTSW21P57EA53904','Coupe'),('12','1C4RJFBG1EC313114','Kombi'),('13','2G1WT58K369168906','Supercar'),('14','1FTFW1ET4DFC14588','Limuzina'),('15','1FTKR1AD4BPB90904','SUV'),('2','1C4RJEBT1EC221556','Limuzina'),('3','KMHDU46D58U379455','Limuzina'),('4','WBAAR3345YJM56296','Limuzina'),('5','2C4RDGBG0CR153177','SUV'),('6','5UXZV4C50D0B08598','SUV'),('7','1FAFP53U12A197460','SUV'),('8','3N1AB61E28L665429','Monovolumen'),('9','1XP5DW9X33D809095','Karavan');
/*!40000 ALTER TABLE `tip_automobila` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-08 17:52:43
