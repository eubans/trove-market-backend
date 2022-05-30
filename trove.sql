-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: trove
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2018_04_30_000000_create_roles_table',1),(2,'2018_04_30_000010_create_users_table',1),(3,'2018_04_30_000011_create_password_resets_table',1),(4,'2018_04_30_000020_create_user_roles_table',1),(5,'2019_08_19_000000_create_failed_jobs_table',1),(6,'2019_12_14_000001_create_personal_access_tokens_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User','14a182d8-927c-400f-91a1-83f9dcdf882f','14a182d8-927c-400f-91a1-83f9dcdf882f','140da8dd166dbd937e488d5e5db8f40c357a87d3cb46fe8aa0257e4ff21d5159','[\"*\"]','2022-05-12 09:52:27','2022-05-12 09:50:09','2022-05-12 09:52:27'),(2,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','d2b5cf14fd2a148e776667906fe300448f40b0142b6f898f01895b203e3be288','[\"*\"]','2022-05-12 09:54:09','2022-05-12 09:54:02','2022-05-12 09:54:09'),(3,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','a6a089a0f38124e2b7b645fd6577c3148a599ae3c742e9a754961d7af0df5231','[\"*\"]',NULL,'2022-05-12 10:34:22','2022-05-12 10:34:22'),(4,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','c80fff6e6408c185ecd614b259495a51cff96fff42d0440c02848bb1cdb5bf14','[\"*\"]',NULL,'2022-05-12 10:43:58','2022-05-12 10:43:58'),(5,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','b742a1cf12c9b7530ba1a4760a1a5cb2fd1294003bc80c8d28132974528352c3','[\"*\"]',NULL,'2022-05-13 17:34:46','2022-05-13 17:34:46'),(6,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','80f2a6dfb3dbde0a0cd870539fe19ad834dadcccf71e4036a223d8b2af28120d','[\"*\"]',NULL,'2022-05-13 17:36:05','2022-05-13 17:36:05'),(7,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','0245df418363a2686470ca391ce6c0645b869f942d1cfe2a1de48297084526b6','[\"*\"]',NULL,'2022-05-13 17:45:05','2022-05-13 17:45:05'),(8,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','0e50065d5d2da439f4b70fad783b9e2df9f5b84cf3238732c98f93bcb6b64df9','[\"*\"]',NULL,'2022-05-13 17:48:12','2022-05-13 17:48:12'),(9,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','06846463df12f3392d59a879b038c26c29133878d9bd609ec3d1bf7600f981b1','[\"*\"]',NULL,'2022-05-13 17:48:31','2022-05-13 17:48:31'),(10,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','000b92624fbc2d7603ed5a5a49713614a42f658985b0045a68bd74d32545857a','[\"*\"]',NULL,'2022-05-13 17:48:46','2022-05-13 17:48:46'),(11,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','3ca8e0a0635bff4bf91916f587428efb7b776172f92521819997c28d9e97157a','[\"*\"]',NULL,'2022-05-13 18:04:36','2022-05-13 18:04:36'),(12,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','753534f99267c046ff620ce3e939ec48300eeec8bfccaef2dea84543d8ee0a22','[\"*\"]',NULL,'2022-05-13 18:05:17','2022-05-13 18:05:17'),(13,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','462fc67f569daee7bf40104dca9b773ece1a7c853803f8436c0074b06212893a','[\"*\"]',NULL,'2022-05-13 18:10:01','2022-05-13 18:10:01'),(14,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','980c8c337e5322c4269547b0fe7929972794e6e357dc730dce8534920848be45','[\"*\"]',NULL,'2022-05-13 18:24:02','2022-05-13 18:24:02'),(15,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','efaf24cec9536270c2ebc38e494160480a54abdf79052266a045eaf945d364e5','[\"*\"]',NULL,'2022-05-13 18:31:47','2022-05-13 18:31:47'),(16,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','3ab984d975cfb41d9e5a02da1eefb088d8a4b160ceca90237f956b2036b6fc81','[\"*\"]',NULL,'2022-05-13 18:51:23','2022-05-13 18:51:23'),(17,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','ac2d629532d89b9b7b89f52650824dbe0a9cd2878bebccea861a8d39229d9bc7','[\"*\"]',NULL,'2022-05-13 18:54:36','2022-05-13 18:54:36'),(18,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','5e8974c4ccdab70e3fec7d6f34561ac0e639aa27d09b7294a623f6aa8a7496e3','[\"*\"]','2022-05-14 01:00:32','2022-05-13 19:42:15','2022-05-14 01:00:32'),(19,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','b6804ba572888dd6f161ddf0f01b5229fba6f2c579ffcacf51386e4b87e55fa0','[\"*\"]',NULL,'2022-05-14 01:00:53','2022-05-14 01:00:53'),(20,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','8af432b1a2261c7dc4c9e5fbdae5194f3a1bf25fde3b150a3bc20dbcf22dfe9d','[\"*\"]',NULL,'2022-05-14 01:01:05','2022-05-14 01:01:05'),(21,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','1fcba483fce8e7aea78e55f840bdcc151e364b0c85e33358d0ece2c786cad946','[\"*\"]','2022-05-14 01:16:47','2022-05-14 01:01:10','2022-05-14 01:16:47'),(22,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','c4b41ff22056097c311b716cdb5b991542709a6f056bfe98b2cfc3064e989d5c','[\"*\"]','2022-05-14 01:47:48','2022-05-14 01:30:34','2022-05-14 01:47:48'),(23,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','0dc2f7e8dad77fb013737602e0f8a2fd185a8edca51599e1aa4f5c7880978a0f','[\"*\"]','2022-05-14 07:33:36','2022-05-14 02:27:05','2022-05-14 07:33:36'),(24,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','9cbed54321a5bd9c932913b8a70441047ff295a21a0802121ad81b3ec78d35da','[\"*\"]','2022-05-14 04:18:47','2022-05-14 04:18:39','2022-05-14 04:18:47'),(25,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','bbf4586d819cb0a67225319b6636b486927ebe8ed60735ad6044575033f5a36c','[\"*\"]','2022-05-14 07:43:43','2022-05-14 07:34:15','2022-05-14 07:43:43'),(26,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','96c3b7a2c6e45d8d442104d4e9d76b3b5497d9d4c252bea6fa98c7b4ade31a17','[\"*\"]','2022-05-14 18:52:03','2022-05-14 07:44:03','2022-05-14 18:52:03'),(27,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','fe84876474542e7568e5031855fb351484fde147ed45b3df4cfd2cba49386822','[\"*\"]','2022-05-14 19:02:20','2022-05-14 18:52:18','2022-05-14 19:02:20'),(28,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','641fc1979f38b76e7150672ab08158085093693b8006f802c021ca5a63894a6b','[\"*\"]','2022-05-14 19:30:52','2022-05-14 19:02:30','2022-05-14 19:30:52'),(29,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','aea70e52d8221f21f51c6bf0ddafff8227fe8093888560e4ad2701db976f326f','[\"*\"]','2022-05-14 19:33:03','2022-05-14 19:31:01','2022-05-14 19:33:03'),(30,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','2c967d5892b96b4539776dd3d4b5c55b40812e5a06318ced9e1c4206bf65d60a','[\"*\"]','2022-05-14 19:33:38','2022-05-14 19:33:19','2022-05-14 19:33:38'),(31,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','4343c7d43e4e8eb01a6915df54eb7892befc5f9b30e367959f52cfffc8b56806','[\"*\"]',NULL,'2022-05-14 19:35:05','2022-05-14 19:35:05'),(32,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','5071278422dd882c598b23a5117ebe1d33340bf6955f07d6da1ac98917cd59b5','[\"*\"]','2022-05-14 19:40:00','2022-05-14 19:38:07','2022-05-14 19:40:00'),(33,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','084c3ef40bc84b626fc8f5198ca2e78b1a516f9da54362ab99ae5f17fb98e2d2','[\"*\"]','2022-05-15 07:29:04','2022-05-14 19:40:46','2022-05-15 07:29:04'),(34,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','6b4fcdb376e8e6331dd92e813506b08e8b8672cd888e9410cc2349c4f571bc5b','[\"*\"]','2022-05-16 05:45:23','2022-05-15 07:29:36','2022-05-16 05:45:23'),(35,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','0ee955bdefd5d2bab3b580bc0cbd2ec25385054a9a081ea06f5d12107cdd35b4','[\"*\"]','2022-05-16 05:48:44','2022-05-16 05:47:11','2022-05-16 05:48:44'),(36,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','0547f6ea7a0aabef70bdb2212bd6623a395a09ac8eb9065dea9f1f30e4fe38ea','[\"*\"]','2022-05-16 06:46:39','2022-05-16 05:48:58','2022-05-16 06:46:39'),(37,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','bab19318146b64fa35bcddabbdcf94293d2d1688d1bbabce7aaca968cde8f679','[\"*\"]','2022-05-16 08:34:27','2022-05-16 06:46:50','2022-05-16 08:34:27'),(38,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','915749598c6355818a8fe7cba7f38f3a50516530958331070057969a50b05a00','[\"*\"]','2022-05-16 08:43:27','2022-05-16 08:34:39','2022-05-16 08:43:27'),(39,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','96b7e73ca0a3d9f1ef857b02bb506a75c33a972ca27c18990861e0340e144f35','[\"*\"]','2022-05-16 08:45:13','2022-05-16 08:44:09','2022-05-16 08:45:13'),(40,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','ad4b9e612176691ed9bb2834ba6f599c1af8779ffd9b2007fc54a84b1c3fa0cd','[\"*\"]','2022-05-16 08:49:03','2022-05-16 08:48:04','2022-05-16 08:49:03'),(41,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','eabde6779dca8e843e63f9c6fbe986cf920cb09890236ba03ac6a7fd7ffed03b','[\"*\"]','2022-05-16 08:52:42','2022-05-16 08:49:29','2022-05-16 08:52:42'),(42,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','8dc6093f7194359a8c5c94df02de9d754886b3f1fef75ce8bf922caebbea77c3','[\"*\"]','2022-05-16 08:55:01','2022-05-16 08:52:54','2022-05-16 08:55:01'),(43,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','c81518ffc671e0542428802cd6028068f9a148a0106a25fd4c44a3c9021b3080','[\"*\"]','2022-05-16 09:37:28','2022-05-16 08:58:34','2022-05-16 09:37:28'),(44,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','13a05ff694a1e063131907c15bb968b1456c08205ef2b0f9436363ff19cf3adc','[\"*\"]','2022-05-16 09:49:07','2022-05-16 09:45:18','2022-05-16 09:49:07'),(45,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','97f46634c4e7aea274c6526cbca2566e24d94562e3f91b988f0c8900d8a29896','[\"*\"]','2022-05-16 09:56:21','2022-05-16 09:56:05','2022-05-16 09:56:21'),(46,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','abaa1f297bff28f01fcc02574a84b12c8a48f76cba8f09fafba5499320d5677c','[\"*\"]','2022-05-16 10:16:48','2022-05-16 09:57:58','2022-05-16 10:16:48'),(47,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','41527fe5cb9480a825ed89802d1d8c0b5e2cfee394dcce5b55d815b68d6c20f9','[\"*\"]','2022-05-23 07:40:28','2022-05-22 02:34:48','2022-05-23 07:40:28'),(48,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','81dfb65a2ec80d288b14fcc8a9d787e0048aca331492d84f40a0ba790480de10','[\"*\"]',NULL,'2022-05-27 20:16:04','2022-05-27 20:16:04'),(49,'App\\Models\\User','5682d4f9-d4a3-4304-b546-a8989de6f918','5682d4f9-d4a3-4304-b546-a8989de6f918','c48fb5539ee369f72efadbbbfa2e32baac77c48e5ef28cdf2396f5ca929338f2','[\"*\"]','2022-05-29 09:08:49','2022-05-27 20:19:54','2022-05-29 09:08:49');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('05ba0d6c-0773-46c1-9f0e-1134e8fbac9b','voluptatem','Aliquam exercitationem sit est iste optio.','2022-05-12 09:32:52','2022-05-12 09:32:52',NULL),('0b332bb0-772a-41d5-acf9-aa8eaa528008','quo','Et ut deserunt neque corrupti cupiditate qui sequi.','2022-05-12 09:32:52','2022-05-12 09:32:52',NULL),('2021729f-9546-4068-805b-78f989e93eaf','quas','Sit sit similique possimus quasi esse sed autem nulla.','2022-05-12 09:32:52','2022-05-12 09:32:52',NULL),('6fafe191-4387-492a-a099-365d7005ba7b','regular','Regular Users','2022-05-12 09:32:52','2022-05-12 09:32:52',NULL),('7ec185ea-1830-4ca4-99d3-9eb8de26c3c5','dolorem','Blanditiis sint dolores deleniti at tenetur quas.','2022-05-12 09:32:52','2022-05-12 09:32:52',NULL),('86d90ad7-9ccc-4a4a-a169-6b04d072ad35','in','Eligendi numquam saepe et error eveniet fugit ut.','2022-05-12 09:32:52','2022-05-12 09:32:52',NULL),('a1f75eca-de24-4ff1-9272-7753ff5aa154','molestiae','Et ipsa sunt est omnis deserunt et quis.','2022-05-12 09:32:52','2022-05-12 09:32:52',NULL),('af00805c-e093-4b17-8608-8f428b6cb86c','voluptatum','Nisi est omnis similique quae officiis.','2022-05-12 09:32:52','2022-05-12 09:32:52',NULL),('d20356c6-6ab1-49a8-a966-5bb759fa15ae','sit','Dolor officia dolor eius qui qui voluptatem dolor.','2022-05-12 09:32:52','2022-05-12 09:32:52',NULL),('dcc6ee8c-d06d-4843-bb15-81bd06d4c9bc','admin','Administrator Users','2022-05-12 09:32:52','2022-05-12 09:32:52',NULL),('e61c9761-93af-41fd-af8a-96ecef04dd22','laboriosam','Sunt cum quasi qui non.','2022-05-12 09:32:52','2022-05-12 09:32:52',NULL),('ece5b8eb-c8f4-446b-ad8f-72599ed74b94','odio','Rerum dolorum aliquid autem odit.','2022-05-12 09:32:52','2022-05-12 09:32:52',NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_role_id_foreign` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES ('6916a1a5-6a50-4223-9a29-dab68909ec4f','86d90ad7-9ccc-4a4a-a169-6b04d072ad35',NULL,NULL,NULL),('6916a1a5-6a50-4223-9a29-dab68909ec4f','a1f75eca-de24-4ff1-9272-7753ff5aa154',NULL,NULL,NULL),('fb2486fb-4094-4106-93fb-7363dabd3db8','ece5b8eb-c8f4-446b-ad8f-72599ed74b94',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_role` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_primary_role_foreign` (`primary_role`),
  CONSTRAINT `users_primary_role_foreign` FOREIGN KEY (`primary_role`) REFERENCES `roles` (`role_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('14a182d8-927c-400f-91a1-83f9dcdf882f','Admin','admin@admin.com','2022-05-12 09:32:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','dcc6ee8c-d06d-4843-bb15-81bd06d4c9bc','ojANc8Cn2t','2022-05-12 09:32:52','2022-05-12 09:32:52'),('5682d4f9-d4a3-4304-b546-a8989de6f918','Creator Test 1','creator_1@admin.com','2022-05-12 09:32:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','6fafe191-4387-492a-a099-365d7005ba7b','u8vfd6wO52','2022-05-12 09:32:52','2022-05-12 09:32:52'),('6916a1a5-6a50-4223-9a29-dab68909ec4f','Marcos Borer','kuphal.henri@example.org','2022-05-12 09:32:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','86d90ad7-9ccc-4a4a-a169-6b04d072ad35','eBvUWJ7k0d','2022-05-12 09:32:52','2022-05-12 09:32:52'),('7f2ce5f3-1994-4cc5-b089-67adcfee8756','Miss Marisa Runolfsdottir IV','jane.schultz@example.net','2022-05-12 09:32:53','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','a1f75eca-de24-4ff1-9272-7753ff5aa154','pt5eFz0GNf','2022-05-12 09:32:53','2022-05-12 09:32:53'),('c698f5f0-a010-489a-bfcd-9bc10f0f20a3','Davion Streich','dexter08@example.org','2022-05-12 09:32:53','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','af00805c-e093-4b17-8608-8f428b6cb86c','d9RmlnOnKY','2022-05-12 09:32:53','2022-05-12 09:32:53'),('c780e057-5bb7-4643-8ea0-b48fc7ee7a30','Vivian Auer','mjohns@example.net','2022-05-12 09:32:53','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','86d90ad7-9ccc-4a4a-a169-6b04d072ad35','3K6wUbKvi9','2022-05-12 09:32:53','2022-05-12 09:32:53'),('fb2486fb-4094-4106-93fb-7363dabd3db8','Jose Roberts','casandra83@example.com','2022-05-12 09:32:53','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','6fafe191-4387-492a-a099-365d7005ba7b','xCw7zriGes','2022-05-12 09:32:53','2022-05-12 09:32:53');
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

-- Dump completed on 2022-05-30 22:12:42
