-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: internet_management
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('admin@varnet|127.0.0.1','i:1;',1739145067),('admin@varnet|127.0.0.1:timer','i:1739145067;',1739145067),('spatie.permission.cache','a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:28:{i:0;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:9:\"dash-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:11:\"dash-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:9:\"dash-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:11:\"dash-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:12:\"account-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:5;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:14:\"account-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:6;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:12:\"account-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:14:\"account-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:8;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:13:\"settings-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:15:\"settings-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:13:\"settings-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:15:\"settings-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:19:\"MaintenanceLog-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:21:\"MaintenanceLog-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:19:\"MaintenanceLog-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:21:\"MaintenanceLog-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:12:\"reports-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:17;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:14:\"reports-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:18;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:12:\"reports-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:14:\"reports-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:20;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:14:\"collector-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:21;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:16:\"collector-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:14:\"collector-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:16:\"collector-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:9:\"role-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:11:\"role-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:9:\"role-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:11:\"role-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:3:\"acc\";s:1:\"c\";s:3:\"web\";}}}',1739231445);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Fiber','Halba Akkar','81440013',NULL,'2025-01-13 06:34:47','2025-01-13 06:34:47'),(2,'SV','Mashha Akkar',NULL,NULL,'2025-01-13 06:34:56','2025-01-13 06:34:56'),(3,'WN','Tripoli',NULL,NULL,'2025-01-13 06:35:07','2025-01-13 06:35:07'),(4,'CloudeSP',NULL,NULL,NULL,'2025-01-13 06:35:17','2025-01-13 06:35:17');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_infos`
--

DROP TABLE IF EXISTS `company_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_infos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `report_name` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_infos`
--

LOCK TABLES `company_infos` WRITE;
/*!40000 ALTER TABLE `company_infos` DISABLE KEYS */;
INSERT INTO `company_infos` VALUES (1,'VARnet','VARnet',NULL,'Mashha Akkar','76999685',NULL,'2025-01-13 06:33:46','2025-01-13 06:33:46');
/*!40000 ALTER TABLE `company_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connection_points`
--

DROP TABLE IF EXISTS `connection_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `connection_points` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `station` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connection_points`
--

LOCK TABLES `connection_points` WRITE;
/*!40000 ALTER TABLE `connection_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `connection_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `connection_point_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customers_connection_point_id_foreign` (`connection_point_id`),
  CONSTRAINT `customers_connection_point_id_foreign` FOREIGN KEY (`connection_point_id`) REFERENCES `connection_points` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=1156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (20,'osman8annom','عثمان غنوم','','','مشحا',NULL,NULL,NULL),(21,'rdwanallouch','رضوان علوش ابو ابراهيم','','','مشحا العبارة',NULL,NULL,NULL),(22,'ahmadabdelhamid','أحمد عبدالحميد','7065025','','',NULL,NULL,NULL),(23,'houssamkhaled','حسام خالد صهر عدنان ناجي علوش','','','مشحا تحت مبنى البلدية',NULL,NULL,NULL),(24,'raghebissa','راغب العيسى','','','مشحا عند ام سليمان',NULL,NULL,NULL),(25,'khaldounhawach','خلدون الحواش','','','مشحا عين الغز',NULL,NULL,NULL),(26,'aymanzohbi','الاستاذ ايمن اسماعيل الزعبي','','','مشحا الضهر',NULL,NULL,NULL),(27,'malkallouch','Malek Allouch','','','',NULL,NULL,NULL),(28,'omar8anom','عمر غنوم','','','مشحا',NULL,NULL,NULL),(29,'tarekbaroud','طارق بارود','','','مزارع بيت رباح علوش',NULL,NULL,NULL),(30,'majdjassem','ماجد الجاسم الحمود','','','حيزوق مزارع قدور',NULL,NULL,NULL),(31,'basseltaleb','bassel taleb','','','',NULL,NULL,NULL),(32,'jouhaydazohbi','جهيدة الزعبي','','','عدبل',NULL,NULL,NULL),(33,'omaralhamad','عمر الحمد ابو محمد','','','مشحا فوق سليمان للانارة',NULL,NULL,NULL),(34,'mhmdyoussef','محمد ابن ابو يوسف','70593453','','مشحا جنب اجبان.و البان',NULL,NULL,NULL),(35,'sa3idesber','سعيد اسبر','','','مشحا عين الغز',NULL,NULL,NULL),(36,'sltanafandi','سلطان أفندي','','','عين أحمد مزارع بيت خليل',NULL,NULL,NULL),(37,'abdzohbi','Abdurahman Alzoabi','','','',NULL,NULL,NULL),(38,'bilalhassansanawi','بلال حسن ضناوي','71042667','','مشحا الضهر',NULL,NULL,NULL),(39,'omarzohbi','Omar Zohbi','76999685','','',NULL,NULL,NULL),(40,'VARaboudizohbi','عبدالرزاق الزعبي','71749816','','',NULL,NULL,NULL),(41,'abowa2elallouch','عبدالله صلاح علوش ابو وائل','','','مشحا مفرق الضهر',NULL,NULL,NULL),(42,'atefdannawi','الاستاذ عاطف ضناوي ابو خالد','70268653','','مشحا جنب شركة الغاز القديمة',NULL,NULL,NULL),(43,'mahmoudabdrazak','محمود عبدالرزاق الزعبي','','','مشحا قبل محطة سميح',NULL,NULL,NULL),(44,'mahmoudhawach','mahmoud hawach','','','',NULL,NULL,NULL),(45,'rabi3massri','ربيع المصري','76019164','','مشحا مقابل جامع المنصور',NULL,NULL,NULL),(46,'albarich','bilal alzoabi barich','','','',NULL,NULL,NULL),(47,'jalildiab','جليل دياب','70945062','','عدبل. فوق مفرق مشحا',NULL,NULL,NULL),(48,'mhdnasservar','محمد الناصر','71214259','','مزرعة بلدة',NULL,NULL,NULL),(49,'mhdbr8ayli','mhd ber8ayle','','','',NULL,NULL,NULL),(50,'fadidiab','فادي دياب','3386155','','عدبل البيت فوق المحطة البنزين',NULL,NULL,NULL),(51,'marwanallouchsy','مروان علوش','','','حيزوق',NULL,NULL,NULL),(52,'wajdicell','وجدي الزعبي','70264025','','مشحا محل تلفونات',NULL,NULL,NULL),(53,'abojihadzohbi','الحاج ابو جهاد الزعبي','','','مشحا عين الصفصافة',NULL,NULL,NULL),(54,'abderahimz','عبدالرحيم الزعبي','3590121','','مشحا',NULL,NULL,NULL),(55,'abosebhi','ابو صبحي محمد','','','مزرعة بلدة الشيخ الفقاسة',NULL,NULL,NULL),(57,'salahzohbi','صلاح الزعبي ابو سيف','','','مشحا الضهر بناية ام عبدو',NULL,NULL,NULL),(58,'mrsbakkar','الاستاذ بكار بكار','','','مشحا مفرق الضهر',NULL,NULL,NULL),(59,'abomhd3','ابو محمد غازي الزعبي','','','مشحا',NULL,NULL,NULL),(60,'souhaybyoussef','صهيب يوسف ابن خالتي','','','حلبا',NULL,NULL,NULL),(61,'abdghafardannawi','عبدالغفار ضناوي','','','مشحا جنب حسين اللحام',NULL,NULL,NULL),(62,'waelalzoabi','وائل الزعبي','71627778','','مشحا',NULL,NULL,NULL),(63,'mhmdossman','محمد عثمان اخ عبدالمجيد','','','مشحا الضهر',NULL,NULL,NULL),(64,'bilalrahif','بلال رهيف شعبان','','','مشحا كروم نصارة',NULL,NULL,NULL),(65,'faysaltarabayeh','فيصل طربية','','','',NULL,NULL,NULL),(67,'msbahhachach','مصباح حشاش','','','مشحا مشاريع محمد حسين',NULL,NULL,NULL),(68,'aboayoub','نجدت الزعبي','','','',NULL,NULL,NULL),(69,'hanadiabhome','حنا دياب البيت','','','عدبل طريق العام تحت صيدلية ابراهيم',NULL,NULL,NULL),(120,'mhmdjamal','محمد جمال غنوم','71833934','','مشحا حارة بيت جديدة',NULL,NULL,NULL),(171,'ahmadmostafaalzohbi','أحمد مصطفى الزعبي','3868912','','مشحا',NULL,NULL,NULL),(690,'houssamkhaled','حسام خالد صهر عدنان ناجي علوش','','','مشحا تحت مبنى البلدية',NULL,NULL,NULL),(691,'raghebissa','راغب العيسى','','','مشحا عند ام سليمان',NULL,NULL,NULL),(692,'khaldounhawach','خلدون الحواش','','','مشحا عين الغز',NULL,NULL,NULL),(696,'tarekbaroud','طارق بارود','','','مزارع بيت رباح علوش',NULL,NULL,NULL),(697,'majdjassem','ماجد الجاسم الحمود','','','حيزوق مزارع قدور',NULL,NULL,NULL),(702,'sa3idesber','سعيد اسبر','','','مشحا عين الغز',NULL,NULL,NULL),(703,'sltanafandi','سلطان أفندي','','','عين أحمد مزارع بيت خليل',NULL,NULL,NULL),(707,'VARaboudizohbi','عبدالرزاق الزعبي','71749816','','',NULL,NULL,NULL),(708,'abowa2elallouch','عبدالله صلاح علوش ابو وائل','','','مشحا مفرق الضهر',NULL,NULL,NULL),(709,'atefdannawi','الاستاذ عاطف ضناوي ابو خالد','70268653','','مشحا جنب شركة الغاز القديمة',NULL,NULL,NULL),(712,'rabi3massri','ربيع المصري','76019164','','مشحا مقابل جامع المنصور',NULL,NULL,NULL),(715,'mhdnasservar','محمد الناصر','71214259','','مزرعة بلدة',NULL,NULL,NULL),(716,'mhdbr8ayli','mhd ber8ayle','','','',NULL,NULL,NULL),(718,'marwanallouchsy','مروان علوش','','','حيزوق',NULL,NULL,NULL),(720,'abojihadzohbi','الحاج ابو جهاد الزعبي','','','مشحا عين الصفصافة',NULL,NULL,NULL),(721,'abderahimz','عبدالرحيم الزعبي','3590121','','مشحا',NULL,NULL,NULL),(723,'alialsayed','علي السيد','','','السويسة',NULL,NULL,NULL),(724,'salahzohbi','صلاح الزعبي ابو سيف','','','مشحا الضهر بناية ام عبدو',NULL,NULL,NULL),(725,'mrsbakkar','الاستاذ بكار بكار','','','مشحا مفرق الضهر',NULL,NULL,NULL),(726,'abomhd3','ابو محمد غازي الزعبي','','','مشحا',NULL,NULL,NULL),(728,'abdghafardannawi','عبدالغفار ضناوي','','','مشحا جنب حسين اللحام',NULL,NULL,NULL),(730,'mhmdossman','محمد عثمان اخ عبدالمجيد','','','مشحا الضهر',NULL,NULL,NULL),(732,'faysaltarabayeh','فيصل طربية','','','',NULL,NULL,NULL),(733,'hanadiab','حنا دياب','','','ضهر نصار مطعم الغلامور',NULL,NULL,NULL),(736,'hanadiabhome','حنا دياب البيت','','','عدبل طريق العام تحت صيدلية ابراهيم',NULL,NULL,NULL),(737,'mhmdjamal','محمد جمال غنوم','71833934','','مشحا حارة بيت جديدة',NULL,NULL,NULL),(739,'abdllrahmanmas3oud','عبدالرحمن سمير مسعود','','','مشحا الساحة',NULL,NULL,NULL),(740,'khaledadour','خالد قدور عم وجدي','','','حيزوق',NULL,NULL,NULL),(741,'haydarslayman','الاستاذ حيدر سليمان','','','مشحا',NULL,NULL,NULL),(742,'majdallouch','majed shehadeh','76130439','','جار مدين مفرق الضهر',NULL,NULL,NULL),(743,'anaszohbi','عبدالرزاق الزعبي الحداد','','','مشحا اخ الشيخ عبدالقاد',NULL,NULL,NULL),(744,'varosmanchaaban','ابو عبدالرحمن عثمان شعبان','','','مشحا المغراق',NULL,NULL,NULL),(745,'tarekallouch','طارق علوش','3152434','','مشحا الرحبانة',NULL,NULL,NULL),(746,'shawkizohbi1','شوقي الزعبي ابو عبدالحق','','','مشحا كروم نصارة',NULL,NULL,NULL),(747,'mhdjdaydeh','mhd jdaydeh','','','daher nassar',NULL,NULL,NULL),(748,'dr.oussamapharm','اسامة الزعبي','','','مشحا الصيدلية',NULL,NULL,NULL),(749,'alhachemsuper','هاشم هاشم','79180236','','عدبل',NULL,NULL,NULL),(750,'anaszohbihome','الاستاذ أنس عبدالقادر الزعبي','','','مشحا مفرق الضهر جنب محطة سميح',NULL,NULL,NULL),(751,'waelaboarab','وائل ملكة الزعبي','','','مشحا جنب محطة وليد كوجا',NULL,NULL,NULL),(752,'goergebonji','جورج البونجي','','','عدبل جنب العين',NULL,NULL,NULL),(753,'oussamakhalil','اسامة خليل الزعبي','','','مشحا كروم نصارة',NULL,NULL,NULL),(754,'aliasaadallouch','علي اسعد علوش','','','مشحا العبارة',NULL,NULL,NULL),(755,'marwanmer3i','الرائد مروان مرعي بدر حمزة','','','تحت مستشفى الحكومي',NULL,NULL,NULL),(756,'abderahimzohbihyz','عبدالرحيم الزعبي حيزوق','','','حيزوق',NULL,NULL,NULL),(757,'ihaballouch','إيهاب علوش','','','',NULL,NULL,NULL),(758,'imadibech','عماد ايبش','','','مشحا مشروع محمد حسين',NULL,NULL,NULL),(759,'na3imaboud','نعيم عبود','','','مشحا فوق ماجد طاهر',NULL,NULL,NULL),(760,'mer3ijdaydeh','مرعي جديدة','','','',NULL,NULL,NULL),(761,'khaledmhmd','خالد المحمد','','','المزرعة مشروع الشيخ',NULL,NULL,NULL),(762,'aliyoussef','علي يوسف','','','البوالدة',NULL,NULL,NULL),(763,'mhmdchaker','محمد شاكر ابو وسام','','','مشحا العبارة',NULL,NULL,NULL),(764,'baderosman','Bader Alloush','','','Mashha',NULL,NULL,NULL),(765,'abooudaykhalil','ابو عدي خليل','71674782','','مشحا جنب ماجد طاهر',NULL,NULL,NULL),(766,'ronynabbout','rony nabout','','','',NULL,NULL,NULL),(767,'abomhmdaliallouch','ابو محمد علي علوش اخ رضوان','','','مشحا العبارة',NULL,NULL,NULL),(768,'aboumajedvar','ابو ماجد الحسن','','','عدبل',NULL,NULL,NULL),(769,'samercafe','سامر حمزة','','','القهوة مشحا',NULL,NULL,NULL),(770,'abdcafe1','Abdallah cafe','','','',NULL,NULL,NULL),(771,'houssamrifai','حسام الرفاعي','','','عدبل الزفاتة',NULL,NULL,NULL),(772,'mmcmashha','Mashha medical center','','','',NULL,NULL,NULL),(773,'khaledhassanilat','خالد الحسن','','','عدبل',NULL,NULL,NULL),(774,'khaledabdallah','خالد عبدالله','','','',NULL,NULL,NULL),(775,'abbaszohbi','عباس الزعبي ابو عمر','','','حيزوق عين علي',NULL,NULL,NULL),(776,'chei5khaleddarwich','الشيخ خالد درويش','','','حيزوق',NULL,NULL,NULL),(777,'mahmoudtaher','محمود طاهر','','','مشحا الضهر',NULL,NULL,NULL),(778,'abomhd5en','ابو محمد الخن','','','مشحا الحارة',NULL,NULL,NULL),(779,'mhmdsalahallouch','محمد صلاح علوش','','','عين الغز',NULL,NULL,NULL),(780,'mhmderhani','محمد القرحاني','','','السويسة',NULL,NULL,NULL),(781,'chawkidaher','الشيخ شوفي ضاهر','','','حيزوق عين علي',NULL,NULL,NULL),(782,'mhmdhssien','محمد خضر حسين','','','حيزوق',NULL,NULL,NULL),(783,'abdshehadeh','خلدون شحادة','','','مشحا',NULL,NULL,NULL),(784,'mhdchaker','محمد شاكر ابو يزن','','','مشحا العبارة',NULL,NULL,NULL),(785,'slynnwahibchhadi','سليمان وهيب شحادة','','','مشحا الحارة',NULL,NULL,NULL),(786,'ridamasri','rida masr','','','',NULL,NULL,NULL),(787,'slaymancafe','ابو بشار القهوة','','','مشحا الساحة',NULL,NULL,NULL),(788,'mrmouhamad','Mouhamad abdulkader z','70179965','','Machha',NULL,NULL,NULL),(789,'hilalchaaban','هلال شعبان','','','',NULL,NULL,NULL),(790,'ahmadtaher','احمد طاهر','70777865','','مشحا',NULL,NULL,NULL),(791,'oudayfiras','عدي فراس الحلاق','','','مشحا جنب ابو رواد ضناوي',NULL,NULL,NULL),(792,'alinasseryahya','علي ناصر يحيى','','','مشحا حارة بيت اسرائيل',NULL,NULL,NULL),(793,'nawafzohbi','نواف الزعبي ابو محمد','','','مشحا',NULL,NULL,NULL),(794,'hassanzohbi','حسن الزعبي ابن ابو حسين ابو علي حسن','70439638','','مشحا حارة يت جديدة',NULL,NULL,NULL),(795,'aboislamzohbi','ابو اسلام الزعبي','','','مشحا الساحة',NULL,NULL,NULL),(796,'ahmadsalahldin','نقيب ننقيب','','','',NULL,NULL,NULL),(797,'abdjassem','اسامة الجاسم','','','تحت بيت خلف',NULL,NULL,NULL),(798,'abdllkadermatar','عبدالقادر خالد مطر','','','مشحا عين الدلبة',NULL,NULL,NULL),(799,'ahmadtalalzohbi','ahmad talal','','','',NULL,NULL,NULL),(800,'rabi3hssien','ربيع الحسين','','','مشحا فوق محطة البنزين',NULL,NULL,NULL),(801,'alijasem','علي الجاسم','','','ضهر نصر مقابل ابو فياض',NULL,NULL,NULL),(802,'khderabdkarim','خضر عبدالكريم','','','',NULL,NULL,NULL),(803,'abohafza','ابو حفصى الرفاعي البيت','','','مزرعة بلدة',NULL,NULL,NULL),(804,'wajihalzohbi','وجيه الزعبي','','','حيزوق',NULL,NULL,NULL),(805,'walidhazuri','وليد حزوري','3524456','','ضهر نصار عند الهاشم جنب الحاجز',NULL,NULL,NULL),(806,'mhmdesmailzohbi','محمد اسماعيل الزعبي','','','مشحا كروم نصارة',NULL,NULL,NULL),(807,'abderauf','عبدالرؤوف الزعبي ابن ابو راغب','','','مشحا',NULL,NULL,NULL),(808,'mhmdlsawah','محمد السواح','70124517','','مشحا عند نصر ضناوي جارنا',NULL,NULL,NULL),(809,'amirallouch','أمير علوش','70587123','','مشحا فوق العبارة',NULL,NULL,NULL),(810,'ahlitest','test test','','','',NULL,NULL,NULL),(811,'abojalalmasri','مصطفى المصري ابو جلال','','','حيزوق',NULL,NULL,NULL),(812,'yassinchamo','ياسين شمو ابو هيثم','','','حيزوق اول حيزوق',NULL,NULL,NULL),(813,'tahanahli','طه نحلي ابو رضوان','','','حيزوق عين السكر',NULL,NULL,NULL),(814,'chaabanchaaban','ابو طه شعبان','','','مشحا المغراق',NULL,NULL,NULL),(815,'aymanna3im2','ايمن نعيم شحادة','','','مشحا جنب بيت عامر علوش',NULL,NULL,NULL),(816,'barhumdannawi','ابراهيم محمد سليمان ضناوي','','','مشحا الضهر جنب عواميد الارسال',NULL,NULL,NULL),(817,'rachidhassan','رشيد الحسن','','','عدبل فوق المحطة البنزين',NULL,NULL,NULL),(818,'wa2el2','wael zohbi','','','',NULL,NULL,NULL),(819,'mhdchaaban1','mhd chaaban','','','',NULL,NULL,NULL),(820,'rabi3hamzi','ربيع حمزة','','','مشحا',NULL,NULL,NULL),(821,'khaledyahya','خالد عدنان يحيى','','','مشحا الحارة',NULL,NULL,NULL),(822,'mhdtaher2','عتاب خضر','','','مشحا الساحة',NULL,NULL,NULL),(823,'ahmadfayad','أحمد فياض','','','',NULL,NULL,NULL),(824,'mahmudallouch','محمود علوش الدركي','','','مشحا',NULL,NULL,NULL),(825,'jassemmoussa','جاسم موسى','','','مزرعة بلدة مشروع الشيخ',NULL,NULL,NULL),(826,'marwachamo','مروى شمو','','','حيزوق حارة بيت شمو',NULL,NULL,NULL),(827,'abdllrahmanzohbi','عبدالرحمن الزعبي ابو العبد الحلونجي','','','مشحا جارنا',NULL,NULL,NULL),(828,'abobacharchhadihome','ابو بشار شحادة البيت','','','مشحا',NULL,NULL,NULL),(829,'mouhamadmasri','محمد المصري','','','حيزوق جنب المدرسة القديمة',NULL,NULL,NULL),(830,'ahmadyahyazohbi','احمد يحيى غنوم','','','مشحا مقابل ابو رواد',NULL,NULL,NULL),(831,'ziyadhawach','زياد الحواش','','','مشحا تحت العبارة',NULL,NULL,NULL),(832,'asaadsm3an','اسعد سمعان','71684567','','عدبل جنب صيدلية ابراهيم',NULL,NULL,NULL),(833,'najiallouch','الشيخ ناجي علوش','','','مشحا فوق العبارة',NULL,NULL,NULL),(834,'fadizohbi','فادي الزعبي الميكانيكي','','','مشحا الضهر',NULL,NULL,NULL),(835,'oussamajdaydeh','أسامه جديدة','','','',NULL,NULL,NULL),(836,'omardibabotaha','بيت المرحوم عمر ديب','','','اول مشحا',NULL,NULL,NULL),(837,'yahyazohbihakim','يحيى الزعبي الحكيم Abo baraa','','','مشحا حارة العين',NULL,NULL,NULL),(838,'omarchaker','عمر شاكر','','','مشحا العبارة',NULL,NULL,NULL),(839,'aboomarchhadi','خالد شحادة ابو عمر عم خالي وليد','','','مشحا حارة بيت اسرائيل',NULL,NULL,NULL),(840,'samirasem','ابو صالح المهتدي','','','حيزوق',NULL,NULL,NULL),(841,'jamalrez','جمال الرز','','','السويسة',NULL,NULL,NULL),(842,'abdnasserzohbi','عبدالناصر الزعبي','','','حيزوق',NULL,NULL,NULL),(843,'yahyaakramchaaban','يحيى شعبان أبو أحمد ابن أبو أكرم','','','مشحا',NULL,NULL,NULL),(844,'wassimrifaii','وسيم الرفاعي','','','حلبا',NULL,NULL,NULL),(845,'sanawyimachha','ثانوية مشحا الرسمية','','','مشحا الساحة',NULL,NULL,NULL),(846,'saermehli','ثائر محلي','','','مشحا جار عمر صهري',NULL,NULL,NULL),(847,'ghaziragheb','غازي راغب الزعبي ابو قتيبة','','','مشحا الساحة',NULL,NULL,NULL),(848,'aboukamalallouch','ابو كمال علوش نافذ علوش','','','مشحا الحارة جنب المختار احمد',NULL,NULL,NULL),(849,'saadallahzohbi','سعدالله الزعبي','','','مشحا عين الغز',NULL,NULL,NULL),(850,'mhamadalsayd','محمد السيد','','','السويسة',NULL,NULL,NULL),(851,'ahmadmouhamad','احمد المحمد صهر ابو محسن','','','مشحا',NULL,NULL,NULL),(852,'samerfayad','سامر فياض','','','مشحا الرحبانة',NULL,NULL,NULL),(853,'abohssienallouch','ابو حسين علوش','','','مشحا العبارة',NULL,NULL,NULL),(854,'mhmddnnawi','محمد خلف صناوي','','','مشحا حارة الصفصافة',NULL,NULL,NULL),(855,'mrmhmdabdraouf','الاستاذ محمد عبدالرؤوف ضناوي','','','مشحا المعمل',NULL,NULL,NULL),(856,'omarhaj','عمر الحاج ابو سيف','3475617','','حيزوق الجبل الترك',NULL,NULL,NULL),(857,'abdrazzakmassoud','عبدالرزاق مسعود','81310579','','',NULL,NULL,NULL),(858,'rafiklbonji','رفيق البونجي ابو وجدي','71638878','','عدبل جار روني النبوت',NULL,NULL,NULL),(859,'achrafchhadi','اشرف شحادة','','','مشحا فوق العبارة',NULL,NULL,NULL),(860,'emslaymen','ام سليمان شعبان','','','مشحا جنب المحطة شعبان',NULL,NULL,NULL),(861,'ezdinborghel','عزالدين برغل صهر خالد ابو العبد','','','مشحا جنب عامر علوش',NULL,NULL,NULL),(862,'jadnabout','جاد النبوت الصيدلي','76594888','','عدبل صيدلية جاد النبوت',NULL,NULL,NULL),(863,'ziadhaydar','زياد حيدر','81186810','','مشحا حارة بيت حيدر',NULL,NULL,NULL),(864,'aboabdallouch','ابو عبدالله علوش','','','مشحا المغراق',NULL,NULL,NULL),(865,'yahyahaydar','يحيى حيدر','','','مشحا كروم نصارة',NULL,NULL,NULL),(866,'Ibrahimyoussef','إبراهيم يوسف أبو يوسف','','','مشحا عين البرك',NULL,NULL,NULL),(867,'abojalaldannawi','بدو ضناوي ابو جلال','','','مشحا جنب بيت الشيخ عبدالقادر',NULL,NULL,NULL),(868,'raedkhoder','رائد خضر ابو احمد','','','مشحا الرحبانة',NULL,NULL,NULL),(869,'hamziallouch','حمزة عمر علوش','81218179','','مشحا المغراق',NULL,NULL,NULL),(870,'oudaymasri','عدي المصري','','','حيزوق تحت بيت عبدالله المصري',NULL,NULL,NULL),(871,'jackechahin','جاك شاهين','','','عدبل مقابل الفرن',NULL,NULL,NULL),(872,'fatimaaldor','الحجة كوكب','','','مشحا جنب امنة بكار',NULL,NULL,NULL),(873,'aboanaszohbi','أحمد الزعبي ابن ابو سالم ابو أنس','71153525','','مشحا الضهر جارنا',NULL,NULL,NULL),(874,'massoudzohbi','الاستاذ مسعود الزعبي','','','مشحا الساحة',NULL,NULL,NULL),(875,'mouhamadibrahim','محمد ابراهيم','','','حيدوق عين علي',NULL,NULL,NULL),(876,'halimamasri','حليمة المصري','','','حيزوق',NULL,NULL,NULL),(877,'abdallahmhndshome','عبدالله المهندس البيت','','','مشحا جنب مشارع محمد حسين',NULL,NULL,NULL),(878,'yassinallouch','توفيق ياسين علوش','','','',NULL,NULL,NULL),(879,'abdchaaban1','عبدالله شعبان','','','مشحا المغراق',NULL,NULL,NULL),(880,'khaleddannawi','خالد ضناوي ابن ابو علام','','','مشحا كروم نصارة',NULL,NULL,NULL),(881,'hssienabbas','حسين عباس','71568710','','حيزوق مور نهرة',NULL,NULL,NULL),(882,'aboabddannawi','محمد ضناوي الحلاق','71029804','','مشحا حارة بيت اسرائيل',NULL,NULL,NULL),(883,'samerhome','سامر حمزة البيت','','','مشحا',NULL,NULL,NULL),(884,'mouhmadmonla','محمد المنلا','','','المزرعة',NULL,NULL,NULL),(885,'mhdghannom','محمد غنوم ابو محمود ابن العم','','','مشحا الضهر',NULL,NULL,NULL),(886,'abobacharvar','ابو بشار اللحام','','','مزرعة بلدة',NULL,NULL,NULL),(887,'rachadallouch','رشاد علوش','','','',NULL,NULL,NULL),(888,'abdnasserchaaban','عبدالناصر شعبان','','','مشحا المغراق فوق المصلى',NULL,NULL,NULL),(889,'madyanvar','مدين شحادة','','','مشحا',NULL,NULL,NULL),(890,'jalalhalabi','أبو أحمد الحلبي','','','المغراق مشروع سميح',NULL,NULL,NULL),(891,'aboalaaghannoum','abo alaa ghannoum','','','جارنا',NULL,NULL,NULL),(892,'rachidzakaria','رشيد زكريا','','','مشحا العبارة',NULL,NULL,NULL),(893,'mhmd3amer','محمد عامر شحادة ابو خالد','','','مشحا عين الغز',NULL,NULL,NULL),(894,'mhdabdelkarim','الحاج محمد عبدالكريم','','','مشحا الحارة الفوقا',NULL,NULL,NULL),(895,'deham2','فادي دياب','','','عدبل المحطة',NULL,NULL,NULL),(896,'abdrahimallouch','عبدالرحيم علوش','','','مشحا فوق العبارة',NULL,NULL,NULL),(897,'khaledabojamalchaaban','خالد شعبان ابو جمال','','','مشحا المغراق',NULL,NULL,NULL),(898,'chadizohbicaffe','شادي الزعبي','71773185','','مشحا حارة ابو هيثم القهوة',NULL,NULL,NULL),(899,'abojalalchhadi','ابو حلال شحادة','','','مشحا محل المعجنات',NULL,NULL,NULL),(900,'aboudchehade','عبود شحادة ابو بلال','','','مشحا عين الغر',NULL,NULL,NULL),(901,'daniamoussa','داليا موسى','','','عدبل العين',NULL,NULL,NULL),(902,'nazihmohtadi','نزيه مهتدي','','','حيزوق',NULL,NULL,NULL),(903,'dcabdnaserdannawi','بيت الدكتور عبدالناصر ضناوي','','','مشحا جارنا',NULL,NULL,NULL),(904,'abojassembadawi','ابو جاسم البدوي','','','حيزوق',NULL,NULL,NULL),(905,'ahmaderhani','احمد القرحاني','','','السويسة',NULL,NULL,NULL),(906,'abdallahchaker','عبدالله شاكر صهر محمد طاهر','','','مشحا الضهر',NULL,NULL,NULL),(907,'issamhassanhouda','محمد عصام هدى','','','مشحا',NULL,NULL,NULL),(908,'ahmadnadim','احمد نديم الزعبي','','','حيزوق عين السكر',NULL,NULL,NULL),(909,'aliabdfatah','علي عبدالفتاح','','','مشحا',NULL,NULL,NULL),(910,'wa7idalmasri','وحيد المصري','','','مشحا جنب ماجد طاهر',NULL,NULL,NULL),(911,'ahmadmhmd','احمد المحمد','','','ايلات فوق مفرق مشحا',NULL,NULL,NULL),(912,'abdouhalabi','عبدو الحلبي','','','ضهر نصار',NULL,NULL,NULL),(913,'mhdaboriad','محمد ابن ابو رياض','','','مشحا الحارة الفوقا',NULL,NULL,NULL),(914,'joziefdib','جوزيف ديب ابو وائل','','','عدبل تحت مفرق مشحا',NULL,NULL,NULL),(915,'maryamallouch','مريم علوش','','','مشحا اول حيزوق الفيلا',NULL,NULL,NULL),(916,'dckhaledzohbi','الدكتور خالد محمد يحيى الزعبي','76004252','','مشحا',NULL,NULL,NULL),(917,'chaherasaad','شاهر الاسعد ابو يزن','76158620','','مزرعة بلدة خالد الشيخ مكان خلف',NULL,NULL,NULL),(918,'3ezdin',' عزالدين غنوم','','','',NULL,NULL,NULL),(919,'abd7akimallouch','عبدالحكيم علوش','','','مشحا',NULL,NULL,NULL),(920,'abdallahchaker','عبدالله شاكر ','','','مشحا ',NULL,NULL,NULL),(921,'abdallahzohbi','عمر يوسف ','','','مشحا الضهر',NULL,NULL,NULL),(922,'abdchaaban1','حسام شعبان','','','مشحا الضهر',NULL,NULL,NULL),(923,'abdchaabanzaki','عبدالرحمن شعبان ','','','مشحا حارة ابو هيثم',NULL,NULL,NULL),(924,'abdllahawaj','ابو خالد عواج','','','ضهر نصار بيت الهاشم',NULL,NULL,NULL),(925,'abdozohbi','عبدو الزعبي','','','مشخا الضهر',NULL,NULL,NULL),(926,'abdrahmanallouch','عبدالرحمن عثمان علوش','','','مشحا ',NULL,NULL,NULL),(927,'abdrahmanbakrchaaban','عبدالرحمن شعبان','','','الضهر مقابل مصطفى اريش',NULL,NULL,NULL),(928,'abdtaher','طاهر عبدالسلام طاهر','','','مشحا الضهر',NULL,NULL,NULL),(929,'abdulkader','abdulkader','','','',NULL,NULL,NULL),(931,'abdzohbisyria','ابو اكرم عبدالله الزعبي سوريا','','','مشحا الحارة الفوقا',NULL,NULL,NULL),(932,'aboalaaibrahim','ابو علاء ابراهيم','','','مشحا الحارة الفوقا',NULL,NULL,NULL),(933,'aboali2','aboali2','','',' فاطمة العلي مشحا تحت الثانوية',NULL,NULL,NULL),(934,'aboalichaaban','احمد شعبان ابو علي','','','مشحا اول الضهر',NULL,NULL,NULL),(935,'aboalihassanbakar','ابو علي حسن بكار الزعبي','','','مشحا كروم نصارة',NULL,NULL,NULL),(936,'aboalinajjar','ابو عبدو النجار','','','مشحا عين الغز',NULL,NULL,NULL),(937,'abobaderchaaban','احمد بدر شعبان','','','مشحا جنب محطة ماجد طاهر',NULL,NULL,NULL),(938,'abobaderhamzi','ابو بدر حمزة','','','مشحا جنب التربة',NULL,NULL,NULL),(939,'abobakerchaaban','ابو بكر شعبان','','','مشحا',NULL,NULL,NULL),(940,'abobilaldennawi','ابو بلال ضناوي','','','مشحا جارنا',NULL,NULL,NULL),(941,'abochadizohbi','احمد الزعبي ','','','مشحا عين الغز',NULL,NULL,NULL),(942,'abofayad','B','','','',NULL,NULL,NULL),(943,'abomhmdhaydar','احمد حيدر','','','مشحا',NULL,NULL,NULL),(944,'abomhmdsy','ابو محمد سوريا','','','مشحا جارنا تحت بيت جنيد',NULL,NULL,NULL),(945,'abooubaydachaaban','ابو عبيدة شعبان','','','مشحا جنب محطه ماجد',NULL,NULL,NULL),(946,'abooubaydachhadi','ابو عبيدة شحادة','','','مشحا الرحبانة',NULL,NULL,NULL),(947,'abosa3id1','ابو سعيد خضر','','','مشحا حارة بيت علوش',NULL,NULL,NULL),(948,'abosohaybchaaban','abosohaybchaaban','','','',NULL,NULL,NULL),(949,'aboudawod','aboudawod','','','',NULL,NULL,NULL),(951,'abouyaakoubhome','اسماعيل شعبان ابو يعقوب','','','مشحا المغراق',NULL,NULL,NULL),(952,'abowajih8anom','ابو وجيه','','','مشحا',NULL,NULL,NULL),(953,'aboya3koubchaaban','aboya3koubchaaban','','','',NULL,NULL,NULL),(954,'ahedahawach','المعلمة عاهدة الحويش','','','مشحا عند مشروع محمود المهندس',NULL,NULL,NULL),(955,'ahlisv','ahli sv test','','','',NULL,NULL,NULL),(956,'ahmadabdlmajid','احمد عبدالمجيد','','','مشحا حارة ابو هيثم',NULL,NULL,NULL),(957,'ahmadallouch','احمد علوش','','','مشحا جنب المدرس العبارة',NULL,NULL,NULL),(958,'ahmadasmar','ابو فهد','','','اول مشحا عند نعيم عبود',NULL,NULL,NULL),(959,'ahmadchhadi','احمد شحادة ابن ام عبدالسلام','','','مشحا عين البرك جار خالد يوسف',NULL,NULL,NULL),(960,'ahmaderhani','محمد الحاج حيزوق','','','حيزوق',NULL,NULL,NULL),(961,'ahmadesrail','احمد اسرائيل','','','مشحا المغراق',NULL,NULL,NULL),(962,'ahmadghazi1','أحمد غازي','','','',NULL,NULL,NULL),(963,'ahmadhssein','ahmad','','','مشحا كروم نصارة',NULL,NULL,NULL),(964,'ahmadhssien','احمد حسين المعمرجي','','','حيزوق',NULL,NULL,NULL),(965,'ahmadkamalallouch','احمد كمال علوش','','','مشحا ',NULL,NULL,NULL),(966,'ahmadme7li','أحمد نحلة','','','مشحا',NULL,NULL,NULL),(967,'ahmadyoussefvar','محمد عبدالعزيز يوسف','','','مشحا عين البرك',NULL,NULL,NULL),(968,'alaaallouch','علاء علوش ','','','مشحا حارة بيت علوش',NULL,NULL,NULL),(969,'alaaas3ad','علاء الاسعد','','','المزرعة مشروع الشيخ',NULL,NULL,NULL),(970,'alaaesber','alaaesber','','','',NULL,NULL,NULL),(971,'alaahaydar','alaahaydar','','','',NULL,NULL,NULL),(972,'alaazohbisy','علاء الزعبي','','','مشحا عند محمد فؤاد علوش',NULL,NULL,NULL),(973,'alibaderchaaban','علي بدر شعبان','','','مشحا جنب محطة ماجد طاهر',NULL,NULL,NULL),(974,'alihessein','alihessein','','','',NULL,NULL,NULL),(975,'alil3ali','مهند العلي','','','ضهر نصار عن الهاشم',NULL,NULL,NULL),(976,'alimasmas','alimasmas','','','',NULL,NULL,NULL),(977,'alirifa3i','علي الرفاعي','','','مزرعة بلدة ',NULL,NULL,NULL),(978,'allouchallouch','علوش علوش ','','','مشحا جارنا',NULL,NULL,NULL),(979,'amerallouch','عامر علوش','','','مشحا',NULL,NULL,NULL),(980,'amerallouchhome','عامر علوش البيت','','','مشحا',NULL,NULL,NULL),(981,'amerkhaledhamoud','عامر عند خالد حمود','','','ضهر نصار',NULL,NULL,NULL),(982,'amjadchaaban','amjadchaaban alm7ata','','','',NULL,NULL,NULL),(983,'ammarallouch','عمار علوش','','','مشحا اخ سعيد البلدية',NULL,NULL,NULL),(984,'aymanallouch','ايمن عزات علوش','','','مشحا حارة بيت علوش',NULL,NULL,NULL),(985,'aymanzohbi','ابو ايمن الزعبي','','','مشحا الضهر',NULL,NULL,NULL),(986,'badercell','بدر حمزة محل التلفونات','','','مشحا الساحة ',NULL,NULL,NULL),(987,'baderhamzi','بدر حمزة ','','','مشحا الضهر',NULL,NULL,NULL),(988,'bakerchaaban','بكر شعبان ابن ابو بكر','','','مشحا عين الصفصافة',NULL,NULL,NULL),(989,'barhoumchaaban','mouhamad chaaban ebn mo5tar','','','مشحا كروم نصارة',NULL,NULL,NULL),(990,'barhumchaaban','ابراهيم شعبان','','','مشحا كروم نصارة',NULL,NULL,NULL),(991,'bassamaljassem','بسام جاسم ','','','مشحا اخ اسامة الجاسم',NULL,NULL,NULL),(992,'bilalalchaar','ابو النور الشعار','','','مشحا الضهر',NULL,NULL,NULL),(993,'bilalallouch','بلال علوش','','','مشحا',NULL,NULL,NULL),(994,'bilalfayad','بلال فياض','','','مشحا. الرحبانة',NULL,NULL,NULL),(995,'bilalhsein','بلال حسين ','','','حيزوق',NULL,NULL,NULL),(996,'chadichhadi','شادي','','','مشحا',NULL,NULL,NULL),(997,'dckhaledchaaban','الدكتور خالد شعبان','','','مشحا الضهر',NULL,NULL,NULL),(998,'debahallouch','دباح علوش','','','مشحا جنب جامع المنصور',NULL,NULL,NULL),(999,'dou3a2','dou3a2','','','',NULL,NULL,NULL),(1000,'emabdelsalam','ام عبدالسلام شحادة','','','مشحا الحارة جنب خلدون',NULL,NULL,NULL),(1001,'emalialloush','emalialloush','','','',NULL,NULL,NULL),(1002,'emmhmdzohbi','محمد الزعبي عزالدين','','','',NULL,NULL,NULL),(1003,'fadiallouch','فادي كمال علوش','','','مشحا ',NULL,NULL,NULL),(1004,'fadichaaban','فادي شعبان','','','مشحا اول الضيعة',NULL,NULL,NULL),(1005,'fawazzohbivar','fawazzohbivar','','','',NULL,NULL,NULL),(1006,'fayadhawach','الاستاذ فياض الحواش','','','الزفاتة',NULL,NULL,NULL),(1007,'gaythtest','غيث حمود ','','','القصر ضهر نصار',NULL,NULL,NULL),(1008,'hanaachhadi','hanaachhadi','','','',NULL,NULL,NULL),(1009,'hanyjedaydeh','hanyjedaydeh','','','',NULL,NULL,NULL),(1010,'hassankhalaf','حسن الخلف ','','','مشحا جنب مشروع محمد حسين',NULL,NULL,NULL),(1011,'houssamkhatab','حسام الخطاب ابو رجب','','','مزرعة بلدو مشروع الشيخ',NULL,NULL,NULL),(1012,'hsseinbassam','حسين ضناوي','','','مشحا ',NULL,NULL,NULL),(1013,'hssienbayrli','حسين البيرلي','','','حيزوق جنب خزان المياه',NULL,NULL,NULL),(1014,'hssiendanawi','حسين بسام ضناوي','','','مشحا الضهر',NULL,NULL,NULL),(1015,'ibrahimallouch','ابراهيم علوش','','','مشحا ',NULL,NULL,NULL),(1016,'islamzohbi','اسلام الزعبي','','','ضهر مصار',NULL,NULL,NULL),(1017,'isma3ill3asi','اسماعيل علي العاصي ','','','مزارع ام غسان ',NULL,NULL,NULL),(1018,'jamalkouja','ابو جمال كوجا','','','مشحا',NULL,NULL,NULL),(1019,'jihadraba7','جهاد رباح علوش ','','','مشحا',NULL,NULL,NULL),(1020,'joudchaaban','جود ابن ابو رهيف','','','',NULL,NULL,NULL),(1021,'kamalshehade','كمال شحادة','','','مشحا',NULL,NULL,NULL),(1022,'khaledabbas','خالد عباس','','','مشحا عند وليد كوجا',NULL,NULL,NULL),(1023,'khaledabdelhamid1','خالد عبدالحميد الزعبي','','','مشحا العبارة',NULL,NULL,NULL),(1024,'khaledabdllfatah','خالد عبدالفتاح الزعبي','','','مشحا جنب حلو عنبر',NULL,NULL,NULL),(1025,'khaledabdllhay','خالد عبدالحي ','','','مشحا',NULL,NULL,NULL),(1026,'khaledbestani','خالد البستاني','','','مشحا اول المغراق',NULL,NULL,NULL),(1027,'khaledjdaydehnew','B','','','',NULL,NULL,NULL),(1028,'khaledkahwaji','خالد قهوجي','','','عدبل مشروع نقولا',NULL,NULL,NULL),(1029,'khaledna3imchhade','خالد نعيم شحادة','','','مشحا قبل مفرق الضهر',NULL,NULL,NULL),(1030,'khaledshehade','khaled shhade','','','',NULL,NULL,NULL),(1031,'khalilmaalouf','خليل معلوف','','','عدبل تحت مفرق مشحا',NULL,NULL,NULL),(1032,'khyasawaj','غياث عواج','','','ضهر نصار جار كامل',NULL,NULL,NULL),(1033,'lwizaas3ad','لويزا أسعد','','','',NULL,NULL,NULL),(1034,'mahercahker','ماهر احمد شاكر','','','مشحا تحت العبارة',NULL,NULL,NULL),(1035,'mahmoudabbas','محمود عباس','','','مشحا العبارة',NULL,NULL,NULL),(1036,'mahmoudabdraouf','محمود عبدالرؤوف','','','مشخا ضهر نصار ',NULL,NULL,NULL),(1037,'mahmoudalrez','محمود الرز','','','السويسه',NULL,NULL,NULL),(1038,'mahmoudyoussef','محمود يوسف','','','مشحا عين الصفصافة',NULL,NULL,NULL),(1039,'mamdou71','ممدوح شحادة','','','مشحا عين الغز',NULL,NULL,NULL),(1040,'manalalzohbi','manalalzohbi','','','',NULL,NULL,NULL),(1041,'mazr3aabbas','مزارع بيت عباس','','','محطة حيزوق',NULL,NULL,NULL),(1042,'mhatakouja','محطة كوجا ','','','مشحا',NULL,NULL,NULL),(1043,'mhdaboomar','ابو_عمر','','','مشحا',NULL,NULL,NULL),(1044,'mhddannawi','mhddannawi','','','',NULL,NULL,NULL),(1045,'mhdhayek','mhdhayek','','','',NULL,NULL,NULL),(1046,'mhmdaboalaa','محمد ايو علاء سوريا','','','مشحا عند ام سليمان',NULL,NULL,NULL),(1047,'mhmdabokarimzohbi','محمد الزعبي ابو كريم ','','','مشحا الحارة الفوقا',NULL,NULL,NULL),(1048,'mhmdedris','محمد ادريس','','','مشحا مشروع محمد حسين',NULL,NULL,NULL),(1049,'mhmdmhssen','محمد محسن','','','المغراق',NULL,NULL,NULL),(1050,'mkhlefslali','مخلف الصلالي','','','مشحا معمل نعيم شحادة',NULL,NULL,NULL),(1051,'mo5tarmostafachaaban','المختار مصطفى شعبان','','','مشحا عين الصفصافة',NULL,NULL,NULL),(1052,'moeemnallouch','مؤمن علوش','','','مشحا',NULL,NULL,NULL),(1053,'mouhamadchaaban','محمد شعبان ابو عمر','','','مشحا جنب بيت الدكتور خالد سعيد الزعبي',NULL,NULL,NULL),(1054,'njwanchaker','نجوان شاكر ','','','مشحا الضهر',NULL,NULL,NULL),(1055,'obaydaallouch','عبيدة علوش','','','مشحا جنب جامع العين',NULL,NULL,NULL),(1056,'omar8anom','omar','','','machha',NULL,NULL,NULL),(1057,'omarkouja','عمر كوجا ','','','مشحا',NULL,NULL,NULL),(1058,'omarsebah1','عمر شعبان','','','مشحا جنب شركة للعاز القديمة',NULL,NULL,NULL),(1059,'omarsehri','عمر صهري','','','مشحا',NULL,NULL,NULL),(1060,'ossmanaboyassin','عثمان أبو ياسين ','','','مشحا المغراق',NULL,NULL,NULL),(1061,'oubaydachaaban','اسامة عدنان شعبان','','','مشحا جنب فاطمة العلي',NULL,NULL,NULL),(1062,'oubaydachhadi','عبيدة شحادة','','','',NULL,NULL,NULL),(1063,'oussamaabdwahed','اسامة عبدالواحد','','','مشحا الضهر',NULL,NULL,NULL),(1064,'rachedchhadi','راشد شحادة','','','مشحا عين الغز',NULL,NULL,NULL),(1065,'radwanhessein','رضوان حسين','','','مشحا كروم نصارة',NULL,NULL,NULL),(1066,'raghidzohbi','رغيد الزعبي ','','','مشحا الحارة الفوقا',NULL,NULL,NULL),(1067,'rdwanm7li','rdwanm7li','','','',NULL,NULL,NULL),(1068,'saaddannawi','سعد ضناوي','','','مشحا',NULL,NULL,NULL),(1069,'saertwer','ثائر طوار','','','حيزوق مزارع فؤاد الزعبي',NULL,NULL,NULL),(1070,'salemla7am','salemla7am','','','',NULL,NULL,NULL),(1071,'samerhamzeh2','samer hamzeh','','','',NULL,NULL,NULL),(1072,'samirachehade','ابو ابراهيم الزعبي','','','مشحا حارةًبيت علىش',NULL,NULL,NULL),(1073,'samirmasri','سمير المصري','','','جار رضا المصري',NULL,NULL,NULL),(1074,'slaymnyahya','سليمان يحيى','','','مشحا محل الكهرباء',NULL,NULL,NULL),(1075,'slymanallouch','سليمان علوش','','','مشحا حارة بيت علوش',NULL,NULL,NULL),(1076,'tarekallouch','طارق علوش ابو ماهر','','','مشحا العبارة',NULL,NULL,NULL),(1077,'waliddennawi','waliddennawi','','','',NULL,NULL,NULL),(1078,'walidossman','وليد خالد عثمان','','','مشحا الصهر مشروع خالد ',NULL,NULL,NULL),(1079,'yahyaawad','يحيى عوض','','','مشحا',NULL,NULL,NULL),(1080,'yahyachaaban','يحي شعبان','','','الضهر',NULL,NULL,NULL),(1081,'yahyafarachi','يحيى فراشة','','','مشحا عين البرك',NULL,NULL,NULL),(1082,'yahyaslaymnchaaban','يحيى سليمان شعبان ابو خالد','','','مشحا المغراق جارنا بالسوير ماركت',NULL,NULL,NULL),(1083,'zaferchhadi','ظافر شحادة ','','','مشحا جنب المرسة الرسمية',NULL,NULL,NULL),(1084,'ziadzohbi','زياد الزعبي ابو رفيق شرطة البلدية','','','مشحا',NULL,NULL,NULL),(1085,'varabd','عبدالرحمن الزعبي','70264025','','مشحا',NULL,NULL,NULL),(1086,'kamelawaj','كامل عواج','81703830','','عدبل - سوري',NULL,NULL,NULL),(1087,'deba7allouch','دباح علوش','76485007','','مشحا',NULL,NULL,NULL),(1088,'menzershehadeh','منذر شحادة','76301630','','مشحا المغراق',NULL,NULL,NULL),(1089,'omarabder','عمر بدر الزعبي','70427425','','مشحا',NULL,NULL,NULL),(1090,'aboyaakoub','أبو_يعقوب الرز','70686546','','السويسيه',NULL,NULL,NULL),(1091,'ahmajdaydehnassar','احمد جديده','70496162','','ضهر نصار ',NULL,NULL,NULL),(1092,'yasserzohbi','ياسر الزعبي','70204917','','مشحا مدخل الضهر',NULL,NULL,NULL),(1093,'oussamaabdrahim','اسامه عبدالرحيم','03183285','','مشحا',NULL,NULL,NULL),(1094,'haydarslayman','رضوان شمو  ابو يحيى','70140409','','حيزوق الساحة',NULL,NULL,NULL),(1095,'abiahmadallouch','ابو احمد علوش','76582794','','مشحا ',NULL,NULL,NULL),(1096,'abdallahsalahallouch','عبدالله صلاح علوش','70826237','','مشحا الضهر',NULL,NULL,NULL),(1097,'yahyamasri','يحي المصري','03729407','','حيزوق',NULL,NULL,NULL),(1098,'abd mhmd amin','عبدالرحمن  محمد أمين ','70249590','','مشحا',NULL,NULL,NULL),(1099,'abdalazohbi','عبدالله  خالد الزعبي ','70485242','','جار خالي عمر الضهر ',NULL,NULL,NULL),(1100,'yhyaisma3il','يحيى إسماعيل الزعبي أبو خالد ','71664160','','مشحا. كهرباء سيارات ',NULL,NULL,NULL),(1101,'georgesnader','جورج نادر','03408843','','كفر حرة',NULL,NULL,NULL),(1102,'jamilrez','جميل الرز','03127774','','السويسة',NULL,NULL,NULL),(1103,'mhdmesbah','محمد مصباح الزعبي','78855423','','مشحا',NULL,NULL,NULL),(1104,'sleymanjdayde','سليمان جديدة','76161371','','مشحا ضهر نصار',NULL,NULL,NULL),(1105,'moustaphazohbi','الشيخ مصطفى الحوراني  أبو محمد الزعبي ','71147811','','مشحا حارة العين ',NULL,NULL,NULL),(1106,'aboyussef','علاء غنوم ابن العم ابو يوسف','03377460','','مشحا الضهر',NULL,NULL,NULL),(1107,'saerzohbi','ثائر الزعبي ','70217535','','مشحا. مشروع محمد حسين',NULL,NULL,NULL),(1108,'badrchaaban','بدر شعبان ابو حسن','76379455','','مشحا المغراء',NULL,NULL,NULL),(1109,'hassanchaaban','حسان شعبان ابو احمد','03196191','','مشحا. عين الصفصافة',NULL,NULL,NULL),(1110,'hajtaysir','الحاج تيسير الزعبي ابو محمد','03342831','','مشحا اول الضهر',NULL,NULL,NULL),(1111,'ghassandeb','غسان ديب ','70515727','','عدبل فوق مفرق مشحا ',NULL,NULL,NULL),(1112,'mhdsalim','mhd salim','888888','','mashha',NULL,NULL,NULL),(1113,'mustafara8eb','الشيخ مصطفى الزعبي ابو راغب','03254557','','مشحا الساحة',NULL,NULL,NULL),(1114,'moustapharajaballouch','مصطفى رجب علوش','81435522','','مشحا المغراق',NULL,NULL,NULL),(1115,'taysir5aluf','تيسير خلوف ابو أحمد ','71009608','','حيزوق عند مصطفى مسرة',NULL,NULL,NULL),(1116,'mstawsf','المستوصف مشحا  ابو اسامة ','9999999','','مشحا',NULL,NULL,NULL),(1117,'ahmadabbasvar','أحمد عباس','03137420','','حيزوق',NULL,NULL,NULL),(1118,'radwenchammou','رضوان شمو ابو يحيى ','03621334','','حيزوق الساحة ',NULL,NULL,NULL),(1119,'ibrahimslaymanch','ابراهيم  شعبان','03961328','','مشحا',NULL,NULL,NULL),(1120,'firaszohbisy','فراس الزعبي  أبو هيثم','79134366','','مشحا. عند ابو ربيع عبداللطيف ',NULL,NULL,NULL),(1121,'nicolasdib','نقولا ديب ','71406696','','عدبل. قبل مفرق مشحا على اليمين',NULL,NULL,NULL),(1122,'menzerchaaban','منذر شعبان','76435533','','مشحا',NULL,NULL,NULL),(1123,'aboammardarwish','أبو عمار درويش  ','71678270','','حيزوق فوق المقبرة ',NULL,NULL,NULL),(1124,'mhmdallouchhz','محمد علوش  أبو خالد ','70772541','','حيزوق فوق المقبرة ',NULL,NULL,NULL),(1125,'abdmasri1','عبدالله المصري  ','70022997','','حيزوق ',NULL,NULL,NULL),(1126,'ritabazi','ريتا البازي ','76925361','','كفر حرة جار جورج ',NULL,NULL,NULL),(1127,'mhdhamzeh','محمد حمزة','00564564','','مشحا',NULL,NULL,NULL),(1128,'hassantaha','حسن سيد طه ','81871206','','مشحا جنب الجامع الشيخ غسان',NULL,NULL,NULL),(1130,'baderdannawi','بدر ضناوي ابو نديم','70273222','','مشحا المغراق',NULL,NULL,NULL),(1131,'mahmudmhnds','ابو عبدالله الزعبي محمود المهندس','03344807','','مشحا',NULL,NULL,NULL),(1132,'akramchaaban','اكرم شعبان ابو احمد','71928523','','مشحا جنب بيت وجدي',NULL,NULL,NULL),(1133,'khalednourldin','خالد نورالدين ابو سليمان','81359916','','مشحا فوق الصيدلية',NULL,NULL,NULL),(1134,'ahmadsa3id','احمد سعيد علوش ','03446835','','مشحا الضهر',NULL,NULL,NULL),(1135,'khaledabousalem','خالد ابن ابو سالم ابو محمد','333333333','','مشحا الضهر',NULL,NULL,NULL),(1136,'safialahmad','صافي الاحمد  ابو عدي','70944807','','مشحا الضهر مزارع علي محمود',NULL,NULL,NULL),(1137,'mhmdmahmoud','محمد محمود ','79187282','','مشحا جنب المدرس الزيتون',NULL,NULL,NULL),(1138,'samihzohbi','سميح الزعبي ','70367525','','مزرعة بلدة فوق المصلى',NULL,NULL,NULL),(1139,'kifahchaker','كفاح شاكر','5649872616378','','مشحا',NULL,NULL,NULL),(1140,'mhmdwalid','محمد وليد رجب علوش ','79113037','','مشحا المغراق',NULL,NULL,NULL),(1141,'abdallahabdlkader','عبدالله عبدالقادر الزعبي  ابو محمد الضابط','79199175','','مشحا',NULL,NULL,NULL),(1142,'azzamdannawi','عزام ضناوي ابو محمد','76344353','','مشحا جنب الشيخ عبدالقادر',NULL,NULL,NULL),(1143,'ahmadwalidzohbi','احمد محمد وليد الزعبي ','70576364','','مشحا المغراق',NULL,NULL,NULL),(1144,'ossmanchaaban','عثمان شعبان ابو كريم صاحب الجرافة','78345014','','مشحا حارة بيت شعبان',NULL,NULL,NULL),(1145,'hanaachaaban','هناء شعبان ','70408156','','مشحا المغراق',NULL,NULL,NULL),(1146,'ahmadmasriWN','احمد المصري ','3333333','','حيزوق',NULL,NULL,NULL),(1147,'aboyaaserzohbi','عمار الزعبي ابو ياسر ','70151729','','مشحا فوق الصيدلية',NULL,NULL,NULL),(1148,'brahimch3ban','ابراهيم ابو خالد شعبان ','03937374','','مشحا مفرق الضهر',NULL,NULL,NULL),(1149,'aboabdallah8anom','ابو عبدالله احمد بدر غنوم ','70339573','','مشحا فوق العبارة',NULL,NULL,NULL),(1150,'jamalghannoum','جمال عبدالناصر غنوم ','1121233','','مشحا الضهر',NULL,NULL,NULL),(1151,'Moemen','Abedlhamid','24','مشحا','عكار',NULL,'2025-02-06 19:46:59','2025-02-06 19:46:59'),(1152,'Ousamahssein','اسامة الحسين','03','حيزوق','حيزوق',NULL,'2025-02-08 10:31:49','2025-02-08 10:32:16'),(1153,'Sa3dchaaban','سعد شعبان','.','مشحا','كروم نصارة',NULL,'2025-02-08 10:33:34','2025-02-08 10:33:34'),(1154,'Fouadallouch','فؤاد علوش','.','مشحا','فوق العبارة',NULL,'2025-02-08 11:17:01','2025-02-08 11:17:01'),(1155,'Mahmoud','محمود المحمد','.','ايلات','ايلات',NULL,'2025-02-09 15:17:31','2025-02-09 15:17:31');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_tag`
--

DROP TABLE IF EXISTS `expense_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `expense_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `expense_tag_expense_id_foreign` (`expense_id`),
  KEY `expense_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `expense_tag_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `expense_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_tag`
--

LOCK TABLES `expense_tag` WRITE;
/*!40000 ALTER TABLE `expense_tag` DISABLE KEYS */;
INSERT INTO `expense_tag` VALUES (1,1,1),(2,1,9),(7,6,5),(8,7,9);
/*!40000 ALTER TABLE `expense_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'محروقات','عمر',20.00,'2025-01-29','2025-01-31 09:37:43','2025-01-31 09:37:43',NULL),(2,'عبد','شخصي',20.00,'2025-02-01','2025-02-01 19:35:55','2025-02-04 19:29:08',NULL),(3,'عمر','جمعية',70.00,'2025-02-03','2025-02-03 13:25:59','2025-02-03 13:26:18',NULL),(4,'ابي','تحاليل',26.00,'2025-02-04','2025-02-04 19:28:35','2025-02-04 19:28:57',NULL),(5,'محمود','لعبد',30.00,'2025-02-05','2025-02-05 19:38:39','2025-02-05 19:39:09',NULL),(6,'مصروف','مصروف',300.00,'2025-02-05','2025-02-06 19:43:52','2025-02-06 19:43:52',NULL),(7,'مصروف','شخصي',20.00,'2025-02-05','2025-02-07 07:15:33','2025-02-07 07:15:33',NULL),(8,'غاز','بيت',30.00,'2025-02-07','2025-02-07 11:49:20','2025-02-07 11:49:20',NULL),(9,'مكنات','شغل',505.00,'2025-02-08','2025-02-08 13:12:09','2025-02-08 13:12:09',NULL);
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_logs`
--

DROP TABLE IF EXISTS `maintenance_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenance_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `maintenance_date` date NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `maintenance_logs_customer_id_foreign` (`customer_id`),
  CONSTRAINT `maintenance_logs_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_logs`
--

LOCK TABLES `maintenance_logs` WRITE;
/*!40000 ALTER TABLE `maintenance_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2024_12_25_001319_create_companies_table',1),(3,'2024_12_25_001356_create_connection_points_table',1),(4,'2024_12_25_001455_create_customers_table',1),(5,'2024_12_25_001509_create_subscriptions_table',1),(6,'2024_12_25_001529_create_expenses_table',1),(7,'2024_12_25_001544_create_maintenance_logs_table',1),(8,'2024_12_25_001554_create_receipts_table',1),(9,'2024_12_25_013722_update_customers_table',1),(10,'2024_12_25_021629_add_connection_point_id_to_customers_table',1),(11,'2024_12_25_192548_create_packages_table',1),(12,'2024_12_25_192628_update_subscriptions_table_add_package_id',1),(13,'2024_12_28_222041_create_sessions_table',1),(14,'2024_12_29_115728_create_cache_table',1),(15,'2024_12_29_172546_add_tags_to_expenses_table',1),(16,'2024_12_29_172622_create_tags_table',1),(17,'2025_01_05_051804_create_company_info_table',1),(18,'2025_01_12_192406_create_permission_tables',1),(19,'2025_01_12_193551_create_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(2,'App\\Models\\User',2),(2,'App\\Models\\User',3);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `packages_company_id_foreign` (`company_id`),
  CONSTRAINT `packages_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` VALUES (1,1,'bronze',12.00,20.00,'2025-01-13 06:35:33','2025-01-13 06:35:33'),(2,1,'silver',15.00,25.00,'2025-01-13 06:36:36','2025-01-13 06:36:36'),(3,1,'gold',18.00,30.00,'2025-01-13 06:36:50','2025-01-13 06:36:50'),(4,2,'1',5.00,15.00,'2025-01-13 06:36:58','2025-01-13 06:36:58'),(5,3,'4M',16.00,20.00,'2025-01-13 06:37:49','2025-01-13 06:37:49'),(6,3,'6M',16.00,25.00,'2025-01-13 06:38:09','2025-01-13 06:38:09'),(7,3,'8M',20.00,30.00,'2025-01-13 06:38:22','2025-01-13 06:38:22');
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (9,'dash-list','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(10,'dash-create','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(11,'dash-edit','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(12,'dash-delete','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(13,'account-list','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(14,'account-create','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(15,'account-edit','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(16,'account-delete','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(17,'settings-list','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(18,'settings-create','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(19,'settings-edit','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(20,'settings-delete','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(21,'MaintenanceLog-list','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(22,'MaintenanceLog-create','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(23,'MaintenanceLog-edit','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(24,'MaintenanceLog-delete','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(25,'reports-list','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(26,'reports-create','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(27,'reports-edit','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(28,'reports-delete','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(29,'collector-list','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(30,'collector-create','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(31,'collector-edit','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(32,'collector-delete','web','2025-02-09 21:28:37','2025-02-09 21:28:37'),(33,'role-list','web','2025-02-09 23:41:12','2025-02-09 23:41:12'),(34,'role-create','web',NULL,NULL),(35,'role-edit','web',NULL,NULL),(36,'role-delete','web',NULL,NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receipts_customer_id_foreign` (`customer_id`),
  CONSTRAINT `receipts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` VALUES (7,900,20.00,'بيد عمر وعباها بنزين','2025-01-29','2025-01-31 09:35:21','2025-01-31 09:35:21'),(8,908,20.00,'بيدي','2025-01-31','2025-01-31 19:53:30','2025-01-31 19:53:30'),(10,1108,24.00,'بيدي','2025-02-01','2025-02-01 19:18:56','2025-02-01 19:18:56'),(11,913,20.00,'بيدي','2025-02-01','2025-02-01 19:21:38','2025-02-01 19:21:38'),(13,1134,20.00,'بيدي','2025-02-01','2025-02-01 19:23:32','2025-02-01 19:23:32'),(14,1146,20.00,'بيدي','2025-02-01','2025-02-01 19:24:37','2025-02-01 19:24:37'),(15,882,24.00,'بيدي','2025-02-01','2025-02-01 19:25:49','2025-02-01 19:25:49'),(16,745,20.00,'بيدي','2025-02-01','2025-02-01 19:27:07','2025-02-01 19:27:07'),(17,800,24.00,'بيدي','2025-02-01','2025-02-01 19:28:13','2025-02-01 19:28:13'),(19,965,18.00,'بيدي','2025-02-01','2025-02-01 19:30:51','2025-02-01 19:30:51'),(20,758,20.00,'بيدي','2025-02-01','2025-02-01 19:32:00','2025-02-01 19:32:00'),(21,63,20.00,'بيدي','2025-02-01','2025-02-01 19:33:00','2025-02-01 19:33:00'),(22,751,22.00,'بيدي','2025-02-01','2025-02-01 19:34:03','2025-02-01 19:34:03'),(23,995,34.00,'بيدي','2025-02-02','2025-02-02 19:04:55','2025-02-02 19:04:55'),(24,868,36.00,'بيدي','2025-02-02','2025-02-02 19:06:12','2025-02-02 19:06:12'),(25,836,20.00,'بيدي','2025-02-02','2025-02-02 19:07:27','2025-02-02 19:07:27'),(26,959,20.00,'بيدي','2025-02-02','2025-02-02 19:10:24','2025-02-02 19:10:24'),(27,904,24.00,'بيدي','2025-02-02','2025-02-02 19:11:10','2025-02-02 19:11:10'),(28,856,20.00,'بيدي','2025-02-02','2025-02-02 19:12:51','2025-02-02 19:12:51'),(29,777,22.00,'بيدي','2025-02-02','2025-02-02 19:13:35','2025-02-02 19:13:35'),(30,905,20.00,'بيدي','2025-02-02','2025-02-02 19:14:28','2025-02-02 19:14:28'),(31,1034,20.00,'بيدي','2025-02-02','2025-02-02 19:15:14','2025-02-02 19:15:14'),(32,1127,24.00,'بيدي','2025-02-02','2025-02-02 19:16:45','2025-02-02 19:16:45'),(33,872,20.00,'بيدي','2025-02-02','2025-02-03 04:31:55','2025-02-03 04:31:55'),(34,1023,17.00,'بيد عمر','2025-02-03','2025-02-03 11:40:02','2025-02-03 11:40:02'),(35,893,20.00,'بيد عمر','2025-02-03','2025-02-03 13:21:41','2025-02-03 13:21:41'),(36,743,24.00,'بيدي','2025-02-03','2025-02-03 19:30:06','2025-02-03 19:30:06'),(37,750,24.00,'بيدي','2025-02-03','2025-02-03 19:30:43','2025-02-03 19:30:43'),(38,754,24.00,'بيدي','2025-02-03','2025-02-03 19:31:29','2025-02-03 19:31:29'),(39,781,20.00,'بيدي','2025-02-03','2025-02-03 19:32:22','2025-02-03 19:32:22'),(40,1024,20.00,'بيدي','2025-02-03','2025-02-03 19:33:30','2025-02-03 19:33:30'),(41,759,50.00,'بيدي','2025-02-03','2025-02-03 19:34:07','2025-02-03 19:34:07'),(42,23,26.00,'بيدي','2025-02-03','2025-02-03 19:35:29','2025-02-03 19:35:29'),(43,34,40.00,'بيدي','2025-02-03','2025-02-03 19:38:50','2025-02-03 19:38:50'),(44,744,24.00,'بيدي','2025-02-03','2025-02-04 14:53:32','2025-02-04 14:53:32'),(45,1144,24.00,'بيدي','2025-02-03','2025-02-04 14:54:25','2025-02-04 14:54:25'),(46,1052,30.00,'بيد عمر','2025-02-04','2025-02-04 14:55:17','2025-02-04 14:55:17'),(47,956,20.00,'بيدي','2025-02-04','2025-02-04 19:11:24','2025-02-04 19:11:24'),(48,962,15.00,'بيدي','2025-02-04','2025-02-04 19:12:13','2025-02-04 19:12:13'),(49,961,15.00,'بيدي','2025-02-04','2025-02-04 19:13:10','2025-02-04 19:13:10'),(50,1015,24.00,'بيدي','2025-02-04','2025-02-04 19:14:14','2025-02-04 19:14:14'),(51,1069,20.00,'بيدي','2025-02-04','2025-02-04 19:17:00','2025-02-04 19:17:00'),(52,902,24.00,'بيدي','2025-02-04','2025-02-04 19:18:25','2025-02-04 19:18:25'),(53,1037,24.00,'بيدي','2025-02-04','2025-02-04 19:19:06','2025-02-04 19:19:06'),(54,739,24.00,'بيدي','2025-02-04','2025-02-04 19:49:21','2025-02-04 19:49:21'),(55,861,24.00,'بيدي','2025-02-04','2025-02-04 19:50:06','2025-02-04 19:50:06'),(56,873,20.00,'بيدي','2025-02-04','2025-02-04 19:51:34','2025-02-04 19:51:34'),(57,873,20.00,'بيدي','2025-02-04','2025-02-04 19:54:15','2025-02-04 19:54:15'),(58,749,24.00,'بيدي','2025-02-04','2025-02-04 19:55:44','2025-02-04 19:55:44'),(59,862,25.00,'بيدي','2025-02-04','2025-02-04 19:56:24','2025-02-04 19:56:24'),(60,59,24.00,'بيدي','2025-02-04','2025-02-04 19:57:40','2025-02-04 19:57:40'),(61,827,20.00,'بيدي','2025-02-04','2025-02-04 19:58:23','2025-02-04 19:58:23'),(62,1051,40.00,'بيدي','2025-02-04','2025-02-04 19:59:18','2025-02-04 19:59:18'),(65,50,20.00,'بيدي','2025-02-05','2025-02-05 13:39:56','2025-02-05 13:39:56'),(66,895,20.00,'بيدي','2025-02-05','2025-02-05 13:40:32','2025-02-05 13:40:32'),(67,792,20.00,'بيدي','2025-02-05','2025-02-05 13:42:38','2025-02-05 13:42:38'),(68,52,30.00,'بيدي','2025-02-05','2025-02-05 13:44:45','2025-02-05 13:44:45'),(69,1113,20.00,'بيدي','2025-02-05','2025-02-05 13:45:35','2025-02-05 13:45:35'),(70,807,20.00,'بيدي','2025-02-05','2025-02-05 13:46:05','2025-02-05 13:46:05'),(71,907,20.00,'بيدي','2025-02-05','2025-02-05 13:46:50','2025-02-05 13:46:50'),(72,741,20.00,'بيدي','2025-02-05','2025-02-05 13:47:23','2025-02-05 13:47:23'),(73,820,20.00,'بيدي','2025-02-05','2025-02-05 13:49:39','2025-02-05 13:49:39'),(74,982,24.00,'بيدي','2025-02-05','2025-02-05 13:51:34','2025-02-05 13:51:34'),(75,1095,24.00,'بيدي','2025-02-05','2025-02-05 19:31:11','2025-02-05 19:31:11'),(76,870,24.00,'بيدي','2025-02-05','2025-02-05 19:32:11','2025-02-05 19:32:11'),(77,1123,24.00,'بيدي','2025-02-05','2025-02-05 19:34:00','2025-02-05 19:34:00'),(78,859,20.00,'بيدي','2025-02-05','2025-02-05 19:34:39','2025-02-05 19:34:39'),(79,960,20.00,'بيدي','2025-02-05','2025-02-05 19:35:17','2025-02-05 19:35:17'),(80,58,20.00,'بيدي','2025-02-05','2025-02-05 19:35:59','2025-02-05 19:35:59'),(81,984,15.00,'بيدي','2025-02-05','2025-02-05 19:36:57','2025-02-05 19:36:57'),(82,898,24.00,'بيدي','2025-02-05','2025-02-05 19:37:45','2025-02-05 19:37:45'),(83,790,24.00,'بيدي','2025-02-04','2025-02-06 19:38:27','2025-02-06 19:38:27'),(84,822,24.00,'بيدي','2025-02-04','2025-02-06 19:39:04','2025-02-06 19:39:04'),(85,874,24.00,'بيدي','2025-02-04','2025-02-06 19:39:54','2025-02-06 19:39:54'),(86,120,30.00,'بيدي','2025-02-06','2025-02-06 19:41:35','2025-02-06 19:41:35'),(88,867,20.00,'بيدي','2025-02-06','2025-02-06 19:44:43','2025-02-06 19:44:43'),(89,1151,24.00,'بيدي','2025-02-06','2025-02-06 19:47:30','2025-02-06 19:47:30'),(90,1094,20.00,'بيدي','2025-02-06','2025-02-06 19:50:50','2025-02-06 19:50:50'),(91,833,28.00,'بيدي','2025-02-06','2025-02-06 19:51:23','2025-02-06 19:51:23'),(92,1125,24.00,'بيدي','2025-02-06','2025-02-06 19:51:57','2025-02-06 19:51:57'),(93,1072,15.00,'بيدي','2025-02-06','2025-02-06 19:53:34','2025-02-06 19:53:34'),(94,840,20.00,'بيدي','2025-02-06','2025-02-06 19:54:11','2025-02-06 19:54:11'),(95,1132,20.00,'بيدي','2025-02-06','2025-02-06 19:54:50','2025-02-06 19:54:50'),(96,1103,20.00,'بيدي','2025-02-06','2025-02-06 19:55:19','2025-02-06 19:55:19'),(97,846,20.00,'بيدي','2025-02-07','2025-02-07 19:45:47','2025-02-07 19:45:47'),(98,869,24.00,'بيدي','2025-02-07','2025-02-07 19:46:32','2025-02-07 19:46:32'),(99,812,22.00,'بيدي','2025-02-07','2025-02-07 19:48:20','2025-02-07 19:48:20'),(100,852,48.00,'بيد عمر','2025-02-08','2025-02-08 11:42:23','2025-02-08 11:42:23'),(101,776,25.00,'بيدي','2025-01-27','2025-02-08 14:38:13','2025-02-08 14:38:13'),(102,828,20.00,'بيد عمر','2025-02-08','2025-02-08 15:03:29','2025-02-08 15:03:29'),(103,787,20.00,'بيد عمر','2025-02-08','2025-02-08 15:04:16','2025-02-08 15:04:16'),(104,888,60.00,'بيدي','2025-02-08','2025-02-09 15:08:25','2025-02-09 15:08:25'),(105,1029,40.00,'بيدي','2025-02-08','2025-02-09 15:09:39','2025-02-09 15:09:39'),(106,852,48.00,'بيدي','2025-02-08','2025-02-09 15:11:10','2025-02-09 15:11:10'),(107,923,20.00,'بيدي','2025-02-08','2025-02-09 15:12:07','2025-02-09 15:12:07'),(108,1136,33.00,'بيدي','2025-02-08','2025-02-09 15:12:58','2025-02-09 15:12:58'),(109,857,20.00,'بيدي','2025-02-08','2025-02-09 15:14:27','2025-02-09 15:14:27'),(110,47,25.00,'بيدي','2025-02-08','2025-02-09 15:14:56','2025-02-09 15:14:56'),(111,773,24.00,'بيدي','2025-02-08','2025-02-09 15:16:15','2025-02-09 15:16:15'),(112,1155,24.00,'بيدي','2025-02-08','2025-02-09 15:17:49','2025-02-09 15:17:49'),(113,832,24.00,'بيدي','2025-02-08','2025-02-09 15:18:37','2025-02-09 15:18:37'),(114,1104,24.00,'بيدي','2025-02-08','2025-02-09 15:19:24','2025-02-09 15:19:24'),(115,838,20.00,'بيدي','2025-02-08','2025-02-09 15:20:04','2025-02-09 15:20:04'),(116,1119,20.00,'بيدي','2025-02-08','2025-02-09 15:21:02','2025-02-09 15:21:02'),(117,44,24.00,'بيدي','2025-02-08','2025-02-09 15:22:54','2025-02-09 15:22:54'),(118,943,20.00,'بيدي','2025-02-08','2025-02-09 15:23:51','2025-02-09 15:23:51'),(119,993,24.00,'بيدي','2025-02-08','2025-02-09 15:24:16','2025-02-09 15:24:16'),(120,1105,24.00,'بيدي','2025-02-08','2025-02-09 15:25:05','2025-02-09 15:25:05'),(121,1019,40.00,'بيدي','2025-02-08','2025-02-09 15:25:50','2025-02-09 15:25:50'),(122,983,20.00,'بيدي','2025-02-09','2025-02-09 15:26:31','2025-02-09 15:26:31');
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (9,1),(9,2),(10,1),(11,1),(12,1),(13,1),(13,2),(14,1),(14,2),(15,1),(15,2),(16,1),(16,2),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(25,2),(26,1),(26,2),(27,1),(27,2),(28,1),(28,2),(29,1),(29,2),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','web','2025-01-12 21:36:30','2025-01-12 21:36:30'),(2,'acc','web','2025-01-17 02:31:03','2025-02-09 21:50:45');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('g50VbJoTQhDNpIuNfmFZBkBpmvRldJ9xaG4uFsNq',3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTWpQeVBOVEhyWndwZEs1NDBtOURmVEl1MEhYR1k3YXV1d29sMkJ4VSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTczOTE0NTE4MDt9fQ==',1739145180),('KJsvLdsgpIpgTmsWl7Xs3d6Jo4YQdOA4dBE60jog',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:135.0) Gecko/20100101 Firefox/135.0','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVUJpSGlYcHc1cTJWeFh1RFBWSGI2MlQ2ZkExWXdLT2EzaG9Ud0diYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdXNlcnMvNS9lZGl0Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MzkxNDUwMTM7fX0=',1739145155);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `package_id` bigint(20) unsigned NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_customer_id_foreign` (`customer_id`),
  KEY `subscriptions_package_id_foreign` (`package_id`),
  CONSTRAINT `subscriptions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subscriptions_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,900,1,'bronze',20.00,'2025-01-01','2025-02-01','2025-01-31 09:33:51','2025-01-31 09:33:51'),(2,908,2,'silver',25.00,'2025-01-31','2025-03-03','2025-01-31 19:52:47','2025-01-31 19:52:47'),(3,1108,2,'silver',25.00,'2025-02-01','2025-03-01','2025-02-01 19:16:51','2025-02-01 19:16:51'),(4,913,1,'bronze',20.00,'2025-02-01','2025-03-01','2025-02-01 19:22:07','2025-02-01 19:22:07'),(5,1134,1,'bronze',20.00,'2025-02-01','2025-03-01','2025-02-01 19:23:56','2025-02-01 19:23:56'),(6,1146,1,'bronze',20.00,'2025-02-01','2025-03-01','2025-02-01 19:24:50','2025-02-01 19:24:50'),(7,882,2,'silver',25.00,'2025-02-01','2025-03-01','2025-02-01 19:26:19','2025-02-01 19:26:19'),(8,745,1,'bronze',20.00,'2025-02-01','2025-03-01','2025-02-01 19:27:22','2025-02-01 19:27:22'),(9,800,2,'silver',25.00,'2025-02-01','2025-03-01','2025-02-01 19:28:47','2025-02-01 19:28:47'),(10,965,4,'1',15.00,'2025-02-01','2025-03-01','2025-02-01 19:31:24','2025-02-01 19:31:24'),(11,758,1,'bronze',20.00,'2025-02-01','2025-03-01','2025-02-01 19:32:15','2025-02-01 19:32:15'),(12,63,1,'bronze',20.00,'2025-02-01','2025-03-01','2025-02-01 19:33:18','2025-02-01 19:33:18'),(13,751,2,'silver',23.00,'2025-02-01','2025-03-01','2025-02-01 19:34:25','2025-02-09 19:46:07'),(14,995,3,'gold',30.00,'2025-02-02','2025-03-02','2025-02-02 19:05:45','2025-02-02 19:05:45'),(15,868,3,'gold',30.00,'2025-02-02','2025-03-02','2025-02-02 19:06:33','2025-02-02 19:06:33'),(16,836,1,'bronze',20.00,'2025-02-02','2025-03-02','2025-02-02 19:07:44','2025-02-02 19:07:44'),(17,959,1,'bronze',20.00,'2025-02-02','2025-03-02','2025-02-02 19:10:39','2025-02-02 19:10:39'),(18,904,2,'silver',25.00,'2025-02-02','2025-03-02','2025-02-02 19:11:28','2025-02-02 19:11:28'),(19,856,1,'bronze',20.00,'2025-02-02','2025-03-02','2025-02-02 19:13:05','2025-02-02 19:13:05'),(20,777,2,'silver',22.00,'2025-02-02','2025-03-02','2025-02-02 19:13:57','2025-02-09 03:02:16'),(21,905,1,'bronze',20.00,'2025-02-02','2025-03-02','2025-02-02 19:14:45','2025-02-02 19:14:45'),(22,1034,1,'bronze',20.00,'2025-02-02','2025-03-02','2025-02-02 19:15:28','2025-02-02 19:15:28'),(23,1127,2,'silver',25.00,'2025-02-02','2025-03-02','2025-02-02 19:17:01','2025-02-02 19:17:01'),(24,872,1,'bronze',20.00,'2025-02-03','2025-03-03','2025-02-03 04:32:10','2025-02-03 04:32:10'),(25,1023,4,'1',15.00,'2025-02-03','2025-03-03','2025-02-03 11:40:25','2025-02-03 11:40:25'),(26,893,1,'bronze',20.00,'2025-02-03','2025-03-03','2025-02-03 13:21:57','2025-02-03 13:21:57'),(27,743,2,'silver',24.00,'2025-02-03','2025-03-03','2025-02-03 19:30:21','2025-02-09 19:45:55'),(28,750,2,'silver',24.00,'2025-02-03','2025-03-03','2025-02-03 19:31:05','2025-02-09 03:01:55'),(29,754,2,'silver',24.00,'2025-02-03','2025-03-03','2025-02-03 19:31:45','2025-02-09 12:18:06'),(30,781,1,'bronze',20.00,'2025-02-03','2025-03-03','2025-02-03 19:32:50','2025-02-03 19:32:50'),(31,1024,1,'bronze',20.00,'2025-02-03','2025-03-03','2025-02-03 19:33:45','2025-02-03 19:33:45'),(32,759,3,'gold',30.00,'2025-02-03','2025-03-03','2025-02-03 19:34:57','2025-02-03 19:34:57'),(33,690,2,'silver',25.00,'2025-02-03','2025-03-03','2025-02-03 19:35:51','2025-02-03 19:35:51'),(34,34,7,'8M',30.00,'2025-02-03','2025-03-03','2025-02-03 19:39:09','2025-02-03 19:39:09'),(35,744,2,'silver',24.00,'2025-02-03','2025-03-03','2025-02-04 14:54:02','2025-02-09 03:13:16'),(36,1144,2,'silver',25.00,'2025-02-03','2025-03-03','2025-02-04 14:54:49','2025-02-04 14:54:49'),(37,1052,3,'gold',30.00,'2025-02-04','2025-03-04','2025-02-04 14:55:33','2025-02-04 14:55:33'),(38,956,1,'bronze',20.00,'2025-02-04','2025-03-04','2025-02-04 19:11:40','2025-02-04 19:11:40'),(39,962,4,'1',15.00,'2025-02-04','2025-03-04','2025-02-04 19:12:35','2025-02-04 19:12:35'),(40,961,4,'1',15.00,'2025-02-04','2025-03-04','2025-02-04 19:13:26','2025-02-04 19:13:26'),(41,1015,2,'silver',25.00,'2025-02-04','2025-03-04','2025-02-04 19:14:39','2025-02-04 19:14:39'),(42,1069,1,'bronze',20.00,'2025-02-04','2025-03-04','2025-02-04 19:17:17','2025-02-04 19:17:17'),(43,902,2,'silver',25.00,'2025-02-04','2025-03-04','2025-02-04 19:18:47','2025-02-04 19:18:47'),(44,1037,2,'silver',25.00,'2025-02-04','2025-03-04','2025-02-04 19:19:23','2025-02-04 19:19:23'),(45,739,2,'silver',25.00,'2025-02-04','2025-03-04','2025-02-04 19:49:42','2025-02-04 19:49:42'),(46,861,2,'silver',24.00,'2025-02-04','2025-03-04','2025-02-04 19:50:24','2025-02-09 03:09:18'),(47,873,2,'silver',25.00,'2025-02-04','2025-03-04','2025-02-04 19:51:49','2025-02-04 19:51:49'),(48,749,2,'silver',24.00,'2025-02-04','2025-03-04','2025-02-04 19:56:02','2025-02-09 03:06:00'),(49,862,2,'silver',25.00,'2025-02-04','2025-03-04','2025-02-04 19:56:40','2025-02-04 19:56:40'),(50,59,2,'silver',24.00,'2025-02-04','2025-03-04','2025-02-04 19:57:53','2025-02-09 19:45:45'),(51,827,1,'bronze',20.00,'2025-02-04','2025-03-04','2025-02-04 19:58:43','2025-02-04 19:58:43'),(54,50,1,'bronze',20.00,'2025-02-05','2025-03-05','2025-02-05 13:40:10','2025-02-05 13:40:10'),(55,895,1,'bronze',20.00,'2025-02-05','2025-03-05','2025-02-05 13:40:43','2025-02-05 13:40:43'),(56,1051,7,'8M',30.00,'2025-02-05','2025-03-05','2025-02-05 13:41:45','2025-02-05 13:41:45'),(57,792,1,'bronze',20.00,'2025-02-05','2025-03-05','2025-02-05 13:42:55','2025-02-05 13:42:55'),(58,52,3,'gold',30.00,'2025-02-05','2025-03-05','2025-02-05 13:44:57','2025-02-05 13:44:57'),(59,1113,1,'bronze',20.00,'2025-02-05','2025-03-05','2025-02-05 13:45:46','2025-02-05 13:45:46'),(60,807,1,'bronze',20.00,'2025-02-05','2025-03-05','2025-02-05 13:46:18','2025-02-05 13:46:18'),(61,907,1,'bronze',20.00,'2025-02-05','2025-03-05','2025-02-05 13:47:01','2025-02-05 13:47:01'),(62,741,1,'bronze',20.00,'2025-02-05','2025-03-05','2025-02-05 13:47:36','2025-02-05 13:47:36'),(63,820,1,'bronze',20.00,'2025-02-05','2025-03-05','2025-02-05 13:49:50','2025-02-05 13:49:50'),(64,982,2,'silver',25.00,'2025-02-05','2025-03-05','2025-02-05 13:52:02','2025-02-05 13:52:02'),(65,1095,2,'silver',25.00,'2025-02-05','2025-03-05','2025-02-05 19:31:24','2025-02-05 19:31:24'),(66,870,2,'silver',25.00,'2025-02-05','2025-03-05','2025-02-05 19:32:27','2025-02-05 19:32:27'),(67,1123,2,'silver',25.00,'2025-02-05','2025-03-05','2025-02-05 19:34:15','2025-02-05 19:34:15'),(68,859,1,'bronze',20.00,'2025-02-05','2025-03-05','2025-02-05 19:34:50','2025-02-05 19:34:50'),(69,960,1,'bronze',20.00,'2025-02-05','2025-03-05','2025-02-05 19:35:30','2025-02-05 19:35:30'),(70,58,1,'bronze',20.00,'2025-02-05','2025-03-05','2025-02-05 19:36:11','2025-02-05 19:36:11'),(71,984,4,'1',15.00,'2025-02-05','2025-03-05','2025-02-05 19:37:10','2025-02-05 19:37:10'),(72,898,2,'silver',25.00,'2025-02-05','2025-03-05','2025-02-05 19:37:56','2025-02-05 19:37:56'),(73,822,2,'silver',25.00,'2025-02-04','2025-03-04','2025-02-06 19:39:20','2025-02-06 19:39:20'),(74,874,2,'silver',24.00,'2025-02-04','2025-03-04','2025-02-06 19:40:08','2025-02-09 03:06:40'),(75,120,3,'gold',30.00,'2025-02-06','2025-03-06','2025-02-06 19:41:58','2025-02-06 19:41:58'),(76,867,1,'bronze',20.00,'2025-02-06','2025-03-06','2025-02-06 19:44:54','2025-02-06 19:44:54'),(77,1151,2,'silver',25.00,'2025-02-06','2025-03-06','2025-02-06 19:47:47','2025-02-06 19:47:47'),(78,1094,1,'bronze',20.00,'2025-02-06','2025-03-06','2025-02-06 19:51:05','2025-02-06 19:51:05'),(79,833,3,'gold',30.00,'2025-02-06','2025-03-06','2025-02-06 19:51:34','2025-02-06 19:51:34'),(80,1125,2,'silver',25.00,'2025-02-06','2025-03-06','2025-02-06 19:52:09','2025-02-06 19:52:09'),(81,1072,4,'1',15.00,'2025-02-06','2025-03-06','2025-02-06 19:53:50','2025-02-06 19:53:50'),(82,840,1,'bronze',20.00,'2025-02-06','2025-03-06','2025-02-06 19:54:23','2025-02-06 19:54:23'),(83,1132,1,'bronze',20.00,'2025-02-06','2025-03-06','2025-02-06 19:55:01','2025-02-06 19:55:01'),(84,1103,1,'bronze',20.00,'2025-02-06','2025-03-06','2025-02-06 19:55:31','2025-02-06 19:55:31'),(85,846,1,'bronze',20.00,'2025-02-07','2025-03-07','2025-02-07 19:46:05','2025-02-07 19:46:05'),(86,869,2,'silver',25.00,'2025-02-07','2025-03-07','2025-02-07 19:46:55','2025-02-07 19:46:55'),(87,812,2,'silver',22.00,'2025-02-07','2025-03-07','2025-02-07 19:48:47','2025-02-09 19:46:27'),(88,890,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 10:22:19','2025-02-08 10:22:19'),(89,1152,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 10:32:33','2025-02-08 10:32:33'),(90,1153,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 10:34:30','2025-02-08 10:34:30'),(91,865,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 10:39:18','2025-02-08 10:39:18'),(92,837,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 10:43:01','2025-02-08 10:43:01'),(93,805,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 10:43:35','2025-02-08 10:43:35'),(94,844,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 10:44:03','2025-02-08 10:44:03'),(95,910,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 10:44:27','2025-02-08 10:44:27'),(96,804,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 10:46:18','2025-02-08 10:46:18'),(97,789,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 10:48:18','2025-02-08 10:48:18'),(98,796,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 10:49:34','2025-02-08 10:49:34'),(99,68,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 10:50:39','2025-02-08 10:50:39'),(100,811,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 10:51:17','2025-02-08 10:51:17'),(101,67,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 10:51:50','2025-02-08 10:51:50'),(102,915,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 10:52:10','2025-02-08 10:52:10'),(103,826,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 10:52:44','2025-02-08 10:52:44'),(104,718,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 10:53:04','2025-02-08 10:53:04'),(105,760,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 10:53:31','2025-02-08 10:53:31'),(106,889,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 10:53:50','2025-02-08 10:53:50'),(107,824,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 10:54:16','2025-02-08 10:54:16'),(108,43,3,'gold',30.00,'2025-02-08','2025-03-08','2025-02-08 10:57:52','2025-02-08 10:57:52'),(109,885,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 10:58:33','2025-02-08 10:58:33'),(110,779,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 11:00:04','2025-02-08 11:00:04'),(111,784,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 11:01:20','2025-02-08 11:01:20'),(112,763,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 11:01:36','2025-02-08 11:01:36'),(113,854,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 11:02:01','2025-02-08 11:02:01'),(114,782,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 11:03:24','2025-02-08 11:03:24'),(115,829,1,'bronze',20.00,'2025-02-08','2025-03-03','2025-02-08 11:05:23','2025-02-08 11:05:23'),(116,780,2,'silver',25.00,'2025-02-08','2025-03-02','2025-02-08 11:05:53','2025-02-08 11:05:53'),(117,808,1,'bronze',20.00,'2025-02-08','2025-02-12','2025-02-08 11:07:08','2025-02-08 11:07:08'),(118,806,2,'silver',25.00,'2025-02-08','2025-03-04','2025-02-08 11:07:47','2025-02-08 11:07:47'),(119,875,2,'silver',25.00,'2025-02-08','2025-03-15','2025-02-08 11:10:50','2025-02-08 11:10:50'),(120,715,2,'silver',25.00,'2025-02-08','2025-02-18','2025-02-08 11:11:55','2025-02-08 11:11:55'),(121,884,2,'silver',25.00,'2025-02-08','2025-02-16','2025-02-08 11:12:40','2025-02-08 11:12:40'),(122,697,2,'silver',25.00,'2025-02-08','2025-02-19','2025-02-08 11:13:09','2025-02-08 11:13:09'),(123,65,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 11:14:20','2025-02-08 11:14:20'),(124,1004,2,'silver',25.00,'2025-02-08','2025-02-28','2025-02-08 11:14:47','2025-02-08 11:14:47'),(125,834,2,'silver',25.00,'2025-02-08','2025-02-16','2025-02-08 11:15:14','2025-02-08 11:15:14'),(126,1154,2,'silver',25.00,'2025-02-08','2025-03-04','2025-02-08 11:17:36','2025-02-08 11:17:36'),(127,847,2,'silver',25.00,'2025-02-08','2025-03-04','2025-02-08 11:18:21','2025-02-08 11:18:21'),(128,838,1,'bronze',20.00,'2025-02-08','2025-03-05','2025-02-08 11:18:59','2025-02-08 11:18:59'),(129,723,2,'silver',25.00,'2025-02-08','2025-03-04','2025-02-08 11:20:40','2025-02-08 11:20:40'),(130,801,2,'silver',25.00,'2025-02-08','2025-03-14','2025-02-08 11:21:39','2025-02-08 11:21:39'),(131,762,2,'silver',25.00,'2025-02-08','2025-02-10','2025-02-08 11:24:40','2025-02-08 11:24:40'),(132,791,2,'silver',25.00,'2025-02-08','2025-02-12','2025-02-08 11:25:23','2025-02-08 11:25:23'),(133,912,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 11:26:38','2025-02-08 11:26:38'),(134,888,1,'bronze',20.00,'2025-02-08','2025-03-06','2025-02-08 11:27:04','2025-02-08 11:27:04'),(135,842,2,'silver',25.00,'2025-02-08','2025-02-16','2025-02-08 11:27:39','2025-02-08 11:27:39'),(136,1096,2,'silver',25.00,'2025-02-08','2025-02-17','2025-02-08 11:28:20','2025-02-08 11:28:20'),(137,879,1,'bronze',20.00,'2025-02-08','2025-02-18','2025-02-08 11:28:54','2025-02-08 11:28:54'),(138,877,3,'gold',30.00,'2025-02-08','2025-02-18','2025-02-08 11:29:30','2025-02-08 11:29:30'),(139,707,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 11:30:16','2025-02-08 11:30:16'),(140,857,1,'bronze',20.00,'2025-02-08','2025-03-07','2025-02-08 11:30:59','2025-02-08 11:30:59'),(141,756,3,'gold',30.00,'2025-02-08','2025-03-03','2025-02-08 11:31:52','2025-02-08 11:31:52'),(142,54,2,'silver',25.00,'2025-02-08','2025-03-03','2025-02-08 11:32:25','2025-02-08 11:32:25'),(143,775,2,'silver',25.00,'2025-02-08','2025-02-24','2025-02-08 11:34:09','2025-02-08 11:34:09'),(144,813,2,'silver',25.00,'2025-02-08','2025-02-14','2025-02-08 11:34:43','2025-02-08 11:34:43'),(145,696,2,'silver',25.00,'2025-02-08','2025-02-16','2025-02-08 11:35:18','2025-02-08 11:35:18'),(146,60,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 11:36:37','2025-02-08 11:36:37'),(147,57,2,'silver',25.00,'2025-02-08','2025-03-02','2025-02-08 11:37:11','2025-02-08 11:37:11'),(148,746,1,'bronze',20.00,'2025-02-08','2025-03-07','2025-02-08 11:37:55','2025-02-08 11:37:55'),(149,917,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 11:38:33','2025-02-08 11:38:33'),(150,785,2,'silver',25.00,'2025-02-08','2025-02-12','2025-02-08 11:39:30','2025-02-08 11:39:30'),(151,36,1,'bronze',20.00,'2025-02-08','2025-03-05','2025-02-08 11:40:14','2025-02-08 11:40:14'),(152,35,2,'silver',25.00,'2025-02-08','2025-02-18','2025-02-08 11:40:36','2025-02-08 11:40:36'),(153,849,1,'bronze',20.00,'2025-02-08','2025-02-09','2025-02-08 11:41:15','2025-02-08 11:41:15'),(154,852,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 11:42:00','2025-02-08 11:42:00'),(155,883,2,'silver',25.00,'2025-02-08','2025-02-20','2025-02-08 11:42:47','2025-02-08 11:42:47'),(156,863,1,'bronze',20.00,'2025-02-08','2025-02-10','2025-02-08 11:43:28','2025-02-08 11:43:28'),(157,858,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 11:44:52','2025-02-08 11:44:52'),(158,21,2,'silver',25.00,'2025-02-08','2025-03-03','2025-02-08 11:45:43','2025-02-08 11:45:43'),(159,892,2,'silver',25.00,'2025-02-08','2025-02-09','2025-02-08 11:46:15','2025-02-08 11:46:15'),(160,817,2,'silver',25.00,'2025-02-08','2025-02-13','2025-02-08 11:46:53','2025-02-08 11:46:53'),(161,887,2,'silver',25.00,'2025-02-08','2025-02-10','2025-02-08 11:47:41','2025-02-08 11:47:41'),(162,712,2,'silver',25.00,'2025-02-08','2025-03-03','2025-02-08 14:12:20','2025-02-08 14:12:20'),(163,901,1,'bronze',20.00,'2025-02-08','2025-03-03','2025-02-08 14:16:03','2025-02-08 14:16:03'),(164,783,2,'silver',25.00,'2025-02-08','2025-02-14','2025-02-08 14:16:32','2025-02-08 14:16:32'),(165,802,2,'silver',25.00,'2025-02-08','2025-03-04','2025-02-08 14:17:14','2025-02-08 14:17:14'),(166,740,2,'silver',25.00,'2025-02-08','2025-02-28','2025-02-08 14:17:39','2025-02-08 14:17:39'),(167,821,1,'bronze',20.00,'2025-02-08','2025-03-09','2025-02-08 14:18:13','2025-02-08 14:18:13'),(168,880,2,'silver',25.00,'2025-02-08','2025-02-20','2025-02-08 14:18:52','2025-02-08 14:18:52'),(169,839,2,'silver',25.00,'2025-02-08','2025-03-05','2025-02-08 14:19:31','2025-02-08 14:19:31'),(170,761,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 14:20:09','2025-02-08 14:20:09'),(171,773,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 14:20:48','2025-02-08 14:20:48'),(172,774,3,'gold',30.00,'2025-02-08','2025-03-04','2025-02-08 14:21:27','2025-02-08 14:21:27'),(173,733,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 14:22:14','2025-02-08 14:22:14'),(174,69,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 14:22:30','2025-02-08 14:22:30'),(175,876,2,'silver',25.00,'2025-02-08','2025-03-02','2025-02-08 14:23:37','2025-02-08 14:23:37'),(176,881,1,'bronze',20.00,'2025-02-08','2025-02-09','2025-02-08 14:24:23','2025-02-08 14:24:23'),(177,794,1,'bronze',20.00,'2025-02-08','2025-02-09','2025-02-08 14:24:57','2025-02-08 14:24:57'),(178,771,2,'silver',25.00,'2025-02-08','2025-03-03','2025-02-08 14:25:30','2025-02-08 14:25:30'),(179,914,2,'silver',25.00,'2025-02-08','2025-02-20','2025-02-08 14:25:53','2025-02-08 14:25:53'),(180,752,2,'silver',25.00,'2025-02-08','2025-02-23','2025-02-08 14:28:06','2025-02-08 14:28:06'),(181,32,2,'silver',25.00,'2025-02-08','2025-03-04','2025-02-08 14:28:51','2025-02-08 14:28:51'),(182,841,2,'silver',25.00,'2025-02-08','2025-02-18','2025-02-08 14:30:29','2025-02-08 14:30:29'),(183,47,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 14:30:49','2025-02-08 14:30:49'),(184,871,2,'silver',25.00,'2025-02-08','2025-02-11','2025-02-08 14:31:30','2025-02-08 14:31:30'),(185,825,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 14:32:19','2025-02-08 14:32:19'),(186,845,3,'gold',30.00,'2025-02-08','2025-02-17','2025-02-08 14:33:03','2025-02-08 14:33:03'),(187,878,2,'silver',25.00,'2025-02-08','2025-03-03','2025-02-08 14:33:46','2025-02-08 14:33:46'),(188,903,2,'silver',25.00,'2025-02-08','2025-02-28','2025-02-08 14:35:07','2025-02-08 14:35:07'),(189,64,2,'silver',25.00,'2025-02-08','2025-03-03','2025-02-08 14:35:32','2025-02-08 14:35:32'),(190,815,1,'bronze',20.00,'2025-02-08','2025-03-06','2025-02-08 14:36:13','2025-02-08 14:36:13'),(191,860,2,'silver',25.00,'2025-02-08','2025-02-17','2025-02-08 14:36:57','2025-02-08 14:36:57'),(192,776,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 14:37:32','2025-02-08 14:37:32'),(193,755,2,'silver',25.00,'2025-02-08','2025-03-07','2025-02-08 14:38:36','2025-02-08 14:38:36'),(194,916,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 14:38:57','2025-02-08 14:38:57'),(195,894,1,'bronze',20.00,'2025-02-08','2025-03-02','2025-02-08 14:39:33','2025-02-08 14:39:33'),(196,53,3,'gold',30.00,'2025-02-08','2025-03-08','2025-02-08 14:40:06','2025-02-08 14:40:06'),(197,855,7,'8M',30.00,'2025-02-08','2025-03-02','2025-02-08 14:41:43','2025-02-08 14:41:43'),(198,42,2,'silver',25.00,'2025-02-08','2025-03-06','2025-02-08 14:42:12','2025-02-08 14:42:12'),(199,26,3,'gold',30.00,'2025-02-08','2025-03-05','2025-02-08 14:43:00','2025-02-08 14:43:00'),(200,832,2,'silver',25.00,'2025-02-08','2025-02-15','2025-02-08 14:43:51','2025-02-08 14:43:51'),(201,753,2,'silver',25.00,'2025-02-08','2025-02-20','2025-02-08 14:44:24','2025-02-08 14:44:24'),(202,748,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 14:44:58','2025-02-08 14:44:58'),(203,797,2,'silver',25.00,'2025-02-08','2025-02-15','2025-02-08 14:46:08','2025-02-08 14:46:08'),(204,830,2,'silver',25.00,'2025-02-08','2025-03-03','2025-02-08 14:46:39','2025-02-08 14:46:39'),(205,851,2,'silver',25.00,'2025-02-08','2025-02-21','2025-02-08 14:47:24','2025-02-08 14:47:24'),(206,911,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 14:48:11','2025-02-08 14:48:11'),(207,767,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 14:51:27','2025-02-08 14:51:27'),(208,778,2,'silver',25.00,'2025-02-08','2025-03-02','2025-02-08 14:52:28','2025-02-08 14:52:28'),(209,768,1,'bronze',20.00,'2025-02-08','2025-03-03','2025-02-08 14:52:59','2025-02-08 14:52:59'),(210,848,2,'silver',25.00,'2025-02-08','2025-03-02','2025-02-08 14:55:28','2025-02-08 14:55:28'),(211,765,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 14:56:11','2025-02-08 14:56:11'),(212,814,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 14:58:09','2025-02-08 14:58:09'),(213,55,2,'silver',25.00,'2025-02-08','2025-02-09','2025-02-08 14:59:39','2025-02-08 14:59:39'),(214,899,2,'silver',25.00,'2025-02-08','2025-02-14','2025-02-08 15:00:41','2025-02-08 15:00:41'),(215,803,2,'silver',25.00,'2025-02-08','2025-02-10','2025-02-08 15:01:40','2025-02-08 15:01:40'),(216,853,2,'silver',25.00,'2025-02-08','2025-03-05','2025-02-08 15:02:27','2025-02-08 15:02:27'),(217,828,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 15:03:11','2025-02-08 15:03:11'),(218,787,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 15:03:54','2025-02-08 15:03:54'),(219,795,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-08 15:04:43','2025-02-08 15:04:43'),(220,757,2,'silver',25.00,'2025-02-08','2025-02-17','2025-02-08 15:06:22','2025-02-08 15:06:22'),(221,866,2,'silver',25.00,'2025-02-08','2025-02-17','2025-02-08 15:06:56','2025-02-08 15:06:56'),(222,809,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 15:07:39','2025-02-08 15:07:39'),(223,835,2,'silver',25.00,'2025-02-08','2025-03-03','2025-02-08 15:08:13','2025-02-08 15:08:13'),(224,22,2,'silver',25.00,'2025-02-08','2025-03-03','2025-02-08 15:11:09','2025-02-08 15:11:09'),(225,171,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 15:11:30','2025-02-08 15:11:30'),(226,823,2,'silver',25.00,'2025-02-08','2025-03-01','2025-02-08 15:11:52','2025-02-08 15:11:52'),(227,818,3,'gold',30.00,'2025-02-08','2025-03-02','2025-02-08 15:13:45','2025-02-08 15:13:45'),(228,766,2,'silver',25.00,'2025-02-08','2025-02-13','2025-02-08 15:14:11','2025-02-08 15:14:11'),(229,786,2,'silver',25.00,'2025-02-08','2025-03-03','2025-02-08 15:14:37','2025-02-08 15:14:37'),(230,39,2,'silver',25.00,'2025-02-08','2025-02-16','2025-02-08 15:15:00','2025-02-08 15:15:00'),(231,788,2,'silver',25.00,'2025-02-08','2025-02-12','2025-02-08 15:15:28','2025-02-08 15:15:28'),(232,49,2,'silver',25.00,'2025-02-08','2025-03-02','2025-02-08 15:15:58','2025-02-08 15:15:58'),(233,747,2,'silver',25.00,'2025-02-08','2025-03-03','2025-02-08 15:16:23','2025-02-08 15:16:23'),(234,819,2,'silver',25.00,'2025-02-08','2025-03-03','2025-02-08 15:17:04','2025-02-08 15:17:04'),(235,772,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-08 15:18:21','2025-02-08 15:18:21'),(236,27,2,'silver',25.00,'2025-02-08','2025-02-17','2025-02-08 15:18:49','2025-02-08 15:18:49'),(237,742,1,'bronze',20.00,'2025-02-08','2025-03-05','2025-02-08 15:19:14','2025-02-08 15:19:14'),(238,46,2,'silver',25.00,'2025-02-28','2025-03-28','2025-02-08 15:21:13','2025-02-08 15:21:13'),(239,31,2,'silver',25.00,'2025-03-03','2025-04-02','2025-02-08 15:21:52','2025-02-08 15:21:52'),(240,799,3,'gold',30.00,'2025-03-03','2025-04-02','2025-02-08 15:23:01','2025-02-08 15:23:01'),(241,891,2,'silver',25.00,'2025-02-17','2025-03-17','2025-02-08 15:23:27','2025-02-08 15:23:27'),(242,770,3,'gold',30.00,'2025-03-06','2025-04-05','2025-02-08 15:23:54','2025-02-08 15:23:54'),(243,1029,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-09 15:10:26','2025-02-09 15:10:26'),(244,923,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-09 15:12:31','2025-02-09 15:12:31'),(245,1136,4,'1',15.00,'2025-02-08','2025-03-08','2025-02-09 15:13:18','2025-02-09 15:13:18'),(246,1155,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-09 15:18:05','2025-02-09 15:18:05'),(247,1104,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-09 15:19:40','2025-02-09 15:19:40'),(248,1119,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-09 15:21:22','2025-02-09 15:21:22'),(249,44,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-09 15:23:10','2025-02-09 15:23:10'),(250,943,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-09 15:23:33','2025-02-09 15:23:33'),(251,993,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-09 15:24:37','2025-02-09 15:24:37'),(252,1105,2,'silver',25.00,'2025-02-08','2025-03-08','2025-02-09 15:25:22','2025-02-09 15:25:22'),(253,1019,1,'bronze',20.00,'2025-02-08','2025-03-08','2025-02-09 15:26:05','2025-02-09 15:26:05'),(254,983,1,'bronze',20.00,'2025-02-09','2025-03-09','2025-02-09 15:26:43','2025-02-09 15:26:43');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'بنزين','2025-01-30 16:45:09','2025-01-30 16:45:09'),(2,'عبدالرحمن شخصي','2025-01-30 16:46:11','2025-01-30 16:46:11'),(3,'فايبر','2025-01-30 16:46:15','2025-01-30 16:46:15'),(4,'وليد','2025-01-30 16:46:18','2025-01-30 16:46:18'),(5,'امي','2025-01-30 16:46:22','2025-01-30 16:46:22'),(6,'ابي','2025-01-30 16:46:25','2025-01-30 16:46:25'),(7,'هلا','2025-01-30 16:46:28','2025-01-30 16:46:28'),(8,'محمد','2025-01-30 16:46:33','2025-01-30 16:46:33'),(9,'عمر','2025-01-30 16:46:37','2025-01-30 16:46:37');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Abdurahman alzoabi','admin@gmail.com','$2y$12$leZy.NuHINa/3ZRq6b5IlOOHE6Kayv2QlBvu/OcaXXcbfSOy6OIS2',NULL,'kQ4bqGolTfJna1ioQ3t3yHkLCU075flmntDtdmltJO1fiVxXLs3HobRx3ZXB','2025-01-12 21:36:30','2025-01-13 06:34:21'),(2,'hala','hala@varnet','$2y$12$uIlWelaZLVXxvBWIpv0zBeZmKAoUT9rKPC7k7OGQNRve.3EYpEbXy',NULL,'wAhcP3G1ueE46kd0iwJZrL2PtEOGkxboydRwmNX8s7MRjnMUFq7cJGWaLKNZ','2025-01-17 02:31:38','2025-01-22 17:51:35'),(3,'omar alzohbi','omar@varnet','$2y$12$LcSuOUtqTN8ky1u9r43se.8WabocmkTcqTRUBgri0flTu5Zj4yX9.',NULL,NULL,'2025-01-22 17:39:02','2025-02-09 00:17:53'),(5,'abd','abdzohbi@gmail.com','$2y$12$YC424PQXvWf2UZH.kxvLE.ukOZFrBYtFVagLEDBO4JcZ.jQyglnPa',NULL,NULL,'2025-02-07 19:58:09','2025-02-07 19:58:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-10  1:53:07
