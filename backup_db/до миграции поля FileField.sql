-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: u0646422_msc15
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add profile',1,'add_profile'),(2,'Can change profile',1,'change_profile'),(3,'Can delete profile',1,'delete_profile'),(4,'Can view profile',1,'view_profile'),(5,'Can add log entry',2,'add_logentry'),(6,'Can change log entry',2,'change_logentry'),(7,'Can delete log entry',2,'delete_logentry'),(8,'Can view log entry',2,'view_logentry'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add user',5,'add_user'),(18,'Can change user',5,'change_user'),(19,'Can delete user',5,'delete_user'),(20,'Can view user',5,'view_user'),(21,'Can add content type',6,'add_contenttype'),(22,'Can change content type',6,'change_contenttype'),(23,'Can delete content type',6,'delete_contenttype'),(24,'Can view content type',6,'view_contenttype'),(25,'Can add session',7,'add_session'),(26,'Can change session',7,'change_session'),(27,'Can delete session',7,'delete_session'),(28,'Can view session',7,'view_session'),(29,'Can add Статья',8,'add_post'),(30,'Can change Статья',8,'change_post'),(31,'Can delete Статья',8,'delete_post'),(32,'Can view Статья',8,'view_post'),(33,'Can add attachment',9,'add_attachment'),(34,'Can change attachment',9,'change_attachment'),(35,'Can delete attachment',9,'delete_attachment'),(36,'Can view attachment',9,'view_attachment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$RuMX03X9BZfq$O356T/OCRFmXn8WCVG8y/DDoQQ+mFnDD8oUTDRoW3CA=','2019-05-12 14:42:22.808833',1,'sudoadmin','','','gostev.dy@msc15.ru',1,1,'2019-02-26 17:02:34.386711'),(2,'pbkdf2_sha256$120000$HStfQPC5EKTH$ipxes4eCJrF0UwMnwlYF/f/E/0ED7t1zuFeyvYnHoLU=','2019-03-02 05:47:25.713808',1,'gostev.dy','','','',1,1,'2019-03-02 05:47:07.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-03-02 05:47:07.776670','2','gostev.dy',1,'[{\"added\": {}}, {\"added\": {\"name\": \"profile\", \"object\": \"\\u0413\\u043e\\u0441\\u0442\\u0435\\u0432 \\u0414\\u0435\\u043d\\u0438\\u0441 \\u042e\\u0440\\u044c\\u0435\\u0432\\u0438\\u0447\"}}]',5,1),(2,'2019-03-02 05:47:17.523828','2','gostev.dy',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\"]}}]',5,1),(3,'2019-03-02 05:47:43.885691','1','Мы начали разрабатывать новый сайт школы!',1,'[{\"added\": {}}]',8,2),(4,'2019-03-02 05:47:46.888078','1','Мы начали разрабатывать новый сайт школы!',2,'[]',8,2),(5,'2019-03-02 05:48:02.948010','2','Приобретён домен: msc15.ru',1,'[{\"added\": {}}]',8,2),(6,'2019-03-02 05:48:12.387936','3','Демонстрация наработок нового оформления!',1,'[{\"added\": {}}]',8,2),(7,'2019-03-02 06:46:22.765201','4','Проверка работы новостей.',1,'[{\"added\": {}}]',8,2),(8,'2019-03-02 08:03:58.762638','2','02.03.2019  05:48 — Приобретён домен: msc15.ru',2,'[]',8,2),(9,'2019-03-02 08:04:13.032338','3','02.03.2019  05:48 — Демонстрация наработок нового оформления!',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',8,2),(10,'2019-03-02 08:04:18.830806','3','02.03.2019  05:48 — Демонстрация наработок нового оформления!',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',8,2),(11,'2019-03-02 08:04:22.561938','2','02.03.2019  05:48 — Приобретён домен: msc15.ru',2,'[]',8,2),(12,'2019-03-02 09:02:05.422084','1','02.03.2019  05:47:43 — Мы начали разрабатывать новый сайт школы!',2,'[{\"changed\": {\"fields\": [\"img_preview\"]}}]',8,2),(13,'2019-03-02 09:02:16.780186','2','02.03.2019  05:48:02 — Приобретён домен: msc15.ru',2,'[{\"changed\": {\"fields\": [\"img_preview\"]}}]',8,2),(14,'2019-03-02 09:02:19.601250','3','02.03.2019  05:48:12 — Демонстрация наработок нового оформления!',2,'[{\"changed\": {\"fields\": [\"img_preview\"]}}]',8,2),(15,'2019-03-02 09:02:24.381135','4','02.03.2019  06:46:22 — Проверка работы новостей.',2,'[{\"changed\": {\"fields\": [\"img_preview\"]}}]',8,2),(16,'2019-03-02 09:22:20.312713','1','02.03.2019  05:47:43 — Мы начали разрабатывать новый сайт школы!',2,'[{\"changed\": {\"fields\": [\"img_preview\"]}}]',8,2),(17,'2019-03-02 09:22:25.358245','3','02.03.2019  05:48:12 — Демонстрация наработок нового оформления!',2,'[{\"changed\": {\"fields\": [\"img_preview\"]}}]',8,2),(18,'2019-03-02 09:22:28.950416','2','02.03.2019  05:48:02 — Приобретён домен: msc15.ru',2,'[{\"changed\": {\"fields\": [\"img_preview\"]}}]',8,2),(19,'2019-03-02 09:22:40.588251','4','02.03.2019  06:46:22 — Проверка работы новостей.',2,'[{\"changed\": {\"fields\": [\"img_preview\"]}}]',8,2),(20,'2019-03-02 09:28:29.738089','4','02.03.2019  06:46:22 — Проверка работы новостей.',2,'[{\"changed\": {\"fields\": [\"img_preview\"]}}]',8,2),(21,'2019-03-02 09:32:34.738707','3','02.03.2019  05:48:12 — Демонстрация наработок нового оформления!',2,'[{\"changed\": {\"fields\": [\"img_preview\"]}}]',8,2),(22,'2019-03-02 09:32:37.481006','2','02.03.2019  05:48:02 — Приобретён домен: msc15.ru',2,'[{\"changed\": {\"fields\": [\"img_preview\"]}}]',8,2),(23,'2019-03-02 09:32:39.921479','1','02.03.2019  05:47:43 — Мы начали разрабатывать новый сайт школы!',2,'[{\"changed\": {\"fields\": [\"img_preview\"]}}]',8,2),(24,'2019-04-04 20:03:57.767139','5','04.04.2019  20:03:57 — Возобновлена работа над сайтом!',1,'[{\"added\": {}}]',8,1),(25,'2019-04-04 20:23:16.633697','6','04.04.2019  20:23:16 — Проверка работы обложки новости',1,'[{\"added\": {}}]',8,1),(26,'2019-04-04 20:23:54.337298','7','04.04.2019  20:23:54 — Проверка работы обложки новости (2)',1,'[{\"added\": {}}]',8,1),(27,'2019-04-04 20:38:54.241185','6','04.04.2019  20:23:16 — Проверка работы обложки новости',2,'[{\"changed\": {\"fields\": [\"img_preview\"]}}]',8,1),(28,'2019-04-04 20:40:18.059491','7','04.04.2019  20:23:54 — Прощай, школа! Выпуск 2018',2,'[{\"changed\": {\"fields\": [\"title\", \"img_preview\"]}}]',8,1),(29,'2019-04-09 11:26:32.875092','7','04.04.2019  20:23:54 — Прощай, школа! Выпуск 2018',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',8,1),(30,'2019-05-12 15:03:16.348766','7','04.04.2019  20:23:54 — Прощай, школа! Выпуск 2018',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',8,1),(31,'2019-05-12 15:10:33.391284','7','04.04.2019  20:23:54 — Прощай, школа! Выпуск 2018',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',8,1),(32,'2019-05-12 15:13:26.911632','7','04.04.2019  20:23:54 — Прощай, школа! Выпуск 2018',2,'[]',8,1),(33,'2019-05-12 15:14:53.339523','7','04.04.2019  20:23:54 — Прощай, школа! Выпуск 2018',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(6,'contenttypes','contenttype'),(9,'django_summernote','attachment'),(8,'News','post'),(7,'sessions','session'),(1,'UserProfiles','profile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-02-26 17:01:54.174387'),(2,'auth','0001_initial','2019-02-26 17:01:55.096046'),(3,'UserProfiles','0001_initial','2019-02-26 17:01:55.236637'),(4,'admin','0001_initial','2019-02-26 17:01:55.470957'),(5,'admin','0002_logentry_remove_auto_add','2019-02-26 17:01:55.486578'),(6,'admin','0003_logentry_add_action_flag_choices','2019-02-26 17:01:55.502199'),(7,'contenttypes','0002_remove_content_type_name','2019-02-26 17:01:55.658433'),(8,'auth','0002_alter_permission_name_max_length','2019-02-26 17:01:55.752140'),(9,'auth','0003_alter_user_email_max_length','2019-02-26 17:01:55.861496'),(10,'auth','0004_alter_user_username_opts','2019-02-26 17:01:55.877111'),(11,'auth','0005_alter_user_last_login_null','2019-02-26 17:01:55.970840'),(12,'auth','0006_require_contenttypes_0002','2019-02-26 17:01:55.970840'),(13,'auth','0007_alter_validators_add_error_messages','2019-02-26 17:01:55.986493'),(14,'auth','0008_alter_user_username_max_length','2019-02-26 17:01:56.080190'),(15,'auth','0009_alter_user_last_name_max_length','2019-02-26 17:01:56.189584'),(16,'sessions','0001_initial','2019-02-26 17:01:56.267671'),(17,'News','0001_initial','2019-02-26 17:04:34.221992'),(18,'News','0002_post_img_preview','2019-03-02 09:00:51.786591'),(19,'News','0003_auto_20190302_1601','2019-03-02 09:01:49.055171'),(20,'News','0004_auto_20190302_1620','2019-03-02 09:20:18.844412'),(21,'django_summernote','0001_initial','2019-05-12 15:02:39.194017'),(22,'django_summernote','0002_update-help_text','2019-05-12 15:02:39.202992');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1g19yf5dnyf0mjbf88v5tgm2iskp1t6i','M2E0YTA0NzhiYmQ4Y2QyZGQxYjNkMTk2MzQ1MGYzODc4ZTAxMWQzOTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MWE4Y2IzZGUyNGJkZDliYWNmYjRhNjZmMTcyYjBjN2JkYzI4M2JmIn0=','2019-03-16 05:47:25.719791'),('z8rrjm580tybs0fka5ll3nvopmm5kc3r','Njk4M2JmYzM0ZGYzY2Y3MzMyMjMzZGE4OWFhNTFmMmQ2MzRhNWQ4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1YmJlNTIxMGVmNWQ2ZjQ5MzQ0MzJiNGE4NGYxYzY0YzExODQwIn0=','2019-04-18 18:53:57.254527'),('zgn28t7fm6h3ls89z551r55sskregxgy','Njk4M2JmYzM0ZGYzY2Y3MzMyMjMzZGE4OWFhNTFmMmQ2MzRhNWQ4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YzA1YmJlNTIxMGVmNWQ2ZjQ5MzQ0MzJiNGE4NGYxYzY0YzExODQwIn0=','2019-05-26 14:42:22.817810');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_summernote_attachment`
--

DROP TABLE IF EXISTS `django_summernote_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_summernote_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_summernote_attachment`
--

LOCK TABLES `django_summernote_attachment` WRITE;
/*!40000 ALTER TABLE `django_summernote_attachment` DISABLE KEYS */;
INSERT INTO `django_summernote_attachment` VALUES (1,'30-03-2019 22-36-47.png','django-summernote/2019-05-12/b4cb8e13-8a39-4b57-a846-19dffeba8df3.png','2019-05-12 15:14:04.249562'),(2,'30-03-2019 22-38-07.png','django-summernote/2019-05-12/1544d561-8fcf-4b4b-b4ee-700093a20538.png','2019-05-12 15:14:04.261530'),(3,'30-03-2019 22-38-12.png','django-summernote/2019-05-12/ba64b1da-77d6-444a-b4f6-b7ed4dae4318.png','2019-05-12 15:14:04.269508');
/*!40000 ALTER TABLE `django_summernote_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_post`
--

DROP TABLE IF EXISTS `news_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `news_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `date_cr` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `img_preview` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `News_post_author_id_e66f240c_fk_auth_user_id` (`author_id`),
  CONSTRAINT `News_post_author_id_e66f240c_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_post`
--

LOCK TABLES `news_post` WRITE;
/*!40000 ALTER TABLE `news_post` DISABLE KEYS */;
INSERT INTO `news_post` VALUES (1,'Мы начали разрабатывать новый сайт школы!','','2019-03-02 05:47:43.884689',2,''),(2,'Приобретён домен: msc15.ru','','2019-03-02 05:48:02.947012',2,''),(3,'Демонстрация наработок нового оформления!','','2019-03-02 05:48:12.386938',2,''),(4,'Проверка работы новостей.','','2019-03-02 06:46:22.764203',2,''),(5,'Возобновлена работа над сайтом!','','2019-04-04 20:03:57.765330',2,''),(6,'Проверка работы обложки новости','','2019-04-04 20:23:16.629700',2,'News/previews/92_full.jpeg'),(7,'Прощай, школа! Выпуск 2018','<p>Большая часть проблем отображения информации в HTML и CSS начинается с вопросов <b>\"кроссбраузерности\"</b>. Сайт отлично смотрится в одном браузере и плохо в другом. Это почти постоянная проблема в любом веб-проекте, но большое количество вопросов кроссбраузерности можно минимизировать, с самого начала предупредив их появление.  Во-первых, убедитесь, что пользуетесь хорошим сбросом настроек CSS, таким как normalize. Он «сгладит» противоречия между браузерами и заставит их вести себя в более единообразном стиле. Даже если вы делаете одностраничный веб-сайт «на скорую руку» и не пользуетесь каркасом CSS, все равно нужно применять сброс.  Во-вторых, проверьте и убедитесь, что применяемые вами элементы HTML и свойства CSS поддерживаются на самом деле. HTML и CSS постоянно развиваются, и браузерные вендоры делают все возможное для того, чтобы угнаться за последними стандартами.</p><p><br></p>','2019-04-04 20:23:54.331273',2,'News/previews/JY6A3155.jpg');
/*!40000 ALTER TABLE `news_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprofiles_profile`
--

DROP TABLE IF EXISTS `userprofiles_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `userprofiles_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_n` varchar(50) NOT NULL,
  `name_p` varchar(50) NOT NULL,
  `name_f` varchar(50) NOT NULL,
  `position` varchar(100) NOT NULL,
  `birthday` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `bio` varchar(1000) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `UserProfiles_profile_user_id_33b9d0d1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprofiles_profile`
--

LOCK TABLES `userprofiles_profile` WRITE;
/*!40000 ALTER TABLE `userprofiles_profile` DISABLE KEYS */;
INSERT INTO `userprofiles_profile` VALUES (1,'Денис','Юрьевич','Гостев','Системный администратор','','','',2);
/*!40000 ALTER TABLE `userprofiles_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-13 23:07:55
