-- MySQL dump 10.13  Distrib 8.4.0, for Linux (x86_64)
--
-- Host: localhost    Database: Tienda
-- ------------------------------------------------------
-- Server version	8.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Categorias`
--

DROP TABLE IF EXISTS `Categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `id_categoria_padre` int DEFAULT NULL,
  PRIMARY KEY (`id_categoria`),
  KEY `id_categoria_padre` (`id_categoria_padre`),
  CONSTRAINT `Categorias_ibfk_1` FOREIGN KEY (`id_categoria_padre`) REFERENCES `Categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categorias`
--

LOCK TABLES `Categorias` WRITE;
/*!40000 ALTER TABLE `Categorias` DISABLE KEYS */;
INSERT INTO `Categorias` VALUES (1,'Archivadores','Archivadores para organizar documentos',NULL),(2,'Pegamento','Pegamentos de varios tipos',NULL),(3,'Cajas de almacenaje','Cajas para almacenar documentos y suministros',NULL),(4,'Cintas adhesivas','Cintas adhesivas de diferentes tamaos y usos',NULL),(5,'Calculadoras','Calculadoras de escritorio y porttiles',NULL),(6,'Sobres','Sobres para envo y almacenamiento',NULL),(7,'Tijeras','Tijeras de varios tamaos y estilos',NULL),(8,'Organizadores de escritorio','Organizadores para mantener el escritorio ordenado',NULL),(9,'Correctores','Correctores lquidos y en cinta',NULL),(10,'Papel','Papel de distintos tamaos y gramajes',NULL),(11,'Agendas','Agendas y planificadores',NULL),(12,'Rotuladores','Rotuladores permanentes y para pizarra',NULL),(13,'Grapadoras','Grapadoras y grapas',NULL),(14,'Borradores','Borradores para pizarras y lpices',NULL),(15,'Etiquetas','Etiquetas adhesivas para identificacin',NULL),(16,'Carpetas','Carpetas para documentos',NULL),(17,'Plastificadoras','Mquinas plastificadoras y fundas',NULL),(18,'Perforadoras','Perforadoras de papel',NULL),(19,'Sellos','Sellos de caucho y tinta para documentos',NULL),(20,'Post-it','Notas adhesivas Post-it',NULL),(21,'Reglas','Reglas de medicin',NULL),(22,'Afiladores','Afiladores de lpices',NULL),(23,'Separadores','Separadores para carpetas y archivos',NULL),(24,'Protectores','Protectores de hojas para carpetas',NULL),(25,'Cartulinas','Cartulinas de colores',NULL),(26,'Tintas','Tintas para impresoras',NULL),(27,'Bandejas','Bandejas para documentos',NULL),(28,'Portafolios','Portafolios para documentos',NULL),(29,'Clasificadores','Clasificadores de documentos',NULL);
/*!40000 ALTER TABLE `Categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `direccion` text,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clientes`
--

LOCK TABLES `Clientes` WRITE;
/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
INSERT INTO `Clientes` VALUES (1,'Emerald Roman','facilisis.suspendisse.commodo@aol.org','9484 A, Av.'),(2,'Galvin Goodwin','nunc.ac.sem@outlook.edu','Ap #973-2582 Sociis Road'),(3,'Lamar Baldwin','imperdiet.erat@aol.edu','Ap #157-7174 Aliquam Avenue'),(4,'Oren James','ut.quam@aol.org','575-6443 Mus. Road'),(5,'Amethyst Horn','risus.donec.egestas@aol.com','346-6101 Est Avenue'),(6,'Aidan Boyd','mattis.ornare@aol.net','Ap #984-3433 Cursus, Road'),(7,'Kyle Oliver','nulla.aliquet@google.net','Ap #665-6935 Mi. St.'),(8,'Colorado Neal','nulla.dignissim@icloud.couk','4519 Iaculis Rd.'),(9,'Tamara Booth','iaculis.nec@protonmail.com','P.O. Box 616, 7405 Urna Street'),(10,'Yardley Acosta','venenatis.lacus@hotmail.edu','828-9816 Accumsan Street'),(11,'Nicholas Mendoza','diam.luctus@icloud.couk','8417 Massa. Ave'),(12,'Carter Acosta','sapien.cursus@aol.ca','476-7773 Tincidunt St.'),(13,'Herman Bass','felis.donec@google.com','Ap #493-937 Proin Av.'),(14,'Cade Smith','nibh@yahoo.edu','217-8070 Aenean Rd.'),(15,'Cullen Neal','lacinia.at.iaculis@hotmail.ca','P.O. Box 204, 1734 Sem, Avenue'),(16,'Leslie Cherry','molestie.orci@hotmail.edu','Ap #766-1935 Fringilla. Ave'),(17,'Karina Woodward','feugiat.nec.diam@aol.org','721-7273 Semper St.'),(18,'Ahmed Frank','et.pede@hotmail.ca','Ap #759-4805 Est Avenue'),(19,'Kiona May','metus.urna@yahoo.org','6739 Convallis St.'),(20,'Hedy Valentine','per.conubia@google.ca','907-3680 Tempus Avenue'),(21,'Stacey Nielsen','eu.augue@protonmail.net','P.O. Box 879, 1804 Metus. Road'),(22,'Flynn Schroeder','aliquam.adipiscing@google.ca','231-1416 Parturient Street'),(23,'Thomas Shannon','euismod.ac@protonmail.net','Ap #122-1883 Nisl. Rd.'),(24,'Porter Stephenson','non.enim.mauris@outlook.net','8269 Dictum Av.'),(25,'Dorian Bird','donec@protonmail.org','183-2330 Ut Rd.'),(26,'Zelda Sherman','ligula.consectetuer@icloud.edu','108-4833 Orci. Av.'),(27,'Sade Shaw','mi.fringilla@aol.com','3599 Tellus St.'),(28,'Lucian Blackwell','id.nunc.interdum@icloud.org','P.O. Box 801, 1194 Dis Ave'),(29,'Derek Cobb','erat.sed.nunc@aol.org','Ap #420-9277 Mauris Avenue'),(30,'Blythe Bates','ut.molestie@protonmail.edu','501-9782 Mi St.'),(31,'Kiayada Garza','eu.nulla.at@yahoo.net','332-7876 Vitae Ave'),(32,'Brynne Buckner','sed.leo@icloud.org','122-464 Porttitor Rd.'),(33,'Maia Wheeler','vestibulum.massa.rutrum@outlook.org','6771 Fringilla Avenue'),(34,'Judith Mckinney','elit.pretium.et@icloud.org','Ap #865-995 Pellentesque. St.'),(35,'Jeremy Mccarthy','faucibus.lectus.a@icloud.net','P.O. Box 367, 2237 Etiam Street'),(36,'Ishmael Shannon','turpis.nulla@outlook.ca','2062 Tincidunt Road'),(37,'Berk Bell','nullam.feugiat@google.ca','Ap #505-3356 Primis Avenue'),(38,'Kiara Mckee','a@aol.org','2515 Magna. Street'),(39,'Hoyt Elliott','et.ipsum@google.couk','609-3150 Auctor, Rd.'),(40,'Dahlia Potts','mi.felis@yahoo.com','Ap #200-4715 Vitae, Ave'),(41,'Alfonso Koch','nec@hotmail.com','7310 Cursus St.'),(42,'Neville Byrd','nunc@hotmail.com','385-3055 Vivamus Av.'),(43,'Dexter Webster','nunc.laoreet@protonmail.edu','5159 Sed Rd.'),(44,'Barclay Peters','egestas@protonmail.org','740-4157 Fusce Ave'),(45,'Hope Woodward','orci.adipiscing@google.com','426-9570 Diam Av.'),(46,'Alfonso Pitts','turpis.vitae@google.com','402-5283 Mollis. Ave'),(47,'Lani Heath','purus@icloud.couk','P.O. Box 261, 9303 Nunc Ave'),(48,'Destiny Mendez','interdum.ligula.eu@icloud.ca','650-1476 Sit St.'),(49,'Jena Soto','nec@hotmail.edu','Ap #770-9853 Ipsum St.'),(50,'Jolene Blackwell','malesuada.fames.ac@protonmail.com','Ap #675-4832 Justo. Ave'),(51,'Vincent Hardin','ultricies.ornare@outlook.edu','270-1712 Quis Avenue'),(52,'Danielle House','vivamus.euismod@aol.org','339-4397 Egestas. St.'),(53,'Madeline Berger','nec@outlook.net','889-611 Suspendisse Street'),(54,'Celeste Davis','lobortis.quam@google.org','P.O. Box 760, 6296 Facilisis. St.'),(55,'Fatima Pena','accumsan.sed@protonmail.couk','P.O. Box 362, 4205 Proin Road'),(56,'Malcolm Davis','molestie.in@aol.couk','350-2675 Donec Av.'),(57,'Addison Buckner','eu.accumsan@hotmail.ca','106-3658 Tortor Avenue'),(58,'April Wright','amet@protonmail.org','Ap #751-4227 At, Street'),(59,'Carter Gallagher','lorem.eu.metus@icloud.edu','P.O. Box 999, 8808 Molestie St.'),(60,'Aphrodite Welch','nec.mauris.blandit@hotmail.com','4469 Feugiat. Av.'),(61,'Zia Jarvis','ornare.sagittis.felis@aol.edu','P.O. Box 685, 8934 Auctor Rd.'),(62,'Geraldine Cervantes','aenean@aol.edu','Ap #282-1594 Habitant Road'),(63,'Sarah Richardson','elit@hotmail.couk','375-455 Eu Avenue'),(64,'Cherokee Bentley','ut.semper@yahoo.ca','281-9374 Sit Rd.'),(65,'Vance Lindsay','convallis.convallis@outlook.edu','Ap #798-6146 Eu Av.'),(66,'Mollie Norris','proin@aol.edu','Ap #552-6018 In Av.'),(67,'Medge Chen','id.ante@protonmail.edu','Ap #195-357 Lacus. Avenue'),(68,'Tad Kramer','ultrices@hotmail.org','268 At, Avenue'),(69,'Cleo Harris','primis.in@google.ca','Ap #962-5117 Mus. Road'),(70,'Jerry Wilkerson','amet.ornare@aol.edu','Ap #357-4018 Tincidunt Av.'),(71,'Phillip Shaw','nec.euismod@outlook.org','5976 Faucibus Av.'),(72,'Chiquita Dawson','ridiculus.mus@icloud.ca','Ap #795-7314 Mauris. Road'),(73,'Colette Spears','quis@outlook.ca','Ap #303-1192 Ultrices, Ave'),(74,'Mason Burnett','magna.lorem@protonmail.com','P.O. Box 940, 2120 Egestas Street'),(75,'Quinn Calderon','vitae.aliquam@aol.ca','847-8925 Orci Av.'),(76,'Ray Roman','ligula.nullam@protonmail.edu','Ap #637-5937 Mauris. Ave'),(77,'Colton Combs','velit.pellentesque.ultricies@protonmail.ca','Ap #261-5132 Proin Ave'),(78,'Summer Roach','suspendisse@google.edu','Ap #634-8181 Suscipit Ave'),(79,'Yetta Aguilar','donec.non.justo@icloud.ca','306-4472 Vel St.'),(80,'Olympia Golden','sed.molestie@yahoo.edu','541-5609 Aliquam Rd.'),(81,'Tobias Mcdonald','ultricies@aol.com','469-7927 Odio. Road'),(82,'Moana Bowers','amet@google.couk','Ap #879-2720 Morbi Rd.'),(83,'Eleanor Hurley','mi@yahoo.com','401-1060 Scelerisque Ave'),(84,'Mufutau Mcintyre','risus.morbi.metus@protonmail.couk','Ap #340-9424 Tellus. St.'),(85,'Nerea Ray','nullam@outlook.edu','8127 Nunc Ave'),(86,'Giacomo Miranda','dui.augue@icloud.net','P.O. Box 162, 1591 Sed St.'),(87,'Brendan Martin','tristique.aliquet@protonmail.ca','110-6801 Arcu. Street'),(88,'Zoe Ellis','elit.fermentum.risus@protonmail.com','P.O. Box 599, 9168 Hendrerit. Street'),(89,'Marny Pearson','interdum.ligula@yahoo.edu','Ap #836-6269 Scelerisque Rd.'),(90,'Branden Hines','a.neque@outlook.couk','230-2844 Mauris Street'),(91,'Colette Hammond','libero.et.tristique@outlook.com','Ap #882-1253 Enim. St.'),(92,'Craig Murphy','dolor.vitae.dolor@outlook.edu','2339 Interdum. Street'),(93,'Merrill Holden','sagittis.duis@aol.org','Ap #173-3205 Ut Rd.'),(94,'Julie Mcclain','sodales.elit@protonmail.net','243-3022 Gravida Ave'),(95,'Randall Morin','turpis.aliquam@outlook.org','Ap #700-1624 Justo. St.'),(96,'Martin Jimenez','consectetuer.euismod@yahoo.net','Ap #671-8774 Ligula Rd.'),(97,'Carl Colon','cras.eget.nisi@protonmail.ca','937-9360 Tortor, St.'),(98,'Illana Kent','in.felis@hotmail.edu','660-1744 Libero St.'),(99,'Patience Becker','lorem.eu@hotmail.com','Ap #321-6857 Praesent Avenue'),(100,'Perry Whitney','enim.commodo@hotmail.couk','170-7445 Sed Road'),(101,'Clark Reynolds','donec.luctus@hotmail.couk','211-9844 Et St.'),(102,'Leonard Warner','senectus.et@hotmail.ca','Ap #148-6831 Erat Rd.'),(103,'Clio Myers','lacinia.orci.consectetuer@hotmail.ca','Ap #756-2581 Nunc Ave'),(104,'Hedda Duran','mollis.duis.sit@outlook.org','Ap #531-3337 Mauris St.'),(105,'Cedric Mack','dui@icloud.org','Ap #267-4633 At, Street'),(106,'Nora Frost','cum.sociis.natoque@aol.edu','6268 Adipiscing St.'),(107,'Rhea Rios','pede.sagittis@yahoo.net','824-8625 Eleifend Avenue'),(108,'Clementine Stephens','a.purus@yahoo.com','Ap #395-5900 Sit Road'),(109,'Blaze Marks','mauris.sapien.cursus@google.com','5637 Auctor Rd.'),(110,'Stacy Melendez','morbi@aol.edu','P.O. Box 291, 7740 Eget, St.'),(111,'Connor Blackwell','proin@protonmail.couk','P.O. Box 617, 1597 Condimentum. Rd.'),(112,'Joy Payne','lacus@hotmail.edu','Ap #249-8259 Dictum. Road'),(113,'Armand Chavez','dolor.dapibus.gravida@google.net','735-7466 Pellentesque Rd.'),(114,'Malcolm Landry','consequat@outlook.com','Ap #735-8479 Leo. St.'),(115,'Rose Bowen','vel@yahoo.couk','Ap #108-6488 Vehicula. Avenue'),(116,'Jameson Wynn','ut.cursus@icloud.ca','Ap #317-8540 Eu Street'),(117,'Thomas Dominguez','mollis.nec@aol.ca','P.O. Box 426, 8497 Egestas Street'),(118,'Geraldine Wright','ipsum.phasellus@aol.com','Ap #263-4467 Scelerisque Rd.'),(119,'Virginia Puckett','vulputate@hotmail.ca','699-7821 Est. Road'),(120,'Pamela Kemp','ipsum.phasellus@hotmail.net','5261 Tincidunt Av.'),(121,'Kiayada Haney','massa@outlook.net','Ap #450-455 Magna. Rd.'),(122,'Chester Estrada','mollis@aol.couk','381-2946 Massa St.'),(123,'Aristotle Roach','congue@icloud.net','132-6093 Orci Avenue'),(124,'Michelle Bentley','lorem.ipsum@aol.org','798-682 Mauris Ave'),(125,'Astra Parker','mauris.sagittis@aol.net','Ap #156-7831 Cum Rd.'),(126,'Hedy Battle','luctus@icloud.com','Ap #209-9736 Massa. St.'),(127,'Quintessa Cantrell','sed.est@hotmail.couk','756-5064 Semper Ave'),(128,'Fritz Macias','vitae.aliquam.eros@outlook.com','338-5093 Rutrum, Road'),(129,'Tiger Noel','quam.a.felis@yahoo.ca','Ap #247-527 Vehicula. St.'),(130,'Colby White','lobortis.tellus@icloud.net','3425 At Rd.'),(131,'Neve Byers','metus@hotmail.net','4038 Morbi Rd.'),(132,'Erin Daugherty','dapibus.gravida@icloud.ca','Ap #508-9028 Arcu. Rd.'),(133,'Regina Bradley','phasellus@aol.net','406-6657 Velit. St.'),(134,'Joseph Weeks','quisque.imperdiet.erat@yahoo.org','867-1792 Tempor Road'),(135,'Keith Clemons','at.velit@yahoo.com','Ap #603-9235 Donec Ave'),(136,'Hasad Holloway','aenean.euismod@hotmail.com','581-168 Eleifend, Road'),(137,'Harlan Wilkerson','et.eros.proin@protonmail.couk','6116 Mollis Avenue'),(138,'Samuel Schwartz','nam@yahoo.org','P.O. Box 262, 6922 Bibendum Rd.'),(139,'Mason Walton','duis.volutpat@protonmail.com','Ap #784-7471 Arcu. Rd.'),(140,'Kerry Turner','elit.a.feugiat@google.couk','425-5908 Curabitur Avenue'),(141,'Tobias Pacheco','elit.a.feugiat@hotmail.ca','P.O. Box 238, 7213 Pede. Avenue'),(142,'Henry Ramsey','adipiscing@yahoo.couk','390-7295 Mauris Rd.'),(143,'Baxter Mccormick','tincidunt.nibh.phasellus@aol.net','2621 Odio Avenue'),(144,'Fallon Logan','malesuada.vel@outlook.org','Ap #785-8517 Malesuada. St.'),(145,'Yuli Hull','magna.et@aol.couk','5810 Velit. Ave'),(146,'Gay Foster','congue.in@google.net','300 Felis Rd.'),(147,'Rajah Hood','blandit.viverra@yahoo.net','662-3047 Aenean Avenue'),(148,'Damian Cervantes','iaculis@outlook.org','313-9499 Turpis Ave'),(149,'Britanney Wise','semper@google.couk','Ap #511-977 Auctor Road'),(150,'Dawn Harmon','eleifend.non@icloud.org','983-6139 Felis, Rd.'),(151,'Freya Nixon','libero.est@icloud.couk','Ap #873-7501 Malesuada St.'),(152,'Quynn Owens','curae.donec@outlook.ca','P.O. Box 630, 3870 Sodales Avenue'),(153,'Zorita Curry','sit.amet@outlook.edu','P.O. Box 657, 451 Ac Av.'),(154,'Venus Schultz','nunc.quisque.ornare@hotmail.edu','6349 Bibendum Ave'),(155,'Urielle Duke','et.commodo@yahoo.ca','856 Phasellus Ave'),(156,'Gareth Wynn','molestie.sed@hotmail.couk','Ap #189-5569 Orci. Avenue'),(157,'Rana England','commodo.tincidunt.nibh@yahoo.com','5776 Orci. Rd.'),(158,'Halla Sexton','nisi@outlook.org','P.O. Box 910, 8107 Tempus St.'),(159,'Octavius Parrish','pede.cum.sociis@yahoo.com','9004 Eget, Road'),(160,'Flavia Owens','lacus.varius.et@protonmail.ca','P.O. Box 139, 1435 Fringilla Road'),(161,'Cynthia Guy','sed.dictum.eleifend@icloud.couk','939-356 Quis St.'),(162,'Alyssa Day','massa.vestibulum@icloud.couk','Ap #106-2204 Nulla Rd.'),(163,'Cullen Olsen','non.arcu@protonmail.ca','1018 Donec Road'),(164,'Wilma Terrell','tempor@google.org','846-6584 Eget Rd.'),(165,'Aladdin Chang','vestibulum.nec.euismod@hotmail.com','339-7303 Fusce Rd.'),(166,'Regina Watkins','ligula.aenean@outlook.net','919-1093 Consectetuer, St.'),(167,'Timothy Harrell','odio.auctor.vitae@outlook.net','Ap #183-2738 Eleifend Avenue'),(168,'Cassandra Kinney','rhoncus@aol.net','741-8757 Tristique Street'),(169,'Chancellor Mathis','nonummy@outlook.couk','2223 Ullamcorper, Road'),(170,'Walker Jarvis','id@yahoo.com','326-9741 Mus. Road'),(171,'Zeph Carpenter','risus.nunc@protonmail.com','Ap #776-5593 Et St.'),(172,'Dane Nieves','sed@google.edu','193-7816 Vulputate, Street'),(173,'Brock Kline','dolor.sit@google.net','Ap #933-2168 Pede, Av.'),(174,'Lacey Terry','dolor@aol.edu','Ap #726-4400 Erat Avenue'),(175,'Price Quinn','dolor@protonmail.com','Ap #264-1861 Odio Ave'),(176,'Lael Gill','sed@aol.ca','966-7747 Quis, Avenue'),(177,'Blossom Watkins','iaculis@icloud.com','289-3516 Et Avenue'),(178,'Erasmus Bailey','ligula.tortor@aol.com','Ap #274-1273 Donec St.'),(179,'Fitzgerald Morris','donec.egestas@aol.com','847-8030 Vel, Avenue'),(180,'Winter Ingram','aliquet.phasellus.fermentum@outlook.ca','765-5745 Mollis. Street'),(181,'Chloe Koch','sociis@outlook.ca','8711 Lacinia. Rd.'),(182,'Yolanda Huffman','duis.sit@protonmail.net','356-5141 Congue Av.'),(183,'Minerva Guerrero','urna@protonmail.edu','216-9205 Molestie St.'),(184,'Keelie Silva','nullam.suscipit@outlook.couk','Ap #619-8417 Faucibus Street'),(185,'Andrew Hinton','sodales@aol.edu','P.O. Box 169, 4034 Cum Av.'),(186,'Asher Haney','auctor.velit@icloud.couk','945-3240 Magnis Ave'),(187,'Kermit Clarke','elit.pharetra@protonmail.couk','409 Magna. St.'),(188,'Malachi Stevenson','cras.eget.nisi@aol.com','P.O. Box 897, 9135 Lacinia. Avenue'),(189,'Demetrius Sanford','in.sodales@google.couk','Ap #832-601 Etiam Street'),(190,'Colette Cantu','convallis.dolor.quisque@google.org','7142 Magnis St.'),(191,'Kermit Garza','tristique.pharetra@protonmail.com','751-3063 Eget Av.'),(192,'Tate Kirby','faucibus.morbi.vehicula@google.ca','247-8713 Eros Avenue'),(193,'Harriet Horne','dictum@hotmail.org','Ap #998-9181 Non, St.'),(194,'Lane Dunlap','velit@hotmail.com','Ap #137-6815 Donec St.'),(195,'Evan Morales','risus.in@outlook.net','386-1435 Lobortis St.'),(196,'Holmes Lawrence','tempus.lorem.fringilla@hotmail.com','4675 Integer Road'),(197,'Eve Mcleod','nunc@hotmail.ca','Ap #754-3632 Nec Rd.'),(198,'Driscoll Velasquez','faucibus@outlook.edu','852-9538 Feugiat. Road'),(199,'Yvette Pittman','nascetur.ridiculus@icloud.ca','476-333 Pede Ave'),(200,'Axel Shaw','nec.euismod@google.net','759-8595 Integer St.'),(201,'Erasmus Hodges','dolor.donec@protonmail.ca','7947 Sociis Rd.'),(202,'Reed Burke','et@google.org','853-5798 Eu Av.'),(203,'Cara Downs','et.magna.praesent@outlook.couk','Ap #918-2522 Neque. Rd.'),(204,'Ignatius Reese','nonummy.ut@yahoo.com','P.O. Box 738, 7617 Pede. St.'),(205,'Barclay Mcknight','neque@icloud.com','Ap #960-4674 Vestibulum, Avenue'),(206,'Meghan Knox','per@google.net','Ap #515-4406 Elit, Av.'),(207,'Silas Wynn','et.magnis.dis@google.org','Ap #632-2341 Non Ave'),(208,'Sharon Tucker','vulputate.velit.eu@protonmail.com','319-7271 Tristique Av.'),(209,'Ursula Rice','nisi@yahoo.org','619-8159 Curabitur Street'),(210,'Derek Holt','eu@google.edu','Ap #755-4681 Dolor Rd.'),(211,'Kyla Henry','velit.cras@yahoo.edu','Ap #254-5161 Phasellus Rd.'),(212,'Christian Nixon','nulla.integer@google.edu','8088 Pellentesque, Avenue'),(213,'Germaine Pate','aliquet.proin.velit@protonmail.ca','Ap #903-9332 Phasellus St.'),(214,'Reed Butler','sagittis.duis@yahoo.edu','398-6378 Neque Rd.'),(215,'Castor Johnson','quis.tristique@yahoo.com','262-1998 Ac Road'),(216,'Ulla Klein','felis.ullamcorper@aol.net','Ap #260-3707 Nulla Av.'),(217,'MacKensie Contreras','massa.integer@aol.org','Ap #620-3947 Posuere Road'),(218,'Jerome Strickland','lorem@hotmail.couk','183-3314 Aenean Av.'),(219,'Callie Logan','ac.orci@aol.couk','185-7541 Dolor Rd.'),(220,'Gail Randolph','accumsan@yahoo.couk','Ap #839-4946 Tellus Rd.'),(221,'Armand Rodriquez','vivamus.nibh@google.org','5555 Curae St.'),(222,'Amela Robbins','sed.nec@aol.com','Ap #570-4547 Tellus, Rd.'),(223,'Cadman Hewitt','eros.nam@aol.net','375-5214 Ipsum St.'),(224,'Ryan Kaufman','luctus.lobortis@yahoo.couk','3324 Elit, Av.'),(225,'MacKenzie Irwin','aliquet.magna@aol.net','P.O. Box 501, 109 Neque. Ave'),(226,'Stephanie Best','dui.quis@aol.edu','P.O. Box 242, 7105 Est, Rd.'),(227,'Kaye Pruitt','amet.dapibus@google.ca','937-745 Nisi. Road'),(228,'Axel Bolton','eu.arcu.morbi@aol.org','Ap #678-369 Pede Rd.'),(229,'Tatyana Rivas','lorem.fringilla@outlook.net','906-4485 Phasellus Rd.'),(230,'Coby Bradshaw','sagittis.placerat@google.org','P.O. Box 353, 2309 Nascetur Rd.'),(231,'Doris Carver','praesent@aol.couk','Ap #792-9777 Sem St.'),(232,'Maia Gibbs','aliquam.arcu@icloud.com','645-9043 Nunc Rd.'),(233,'Wyoming Bush','erat.volutpat.nulla@google.com','716-3082 Risus Av.'),(234,'Sage Wall','auctor.velit.eget@hotmail.edu','Ap #355-2264 Aliquam Rd.'),(235,'Nicholas Hatfield','eu.eros@yahoo.org','4638 Volutpat. St.'),(236,'Sigourney Carver','euismod.mauris@yahoo.com','P.O. Box 438, 5343 Lorem Road'),(237,'Dillon Mcleod','lectus@protonmail.ca','P.O. Box 515, 9549 Nec, Rd.'),(238,'Xenos Berry','sagittis.duis@hotmail.com','Ap #965-469 Suspendisse Rd.'),(239,'Joelle Case','in@google.couk','581-4924 Aliquam Avenue'),(240,'Julian Ferguson','magna.tellus@outlook.net','Ap #631-5282 Odio St.'),(241,'Iona Watts','ullamcorper.velit@protonmail.couk','Ap #277-7466 A St.'),(242,'Pamela Griffith','luctus.vulputate.nisi@outlook.couk','Ap #114-528 Accumsan Avenue'),(243,'Wing Cunningham','diam.sed.diam@aol.ca','Ap #476-7571 Quam Street'),(244,'Orli Fischer','elit@aol.net','341-9940 Taciti St.'),(245,'Rebecca Austin','molestie.pharetra@hotmail.net','Ap #907-1633 Sed Ave'),(246,'Ima Salinas','non.massa@outlook.net','Ap #943-9905 Tempor Av.'),(247,'Rooney Morrison','consectetuer.ipsum@aol.com','P.O. Box 982, 9091 Aliquet. Ave'),(248,'Athena Rowland','eget.ipsum.suspendisse@yahoo.couk','697-7631 Dapibus Ave'),(249,'Oren Stein','pellentesque.ut@google.edu','Ap #907-2293 Lectus St.'),(250,'Chase Buckner','in@protonmail.net','P.O. Box 135, 3200 Ac, Av.'),(251,'Naomi Henry','facilisis.magna.tellus@hotmail.net','847-3215 Amet Ave'),(252,'Asher Fuentes','magna.tellus@outlook.couk','675-8687 Ante, Street'),(253,'Glenna Ryan','at.lacus@aol.com','422-3389 Ornare St.'),(254,'Daria Parsons','ut.sagittis.lobortis@outlook.edu','Ap #461-5110 Hendrerit St.'),(255,'Fredericka Morgan','porta@icloud.org','467-9012 Mi. Road'),(256,'Joan Sutton','eu@hotmail.edu','Ap #951-4719 Fermentum Rd.'),(257,'Thaddeus Cabrera','amet@icloud.edu','P.O. Box 711, 7870 Facilisis Street'),(258,'Rina Bullock','imperdiet@protonmail.net','717-1828 Malesuada St.'),(259,'Amery Taylor','massa.integer@outlook.org','Ap #355-6693 Mauris Road'),(260,'Carolyn Hoover','quisque.libero@protonmail.com','Ap #257-3056 Sit St.'),(261,'Nevada Vincent','semper@protonmail.ca','203-1163 Tempus, Ave'),(262,'Abraham Bowers','sed.hendrerit.a@aol.net','260-1145 A, Ave'),(263,'Brianna Floyd','cum@outlook.org','P.O. Box 280, 4059 Erat Rd.'),(264,'Mannix Richmond','vel.convallis@yahoo.org','P.O. Box 628, 7303 Vulputate, St.'),(265,'Mikayla Ayers','malesuada.vel@yahoo.couk','1466 Fringilla Rd.'),(266,'Brent Gibson','et.libero@aol.edu','110-2746 Sapien, Ave'),(267,'Aline Britt','sagittis.placerat.cras@yahoo.org','872-8733 Vulputate, Ave'),(268,'Oleg Ewing','mauris.a@yahoo.com','1871 Molestie. Rd.'),(269,'Candice Wood','sed.pede@hotmail.net','Ap #516-1205 Vitae, St.'),(270,'Chaney Juarez','ut.eros@protonmail.edu','555-3974 Nec Ave'),(271,'Illana Copeland','aliquet.metus@hotmail.couk','378-1595 Congue. Rd.'),(272,'Xaviera Perry','mauris.eu@google.ca','P.O. Box 186, 833 Magnis Street'),(273,'Anika Holloway','donec.nibh@aol.couk','187-354 Nisi. Street'),(274,'Colt Oliver','curabitur.ut.odio@outlook.com','Ap #836-8384 Sit Avenue'),(275,'Ruth Poole','aliquet.phasellus@hotmail.ca','819-7707 Magnis Rd.'),(276,'Roary Martinez','nunc.sit@protonmail.com','2040 Accumsan Avenue'),(277,'Hoyt Carey','sem@yahoo.couk','Ap #597-4031 Sed Rd.'),(278,'Sawyer Velasquez','auctor.non@aol.com','P.O. Box 342, 7909 Integer Street'),(279,'Abbot Morales','gravida.praesent@aol.edu','Ap #967-933 Facilisis Street'),(280,'Driscoll Church','id.enim@outlook.couk','P.O. Box 541, 9888 Magna. Road');
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comentarios`
--

DROP TABLE IF EXISTS `Comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comentarios` (
  `id_comentario` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int DEFAULT NULL,
  `texto` text NOT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `id_pedido` (`id_pedido`),
  CONSTRAINT `Comentarios_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `Pedidos` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comentarios`
--

LOCK TABLES `Comentarios` WRITE;
/*!40000 ALTER TABLE `Comentarios` DISABLE KEYS */;
INSERT INTO `Comentarios` VALUES (1,72,'P'),(2,66,'R'),(3,49,'M'),(4,83,'P'),(5,46,'P'),(6,106,'P'),(7,108,'P'),(8,23,'R'),(9,120,'D'),(10,18,'M'),(11,24,'D'),(12,26,'M'),(13,101,'M'),(14,26,'M'),(15,77,'P'),(16,52,'B'),(17,8,'B'),(18,63,'M'),(19,80,'D'),(20,10,'M'),(21,49,'R'),(22,90,'M'),(23,3,'R'),(24,112,'R'),(25,140,'D'),(26,33,'R'),(27,83,'R'),(28,147,'B'),(29,134,'B'),(30,120,'R'),(31,32,'P'),(32,150,'P'),(33,56,'P'),(34,108,'R'),(35,14,'P'),(36,14,'P'),(37,106,'R'),(38,59,'M'),(39,105,'P'),(40,58,'P'),(41,113,'R'),(42,73,'M'),(43,144,'P'),(44,147,'M'),(45,95,'M'),(46,61,'R'),(47,70,'M'),(48,31,'P'),(49,48,'M'),(50,75,'M'),(51,136,'P'),(52,139,'M'),(53,21,'B'),(54,3,'P'),(55,138,'P'),(56,44,'P'),(57,110,'M'),(58,67,'M'),(59,89,'M'),(60,115,'D'),(61,115,'D'),(62,93,'P'),(63,84,'M'),(64,20,'D'),(65,77,'D'),(66,5,'R'),(67,135,'B'),(68,14,'M'),(69,27,'R'),(70,113,'D'),(71,21,'M'),(72,16,'D'),(73,69,'M'),(74,48,'M'),(75,66,'B'),(76,83,'D'),(77,66,'M'),(78,19,'M'),(79,100,'P'),(80,8,'R'),(81,8,'M'),(82,40,'R'),(83,64,'P'),(84,100,'R'),(85,45,'P'),(86,57,'D'),(87,75,'R'),(88,77,'R'),(89,112,'M'),(90,111,'M'),(91,132,'P'),(92,36,'R'),(93,60,'P'),(94,41,'R'),(95,70,'P'),(96,148,'M'),(97,118,'R'),(98,8,'P'),(99,64,'M'),(100,23,'P'),(101,98,'R'),(102,84,'B'),(103,65,'P'),(104,76,'R'),(105,23,'M'),(106,41,'M'),(107,117,'R'),(108,144,'M'),(109,107,'M'),(110,81,'B'),(111,83,'B'),(112,75,'D'),(113,62,'D'),(114,8,'R'),(115,10,'P'),(116,118,'R'),(117,72,'M'),(118,100,'M'),(119,20,'P'),(120,50,'P'),(121,87,'P'),(122,37,'P'),(123,16,'D'),(124,99,'M'),(125,138,'R'),(126,94,'R'),(127,121,'M'),(128,33,'B'),(129,25,'M'),(130,124,'M');
/*!40000 ALTER TABLE `Comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Detalles_Pedidos`
--

DROP TABLE IF EXISTS `Detalles_Pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Detalles_Pedidos` (
  `id_pedido` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_pedido`,`id_producto`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `Detalles_Pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `Pedidos` (`id_pedido`),
  CONSTRAINT `Detalles_Pedidos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `Productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Detalles_Pedidos`
--

LOCK TABLES `Detalles_Pedidos` WRITE;
/*!40000 ALTER TABLE `Detalles_Pedidos` DISABLE KEYS */;
INSERT INTO `Detalles_Pedidos` VALUES (13,84,197,26.00),(19,184,13,298.00),(24,73,140,488.00),(25,132,133,704.00),(27,44,115,518.00),(39,74,54,145.00),(42,62,37,40.00),(43,137,266,398.00),(52,14,93,789.00),(52,107,130,19.00),(67,119,165,157.00),(69,193,188,729.00),(75,49,290,570.00),(105,12,280,263.00),(108,71,7,430.00),(118,191,70,187.00),(121,84,46,477.00),(127,188,49,65.00),(128,11,104,84.00),(150,65,48,780.00),(151,11,20,3860.00);
/*!40000 ALTER TABLE `Detalles_Pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualiza_stock` AFTER INSERT ON `Detalles_Pedidos` FOR EACH ROW BEGIN
    UPDATE Productos
    SET stock = stock - NEW.cantidad
    WHERE id_producto = NEW.id_producto;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Historial_Stock`
--

DROP TABLE IF EXISTS `Historial_Stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Historial_Stock` (
  `id_historial` int NOT NULL AUTO_INCREMENT,
  `id_producto` int DEFAULT NULL,
  `stock_anterior` int DEFAULT NULL,
  `stock_nuevo` int DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_historial`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `Historial_Stock_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `Productos` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Historial_Stock`
--

LOCK TABLES `Historial_Stock` WRITE;
/*!40000 ALTER TABLE `Historial_Stock` DISABLE KEYS */;
INSERT INTO `Historial_Stock` VALUES (1,11,38,45,'2024-05-30 21:08:54'),(2,11,45,25,'2024-05-30 22:37:46');
/*!40000 ALTER TABLE `Historial_Stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pedidos`
--

DROP TABLE IF EXISTS `Pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pedidos` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_cliente` int DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `Pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `Clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pedidos`
--

LOCK TABLES `Pedidos` WRITE;
/*!40000 ALTER TABLE `Pedidos` DISABLE KEYS */;
INSERT INTO `Pedidos` VALUES (1,'2025-01-05',262),(2,'2025-05-02',219),(3,'2023-09-20',5),(4,'2023-05-30',19),(5,'2024-04-06',220),(6,'2024-12-18',21),(7,'2025-03-31',75),(8,'2024-06-01',195),(9,'2025-01-01',82),(10,'2023-07-04',60),(11,'2024-07-27',97),(12,'2023-12-24',161),(13,'2024-01-22',213),(14,'2024-04-11',31),(15,'2024-08-31',130),(16,'2023-09-22',127),(17,'2025-03-23',226),(18,'2024-07-05',243),(19,'2024-04-24',229),(20,'2024-07-26',12),(21,'2025-04-28',95),(22,'2024-07-31',243),(23,'2024-09-25',40),(24,'2025-04-26',120),(25,'2024-06-28',98),(26,'2024-02-21',41),(27,'2023-09-14',189),(28,'2024-02-02',158),(29,'2024-09-07',264),(30,'2025-04-17',117),(31,'2025-05-11',242),(32,'2024-05-03',173),(33,'2023-11-28',59),(34,'2023-09-01',182),(35,'2023-11-25',242),(36,'2023-07-08',174),(37,'2024-05-15',178),(38,'2024-11-11',76),(39,'2023-11-18',59),(40,'2023-07-10',176),(41,'2024-03-20',275),(42,'2024-02-09',101),(43,'2025-01-07',167),(44,'2025-03-26',121),(45,'2024-07-12',63),(46,'2025-02-24',49),(47,'2023-09-09',3),(48,'2023-10-13',152),(49,'2024-05-07',241),(50,'2024-04-14',274),(51,'2023-06-04',106),(52,'2025-04-03',34),(53,'2024-11-05',70),(54,'2024-02-11',55),(55,'2023-12-04',156),(56,'2023-07-17',198),(57,'2024-02-26',280),(58,'2023-06-08',130),(59,'2025-03-08',228),(60,'2025-02-14',160),(61,'2023-12-11',206),(62,'2024-08-05',182),(63,'2024-12-30',7),(64,'2024-07-10',54),(65,'2024-06-30',220),(66,'2023-09-18',134),(67,'2023-09-16',52),(68,'2024-09-30',202),(69,'2023-10-09',192),(70,'2024-11-14',50),(71,'2024-08-16',95),(72,'2024-06-12',20),(73,'2024-03-12',260),(74,'2024-11-15',95),(75,'2023-07-19',16),(76,'2024-02-20',214),(77,'2024-06-06',181),(78,'2023-10-08',55),(79,'2023-07-10',228),(80,'2024-06-06',131),(81,'2024-01-09',161),(82,'2024-07-27',54),(83,'2024-02-14',171),(84,'2024-07-05',268),(85,'2023-10-08',32),(86,'2023-12-28',7),(87,'2025-05-06',162),(88,'2024-07-21',91),(89,'2025-04-12',199),(90,'2024-05-24',249),(91,'2024-07-30',175),(92,'2024-07-16',87),(93,'2023-12-22',208),(94,'2025-03-16',74),(95,'2024-11-15',71),(96,'2024-07-19',57),(97,'2024-04-12',2),(98,'2024-02-24',11),(99,'2025-01-17',66),(100,'2025-05-05',271),(101,'2024-02-05',86),(102,'2025-03-17',49),(103,'2023-09-02',176),(104,'2024-04-11',207),(105,'2024-03-02',6),(106,'2024-08-30',275),(107,'2024-04-11',115),(108,'2023-09-29',222),(109,'2024-01-09',255),(110,'2025-02-27',88),(111,'2025-05-03',153),(112,'2025-02-02',59),(113,'2023-11-20',233),(114,'2024-11-23',199),(115,'2024-03-22',137),(116,'2025-03-24',5),(117,'2024-10-24',4),(118,'2024-01-03',104),(119,'2024-11-25',275),(120,'2024-05-29',149),(121,'2024-10-31',151),(122,'2024-04-19',123),(123,'2023-09-13',12),(124,'2024-09-14',136),(125,'2024-03-22',101),(126,'2025-05-18',88),(127,'2025-04-27',129),(128,'2024-04-25',126),(129,'2024-12-26',261),(130,'2025-03-17',219),(131,'2025-01-21',227),(132,'2025-03-06',38),(133,'2024-07-04',228),(134,'2025-01-12',75),(135,'2023-06-24',113),(136,'2023-08-29',194),(137,'2024-08-24',194),(138,'2024-06-05',247),(139,'2024-12-16',192),(140,'2023-06-06',222),(141,'2024-06-22',118),(142,'2024-04-09',94),(143,'2025-02-05',238),(144,'2023-10-10',168),(145,'2023-09-09',56),(146,'2024-10-18',104),(147,'2024-07-20',18),(148,'2024-08-02',237),(149,'2025-05-22',178),(150,'2025-02-15',88),(151,'2024-05-30',60);
/*!40000 ALTER TABLE `Pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Productos`
--

DROP TABLE IF EXISTS `Productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `precio` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  `id_categoria` int DEFAULT NULL,
  `id_proveedor` int DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `Productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `Categorias` (`id_categoria`),
  CONSTRAINT `Productos_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `Proveedores` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos`
--

LOCK TABLES `Productos` WRITE;
/*!40000 ALTER TABLE `Productos` DISABLE KEYS */;
INSERT INTO `Productos` VALUES (11,'tamao carta Carpeta de anillas tamao A4','',193.00,25,28,3),(12,'de 5000) Grapas de colores (caja de','',510.00,182,4,9),(13,'espiral tamao A4 Cuaderno de dibujo con','',356.00,151,3,3),(14,'blanca Goma de borrar de colores (paquete','',220.00,45,1,6),(15,'Papel para notas tamao 3x3 (paquete de','',527.00,138,27,2),(16,'punta redonda Tijeras de punta fina Grapadora','',500.00,152,26,3),(17,'con bolsillos Carpetas de colores surtidos (paquete','',529.00,5,14,8),(18,'de escritorio Grapas estndar (caja de 5000)','',125.00,166,9,9),(19,'de papel de dibujo tamao A3 (bloque','',388.00,60,12,6),(20,'de 500 hojas) Papel para impresora tamao','',239.00,75,9,8),(31,'bolgrafos y lpices Clips metlicos (paquete de','',462.00,60,15,5),(32,'contabilidad Agenda semanal de 2024 Calendario de','',188.00,178,4,3),(33,'Clips metlicos (paquete de 50) Clips de','',235.00,114,7,14),(34,'cm Regla de 15 cm Tijeras de','',112.00,43,21,10),(35,'de borrar de colores (paquete de 4)','',663.00,65,25,15),(36,'de palanca tamao carta Archivador de palanca','',315.00,16,29,8),(37,'y lpices Clips metlicos (paquete de 50)','',658.00,181,19,4),(38,'de colores (paquete de 12) Marcador fluorescente','',737.00,119,9,13),(39,'5) Archivador de palanca tamao carta Archivador','',671.00,139,20,10),(40,'Agenda telefnica Papel para fax (paquete de','',399.00,46,20,15),(41,'hojas) Papel milimetrado tamao A4 (paquete de','',408.00,50,28,2),(42,'(paquete de 100 hojas) Papel milimetrado tamao','',475.00,195,2,13),(43,'lquido Dispensador de cinta adhesiva Bandeja organizadora','',419.00,199,23,10),(44,'con hojas blancas Bloc de notas adhesivas','',301.00,109,3,9),(45,'3x3 (paquete de 500 hojas) Papel para','',620.00,20,18,6),(46,'adhesiva Bandeja organizadora de documentos Separadores de','',692.00,68,11,10),(47,'adhesiva transparente (rollo de 50 metros) Cinta','',689.00,7,10,12),(48,'Bloc de notas adhesivas (paquete de 100)','',689.00,162,11,4),(49,'Calendario de escritorio Planificador diario Agenda telefnica','',275.00,43,21,14),(50,'plstico Organizador de escritorio de madera Soporte','',715.00,0,6,5),(61,'(paquete de 500 hojas) Papel para dibujo','',61.00,47,15,2),(62,'HB Lpiz de colores (paquete de 12)','',391.00,187,24,10),(63,'fax (paquete de 100 hojas) Etiquetas adhesivas','',674.00,152,4,3),(64,'Archivador de palanca tamao carta Archivador de','',779.00,56,13,9),(65,'Clips metlicos (paquete de 50) Clips de','',660.00,98,24,3),(66,'Marcador fluorescente amarillo Marcador fluorescente verde Marcador','',608.00,17,27,11),(67,'dura Libreta de notas de bolsillo Bloc','',157.00,154,8,7),(68,'archivos colgantes Carpeta de plstico con cierre','',711.00,1,13,8),(69,'bolgrafos y lpices Clips metlicos (paquete de','',551.00,144,29,14),(70,'de 100 hojas) Libreta de notas con','',404.00,142,4,4),(71,'hojas) Papel para dibujo tamao carta (bloque','',795.00,135,13,14),(72,'de colores (paquete de 5 rollos) Pegamento','',778.00,165,7,13),(73,'(bloque de 50 hojas) Carpeta de proyectos','',498.00,140,15,8),(74,'de plstico para documentos (paquete de 100)','',462.00,43,29,1),(75,'colores (paquete de 100) Regla de 30','',196.00,199,14,14),(76,'metlicos (paquete de 50) Clips de colores','',687.00,8,20,5),(77,'50 hojas) Libro de contabilidad Agenda semanal','',522.00,151,17,14),(78,'para dibujo tamao carta (bloque de 50','',161.00,78,28,15),(79,'colgantes Carpeta de plstico con cierre Papel','',316.00,6,23,12),(80,'adhesivas (paquete de 100) Bloc de notas','',620.00,113,10,13),(81,'de cajn para documentos Estuche para tarjetas','',655.00,199,16,7),(82,'tamao A4 Carpeta de archivos colgantes Carpeta','',228.00,195,22,8),(83,'escritorio Grapas estndar (caja de 5000) Grapas','',334.00,64,7,6),(84,'tamao 5x8 Papel milimetrado tamao carta (paquete','',384.00,29,15,11),(85,'A4 Carpeta de archivos colgantes Carpeta de','',113.00,199,2,11),(86,'Goma de borrar de colores (paquete de','',615.00,83,1,5),(87,'100 hojas) Libreta de notas con tapa','',588.00,167,11,14),(88,'500 hojas) Papel para notas tamao 3x3','',646.00,19,24,14),(89,'notas tamao A5 Organizador de escritorio de','',752.00,127,9,10),(90,'Bloc de notas tamao carta Bloc de','',655.00,137,5,14),(91,'documentos (paquete de 100) Cinta adhesiva transparente','',361.00,166,18,10),(92,'con cierre Papel para impresora tamao carta','',161.00,14,16,13),(93,'de plstico Organizador de escritorio de madera','',166.00,51,10,12),(94,'papel para notas tamao 5x8 Papel milimetrado','',745.00,130,15,4),(95,'Calendario de escritorio Planificador diario Agenda telefnica','',549.00,180,12,2),(96,'dibujo tamao carta (bloque de 50 hojas)','',381.00,83,2,3),(97,'metlicos (paquete de 50) Clips de colores','',325.00,66,23,7),(98,'Carpetas de presentacin con bolsillos Carpetas de','',510.00,99,25,3),(99,'bolsillos Fundas de plstico para documentos (paquete','',36.00,96,18,5),(100,'de 10) Carpetas de presentacin con bolsillos','',96.00,17,6,1),(101,'tamao carta (paquete de 100 hojas) Papel','',311.00,45,8,7),(102,'(paquete de 500 hojas) Papel para impresora','',93.00,121,15,11),(103,'tapa dura Libreta de notas de bolsillo','',394.00,9,28,12),(104,'100 hojas) Libreta de notas con tapa','',501.00,188,3,10),(105,'escritorio Grapas estndar (caja de 5000) Grapas','',782.00,62,9,10),(106,'de palanca tamao A4 Archivador de cajn','',613.00,48,24,15),(107,'Libreta de notas con tapa dura Libreta','',354.00,54,14,4),(108,'con bolsillos Carpetas de colores surtidos (paquete','',297.00,134,11,15),(109,'plstico con cierre Papel para impresora tamao','',540.00,163,22,9),(110,'(paquete de 100) Cinta adhesiva transparente (rollo','',507.00,12,25,14),(111,'de notas adhesivas (paquete de 100) Bloc','',348.00,37,16,6),(112,'presentacin con bolsillos Carpetas de colores surtidos','',113.00,130,9,1),(113,'100) Regla de 30 cm Regla de','',204.00,101,23,11),(114,'con bolsillos Fundas de plstico para documentos','',64.00,28,11,15),(115,'adhesivas (paquete de 100) Bloc de notas','',196.00,196,19,5),(116,'para notas tamao 3x3 (paquete de 500','',121.00,146,27,6),(117,'de notas tamao A5 Organizador de escritorio','',291.00,161,10,14),(118,'A5 Organizador de escritorio de plstico Organizador','',453.00,90,16,8),(119,'(paquete de 100) Cinta adhesiva transparente (rollo','',274.00,178,9,12),(120,'metlicos (paquete de 50) Clips de colores','',279.00,173,23,13),(131,'de madera Soporte para bolgrafos y lpices','',284.00,123,20,10),(132,'espiral tamao A4 Cuaderno de dibujo con','',109.00,30,29,5),(133,'plstico Organizador de escritorio de madera Soporte','',354.00,148,29,4),(134,'de palanca tamao A4 Archivador de cajn','',358.00,178,25,9),(135,'notas tamao A5 Organizador de escritorio de','',457.00,124,2,11),(136,'blancas Bloc de notas adhesivas (paquete de','',416.00,145,22,9),(137,'para documentos Estuche para tarjetas de visita','',328.00,108,20,13),(138,'Bloc de notas tamao A5 Organizador de','',391.00,16,23,14),(139,'plstico Organizador de escritorio de madera Soporte','',141.00,154,20,1),(140,'30 cm Regla de 15 cm Tijeras','',159.00,131,14,14),(141,'Marcador fluorescente rosa Corrector lquido Portaminas Goma','',577.00,22,8,9),(142,'tamao A3 (bloque de 50 hojas) Libro','',411.00,73,14,2),(143,'Tijeras de punta fina Grapadora de escritorio','',309.00,156,12,8),(144,'rojo Lpiz HB Lpiz de colores (paquete','',466.00,9,29,6),(145,'Carpeta de plstico con cierre Papel para','',108.00,156,6,13),(146,'Agenda semanal de 2024 Calendario de escritorio','',318.00,177,16,10),(147,'Tijeras de punta redonda Tijeras de punta','',695.00,137,29,5),(148,'de madera Soporte para bolgrafos y lpices','',20.00,7,16,4),(149,'bolsillo Bloc de papel de dibujo tamao','',476.00,129,17,9),(150,'Cinta adhesiva de colores (paquete de 5','',155.00,40,22,6),(151,'de colores surtidos (paquete de 100 hojas)','',642.00,179,28,5),(152,'colores (paquete de 100) Regla de 30','',382.00,125,24,1),(153,'carta Cuaderno de espiral tamao A4 Cuaderno','',684.00,1,8,12),(154,'metros) Cinta adhesiva de colores (paquete de','',248.00,74,21,4),(155,'Cuaderno de espiral tamao A4 Cuaderno de','',774.00,151,19,14),(156,'(paquete de 5) Archivador de palanca tamao','',89.00,164,5,13),(157,'Clips de colores (paquete de 100) Regla','',695.00,95,24,1),(158,'colgantes Carpeta de plstico con cierre Papel','',215.00,71,5,6),(159,'tamao carta Bloc de notas tamao A5','',574.00,65,7,2),(160,'tamao carta Cuaderno de espiral tamao A4','',255.00,175,29,9),(161,'punta redonda Tijeras de punta fina Grapadora','',751.00,37,18,10),(162,'de 500 hojas) Papel para dibujo tamao','',140.00,160,9,6),(163,'de 100) Cinta adhesiva transparente (rollo de','',786.00,194,18,7),(164,'de 5) Archivador de palanca tamao carta','',585.00,43,26,2),(165,'adhesiva transparente (rollo de 50 metros) Cinta','',425.00,25,29,5),(166,'de papel para notas tamao 5x8 Papel','',534.00,68,3,12),(167,'de dibujo tamao A3 (bloque de 50','',369.00,157,17,5),(168,'organizadora de documentos Separadores de ndice (paquete','',551.00,119,14,7),(169,'1000) Carpeta de anillas tamao carta Carpeta','',752.00,11,26,3),(170,'50 hojas) Carpeta de proyectos con bolsillos','',153.00,86,17,8),(171,'15 cm Tijeras de punta redonda Tijeras','',441.00,84,20,12),(172,'para tarjetas de visita Papel de colores','',666.00,92,12,11),(173,'Libro de contabilidad Agenda semanal de 2024','',88.00,22,1,6),(174,'Carpeta de anillas tamao A4 Carpeta de','',228.00,31,10,5),(175,'palanca tamao carta Archivador de palanca tamao','',81.00,180,7,11),(176,'palanca tamao A4 Archivador de cajn para','',397.00,158,12,10),(177,'rollos) Pegamento en barra Pegamento lquido Dispensador','',108.00,199,28,6),(178,'adhesiva de colores (paquete de 5 rollos)','',402.00,41,10,8),(179,'tamao A4 Archivador de cajn para documentos','',452.00,50,18,8),(180,'5000) Grapas de colores (caja de 1000)','',491.00,15,25,12),(181,'de 50 hojas) Libro de contabilidad Agenda','',575.00,32,14,5),(182,'palanca tamao A4 Archivador de cajn para','',112.00,30,8,3),(183,'azul Bolgrafo negro Bolgrafo rojo Lpiz HB','',531.00,161,21,3),(184,'(bloque de 50 hojas) Carpeta de proyectos','',328.00,145,18,5),(185,'de 1000) Carpeta de anillas tamao carta','',469.00,85,29,8),(186,'en barra Pegamento lquido Dispensador de cinta','',700.00,158,2,15),(187,'Grapas estndar (caja de 5000) Grapas de','',551.00,186,29,5),(188,'hojas) Libro de contabilidad Agenda semanal de','',167.00,126,22,6),(189,'de espiral tamao carta Cuaderno de espiral','',112.00,163,7,10),(190,'presentacin con bolsillos Carpetas de colores surtidos','',727.00,106,15,8),(191,'para fax (paquete de 100 hojas) Etiquetas','',466.00,120,29,10),(192,'de 100) Etiquetas adhesivas de colores (paquete','',262.00,198,8,9),(193,'de punta redonda Tijeras de punta fina','',91.00,86,5,2),(194,'con tapa dura Libreta de notas de','',35.00,83,9,14),(195,'Lpiz HB Lpiz de colores (paquete de','',31.00,85,13,12),(196,'de 50) Clips de colores (paquete de','',177.00,143,29,7),(197,'para notas tamao 5x8 Papel milimetrado tamao','',560.00,99,27,3),(198,'(paquete de 500 hojas) Papel para impresora','',649.00,28,5,2),(199,'A4 Cuaderno de dibujo con hojas blancas','',645.00,120,17,7),(200,'Carpeta de proyectos con bolsillos Fundas de','',476.00,92,29,14);
/*!40000 ALTER TABLE `Productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarHistorialStock` BEFORE UPDATE ON `Productos` FOR EACH ROW BEGIN
    -- Solo registrar cambios si el stock realmente cambia
    IF OLD.stock != NEW.stock THEN
        INSERT INTO Historial_Stock (id_producto, stock_anterior, stock_nuevo)
        VALUES (OLD.id_producto, OLD.stock, NEW.stock);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Proveedores`
--

DROP TABLE IF EXISTS `Proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedores`
--

LOCK TABLES `Proveedores` WRITE;
/*!40000 ALTER TABLE `Proveedores` DISABLE KEYS */;
INSERT INTO `Proveedores` VALUES (1,'ABC Suministros de Oficina','John Smith'),(2,'EcoPapel S.A.','Maria Garcia'),(3,'Tech Solutions Inc.','Michael Johnson'),(4,'Quality Pens Ltd.','Emily Brown'),(5,'PaperMaster Corp.','Daniel Martinez'),(6,'Office Depot','Jessica Davis'),(7,'GreenStationery Ltd.','Alex Wilson'),(8,'Creative Supplies Co.','Samantha Taylor'),(9,'Printers Unlimited','Chris Thompson'),(10,'Swift Packaging Solutions','Amanda Robinson'),(11,'Office Solutions Ltd.','Ryan White'),(12,'TechInk Supplies','Olivia Lee'),(13,'PaperWorks Inc.','Joshua Garcia'),(14,'Global Office Products','Sophia Martinez'),(15,'Innovative Stationery','Ethan Johnson');
/*!40000 ALTER TABLE `Proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `VistaNumeroProductosPorCategoria`
--

DROP TABLE IF EXISTS `VistaNumeroProductosPorCategoria`;
/*!50001 DROP VIEW IF EXISTS `VistaNumeroProductosPorCategoria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `VistaNumeroProductosPorCategoria` AS SELECT 
 1 AS `categoria`,
 1 AS `numero_productos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `VistaTotalIngresosPorProveedor`
--

DROP TABLE IF EXISTS `VistaTotalIngresosPorProveedor`;
/*!50001 DROP VIEW IF EXISTS `VistaTotalIngresosPorProveedor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `VistaTotalIngresosPorProveedor` AS SELECT 
 1 AS `proveedor`,
 1 AS `total_ingresos`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'Tienda'
--
/*!50003 DROP FUNCTION IF EXISTS `CalcularTotalPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalcularTotalPedido`(id_pedido INT) RETURNS decimal(10,2)
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(precio * cantidad) INTO total
    FROM Detalles_Pedidos
    WHERE id_pedido = id_pedido;
    RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `ObtenerStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ObtenerStock`(id_producto INT) RETURNS int
BEGIN
    DECLARE stock_actual INT;
    SELECT stock INTO stock_actual
    FROM Productos
    WHERE id_producto = id_producto;
    RETURN stock_actual;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarProducto`(
    IN p_id_producto INT
)
BEGIN
    -- Eliminar detalles de pedidos asociados con el producto
    DELETE FROM Detalles_Pedidos
    WHERE id_producto = p_id_producto;
    
    -- Eliminar el producto
    DELETE FROM Productos
    WHERE id_producto = p_id_producto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RegistrarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RegistrarCliente`(
    IN p_nombre VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_direccion TEXT
)
BEGIN
    INSERT INTO Clientes (nombre, email, direccion)
    VALUES (p_nombre, p_email, p_direccion);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `VerificarYActualizarStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `VerificarYActualizarStock`(
    IN p_id_producto INT,
    IN p_umbral INT,
    IN p_nuevo_stock INT
)
BEGIN
    DECLARE stock_actual INT;
    -- Utilizar la funcin ObtenerStock para obtener el stock actual del producto
    SET stock_actual = ObtenerStock(p_id_producto);
    -- Verificar si el stock actual es menor que el umbral
    IF stock_actual < p_umbral THEN
        -- Actualizar el stock a un nuevo valor
        UPDATE Productos
        SET stock = p_nuevo_stock
        WHERE id_producto = p_id_producto;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `VistaNumeroProductosPorCategoria`
--

/*!50001 DROP VIEW IF EXISTS `VistaNumeroProductosPorCategoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VistaNumeroProductosPorCategoria` AS select `c`.`nombre` AS `categoria`,count(`p`.`id_producto`) AS `numero_productos` from (`Categorias` `c` join `Productos` `p` on((`c`.`id_categoria` = `p`.`id_categoria`))) group by `c`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `VistaTotalIngresosPorProveedor`
--

/*!50001 DROP VIEW IF EXISTS `VistaTotalIngresosPorProveedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VistaTotalIngresosPorProveedor` AS select `pr`.`nombre` AS `proveedor`,sum((`dp`.`cantidad` * `dp`.`precio`)) AS `total_ingresos` from ((`Proveedores` `pr` join `Productos` `p` on((`pr`.`id_proveedor` = `p`.`id_proveedor`))) join `Detalles_Pedidos` `dp` on((`p`.`id_producto` = `dp`.`id_producto`))) group by `pr`.`nombre` order by `total_ingresos` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-30 23:29:09
