/*
SQLyog Community v11.31 Beta1 (32 bit)
MySQL - 5.0.26-community-nt : Database - kw_vendor
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kw_vendor` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `kw_vendor`;

/*Table structure for table `activestore` */

DROP TABLE IF EXISTS `activestore`;

CREATE TABLE `activestore` (
  `active_Store_Id` bigint(10) NOT NULL auto_increment,
  `date` date default NULL,
  `systemdate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `vendor_status` varchar(50) default NULL,
  `vendor_id` varchar(50) default NULL,
  `vendor_name` varchar(500) default NULL,
  `online_store_name` varchar(1000) default NULL,
  `agreement` enum('Y','N') default NULL,
  `user_id` bigint(10) default NULL,
  PRIMARY KEY  (`active_Store_Id`),
  KEY `VENDOR_ID` (`vendor_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `activestore_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `activestore` */

insert  into `activestore`(`active_Store_Id`,`date`,`systemdate`,`vendor_status`,`vendor_id`,`vendor_name`,`online_store_name`,`agreement`,`user_id`) values (1,'2016-12-08','2016-12-08 03:37:33','active','kw2','Bhushan Borul','Bhushan Flowers','Y',1),(2,'2016-12-08','2016-12-08 04:58:31','active','kw3','Rohit Sandbhor','sandB Flowers','Y',2),(3,'2016-12-10','2016-12-10 00:58:21','active','kw4','Vijay Kumbharkar','Vijay Flowers','Y',1),(4,'2016-12-13','2016-12-13 05:26:47','active','kw5','Aniket','Aniket Flowers','Y',1);

/*Table structure for table `admin_ems_registration` */

DROP TABLE IF EXISTS `admin_ems_registration`;

CREATE TABLE `admin_ems_registration` (
  `id` int(20) NOT NULL auto_increment,
  `operator` enum('admin','ems') default NULL,
  `user_name` varchar(50) default NULL,
  `password` varchar(20) default NULL,
  `name` varchar(20) default NULL,
  `phone` varchar(10) default NULL,
  `address` varchar(100) default NULL,
  `city` varchar(20) default NULL,
  `state` varchar(20) default NULL,
  `gender` varchar(5) default NULL,
  `birthday` varchar(10) default NULL,
  `registerDate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin_ems_registration` */

insert  into `admin_ems_registration`(`id`,`operator`,`user_name`,`password`,`name`,`phone`,`address`,`city`,`state`,`gender`,`birthday`,`registerDate`,`user_id`) values (1,'ems','ems@navisionworld.in','ems','Ems User','9028262228','Pune','Pune','Maharashtra','male','13-9-1990','2016-12-08 01:35:30',2),(2,'admin','superAdmin','superAdmin','superAdmin','9028262228','Pune','Pune','Maharashtra','male','13-9-1990','2016-12-08 01:35:30',1);

/*Table structure for table `bank_information` */

DROP TABLE IF EXISTS `bank_information`;

CREATE TABLE `bank_information` (
  `bank_info_id` bigint(20) NOT NULL auto_increment,
  `date` date default NULL,
  `systemdate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `pan_number` varchar(50) default NULL,
  `name_on_pan` varchar(50) default NULL,
  `dob_on_pan` varchar(50) default NULL,
  `annual_turnover` varchar(50) default NULL,
  `what_best` varchar(50) default NULL,
  `account_hodler_name` varchar(100) default NULL,
  `bank_name` varchar(200) default NULL,
  `account_number` varchar(100) default NULL,
  `account_type` varchar(50) default NULL,
  `ifsc_code` varchar(50) default NULL,
  `vendor_id` varchar(50) default NULL,
  `user_id` bigint(10) default NULL,
  `agreement` varchar(10) default NULL,
  PRIMARY KEY  (`bank_info_id`),
  KEY `VENDOR_ID` (`vendor_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `bank_information_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bank_information` */

insert  into `bank_information`(`bank_info_id`,`date`,`systemdate`,`pan_number`,`name_on_pan`,`dob_on_pan`,`annual_turnover`,`what_best`,`account_hodler_name`,`bank_name`,`account_number`,`account_type`,`ifsc_code`,`vendor_id`,`user_id`,`agreement`) values (1,'2016-12-08','2016-12-08 03:36:49','eeeee3333r','Bhushan Borul','13/09/2016','2000020','Distributor','Bhushan Borul','SBI','20002000','saving','eeer0444444','kw2',1,'Agree'),(2,'2016-12-08','2016-12-08 04:57:30','eeeee3333r','Rohit Sandbhor','13/12/1989','2542100','Distributor','Rohit Sandbhor','BPCB','250125','Current','eeee0444444','kw3',2,'Agree'),(3,'2016-12-10','2016-12-10 00:57:27','eeeee3333r','Vijay Kumbharkar','09/12/2016','212542','Distributor','Vijay Kumbharkar','SBI','20202020','Saving','eeer0444444','kw4',1,'Agree'),(4,'2016-12-13','2016-12-13 05:26:30','eeeee3333r','Aniket ','09/12/2016','252252','Wholsaler','Aniket ','SBI','20202020','SV','eeer0444444','kw5',1,'Agree');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `categoryId` int(11) default NULL,
  `categoryDesc` varchar(255) default NULL,
  `categoryInsertedDate` datetime default NULL,
  `categoryName` varchar(255) default NULL,
  `categoryImagePath` varchar(255) default NULL,
  `categoryPrize` float default NULL,
  `categoryType` varchar(255) default NULL,
  `categoryUpdatedDate` datetime default NULL,
  `category_desc` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `category` */

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `city` varchar(50) default NULL,
  `state` varchar(20) default NULL,
  `disc` varchar(50) default NULL,
  `flag` enum('t','f') default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `city` */

insert  into `city`(`id`,`date`,`city`,`state`,`disc`,`flag`) values (1,'2016-12-06 01:54:46','Ahmednagar','Maharashtra','','t'),(2,'2016-12-06 01:54:46','Akola','Maharashtra','','t'),(3,'2016-12-06 01:54:46','Amravati','Maharashtra','','t'),(4,'2016-12-06 01:54:46','Aurangabad','Maharashtra','','t'),(5,'2016-12-06 01:54:46','Beed','Maharashtra','','t'),(6,'2016-12-06 01:54:46','Bhandara','Maharashtra','','t'),(7,'2016-12-06 01:54:46','Buldhana','Maharashtra','','t'),(8,'2016-12-06 01:54:46','Chandrapur','Maharashtra','','t'),(9,'2016-12-06 01:54:46','Dhule','Maharashtra','','t'),(10,'2016-12-06 01:54:46','Gadchiroli','Maharashtra','','t'),(11,'2016-12-06 01:54:46','Gondia','Maharashtra','','t'),(12,'2016-12-06 01:54:46','Hingoli','Maharashtra','','t'),(13,'2016-12-06 01:54:46','Jalgaon','Maharashtra','','t'),(14,'2016-12-06 01:54:46','Jalna','Maharashtra','','t'),(15,'2016-12-06 01:54:46','Kolhapur','Maharashtra','','t'),(16,'2016-12-06 01:54:46','Latur','Maharashtra','','t'),(17,'2016-12-06 01:54:46','Mumbai','Maharashtra','','t'),(18,'2016-12-06 01:54:46','Nagpur','Maharashtra','','t'),(19,'2016-12-06 01:54:46','Nanded','Maharashtra','','t'),(20,'2016-12-06 01:54:46','Nandurbar','Maharashtra','','t'),(21,'2016-12-06 01:54:46','Nashik','Maharashtra','','t'),(22,'2016-12-06 01:54:46','Osmanabad','Maharashtra','','t'),(23,'2016-12-06 01:54:46','Parbhani','Maharashtra','','t'),(24,'2016-12-06 01:54:46','Pune','Maharashtra','','t'),(25,'2016-12-06 01:54:46','Raigad','Maharashtra','','t'),(26,'2016-12-06 01:54:46','Ratnagiri','Maharashtra','','t'),(27,'2016-12-06 01:54:46','Sangli','Maharashtra','','t'),(28,'2016-12-06 01:54:46','Satara','Maharashtra','','t'),(29,'2016-12-06 01:54:46','Sindhudurg','Maharashtra','','t'),(30,'2016-12-06 01:54:46','Solapur','Maharashtra','','t'),(31,'2016-12-06 01:54:46','Navi-Mumbai','Maharashtra','','t'),(32,'2016-12-06 01:54:46','Thane','Maharashtra','','t'),(33,'2016-12-06 01:54:46','Wardha','Maharashtra','','t'),(34,'2016-12-06 01:54:46','Washim','Maharashtra','','t'),(35,'2016-12-06 01:54:46','Yavatmal','Maharashtra','','t'),(36,'2016-12-06 01:54:46','Malegaon','Maharashtra','','f'),(37,'2016-12-06 01:54:46','Panvel','Maharashtra','','f'),(38,'2016-12-06 02:09:23','Ashok Nagar','Madhya Pradesh','','t'),(39,'2016-12-06 02:09:23','Balaghat','Madhya Pradesh','','t'),(40,'2016-12-06 02:09:23','Banwani','Madhya Pradesh','','t'),(41,'2016-12-06 02:09:23','Betul','Madhya Pradesh','','t'),(42,'2016-12-06 02:09:23','Bhind','Madhya Pradesh','','t'),(43,'2016-12-06 02:09:23','Bhopal','Madhya Pradesh','','t'),(44,'2016-12-06 02:09:23','Chhatarpur','Madhya Pradesh','','t'),(45,'2016-12-06 02:09:23','Chindwara','Madhya Pradesh','','t'),(46,'2016-12-06 02:09:23','Damoh','Madhya Pradesh','','t'),(47,'2016-12-06 02:09:23','Datia','Madhya Pradesh','','t'),(48,'2016-12-06 02:09:23','Dewas','Madhya Pradesh','','t'),(49,'2016-12-06 02:09:23','Dhar','Madhya Pradesh','','t'),(50,'2016-12-06 02:09:23','Dindori','Madhya Pradesh','','t'),(51,'2016-12-06 02:09:23','East Indore','Madhya Pradesh','','t'),(52,'2016-12-06 02:09:23','East Nimar','Madhya Pradesh',' ','t'),(53,'2016-12-06 02:09:23','Guna','Madhya Pradesh','','t'),(54,'2016-12-06 02:09:23','Gwalior','Madhya Pradesh','','t'),(55,'2016-12-06 02:09:23','Harda','Madhya Pradesh','','t'),(56,'2016-12-06 02:09:23','Hoshangabad','Madhya Pradesh','','t'),(57,'2016-12-06 02:09:23','Jabalpur','Madhya Pradesh','','t'),(58,'2016-12-06 02:09:23','Jhabua','Madhya Pradesh','','t'),(59,'2016-12-06 02:09:23','Katni','Madhya Pradesh','','t'),(60,'2016-12-06 02:09:23','Mandla','Madhya Pradesh','','t'),(61,'2016-12-06 02:09:23','Mandsour','Madhya Pradesh','','t'),(62,'2016-12-06 02:09:23','Morena','Madhya Pradesh','','t'),(63,'2016-12-06 02:09:23','Narsinghpur','Madhya Pradesh','','t'),(64,'2016-12-06 02:09:23','Nimuch','Madhya Pradesh','','t'),(65,'2016-12-06 02:09:23','Panna','Madhya Pradesh','','t'),(66,'2016-12-06 02:09:23','Rajgarh','Madhya Pradesh','','t'),(67,'2016-12-06 02:09:23','Raisen','Madhya Pradesh','','t'),(68,'2016-12-06 02:09:23','Ratlam','Madhya Pradesh','','t'),(69,'2016-12-06 02:09:23','Rewa','Madhya Pradesh','','t'),(70,'2016-12-06 02:09:23','Sagar','Madhya Pradesh','','t'),(71,'2016-12-06 02:09:23','Satna','Madhya Pradesh','','t'),(72,'2016-12-06 02:09:23','Sehore','Madhya Pradesh','','t'),(73,'2016-12-06 02:09:23','Seoni','Madhya Pradesh','','t'),(74,'2016-12-06 02:09:23','Shahdol','Madhya Pradesh','','t'),(75,'2016-12-06 02:09:23','Shajapur','Madhya Pradesh','','t'),(76,'2016-12-06 02:09:23','Sheopur','Madhya Pradesh','','t'),(77,'2016-12-06 02:09:23','Shivpuri','Madhya Pradesh','','t'),(78,'2016-12-06 02:09:23','Sidhi','Madhya Pradesh','','t'),(79,'2016-12-06 02:09:23','Singroli','Madhya Pradesh','','t'),(80,'2016-12-06 02:09:23','Tikamgarh','Madhya Pradesh','','t'),(81,'2016-12-06 02:09:23','Ujjain','Madhya Pradesh','','t'),(82,'2016-12-06 02:09:23','Umaria','Madhya Pradesh','','t'),(83,'2016-12-06 02:09:23','Vidisha','Madhya Pradesh','','t'),(84,'2016-12-06 02:09:23','West Indore','Madhya Pradesh','','t'),(85,'2016-12-06 02:09:23','West Nimar','Madhya Pradesh','','t'),(86,'2016-12-06 02:09:23','West Nimar','Madhya Pradesh','','t'),(87,'2016-12-06 02:09:23','Bangalore','Karnataka','','f'),(88,'2016-12-06 02:09:24','Belgaum','Karnataka North','','f'),(89,'2016-12-06 02:09:23','Gulbarga','Karnataka','','f'),(90,'2016-12-06 02:09:23','Mysore','Karnataka','','f'),(91,'2016-12-06 02:09:23','Kasargode','Kerala','','t'),(92,'2016-12-06 02:09:23','Malappuram','Kerala','','t'),(93,'2016-12-06 02:09:23','Kannur','Kerala','','t'),(94,'2016-12-06 02:09:23','Wayanad','Kerala','','t'),(95,'2016-12-06 02:09:23','Calicut','Kerala','','t'),(96,'2016-12-06 02:09:23','Ernakulam','Kerala','','t'),(97,'2016-12-06 02:09:23','Thrissur','Kerala','','t'),(98,'2016-12-06 02:09:23','Lakshwadeep Islands','Kerala','','t'),(99,'2016-12-06 02:09:23','Kollam','Kerala','','t'),(100,'2016-12-06 02:09:23','Pathanamthita','Kerala','','t'),(101,'2016-12-06 02:09:23','Thiruvananthapuram ','Kerala','','t'),(102,'2016-12-06 02:09:23','Kottayam','Kerala','','t'),(103,'2016-12-06 02:09:23','Alleppey','Kerala','','t'),(104,'2016-12-06 02:09:23','Idukki ','Kerala','','t'),(106,'2016-12-06 02:09:23','Palghat','Kerala','','t'),(107,'2016-12-06 02:09:24','Adilabad','Telangana','','t'),(108,'2016-12-06 02:01:41','AMIR PETH','Andhra Pradesh','','f'),(109,'2016-12-06 02:01:41','Anantapur','Andhra Pradesh','','t'),(110,'2016-12-06 02:01:41','AZAMABAD','Andhra Pradesh','','f'),(111,'2016-12-06 02:01:41','BACHPALLI','Andhra Pradesh','','f'),(112,'2016-12-06 02:01:41','BAHADURPURA','Andhra Pradesh','','f'),(113,'2016-12-06 02:01:41','BALANAGAR','Andhra Pradesh','','f'),(114,'2016-12-06 02:01:41','BEGAMPETH','Andhra Pradesh','','f'),(115,'2016-12-06 02:01:41','BOWENPALLY','Andhra Pradesh','','f'),(116,'2016-12-06 02:01:41','CHANDRAYANGUTTA','Andhra Pradesh','','f'),(117,'2016-12-06 02:01:41','CHARLAPALLY','Andhra Pradesh','','f'),(118,'2016-12-06 02:01:41','Chitoor','Andhra Pradesh','','t'),(119,'2016-12-06 02:01:41','CUDDAPAH','Andhra Pradesh','','f'),(120,'2016-12-06 02:01:41','East Godavari','Andhra Pradesh','','t'),(121,'2016-12-06 02:01:41','GACHIBOLI','Andhra Pradesh','','f'),(122,'2016-12-06 02:01:41','GANDHINAGAR','Andhra Pradesh','','f'),(123,'2016-12-06 02:01:41','Guntur','Andhra Pradesh','','t'),(124,'2016-12-06 02:01:41','HITECH CITY','Andhra Pradesh','','f'),(125,'2016-12-06 02:09:24','Hyderabad','Telangana','','t'),(126,'2016-12-06 02:01:41','IDBULARAM','Andhra Pradesh','','f'),(127,'2016-12-06 02:01:41','JEEDIMETLA','Andhra Pradesh','','f'),(128,'2016-12-06 02:01:41','Kadapa','Andhra Pradesh','','t'),(129,'2016-12-06 02:01:41','KAKINADA','Andhra Pradesh','','f'),(130,'2016-12-06 02:09:24','Karimnagar','Telangana','','t'),(131,'2016-12-06 02:01:41','KATEDAN','Andhra Pradesh','','f'),(132,'2016-12-06 02:09:24','Khammam','Telangana','','t'),(133,'2016-12-06 02:01:41','Krishna','Andhra Pradesh','','t'),(134,'2016-12-06 02:01:41','KUKATPALLY','Andhra Pradesh','','f'),(135,'2016-12-06 02:01:41','Kurnool','Andhra Pradesh','','t'),(136,'2016-12-06 02:01:41','KUSHYGUDA','Andhra Pradesh','','f'),(137,'2016-12-06 02:01:41','MADHAPUR','Andhra Pradesh','','f'),(138,'2016-12-06 02:09:24','Mahbubnagar','Telangana','','t'),(139,'2016-12-06 02:01:41','MALLAPUR','Andhra Pradesh','','f'),(140,'2016-12-06 02:09:24','Medak','Telangana','','t'),(141,'2016-12-06 02:01:41','MEHANDIPATNAM','Andhra Pradesh','','f'),(142,'2016-12-06 02:01:41','MIYAPUR','Andhra Pradesh','','f'),(143,'2016-12-06 02:01:41','MOULA ALI','Andhra Pradesh','','f'),(144,'2016-12-06 02:01:41','NACHARAM','Andhra Pradesh','','f'),(145,'2016-12-06 02:09:24','Nalgonda','Telangana','','t'),(146,'2016-12-06 02:01:41','Nellore','Andhra Pradesh','','t'),(147,'2016-12-06 02:09:24','Nizamabad','Telangana','','t'),(148,'2016-12-06 02:01:41','PASHAMAILARAM','Andhra Pradesh','','f'),(149,'2016-12-06 02:01:41','PATANCHERU','Andhra Pradesh','','f'),(150,'2016-12-06 02:01:41','Prakasam','Andhra Pradesh','','t'),(151,'2016-12-06 02:01:41','R.R.','Andhra Pradesh','','f'),(152,'2016-12-06 02:01:41','RAMCHANDRAPURAM','Andhra Pradesh','','f'),(153,'2016-12-06 02:09:24','Rangareddy(R.R)','Telangana','','t'),(154,'2016-12-06 02:01:41','SANATNAGAR','Andhra Pradesh','','f'),(155,'2016-12-06 02:09:24','SECUNDERABAD','Telangana','','t'),(156,'2016-12-06 02:01:41','SHAMSHABAD','Andhra Pradesh','','f'),(157,'2016-12-06 02:01:41','Srikakulam','Andhra Pradesh','','t'),(158,'2016-12-06 02:01:41','TOLI CHOWKY','Andhra Pradesh','','f'),(159,'2016-12-06 02:01:41','UPPAL','Andhra Pradesh','','f'),(160,'2016-12-06 02:01:41','Vizianagaram','Andhra Pradesh','','t'),(161,'2016-12-06 02:01:41','Vishakhapatnam','Andhra Pradesh','','t'),(162,'2016-12-06 02:01:41','VIZIANAGARAM','Andhra Pradesh','','f'),(163,'2016-12-06 02:09:24','Warangal','Telangana','','t'),(164,'2016-12-06 02:01:41','West Godavari','Andhra Pradesh','','t'),(165,'2016-12-07 00:12:59','Kathua ','Jammu_Kashmir','','t'),(166,'2016-12-07 00:12:59','Jammu ','Jammu_Kashmir','','t'),(167,'2016-12-07 00:12:59','Samba ','Jammu_Kashmir','','t'),(168,'2016-12-07 00:12:59','Udhampur ','Jammu_Kashmir','','t'),(169,'2016-12-07 00:12:59','Reasi ','Jammu_Kashmir','','t'),(170,'2016-12-07 00:12:59','Rajouri ','Jammu_Kashmir','','t'),(171,'2016-12-07 00:12:59','Poonch ','Jammu_Kashmir','','t'),(172,'2016-12-07 00:12:59','Doda ','Jammu_Kashmir','','t'),(173,'2016-12-07 00:12:59','Ramban ','Jammu_Kashmir','','t'),(174,'2016-12-07 00:12:59','Kishtwar ','Jammu_Kashmir','','t'),(175,'2016-12-07 00:12:59','Anantnag ','Jammu_Kashmir','','t'),(176,'2016-12-07 00:12:59','Kulgam ','Jammu_Kashmir','','t'),(177,'2016-12-07 00:12:59','Pulwama ','Jammu_Kashmir','','t'),(178,'2016-12-07 00:12:59','Shopian ','Jammu_Kashmir','','t'),(179,'2016-12-07 00:12:59','Budgam ','Jammu_Kashmir','','t'),(180,'2016-12-07 00:12:59','Srinagar ','Jammu_Kashmir','','t'),(181,'2016-12-07 00:12:59','Ganderbal ','Jammu_Kashmir','','t'),(182,'2016-12-07 00:12:59','Bandipora ','Jammu_Kashmir','','t'),(183,'2016-12-07 00:12:59','Baramulla ','Jammu_Kashmir','','t'),(184,'2016-12-07 00:12:59','Kupwara ','Jammu_Kashmir','','t'),(185,'2016-12-07 00:12:59','Kashmir Valley','Jammu_Kashmir','','f'),(186,'2016-12-07 00:12:59','Kargil ','Jammu_Kashmir','','t'),(187,'2016-12-07 00:12:59','Leh ','Jammu_Kashmir','','t'),(188,'2016-12-07 00:12:59','Ladakh','Jammu_Kashmir','','t'),(189,'2016-12-06 02:09:23','Bilaspur','Himachal Pradesh','','f'),(190,'2016-12-06 02:09:23','Chail','Himachal Pradesh','','f'),(191,'2016-12-06 02:09:23','Chamba','Himachal Pradesh','','f'),(192,'2016-12-06 02:09:23','Dharamshala','Himachal Pradesh','','f'),(193,'2016-12-06 02:09:23','Fagu','Himachal Pradesh','','f'),(194,'2016-12-06 02:09:23','Hamirpur','Himachal Pradesh','','f'),(195,'2016-12-06 02:09:23','Kalpa','Himachal Pradesh','','f'),(196,'2016-12-06 02:09:23','Kandaghat','Himachal Pradesh','','f'),(197,'2016-12-06 02:09:23','Kangra','Himachal Pradesh','','f'),(198,'2016-12-06 02:09:23','Kasauli','Himachal Pradesh','','f'),(199,'2016-12-06 02:09:23','Khajjiar','Himachal Pradesh','','f'),(200,'2016-12-06 02:09:23','Kinnaur','Himachal Pradesh','','f'),(201,'2016-12-06 02:09:23','Koti','Himachal Pradesh','','f'),(202,'2016-12-06 02:09:23','Kufri','Himachal Pradesh','','f'),(203,'2016-12-06 02:09:23','Kullu','Himachal Pradesh','','f'),(204,'2016-12-06 02:09:23','Lahaul & Spiti','Himachal Pradesh','','f'),(205,'2016-12-06 02:09:23','Manali','Himachal Pradesh','','f'),(206,'2016-12-06 02:09:23','Mandi','Himachal Pradesh','','f'),(207,'2016-12-06 02:09:23','Naldehra','Himachal Pradesh','','f'),(208,'2016-12-06 02:09:23','Palampur','Himachal Pradesh','','f'),(209,'2016-12-06 02:09:23','Parwanoo','Himachal Pradesh','','f'),(210,'2016-12-06 02:09:23','Renuka','Himachal Pradesh','','f'),(211,'2016-12-06 02:09:23','Sangla','Himachal Pradesh','','f'),(212,'2016-12-06 02:09:23','Sarahan','Himachal Pradesh','','f'),(213,'2016-12-06 02:09:23','Shimla','Himachal Pradesh','','f'),(214,'2016-12-06 02:09:23','Sirmaur','Himachal Pradesh','','f'),(215,'2016-12-06 02:09:23','Solan','Himachal Pradesh','','f'),(216,'2016-12-06 02:09:23','Theog','Himachal Pradesh','','f'),(217,'2016-12-06 02:09:23','Una','Himachal Pradesh','','f'),(218,'2016-12-06 02:09:24','Amritsar','Punjab','','t'),(219,'2016-12-06 02:09:24','Barnala','Punjab','','t'),(220,'2016-12-06 02:09:24','Bathinda','Punjab','','t'),(221,'2016-12-06 02:09:24','Fazilka','Punjab','','t'),(222,'2016-12-06 02:09:24','Firozpur','Punjab','','t'),(223,'2016-12-06 02:09:24','Gurdaspur','Punjab','','t'),(224,'2016-12-06 02:09:24','Hoshiarpur','Punjab','','t'),(225,'2016-12-06 02:09:24','Jalandhar','Punjab','','t'),(226,'2016-12-06 02:09:24','Kapurthala','Punjab','','t'),(227,'2016-12-06 02:09:24','Ludhiana','Punjab','','t'),(228,'2016-12-06 02:09:24','Moga','Punjab','','t'),(229,'2016-12-06 02:09:24','Mohali','Punjab','','t'),(230,'2016-12-06 02:09:24','Muktsar','Punjab','','t'),(231,'2016-12-06 02:09:24','Pathankot','Punjab','','t'),(232,'2016-12-06 02:09:24','Patiala','Punjab','','t'),(233,'2016-12-06 02:09:24','Sangrur','Punjab','','t'),(234,'2016-12-06 02:09:24','Mansa','Punjab','','t'),(235,'2016-12-06 02:09:24','Faridkot','Punjab','','t'),(236,'2016-12-06 02:09:23','East Kameng','Arunachal Pradesh','','t'),(237,'2016-12-06 02:09:23','Upper Subansiri','Arunachal Pradesh','','t'),(238,'2016-12-06 02:09:23','Lower Subansiri','Arunachal Pradesh','','t'),(239,'2016-12-06 02:09:23','West Siang','Arunachal Pradesh','','t'),(240,'2016-12-06 02:09:23','East Siang','Arunachal Pradesh','','t'),(241,'2016-12-06 02:09:23','Upper Siang','Arunachal Pradesh','','t'),(242,'2016-12-06 02:09:23','Kurung Kumey','Arunachal Pradesh','','t'),(243,'2016-12-06 02:09:23','Papum Pare','Arunachal Pradesh','','t'),(244,'2016-12-06 02:09:23','Dibung Valley','Arunachal Pradesh','','t'),(245,'2016-12-06 02:09:23','Lower Dibang Valley','Arunachal Pradesh','','t'),(246,'2016-12-06 02:09:24','Nawanshahr','Punjab','','t'),(247,'2016-12-06 02:09:24','Chandigarh','Punjab','','t'),(248,'2016-12-06 02:09:24','Fatehgarh Sahib','Punjab','','t'),(249,'2016-12-06 02:09:24','Ropar','Punjab','','t'),(250,'2016-12-06 02:09:24','Tarn Taran','Punjab','','t'),(251,'2016-12-07 00:12:59','srinagar','Jammu_Kashmir','','f'),(252,'2016-12-06 02:09:23','Anjan','Arunachal Pradesh','','t'),(253,'2016-12-06 02:09:23','Assam','Assam','','f'),(254,'2016-12-06 02:09:23','Barpeta','Assam','','t'),(255,'2016-12-06 02:09:23','Bongaigaon','Assam','','t'),(256,'2016-12-06 02:09:23','Cachar','Assam','','t'),(257,'2016-12-06 02:09:23','Chanlong','Assam','','t'),(258,'2016-12-06 02:09:23','Darrang','Assam','','t'),(259,'2016-12-06 02:09:23','Dhemaji','Assam','','t'),(260,'2016-12-06 02:09:23','Dhuburi','Assam','','t'),(261,'2016-12-06 02:09:23','Assam','Assam','','f'),(262,'2016-12-06 02:09:23','Dibang valley','Assam','','f'),(263,'2016-12-06 02:09:23','Dibrugarh','Assam','','t'),(264,'2016-12-06 02:09:23','Dima Hasao','Assam','','t'),(265,'2016-12-06 02:09:23','Dimapur','Assam','','f'),(266,'2016-12-06 02:09:23','Goalpara','Assam','','t'),(267,'2016-12-06 02:09:23','Golaghat','Assam','','t'),(268,'2016-12-06 02:09:23','Hailakandi','Assam','','t'),(269,'2016-12-06 02:09:23','Jorhat','Assam','','t'),(270,'2016-12-06 02:09:23','Kamrup','Assam','','t'),(271,'2016-12-06 02:09:23','Karbi Anglong','Assam','','t'),(272,'2016-12-06 02:09:23','Karimganj','Assam','','t'),(273,'2016-12-06 02:09:23','Kiphire','Assam','','f'),(274,'2016-12-06 02:09:24','Kohima','Nagaland','','t'),(275,'2016-12-06 02:09:23','Kokrajhar','Assam','','t'),(276,'2016-12-06 02:09:23','Lohit','Assam','','t'),(277,'2016-12-06 02:09:24','Longleng','Nagaland','','t'),(278,'2016-12-06 02:09:23','Manipur','Assam','','f'),(279,'2016-12-06 02:09:23','Marigaon','Assam','','t'),(280,'2016-12-06 02:09:23','Mizoram','Assam','','f'),(281,'2016-12-06 02:09:24','Mokokchung','Nagaland','','t'),(282,'2016-12-06 02:09:24','Mon','Nagaland','','t'),(283,'2016-12-06 02:09:23','Nagaon','Assam','','t'),(284,'2016-12-06 02:09:23','Nalbari','Assam','','t'),(285,'2016-12-06 02:09:23','North Lakhimpur','Assam','','t'),(286,'2016-12-06 02:09:24','Peren','Nagaland','','t'),(287,'2016-12-06 02:09:24','Phek','Nagaland','','t'),(288,'2016-12-06 02:09:23','Sivasagar','Assam','','t'),(289,'2016-12-06 02:09:23','Sonitpur','Assam','','t'),(290,'2016-12-06 02:09:23','Tinsukia','Assam','','t'),(291,'2016-12-06 02:09:23','Tirap','Arunachal Pradesh','','f'),(292,'2016-12-06 02:09:23','Tripura','Assam','','f'),(293,'2016-12-06 02:09:24','Tuensang','Nagaland','','t'),(294,'2016-12-06 02:09:24','Wokha','Nagaland','','t'),(295,'2016-12-06 02:09:24','Zunheboto','Nagaland','','t'),(296,'2016-12-06 02:09:24','Dimapur','Nagaland','','t'),(297,'2016-12-06 02:09:24','Kiphire','Nagaland','','t'),(298,'2016-12-06 02:09:24','Bishnupur','Manipur','','t'),(299,'2016-12-06 02:09:24','Churachandpur','Manipur','','t'),(300,'2016-12-06 02:09:24','Chandel','Manipur','','t'),(301,'2016-12-06 02:09:24','Imphal East','Manipur','','t'),(302,'2016-12-06 02:09:24','Senapati','Manipur','','t'),(303,'2016-12-06 02:09:24','Tamenglong','Manipur','','t'),(304,'2016-12-06 02:09:24','Thoubal','Manipur','','t'),(305,'2016-12-06 02:09:24','Ukhrul','Manipur','','t'),(306,'2016-12-06 02:09:24','Imphal West','Manipur','','t'),(307,'2016-12-06 02:09:24','Aizawl','Mizoram','','t'),(308,'2016-12-06 02:09:24','Champhai','Mizoram','','t'),(309,'2016-12-06 02:09:24','Kolasib','Mizoram','','t'),(310,'2016-12-06 02:09:24','Lawngtlai','Mizoram','','t'),(311,'2016-12-06 02:09:24','Lunglei','Mizoram','','t'),(312,'2016-12-06 02:09:24','Mamit','Mizoram','','t'),(313,'2016-12-06 02:09:24','Saiha','Mizoram','','t'),(314,'2016-12-06 02:09:24','Serchhip','Mizoram','','t'),(315,'2016-12-06 02:09:24','Dhalai','Tripura','','t'),(316,'2016-12-06 02:09:24','North Tripura','Tripura','','t'),(317,'2016-12-06 02:09:24','South Tripura','Tripura','','t'),(318,'2016-12-06 02:09:24','West Tripura','Tripura','','t'),(319,'2016-12-06 02:09:24','Sipahijala','Tripura','','t'),(320,'2016-12-06 02:09:24','Khowai','Tripura','','t'),(321,'2016-12-06 02:09:24','Gomati','Tripura','','t'),(322,'2016-12-06 02:09:24','Unakoti','Tripura','','t'),(323,'2016-12-06 02:09:23','Tawang','Arunachal Pradesh','','t'),(324,'2016-12-06 02:09:23','West Kameng','Arunachal Pradesh','','t'),(325,'2016-12-06 02:09:23','Lohit','Arunachal Pradesh','','t'),(326,'2016-12-06 02:09:23','Changlang','Arunachal Pradesh','','t'),(327,'2016-12-06 02:09:23','Tirap','Arunachal Pradesh','','t'),(328,'2016-12-06 02:09:23','Anjaw','Arunachal Pradesh','','t'),(329,'2016-12-06 02:09:23','Araria','Bihar','','t'),(330,'2016-12-06 02:09:23','Aurangabad','Bihar','','t'),(331,'2016-12-06 02:09:23','Banka','Bihar','','t'),(332,'2016-12-06 02:09:23','Begusarai','Bihar','','t'),(333,'2016-12-06 02:09:23','Bethia','Bihar','','t'),(334,'2016-12-06 02:09:23','Bhabhua','Bihar','','t'),(335,'2016-12-06 02:09:23','Bhagalpur','Bihar','','t'),(336,'2016-12-06 02:09:23','Bhojpur','Bihar','','t'),(337,'2016-12-06 02:09:23','Buxur','Bihar','','t'),(338,'2016-12-06 02:09:23','Chapra','Bihar','','t'),(339,'2016-12-06 02:09:23','Darbhanga','Bihar','','t'),(340,'2016-12-06 02:09:23','East Champaran','Bihar','','t'),(341,'2016-12-06 02:09:23','Gaya','Bihar','','t'),(342,'2016-12-06 02:09:23','Gopal Ganj','Bihar','','t'),(343,'2016-12-06 02:09:23','Hazipur','Bihar','','t'),(344,'2016-12-06 02:09:23','Jahanabad','Bihar','','t'),(345,'2016-12-06 02:09:23','Jamui','Bihar','','t'),(346,'2016-12-06 02:09:23','Katihar','Bihar','','t'),(347,'2016-12-06 02:09:23','Khagaria','Bihar','','t'),(348,'2016-12-06 02:09:23','Kishanganj','Bihar','','t'),(349,'2016-12-06 02:09:23','Lakshisarai','Bihar','','t'),(350,'2016-12-06 02:09:23','Madhepura','Bihar','','t'),(351,'2016-12-06 02:09:23','Madhubani','Bihar','','t'),(352,'2016-12-06 02:09:23','Munger','Bihar','','t'),(353,'2016-12-06 02:09:23','Muzaffarpur','Bihar','','t'),(354,'2016-12-06 02:09:23','Nalanda','Bihar','','t'),(355,'2016-12-06 02:09:23','Nawada','Bihar','','t'),(356,'2016-12-06 02:09:23','Patna','Bihar','','t'),(357,'2016-12-06 02:09:23','Purnia','Bihar','','t'),(358,'2016-12-06 02:09:23','Rohtas','Bihar','','t'),(359,'2016-12-06 02:09:23','Saharsa','Bihar','','t'),(360,'2016-12-06 02:09:23','Samastipur','Bihar','','t'),(361,'2016-12-06 02:09:23','Sasaram','Bihar','','t'),(362,'2016-12-06 02:09:23','Arwal','Bihar','','t'),(363,'2016-12-06 02:09:23','Shekhpura','Bihar','','t'),(364,'2016-12-06 02:09:23','Sheohar','Bihar','','t'),(365,'2016-12-06 02:09:23','Sitamarhi','Bihar','','t'),(366,'2016-12-06 02:09:23','Siwan','Bihar','','t'),(367,'2016-12-06 02:09:23','Supaul','Bihar','','t'),(368,'2016-12-06 02:09:23','Vaishali','Bihar','','t'),(369,'2016-12-06 02:09:23','West Champaran','Bihar','','t'),(370,'2016-12-06 02:09:23','East Garo Hills','Meghalaya','','t'),(371,'2016-12-06 02:09:23','East Khasi Hills','Meghalaya','','t'),(372,'2016-12-06 02:09:23','Jaintia Hills','Meghalaya','','t'),(373,'2016-12-06 02:09:23','Ri-Bhoi','Meghalaya','','t'),(374,'2016-12-06 02:09:23','South Garo Hills','Meghalaya','','t'),(375,'2016-12-06 02:09:23','West Garo Hills','Meghalaya','','t'),(376,'2016-12-06 02:09:23','West Khasi Hills','Meghalaya','','t'),(377,'2016-12-06 02:09:24','East Sikkim','Sikkim','','t'),(378,'2016-12-06 02:09:24','North Sikkim','Sikkim','','t'),(379,'2016-12-06 02:09:24','South Sikkim','Sikkim','','t'),(380,'2016-12-06 02:09:24','West Sikkim','Sikkim','','t'),(381,'2016-12-06 02:09:23','Balod','Chattisagarh','','t'),(382,'2016-12-06 02:09:23','Baloda Bazar','Chattisagarh','','t'),(383,'2016-12-06 02:09:23','Balrampur-Ramanujgang','Chattisagarh','','t'),(384,'2016-12-06 02:09:23','Bastar','Chattisagarh','','t'),(385,'2016-12-06 02:09:23','Bemetara','Chattisagarh','','t'),(386,'2016-12-06 02:09:23','Bijapur','Chattisagarh','','t'),(387,'2016-12-06 02:09:23','Bilaspur','Chattisagarh','','t'),(388,'2016-12-06 02:09:23','Dantewada','Chattisagarh','','t'),(389,'2016-12-06 02:09:23','Dhamtari','Chattisagarh','','t'),(390,'2016-12-06 02:09:23','Durg','Chattisagarh','','t'),(391,'2016-12-06 02:09:23','Gariaband','Chattisagarh','','t'),(392,'2016-12-06 02:09:23','Jashpur','Chattisagarh','','t'),(393,'2016-12-06 02:09:23','Janjgir-Champa','Chattisagarh','','t'),(394,'2016-12-06 02:09:23','Kondagaon','Chattisagarh','','t'),(395,'2016-12-06 02:09:23','Korba','Chattisagarh','','t'),(396,'2016-12-06 02:09:23','Koriya','Chattisagarh','','t'),(397,'2016-12-06 02:09:23','Kanker','Chattisagarh','','t'),(398,'2016-12-06 02:09:23','Kabirdham','Chattisagarh','','t'),(399,'2016-12-06 02:09:23','Mahasamund','Chattisagarh','','t'),(400,'2016-12-06 02:09:23','Mungeli','Chattisagarh','','t'),(401,'2016-12-06 02:09:23','Narayanpur','Chattisagarh','','t'),(402,'2016-12-06 02:09:23','Raigarh','Chattisagarh','','t'),(403,'2016-12-06 02:09:23','Rajnandgaon','Chattisagarh','','t'),(404,'2016-12-06 02:09:23','Raipur','Chattisagarh','','t'),(405,'2016-12-06 02:09:23','Surajpur','Chattisagarh','','t'),(406,'2016-12-06 02:09:23','Sukma','Chattisagarh','','t'),(407,'2016-12-06 02:09:23','Surguja','Chattisagarh','','t'),(408,'2016-12-06 02:09:23','North Goa','Goa','','t'),(409,'2016-12-06 02:09:23','South Goa','Goa','','t'),(410,'2016-12-06 02:09:23','Ahmedabad','Gujarat','','t'),(411,'2016-12-06 02:09:23','Amreli','Gujarat','','t'),(412,'2016-12-06 02:09:23','Anand','Gujarat','','t'),(413,'2016-12-06 02:09:23','Aravalli','Gujarat','','t'),(414,'2016-12-06 02:09:23','Banaskantha','Gujarat','','t'),(415,'2016-12-06 02:09:23','Bharuch','Gujarat','','t'),(416,'2016-12-06 02:09:23','Bhavnagar','Gujarat','','t'),(417,'2016-12-06 02:09:23','Botad','Gujarat','','t'),(418,'2016-12-06 02:09:23','Chhota Udaipur','Gujarat','','t'),(419,'2016-12-06 02:09:23','Dahod','Gujarat','','t'),(420,'2016-12-06 02:09:23','Dang','Gujarat','','t'),(421,'2016-12-06 02:09:23','Dwarka','Gujarat','','t'),(422,'2016-12-06 02:09:23','Gandhinagar','Gujarat','','t'),(423,'2016-12-06 02:09:23','Jamnagar','Gujarat','','t'),(424,'2016-12-06 02:09:23','Junagadh','Gujarat','','t'),(425,'2016-12-06 02:09:23','Kutch','Gujarat','','t'),(426,'2016-12-06 02:09:23','Kheda','Gujarat','','t'),(427,'2016-12-06 02:09:23','Mahisagar','Gujarat','','t'),(428,'2016-12-06 02:09:23','Mehsana','Gujarat','','t'),(429,'2016-12-06 02:09:23','Morbi','Gujarat','','t'),(430,'2016-12-06 02:09:23','Narmada','Gujarat','','t'),(431,'2016-12-06 02:09:23','Navsari','Gujarat','','t'),(432,'2016-12-06 02:09:23','Panchmahal','Gujarat','','t'),(433,'2016-12-06 02:09:23','Patan','Gujarat','','t'),(434,'2016-12-06 02:09:23','Porbandar','Gujarat','','t'),(435,'2016-12-06 02:09:23','Rajkot','Gujarat','','t'),(436,'2016-12-06 02:09:23','Sabarkantha','Gujarat','','t'),(437,'2016-12-06 02:09:23','Somnath Gir','Gujarat','','t'),(438,'2016-12-06 02:09:23','Surat','Gujarat','','t'),(439,'2016-12-06 02:09:23','Surendranagar','Gujarat','','t'),(440,'2016-12-06 02:09:23','Tapi','Gujarat','','t'),(441,'2016-12-06 02:09:23','Vadodara','Gujarat','','t'),(442,'2016-12-06 02:09:23','Valsad','Gujarat','','t'),(443,'2016-12-06 02:09:23','Vapi','Gujarat','','t'),(444,'2016-12-06 02:09:23','Silvassa','Gujarat','','t'),(445,'2016-12-06 02:09:23','Daman','Gujarat','','t'),(446,'2016-12-06 02:09:23','Dadra-Nagar Haveli','Gujarat','','t'),(447,'2016-12-06 02:09:23','Ambala','Haryana','','t'),(448,'2016-12-06 02:09:23','Bhiwani','Haryana','','t'),(449,'2016-12-06 02:09:23','Faridabad','Haryana','','t'),(450,'2016-12-06 02:09:23','Fatehabad','Haryana','','t'),(451,'2016-12-06 02:09:23','Gurgaon','Haryana','','t'),(452,'2016-12-06 02:09:23','Hisar','Haryana','','t'),(453,'2016-12-06 02:09:23','Jhajjar','Haryana','','t'),(454,'2016-12-06 02:09:23','Jind','Haryana','','t'),(455,'2016-12-06 02:09:23','Kaithal','Haryana','','t'),(456,'2016-12-06 02:09:23','Karnal','Haryana','','t'),(457,'2016-12-06 02:09:23','Kurukshetra','Haryana','','t'),(458,'2016-12-06 02:09:23','Mahendragarh','Haryana','','t'),(459,'2016-12-06 02:09:23','Palwal','Haryana','','t'),(460,'2016-12-06 02:09:23','Mewat','Haryana','','t'),(461,'2016-12-06 02:09:23','Panchkula','Haryana','','t'),(462,'2016-12-06 02:09:23','Panipat','Haryana','','t'),(463,'2016-12-06 02:09:23','Rewari','Haryana','','t'),(464,'2016-12-06 02:09:23','Rohtak','Haryana','','t'),(465,'2016-12-06 02:09:23','Sirsa','Haryana','','t'),(466,'2016-12-06 02:09:23','Sonipat','Haryana','','t'),(467,'2016-12-06 02:09:23','Yamunanagar','Haryana','','t'),(468,'2016-12-06 02:09:23','Ranchi','Jharkhand','','t'),(469,'2016-12-06 02:09:23','Lohardaga','Jharkhand','','t'),(470,'2016-12-06 02:09:23','Gumla','Jharkhand','','t'),(471,'2016-12-06 02:09:23','Simdega','Jharkhand','','t'),(472,'2016-12-06 02:09:23','Palamu','Jharkhand','','t'),(473,'2016-12-06 02:09:23','Latehar','Jharkhand','','t'),(474,'2016-12-06 02:09:23','Garhwa','Jharkhand','','t'),(475,'2016-12-06 02:09:23','East Singhbhum','Jharkhand','','t'),(476,'2016-12-06 02:09:23','West Singhbhum','Jharkhand','','t'),(477,'2016-12-06 02:09:23','Saraikela Kharsawan','Jharkhand','','t'),(478,'2016-12-06 02:09:23','Dumka','Jharkhand','','t'),(479,'2016-12-06 02:09:23','Jamtara','Jharkhand','','t'),(480,'2016-12-06 02:09:23','Sahebganj','Jharkhand','','t'),(481,'2016-12-06 02:09:23','Pakur','Jharkhand','','t'),(482,'2016-12-06 02:09:23','Godda','Jharkhand','','t'),(483,'2016-12-06 02:09:23','Hazaribagh','Jharkhand','','t'),(484,'2016-12-06 02:09:23','Chatra','Jharkhand','','t'),(485,'2016-12-06 02:09:23','Koderma','Jharkhand','','t'),(486,'2016-12-06 02:09:23','Dhanbad','Jharkhand','','t'),(487,'2016-12-06 02:09:23','Bokaro','Jharkhand','','t'),(488,'2016-12-06 02:09:23','Deoghar','Jharkhand','','t'),(489,'2016-12-06 02:09:23','Khunti','Jharkhand','','t'),(490,'2016-12-06 02:09:23','Ramgarh','Jharkhand','','t'),(491,'2016-12-06 02:09:23','Giridih','Jharkhand','','t'),(492,'2016-12-06 02:09:24','Bagalkot','Karnataka North','','t'),(493,'2016-12-06 02:09:23','Bangalore','Karnataka','','t'),(494,'2016-12-06 02:09:24','Belgaum','Karnataka North','','t'),(495,'2016-12-06 02:09:24','Bellary','Karnataka North','','t'),(496,'2016-12-06 02:09:24','Bidar','Karnataka North','','t'),(497,'2016-12-06 02:09:24','Bijapur','Karnataka North','','t'),(498,'2016-12-06 02:09:23','Chamarajanagar','Karnataka','','t'),(499,'2016-12-06 02:09:23','Chikballapur','Karnataka','','t'),(500,'2016-12-06 02:09:23','Chikmagalur','Karnataka','','t'),(501,'2016-12-06 02:09:23','Chitradurga','Karnataka','','t'),(502,'2016-12-06 02:09:23','Dakshina Kannada','Karnataka','','t'),(503,'2016-12-06 02:09:23','Davanagere','Karnataka','','t'),(504,'2016-12-06 02:09:24','Dharwad','Karnataka North','','t'),(505,'2016-12-06 02:09:24','Gadag','Karnataka North','','t'),(506,'2016-12-06 02:09:24','Gulbarga','Karnataka North','','t'),(507,'2016-12-06 02:09:23','Hassan','Karnataka','','t'),(508,'2016-12-06 02:09:24','Haveri','Karnataka North','','t'),(509,'2016-12-06 02:09:23','Kodagu','Karnataka','','t'),(510,'2016-12-06 02:09:23','Kolar','Karnataka','','t'),(511,'2016-12-06 02:09:23','Koppal','Karnataka','','t'),(512,'2016-12-06 02:09:23','Mandya','Karnataka','','t'),(513,'2016-12-06 02:09:23','Mysore','Karnataka','','t'),(514,'2016-12-06 02:09:24','Raichur','Karnataka North','','t'),(515,'2016-12-06 02:09:23','Ramanagara','Karnataka','','t'),(516,'2016-12-06 02:09:23','Shimoga','Karnataka','','t'),(517,'2016-12-06 02:09:23','Tumkur','Karnataka','','t'),(518,'2016-12-06 02:09:23','Udupi','Karnataka','','t'),(519,'2016-12-06 02:09:23','Uttara Kannada','Karnataka','','t'),(520,'2016-12-06 02:09:24','Yadgir','Karnataka North','','t'),(521,'2016-12-06 02:09:23','Batkal','Karnataka','','t'),(522,'2016-12-06 02:09:23','Dandeli','Karnataka','','t'),(523,'2016-12-06 02:09:23','North Canara','Karnataka','','t'),(524,'2016-12-06 02:09:23','Coorg','Karnataka','','t'),(525,'2016-12-06 02:09:23','South Canara','Karnataka','','t'),(526,'2016-12-06 02:09:24','Bankura','West Bengal','','t'),(527,'2016-12-06 02:09:24','Bardhaman','West Bengal','','f'),(529,'2016-12-06 02:09:24','Cooch Behar','West Bengal','','t'),(530,'2016-12-06 02:09:24','Darjeeling','West Bengal','','t'),(531,'2016-12-06 02:09:24','East Midnapore','West Bengal','','t'),(532,'2016-12-06 02:09:24','Hooghly','West Bengal','','t'),(533,'2016-12-06 02:09:24','Howrah','West Bengal','','t'),(534,'2016-12-06 02:09:24','Jalpaiguri','West Bengal','','t'),(535,'2016-12-06 02:09:24','Kolkata','West Bengal','','f'),(536,'2016-12-06 02:09:24','Maldah','West Bengal','','t'),(537,'2016-12-06 02:09:24','Murshidabad','West Bengal','','t'),(538,'2016-12-06 02:09:24','Nadia','West Bengal','','t'),(539,'2016-12-06 02:09:24','Parganas North 24','West Bengal','','t'),(540,'2016-12-06 02:09:24','Dinajpur','West Bengal','','t'),(541,'2016-12-06 02:09:24','Purulia','West Bengal','','t'),(542,'2016-12-06 02:09:24','Parganas South 24','West Bengal','','t'),(543,'2016-12-06 02:09:24','South Dinajpur','West Bengal','','f'),(544,'2016-12-06 02:09:24','West Midnapore','West Bengal','','t'),(545,'2016-12-06 02:09:24','Hubli','Karnataka North','','t'),(546,'2016-12-06 02:09:23','Medikeri','Karnataka','','t'),(547,'2016-12-06 02:09:23','Mangaluru','Karnataka','','f'),(548,'2016-12-06 02:09:23','Hospet','Karnataka','','t'),(549,'2016-12-06 02:09:24','Burdwan','West Bengal','','f'),(550,'2016-12-06 02:09:23','','Karnataka','','f'),(551,'2016-12-06 02:09:24','Ajmer','Rajasthan','','t'),(552,'2016-12-06 02:09:24','Alwar','Rajasthan','','t'),(553,'2016-12-06 02:09:24','Amer','Rajasthan','','f'),(554,'2016-12-06 02:09:24','Banaswara','Rajasthan','','t'),(555,'2016-12-06 02:09:24','Barmer','Rajasthan','','t'),(556,'2016-12-06 02:09:24','Bharatpur','Rajasthan','','t'),(557,'2016-12-06 02:09:24','Bhilwara','Rajasthan','','t'),(558,'2016-12-06 02:09:24','Bhiwadi','Rajasthan','','f'),(559,'2016-12-06 02:09:24','Bikaner','Rajasthan','','t'),(560,'2016-12-06 02:09:24','Bundi','Rajasthan','','t'),(561,'2016-12-06 02:09:24','Chittorgarh','Rajasthan','','t'),(562,'2016-12-06 02:09:24','Dungarpur','Rajasthan','','t'),(563,'2016-12-06 02:09:24','Jaipur','Rajasthan','','t'),(564,'2016-12-06 02:09:24','Jaisalmer','Rajasthan','','t'),(565,'2016-12-06 02:09:24','Jhalawar','Rajasthan','','t'),(566,'2016-12-06 02:09:24','Jodhpur','Rajasthan','','t'),(567,'2016-12-06 02:09:24','Kota','Rajasthan','','t'),(568,'2016-12-06 02:09:24','Kumbhalgarh','Rajasthan','','t'),(569,'2016-12-06 02:09:24','Mount Abu','Rajasthan','','t'),(570,'2016-12-06 02:09:24','Nagaur','Rajasthan','','t'),(571,'2016-12-06 02:09:24','Neemrana','Rajasthan','','t'),(572,'2016-12-06 02:09:24','Pali','Rajasthan','','t'),(573,'2016-12-06 02:09:24','Pushkar','Rajasthan','','t'),(574,'2016-12-06 02:09:24','Ranakpur','Rajasthan','','t'),(575,'2016-12-06 02:09:24','Sawai Madhopur','Rajasthan','','t'),(576,'2016-12-06 02:09:24','Shekhawati','Rajasthan','','t'),(577,'2016-12-06 02:09:24','Sikar','Rajasthan','','t'),(578,'2016-12-06 02:09:24','Udaipur','Rajasthan','','t'),(579,'2016-12-06 02:09:24','Keonjhar','Orissa','','f'),(580,'2016-12-06 02:09:24','Angul','Orissa','','f'),(581,'2016-12-06 02:09:24','Rajsamand','Rajasthan','','t'),(582,'2016-12-06 02:09:24','','Rajasthan','','f'),(583,'2016-12-06 02:09:24','Sirohi','Rajasthan','','t'),(584,'2016-12-06 02:09:24','Barn','Rajasthan','','f'),(585,'2016-12-06 02:09:24','Ariyalur','Tamil Nadu','','t'),(586,'2016-12-06 02:09:24','Chennai','Tamil Nadu','','t'),(587,'2016-12-06 02:09:24','Coimbatore','Tamil Nadu','','t'),(588,'2016-12-06 02:09:24','Cuddalore','Tamil Nadu','','t'),(589,'2016-12-06 02:09:24','Dharmapuri','Tamil Nadu','','t'),(590,'2016-12-06 02:09:24','Dindigul','Tamil Nadu','','t'),(591,'2016-12-06 02:09:24','Erode','Tamil Nadu','','t'),(592,'2016-12-06 02:09:24','Kanchipuram','Tamil Nadu','','t'),(593,'2016-12-06 02:09:24','Kanniyakumari','Tamil Nadu','','t'),(594,'2016-12-06 02:09:24','Karur','Tamil Nadu','','t'),(595,'2016-12-06 02:09:24','Krishnagiri','Tamil Nadu','','t'),(596,'2016-12-06 02:09:24','Madurai','Tamil Nadu','','t'),(597,'2016-12-06 02:09:24','Nagapattinam','Tamil Nadu','','t'),(598,'2016-12-06 02:09:24','Namakkal','Tamil Nadu','','t'),(599,'2016-12-06 02:09:24','Nilgiris','Tamil Nadu','','t'),(600,'2016-12-06 02:09:24','Perambalur','Tamil Nadu','','t'),(601,'2016-12-06 02:09:24','Pudukkottai','Tamil Nadu','','t'),(602,'2016-12-06 02:09:24','Ramanathapuram','Tamil Nadu','','t'),(603,'2016-12-06 02:09:24','Salem','Tamil Nadu','','t'),(604,'2016-12-06 02:09:24','Sivaganga','Tamil Nadu','','t'),(605,'2016-12-06 02:09:24','Thanjavur','Tamil Nadu','','t'),(606,'2016-12-06 02:09:24','Theni','Tamil Nadu','','t'),(607,'2016-12-06 02:09:24','Thoothukudi','Tamil Nadu','','f'),(608,'2016-12-06 02:09:24','Thiruvarur','Tamil Nadu','','t'),(609,'2016-12-06 02:09:24','Tirunelveli','Tamil Nadu','','t'),(610,'2016-12-06 02:09:24','Tiruchirappalli','Tamil Nadu','','t'),(611,'2016-12-06 02:09:24','Thiruvallur','Tamil Nadu','','t'),(612,'2016-12-06 02:09:24','Tiruppur','Tamil Nadu','','t'),(613,'2016-12-06 02:09:24','Tiruvannamalai','Tamil Nadu','','f'),(614,'2016-12-06 02:09:24','Vellore','Tamil Nadu','','f'),(615,'2016-12-06 02:09:24','Villupuram','Tamil Nadu','','t'),(616,'2016-12-06 02:09:24','Virudhunagar','Tamil Nadu','','t'),(617,'2016-12-06 02:09:24','Anugul','Orissa','','t'),(618,'2016-12-06 02:09:24','Boudh','Orissa','','t'),(619,'2016-12-06 02:09:24','Bhadrak','Orissa','','t'),(620,'2016-12-06 02:09:24','Balangir','Orissa','','t'),(621,'2016-12-06 02:09:24','Bargarh','Orissa','','t'),(622,'2016-12-06 02:09:24','Balasore','Orissa','','t'),(623,'2016-12-06 02:09:24','Cuttack','Orissa','','t'),(624,'2016-12-06 02:09:24','','Orissa','','f'),(625,'2016-12-06 02:09:24','Debagarh','Orissa','','t'),(626,'2016-12-06 02:09:24','Dhenkanal','Orissa','','t'),(627,'2016-12-06 02:09:24','Ganjam','Orissa','','t'),(628,'2016-12-06 02:09:24','Gajapati','Orissa','','t'),(629,'2016-12-06 02:09:24','Jharsuguda','Orissa','','t'),(630,'2016-12-06 02:09:24','Jajapur','Orissa','','t'),(631,'2016-12-06 02:09:24','Jagatsinghapur','Orissa','','t'),(632,'2016-12-06 02:09:24','Khordha','Orissa','','t'),(633,'2016-12-06 02:09:24','Keonjhar','Orissa','','t'),(634,'2016-12-06 02:09:24','Kalahandi','Orissa','','t'),(635,'2016-12-06 02:09:24','Kandhamal','Orissa','','t'),(636,'2016-12-06 02:09:24','Koraput','Orissa','','t'),(637,'2016-12-06 02:09:24','Kendrapara','Orissa','','t'),(638,'2016-12-06 02:09:24','Malkangiri','Orissa','','t'),(639,'2016-12-06 02:09:24','Mayurbhanj','Orissa','','t'),(640,'2016-12-06 02:09:24','Nabarangpur','Orissa','','t'),(641,'2016-12-06 02:09:24','Nuapada','Orissa','','t'),(642,'2016-12-06 02:09:24','Nayagarh','Orissa','','t'),(643,'2016-12-06 02:09:24','Puri','Orissa','','t'),(644,'2016-12-06 02:09:24','Rayagada','Orissa','','t'),(645,'2016-12-06 02:09:24','Sambalpur','Orissa','','t'),(646,'2016-12-06 02:09:24','Subarnapur','Orissa','','t'),(647,'2016-12-06 02:09:24','Sundargarh','Orissa','','t'),(648,'2016-12-06 02:09:24','Bhubaneswar','Orissa','','t'),(649,'2016-12-06 02:09:24','','Orissa','','f'),(650,'2016-12-06 02:09:24','Nawrangpur','Orissa','','f'),(651,'2016-12-06 02:09:24','Bolangir','Orissa','','f'),(652,'2016-12-06 02:09:24','Sonepur','Orissa','','t'),(653,'2016-12-06 02:09:24','Baripada','Orissa','','t'),(654,'2016-12-06 02:09:24','Jalor','Rajasthan','','t'),(655,'2016-12-06 02:09:24','Dholpur','Rajasthan','','t'),(656,'2016-12-06 02:09:24','Pondicherry','Tamil Nadu','','t'),(657,'2016-12-06 02:09:24','Karauli','Rajasthan','','t'),(658,'2016-12-06 02:09:24','Hanumangarh','Rajasthan','','t'),(659,'2016-12-06 02:09:24','Sri ganganagar','Rajasthan','','t'),(660,'2016-12-06 02:09:24','Dausa','Rajasthan','','t'),(661,'2016-12-06 02:09:24','Tonk','Rajasthan','','t'),(662,'2016-12-06 02:09:24','Jhunjhunu','Rajasthan','','t'),(663,'2016-12-06 02:09:24','Churu','Rajasthan','','t'),(664,'2016-12-06 02:09:24','Baran','Rajasthan','','t'),(665,'2016-12-06 02:09:24','Nagercoil','Tamil Nadu','','t'),(666,'2016-12-06 02:09:24','Tuticorin','Tamil Nadu','','t'),(667,'2016-12-06 02:09:24','Karaikkal','Tamil Nadu','','f'),(668,'2016-12-06 02:09:24','Kumbakkom','Tamil Nadu','','t'),(669,'2016-12-06 02:09:24','Almora','Uttarakhand','','t'),(670,'2016-12-06 02:09:24','Bageshwar','Uttarakhand','','t'),(671,'2016-12-06 02:09:24','Chamoli','Uttarakhand','','t'),(672,'2016-12-06 02:09:24','','Uttarakhand','','f'),(673,'2016-12-06 02:09:24','Dehradun','Uttarakhand','','t'),(674,'2016-12-06 02:09:24','Haridwar','Uttarakhand','','t'),(675,'2016-12-06 02:09:24','Nainital','Uttarakhand','','t'),(676,'2016-12-06 02:09:24','Pauri Garhwal','Uttarakhand','','t'),(677,'2016-12-06 02:09:24','Pithoragarh','Uttarakhand','','t'),(678,'2016-12-06 02:09:24','Rudra Prayag','Uttarakhand','','t'),(679,'2016-12-06 02:09:24','Tehri Garhwal','Uttarakhand','','t'),(680,'2016-12-06 02:09:24','Udham Singh Nagar','Uttarakhand','','t'),(681,'2016-12-06 02:09:24','Uttarkashi','Uttarakhand','','t'),(682,'2016-12-06 02:09:24','Roorkee','Uttarakhand','','t'),(683,'2016-12-06 02:09:24','Rishikesh','Uttarakhand','','t'),(684,'2016-12-06 02:09:24','Agra','Uttar Pradesh West','','t'),(685,'2016-12-06 02:09:24','Allahabad','Uttar Pradesh East','','t'),(686,'2016-12-06 02:09:24','Aligarh','Uttar Pradesh West','','t'),(687,'2016-12-06 02:09:24','Ambedkar Nagar','Uttar Pradesh East','','t'),(688,'2016-12-06 02:09:24','Auraiya','Uttar Pradesh East','','t'),(689,'2016-12-06 02:09:24','Azamgarh','Uttar Pradesh East','','t'),(690,'2016-12-06 02:09:24','Barabanki','Uttar Pradesh East','','t'),(691,'2016-12-06 02:09:24','Badaun','Uttar Pradesh West','','t'),(692,'2016-12-06 02:09:24','Bahraich','Uttar Pradesh East','','t'),(693,'2016-12-06 02:09:24','Bijnor','Uttar Pradesh West','','t'),(694,'2016-12-06 02:09:24','Ballia','Uttar Pradesh East','','t'),(695,'2016-12-06 02:09:24','Sambhal','Uttar Pradesh East','','t'),(696,'2016-12-06 02:09:24','Banda','Uttar Pradesh East','','t'),(697,'2016-12-06 02:09:24','Balrampur','Uttar Pradesh East','','t'),(698,'2016-12-06 02:09:24','Bareilly','Uttar Pradesh West','','t'),(699,'2016-12-06 02:09:24','Basti','Uttar Pradesh East','','t'),(700,'2016-12-06 02:09:24','Bulandshahr','Uttar Pradesh West','','t'),(701,'2016-12-06 02:09:24','Chandauli','Uttar Pradesh East','','t'),(702,'2016-12-06 02:09:24','Chitrakoot','Uttar Pradesh East','','t'),(703,'2016-12-06 02:09:24','Deoria','Uttar Pradesh East','','t'),(704,'2016-12-06 02:09:24','Etah','Uttar Pradesh East','','t'),(705,'2016-12-06 02:09:24','Etawah','Uttar Pradesh East','','t'),(706,'2016-12-06 02:09:24','Firozabad','Uttar Pradesh West','','t'),(707,'2016-12-06 02:09:24','Farrukhabad','Uttar Pradesh East','','t'),(708,'2016-12-06 02:09:24','Fatehpur','Uttar Pradesh East','','t'),(709,'2016-12-06 02:09:24','Faizabad','Uttar Pradesh East','','t'),(710,'2016-12-06 02:09:24','Gautam Buddha Nagar','Uttar Pradesh West','','t'),(711,'2016-12-06 02:09:24','Gonda','Uttar Pradesh East','','t'),(712,'2016-12-06 02:09:24','Ghazipur','Uttar Pradesh East','','t'),(713,'2016-12-06 02:09:24','Gorakhpur','Uttar Pradesh East','','t'),(714,'2016-12-06 02:09:24','Ghaziabad','Uttar Pradesh West','','t'),(715,'2016-12-06 02:09:24','Hamirpur','Uttar Pradesh East','','t'),(716,'2016-12-06 02:09:24','Hardoi','Uttar Pradesh East','','t'),(717,'2016-12-06 02:09:24','Mahamaya Nagar','Uttar Pradesh East','','t'),(718,'2016-12-06 02:09:24','Jhansi','Uttar Pradesh East','','t'),(719,'2016-12-06 02:09:24','Jyotiba Phule Nagar','Uttar Pradesh West','','t'),(720,'2016-12-06 02:09:24','Jaunpur','Uttar Pradesh East','','t'),(721,'2016-12-06 02:09:24','Kanpur Rural','Uttar Pradesh East','','t'),(722,'2016-12-06 02:09:24','Kannauj','Uttar Pradesh East','','t'),(723,'2016-12-06 02:09:24','Kanpur Urban','Uttar Pradesh East','','t'),(724,'2016-12-06 02:09:24','Kanshi Ram Nagar','Uttar Pradesh East','','t'),(725,'2016-12-06 02:09:24','Kaushambi','Uttar Pradesh East','','t'),(726,'2016-12-06 02:09:24','Kushinagar','Uttar Pradesh East','','t'),(727,'2016-12-06 02:09:24','Lalitpur','Uttar Pradesh East','','t'),(728,'2016-12-06 02:09:24','Lakhimpur','Uttar Pradesh East','','t'),(729,'2016-12-06 02:09:24','Lucknow','Uttar Pradesh East','','t'),(730,'2016-12-06 02:09:24','Mau','Uttar Pradesh East','','t'),(731,'2016-12-06 02:09:24','Meerut','Uttar Pradesh West','','t'),(732,'2016-12-06 02:09:24','Maharajganj','Uttar Pradesh East','','t'),(733,'2016-12-06 02:09:24','Mahoba','Uttar Pradesh East','','t'),(734,'2016-12-06 02:09:24','Mirzapur','Uttar Pradesh East','','t'),(735,'2016-12-06 02:09:24','Moradabad','Uttar Pradesh West','','t'),(736,'2016-12-06 02:09:24','Mainpuri','Uttar Pradesh East','','t'),(737,'2016-12-06 02:09:24','Mathura','Uttar Pradesh East','','t'),(738,'2016-12-06 02:09:24','Muzaffarnagar','Uttar Pradesh West','','t'),(739,'2016-12-06 02:09:24','Pilibhit','Uttar Pradesh West','','t'),(740,'2016-12-06 02:09:24','Pratapgarh','Uttar Pradesh East','','t'),(741,'2016-12-06 02:09:24','Rampur','Uttar Pradesh West','','t'),(742,'2016-12-06 02:09:24','RaiBareli','Uttar Pradesh East','','t'),(743,'2016-12-06 02:09:24','Saharanpur','Uttar Pradesh West','','t'),(744,'2016-12-06 02:09:24','Sitapur','Uttar Pradesh East','','t'),(745,'2016-12-06 02:09:24','Shahjahanpur','Uttar Pradesh West','','t'),(746,'2016-12-06 02:09:24','Shamli','Uttar Pradesh West','','t'),(747,'2016-12-06 02:09:24','Siddharthnagar','Uttar Pradesh East','','t'),(748,'2016-12-06 02:09:24','Sonbhadra','Uttar Pradesh East','','t'),(749,'2016-12-06 02:09:24','Sant Ravidas Nagar','Uttar Pradesh East','','t'),(750,'2016-12-06 02:09:24','Sultanpur','Uttar Pradesh East','','t'),(751,'2016-12-06 02:09:24','Shravasti','Uttar Pradesh East','','t'),(752,'2016-12-06 02:09:24','Unnao','Uttar Pradesh East','','t'),(753,'2016-12-06 02:09:24','Varanasi','Uttar Pradesh East','','t'),(754,'2016-12-06 02:09:24','Sant Kabir Nagar','Uttar Pradesh East','','t'),(755,'2016-12-06 02:09:24','Jalaun','Uttar Pradesh East','','t'),(756,'2016-12-06 02:09:24','Hathras','Uttar Pradesh East','','t'),(757,'2016-12-06 02:09:24','Baghpat','Uttar Pradesh West','','t'),(758,'2016-12-06 02:09:24','Noida','Uttar Pradesh West','','t'),(759,'2013-05-29 18:21:13','Port Blair','31','','t'),(760,'2016-12-06 02:09:23','Saran','Bihar','','t'),(761,'2016-12-06 02:09:23','Motihari','Bihar','','t'),(762,'2016-12-06 02:09:24','Bhubaneswar','Orissa','','f'),(763,'2016-12-06 02:09:24','Rupnagar','Punjab','','t'),(764,'2016-12-06 02:09:24','Ajitgarh','Punjab','','t'),(765,'2016-12-06 02:09:24','Shahid Bhagat Singh Nagar','Punjab','','t'),(766,'2016-12-06 02:09:23','Delhi','Delhi','','t'),(767,'2016-12-06 02:09:23','North Delhi','Delhi','','f'),(768,'2016-12-06 02:09:23','South Delhi','Delhi','','f'),(769,'2016-12-06 02:09:23','East Delhi','Delhi','','f'),(770,'2016-12-06 02:09:23','North East Delhi','Delhi','','f'),(771,'2016-12-06 02:09:23','South West Delhi','Delhi','','f'),(772,'2016-12-06 02:09:23','New Delhi','Delhi','','f'),(773,'2016-12-06 02:09:23','North West Delhi','Delhi','','f'),(774,'2016-12-06 02:09:23','West Delhi','Delhi','','f'),(775,'2016-12-06 02:09:24','Hosur','Tamil Nadu','','t'),(776,'2016-12-06 02:09:23','Guwahati','Assam','','t'),(777,'2016-12-06 02:09:23','Indore','Madhya Pradesh','','t'),(778,'2016-12-06 02:09:23','Saran','Bihar','','f'),(779,'2016-12-06 02:09:24','Kolkata','West Bengal','','t'),(780,'2016-12-06 02:09:24','Bheekamkhor','Rajasthan','','t'),(781,'2016-12-06 02:09:24','DANPUR','Rajasthan','','f'),(782,'2016-12-06 02:09:24','Tanda Ratna','Rajasthan','','f'),(783,'2016-12-06 02:09:24','Supaul','Rajasthan','','f'),(784,'2016-12-06 02:09:24','Kachhola','Rajasthan','','f'),(785,'2016-12-06 02:09:24','Maharajwas','Rajasthan','','f'),(786,'2016-12-06 02:09:24','Lalsot','Rajasthan','\r\n','t'),(787,'2016-12-06 02:09:24','Banswara','Rajasthan','','t'),(788,'2016-12-06 02:09:23','Kangra','Himachal Pradesh','','f'),(789,'2016-12-06 02:09:23','Dharamshala','Himachal Pradesh','North Zone','f'),(790,'2016-12-06 02:09:23','Chamba','Himachal Pradesh','North Zone','f'),(791,'2016-12-06 02:09:23','Khajjiar','Himachal Pradesh','North Zone','f'),(792,'2016-12-06 02:09:23','Kasauli','Himachal Pradesh','North Zone','f'),(793,'2016-12-06 02:09:23','Kufri','Himachal Pradesh','North Zone','f'),(794,'2016-12-06 02:09:23','Theog','Himachal Pradesh','North Zone','f'),(795,'2016-12-06 02:09:23','Kalpa','Himachal Pradesh','North Zone','f'),(796,'2016-12-06 02:09:23','Chail','Himachal Pradesh','North Zone','f'),(797,'2016-12-06 02:09:23','Naldehra','Himachal Pradesh','North Zone','f'),(798,'2016-12-06 02:09:23','Sangla','Himachal Pradesh','North Zone','f'),(799,'2016-12-06 02:09:23','Fagu','Himachal Pradesh','North Zone','f'),(800,'2016-12-06 02:09:23','Kandaghat','Himachal Pradesh','North Zone','f'),(801,'2016-12-06 02:09:23','Koti','Himachal Pradesh','North Zone','f'),(802,'2016-12-06 02:09:23','Sarahan','Himachal Pradesh','North Zone','f'),(803,'2016-12-06 01:54:46','Ahmednagar','Maharashtra','','f'),(804,'2016-12-06 02:09:23','Bilaspur','Himachal Pradesh','North-Zone','t'),(805,'2016-12-06 02:09:23','Chamba','Himachal Pradesh','North-Zone','t'),(806,'2016-12-06 02:09:23','Hamirpur','Himachal Pradesh','North-Zone','t'),(807,'2016-12-06 02:09:23','Kangra','Himachal Pradesh','North-Zone','t'),(808,'2016-12-06 02:09:23','Kinnaur','Himachal Pradesh','North-Zone','t'),(809,'2016-12-06 02:09:23','Kullu','Himachal Pradesh','North-Zone','t'),(810,'2016-12-06 02:09:23','Lahaul and Spiti','Himachal Pradesh','North-Zone','t'),(811,'2016-12-06 02:09:23','Mandi','Himachal Pradesh','North-Zone','t'),(812,'2016-12-06 02:09:23','Shimla','Himachal Pradesh','North-Zone','t'),(813,'2016-12-06 02:09:23','Sirmaur','Himachal Pradesh','North-Zone','t'),(814,'2016-12-06 02:09:23','Solan','Himachal Pradesh','North-Zone','t'),(815,'2016-12-06 02:09:23','Una','Himachal Pradesh','North-Zone','t'),(816,'2016-12-06 02:09:23','Chail','Himachal Pradesh','North-Zone','t'),(817,'2016-12-06 02:09:23','Dharamshala','Himachal Pradesh','North-Zone','t'),(818,'2016-12-06 02:09:23','Fagu','Himachal Pradesh','North-Zone','t'),(819,'2016-12-06 02:09:23','Kalpa','Himachal Pradesh','North-Zone','t'),(820,'2016-12-06 02:09:23','Kandaghat','Himachal Pradesh','North-Zone','t'),(821,'2016-12-06 02:09:23','Kasauli','Himachal Pradesh','North-Zone','t'),(822,'2016-12-06 02:09:23','Khajjiar','Himachal Pradesh','North-Zone','t'),(823,'2016-12-06 02:09:23','Koti','Himachal Pradesh','North-Zone','t'),(824,'2016-12-06 02:09:23','Kufri','Himachal Pradesh','North-Zone','t'),(825,'2016-12-06 02:09:23','Manali','Himachal Pradesh','North-Zone','t'),(826,'2016-12-06 02:09:23','Naldehra','Himachal Pradesh','North-Zone','t'),(827,'2016-12-06 02:09:23','Palampur','Himachal Pradesh','North-Zone','t'),(828,'2016-12-06 02:09:23','Parwanoo','Himachal Pradesh','North-Zone','t'),(829,'2016-12-06 02:09:23','Renuka','Himachal Pradesh','North-Zone','t'),(830,'2016-12-06 02:09:23','Sangla','Himachal Pradesh','North-Zone','t'),(831,'2016-12-06 02:09:23','Sarahan','Himachal Pradesh','North-Zone','t'),(832,'2016-12-06 02:09:23','Theog','Himachal Pradesh','North-Zone','t'),(834,'2016-12-06 02:09:24','Vellore','Tamil Nadu','South-Zone','t'),(835,'2016-12-06 02:09:24','Tiruvallur','Tamil Nadu','South-Zone','f'),(836,'2016-12-06 02:09:24','Karaikal','Tamil Nadu','South-Zone','t'),(837,'2016-12-06 02:09:24','Cuddalore','Tamil Nadu','South-Zone','f'),(838,'2016-12-06 02:09:24','Viluppuram','Tamil Nadu','South-Zone','t'),(839,'2016-12-06 02:09:24','Tiruvannamalai','Tamil Nadu','South-Zone','t'),(840,'2016-12-06 02:09:23','CHAPRA -ATC','Bihar','Chapra','f'),(841,'2016-12-06 02:09:23','SIWAN-ATC','Bihar','Siwan','f'),(842,'2016-12-06 02:09:23','Muzaffarpur-ATC','Bihar','Muzaffarpur','f'),(843,'2016-12-06 02:09:23','Vaishali-ATC','Bihar','Vaishali','f'),(844,'2016-12-06 02:09:24','Champawat','Uttarakhand','','t'),(845,'2016-12-06 01:54:46','Kankavali','Maharashtra','','f'),(846,'2016-12-06 02:09:24','Parganas','West Bengal','','f'),(847,'2016-12-06 02:09:23','Anuppur','Madhya Pradesh','','t'),(848,'2016-12-06 02:09:24','Hapur(Panchsheel Nagar)','Uttar Pradesh West','','t'),(849,'2016-12-06 02:09:23','DAMTAL','Himachal Pradesh','','t'),(850,'2016-12-06 02:09:24','Burdwan','West Bengal','','t'),(851,'2016-12-06 02:09:24','Birbhum','West Bengal','','t'),(852,'2016-12-06 02:09:24','Midnapur','West Bengal','','f'),(853,'2016-12-06 02:09:23','Munger-ATC','Bihar','','t'),(854,'2016-12-06 02:09:23','Bhaghalpur-ATC','Bihar','','f'),(855,'2016-12-06 02:09:23','Jamui-ATC','Bihar','','t'),(856,'2016-12-06 02:09:23','Banka-ATC','Bihar','','t'),(857,'2016-12-06 02:09:24','Agartala','Tripura','','t'),(858,'2013-08-02 16:41:56','a','33','','f'),(859,'2013-08-02 16:42:07','b','33','','f'),(860,'2013-08-02 16:42:19','c','33','','f'),(861,'2013-08-02 16:42:32','d','33','','f'),(862,'2013-08-02 16:42:44','e','33','','f'),(863,'2016-12-06 02:09:23','Lakhisarai-ATC','Bihar','','f'),(864,'2016-12-06 02:09:23','Palanpur','Gujarat','','t'),(865,'2016-12-06 02:09:24','Pratapgarh','Rajasthan','','t'),(866,'2016-12-06 02:09:23','Kaimur','Bihar','','t'),(867,'2016-12-06 02:09:23','Itanagar','Arunachal Pradesh','East','t'),(868,'2016-12-06 02:09:23','Sheikhpura','Bihar','','f'),(869,'2016-12-06 02:09:23','Burhanpur','Madhya Pradesh','','t'),(870,'2013-12-13 21:36:38','East-West Nepal ','36','','t'),(871,'2013-12-13 21:37:21','North-South Nepal','36','','t'),(872,'2013-12-13 21:38:30','North-East Bhutan','37','','t'),(873,'2013-12-13 21:39:03','West-South Bhutan','37','','t'),(874,'2013-12-13 21:40:18','North-East Bangladesh','38','','t'),(875,'2013-12-13 21:40:45','West-South Bangladesh','38','','t'),(876,'2016-12-06 02:09:24','Ghazipur','Uttar Pradesh East',NULL,'t'),(877,'2016-12-06 02:09:24','Bhadohi','Uttar Pradesh East',NULL,'t'),(878,'2016-12-06 02:09:23','Udalguri','Assam',NULL,'t'),(879,'2016-12-06 02:09:23','Khandwa','Madhya Pradesh','West-Zone','t'),(880,'2016-12-06 02:09:23','Burhanpur','Madhya Pradesh','West-Zone','t'),(881,'2016-12-06 01:54:46','Raigad- Alibaugh','Maharashtra','West-Zone','t'),(882,'2016-12-06 01:54:46','Raigad- Pen','Maharashtra','West-Zone','t'),(883,'2016-12-06 01:54:46','Raigad- Murud','Maharashtra','West-Zone','t'),(884,'2016-12-06 01:54:46','Raigad- Uran','Maharashtra','West-Zone','t'),(885,'2016-12-06 02:09:23','Koppal-Gangavati','Karnataka','South-Zone','f'),(886,'2016-12-06 02:09:23','Baksa','Assam','East ','t'),(887,'2016-12-06 01:54:46','Thane-Dombivali','Maharashtra','West-Zone','t'),(888,'2016-12-06 01:54:46','Thane-Kalyan','Maharashtra','West-Zone','t'),(889,'2016-12-06 01:54:46','Thane-Ulhasnagar','Maharashtra','West-Zone','t'),(890,'2016-12-06 01:54:46','Thane-Ambernath','Maharashtra','West-Zone','t'),(891,'2016-12-06 01:54:46','Thane-Badlapur','Maharashtra','West-Zone','t'),(892,'2016-12-06 01:54:46','Thane-Titwala','Maharashtra','West-Zone','t'),(893,'2016-12-06 01:54:46','Thane-Murbad','Maharashtra','West-Zone','t'),(894,'2016-12-06 02:09:24','New Alipurdwar','West Bengal',NULL,NULL),(895,'2016-12-06 01:54:46','Palghar','Maharashtra','West-Zone','t'),(896,'2016-12-06 02:09:24','Rourkela','Orissa',NULL,'t'),(897,'2016-12-06 01:54:46','Vasai-Virar','Maharashtra','','t'),(898,'2016-12-06 01:54:46','Boisar','Maharashtra','','t'),(899,'2016-12-06 01:54:46','Bhiwandi','Maharashtra','','t'),(900,'2016-12-06 01:54:46','Raigad-Panvel','Maharashtra',NULL,'t');

/*Table structure for table `import_master_table` */

DROP TABLE IF EXISTS `import_master_table`;

CREATE TABLE `import_master_table` (
  `temp_id` int(11) NOT NULL auto_increment,
  `category_name` varchar(255) character set latin1 default NULL,
  `delivery_date_time` datetime default NULL,
  `order_generated_date_time` datetime default NULL,
  `order_status` varchar(255) character set latin1 default NULL,
  `product_quantity` int(11) default NULL,
  `receiver_alternative_number` varchar(255) character set latin1 default NULL,
  `receiver_dob` varchar(255) character set latin1 default NULL,
  `receiver_email_address` varchar(255) character set latin1 default NULL,
  `receiver_firstname` varchar(255) character set latin1 default NULL,
  `receiver_gender` int(11) default NULL,
  `receiver_lastname` varchar(255) character set latin1 default NULL,
  `receiver_relation` varchar(255) character set latin1 default NULL,
  `receiver_telephone` varchar(255) character set latin1 default NULL,
  `shipping_cost` float default NULL,
  `shipping_method` varchar(255) character set latin1 default NULL,
  `wisher_dob` varchar(255) character set latin1 default NULL,
  `wisher_email_address` varchar(255) character set latin1 default NULL,
  `wisher_firstname` varchar(255) character set latin1 default NULL,
  `wisher_gender` int(11) default NULL,
  `wisher_id` varchar(50) character set latin1 default NULL,
  `wisher_lastname` varchar(50) character set latin1 default NULL,
  `wisher_state` varchar(50) character set latin1 default NULL,
  `wisher_telephone` varchar(50) character set latin1 default NULL,
  `order_id` varchar(50) character set latin1 default NULL,
  `product_id` int(50) default NULL,
  `wisher_city` varchar(50) default NULL,
  `wisher_pincode` varchar(50) default NULL,
  `wisher_country` varchar(50) default NULL,
  `receiver_pincode` varchar(50) default NULL,
  `receiver_state` varchar(50) default NULL,
  `receiver_city` varchar(50) default NULL,
  `wisher_address_line` varchar(100) default NULL,
  `receiver_address_line` varchar(255) default NULL,
  `receiver_country` varchar(255) default NULL,
  `payment_method` varchar(255) default NULL,
  PRIMARY KEY  (`temp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `import_master_table` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user_id` bigint(10) NOT NULL auto_increment,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `user_name` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `operator` enum('admin','vendor','ems') default NULL,
  `flag` enum('t','f') default 'f',
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`user_id`,`date`,`user_name`,`password`,`operator`,`flag`) values (1,'2016-11-24 03:04:31','superAdmin','superAdmin','admin','t'),(2,'2016-12-13 05:41:17','superAdmin','ems','ems','t'),(3,'2016-12-13 05:46:13','bhushanborul13@gmail.com','sai','vendor','t'),(4,'2016-12-08 04:58:31','Sandhbhor@navisionworld.com','sai','vendor','t'),(5,'2016-12-13 03:29:50','developers1@navisionworld.in','1234','vendor','f'),(9,'2016-12-13 05:26:47','developers@navisionworld.in','123','vendor','t');

/*Table structure for table `order_product_vendor` */

DROP TABLE IF EXISTS `order_product_vendor`;

CREATE TABLE `order_product_vendor` (
  `order_status` varchar(255) default NULL,
  `REGISTERED_DATE` date default NULL,
  `products_id` int(11) NOT NULL default '0',
  `orders_id` int(11) NOT NULL default '0',
  `action_status` varchar(20) default NULL,
  `user_id` bigint(20) default NULL,
  `vendor_id` varchar(20) default NULL,
  `opd` int(20) NOT NULL auto_increment,
  `reason` text,
  `status_updated_date` datetime default NULL,
  PRIMARY KEY  (`opd`),
  KEY `FK_dhun5nsi22n2uu0wblojf8adu` (`products_id`),
  KEY `FK_mh9jyy2raoi8u0ieya2y6qacu` (`orders_id`),
  KEY `user_id` (`user_id`),
  KEY `opd` (`opd`),
  CONSTRAINT `FK_dhun5nsi22n2uu0wblojf8adu` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`),
  CONSTRAINT `order_product_vendor_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`),
  CONSTRAINT `order_product_vendor_ibfk_2` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order_product_vendor` */

insert  into `order_product_vendor`(`order_status`,`REGISTERED_DATE`,`products_id`,`orders_id`,`action_status`,`user_id`,`vendor_id`,`opd`,`reason`,`status_updated_date`) values ('OPEN','2016-12-13',5,4,'ACCEPT',1,'kw3',7,NULL,NULL),('OPEN','2016-12-13',4,4,'ACCEPT',1,'kw3',8,NULL,NULL),('OPEN','2016-12-13',5,4,'ACCEPT',1,'kw3',9,NULL,NULL),('OPEN','2016-12-13',4,4,'ACCEPT',1,'kw3',10,NULL,NULL);

/*Table structure for table `order_product_vendor_rejected` */

DROP TABLE IF EXISTS `order_product_vendor_rejected`;

CREATE TABLE `order_product_vendor_rejected` (
  `order_status` varchar(255) default NULL,
  `REGISTERED_DATE` date default NULL,
  `products_id` int(11) NOT NULL default '0',
  `orders_id` int(11) NOT NULL default '0',
  `action_status` varchar(20) default NULL,
  `user_id` bigint(20) default NULL,
  `vendor_id` varchar(20) default NULL,
  `opd` int(20) NOT NULL auto_increment,
  `reason` text,
  `status_updated_date` datetime default NULL,
  PRIMARY KEY  (`opd`),
  KEY `FK_dhun5nsi22n2uu0wblojf8adu` (`products_id`),
  KEY `FK_mh9jyy2raoi8u0ieya2y6qacu` (`orders_id`),
  KEY `user_id` (`user_id`),
  KEY `opd` (`opd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order_product_vendor_rejected` */

insert  into `order_product_vendor_rejected`(`order_status`,`REGISTERED_DATE`,`products_id`,`orders_id`,`action_status`,`user_id`,`vendor_id`,`opd`,`reason`,`status_updated_date`) values ('REJECTED','2016-12-13',4,4,'REJECTED',1,'kw3',6,NULL,NULL);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `order_perm_id` int(11) NOT NULL auto_increment,
  `category_name` varchar(255) default NULL,
  `delivery_date_time` datetime default NULL,
  `order_generated_date_time` datetime default NULL,
  `cc_expires` varchar(255) default NULL,
  `cc_number` varchar(255) default NULL,
  `cc_owner` varchar(255) default NULL,
  `cc_type` varchar(255) default NULL,
  `date_purchased` varchar(255) default NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status` varchar(255) default NULL,
  `payment_method` varchar(255) default NULL,
  `products_id` int(11) default NULL,
  `product_qty` int(11) default NULL,
  `receiver_address_line` varchar(255) default NULL,
  `receiver_city` varchar(255) default NULL,
  `receiver_country` varchar(255) default NULL,
  `receiver_name` varchar(255) default NULL,
  `receiver_postcode` varchar(255) default NULL,
  `receiver_state` varchar(255) default NULL,
  `receiver_alternative_number` varchar(255) default NULL,
  `receiver_dob` date default NULL,
  `receiver_email_address` varchar(255) default NULL,
  `receiver_gender` enum('male','female','other') default NULL,
  `receiver_relation` varchar(255) default NULL,
  `receiver_telephone` varchar(255) default NULL,
  `shipping_cost` varchar(255) default NULL,
  `shipping_method` varchar(255) default NULL,
  `wisher_address_line` varchar(255) default NULL,
  `wisher_city` varchar(255) default NULL,
  `wisher_country` varchar(255) default NULL,
  `wisher_dob` date default NULL,
  `wisher_email_address` varchar(255) default NULL,
  `wisher_gender` enum('male','female','other') default NULL,
  `wisher_id` int(70) default NULL,
  `wisher_name` varchar(255) default NULL,
  `wisher_postcode` varchar(255) default NULL,
  `wisher_state` varchar(255) default NULL,
  `wisher_telephone` varchar(255) default NULL,
  PRIMARY KEY  (`order_perm_id`),
  KEY `order_id` (`orders_id`),
  KEY `product_id` (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

insert  into `orders`(`order_perm_id`,`category_name`,`delivery_date_time`,`order_generated_date_time`,`cc_expires`,`cc_number`,`cc_owner`,`cc_type`,`date_purchased`,`orders_id`,`orders_status`,`payment_method`,`products_id`,`product_qty`,`receiver_address_line`,`receiver_city`,`receiver_country`,`receiver_name`,`receiver_postcode`,`receiver_state`,`receiver_alternative_number`,`receiver_dob`,`receiver_email_address`,`receiver_gender`,`receiver_relation`,`receiver_telephone`,`shipping_cost`,`shipping_method`,`wisher_address_line`,`wisher_city`,`wisher_country`,`wisher_dob`,`wisher_email_address`,`wisher_gender`,`wisher_id`,`wisher_name`,`wisher_postcode`,`wisher_state`,`wisher_telephone`) values (115,'Bouquet','2016-09-12 00:00:00','2016-07-12 00:00:00',NULL,NULL,NULL,NULL,NULL,1,'In Progress','credit_card',1,5,'kasba peth','pune','India','Shivaji Raje','343232','maharashtra','9028262228','2012-01-03','m.s@gmail.com','male','Brother','411001','140.0','plane','swargate','pune','India','2018-06-11','v.k123@gmail.com','male',1,'Vijay Kumbharkar','411044','maharashtra','7758587566'),(116,'Cakes','2016-09-12 00:00:00','2016-07-12 00:00:00',NULL,NULL,NULL,NULL,NULL,1,'In Progress','credit_card',3,2,'kasba peth','pune','India','Shivaji Raje','5425184','maharashtra','9028262228','2015-05-02','s.b@gmail.com','male','King','411001','140.0','Train','swargate','pune','India','2018-06-11','skb@gmail.cvom','male',2,'Sanket Bhosale','411043','maharashtra','5754185465'),(117,'Tree','2016-09-12 00:00:00','2016-07-12 00:00:00',NULL,NULL,NULL,NULL,NULL,2,'In Progress','credit_card',7,3,'swargate','pune','India','Sambhaji Bhosale','4651321','maharashtra','9028262228','2012-08-05','kb@gmail.co','male','Sub King','411011','140.0','Bus','kasba peth','pune','India','2018-06-11','sdf@gmail.com','male',3,'Rajesh Kumar','411044','maharashtra','46546464'),(118,'Exclusive','2016-09-12 00:00:00','2016-07-12 00:00:00',NULL,NULL,NULL,NULL,NULL,3,'In Progress','credit_card',12,3,'kothrud','pune','India','Mahesh Kumar','411046','maharashtra','9028262228','1993-05-02','rk@ymail.com','male','Brother','411012','140.0','Walk','kasba peth','pune','India','2018-06-11','kb@gmail.com','male',4,'Aniket Bhagavt','411044','maharashtra','7778554744'),(119,'Chocolate','2016-09-12 00:00:00','2016-07-12 00:00:00',NULL,NULL,NULL,NULL,NULL,4,'ReAssigned','credit_card',5,1,'hadpsar','pune','India','Rajesh Kumar','411046','maharashtra','9028262228','1993-05-02','rk@ymail.com','male','Brother','411014','140.0','Walk','kothrud','pune','India','2018-06-11','kb@gmail.com','male',4,'Kishor Bhagavt','411044','maharashtra','7778554744'),(120,'Cakes','2016-09-12 00:00:00','2016-07-12 00:00:00',NULL,NULL,NULL,NULL,NULL,4,'ReAssigned','credit_card',4,1,'hadpsar','pune','India','Rajesh Kumar','411046','maharashtra','9028262228','1993-05-02','rk@ymail.com','male','Brother','411014','140.0','Walk','kothrud','pune','India','2018-06-11','kb@gmail.com','male',4,'Kishor Bhagavt','411044','maharashtra','7778554744');

/*Table structure for table `product_upload` */

DROP TABLE IF EXISTS `product_upload`;

CREATE TABLE `product_upload` (
  `product_upload_id` bigint(10) NOT NULL auto_increment,
  `date` varchar(50) default NULL,
  `systemdate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `product_type` varchar(500) default NULL,
  `flower_specification` text,
  `cake_specification` text,
  `chocolate_specification` text,
  `tree_specification` text,
  `exe_specification` text,
  `capacity_to_delivery` varchar(500) default NULL,
  `vendor_id` varchar(20) default NULL,
  `user_id` bigint(10) default NULL,
  PRIMARY KEY  (`product_upload_id`),
  KEY `VENDORID` (`vendor_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `product_upload_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`),
  CONSTRAINT `vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_registration` (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product_upload` */

insert  into `product_upload`(`product_upload_id`,`date`,`systemdate`,`product_type`,`flower_specification`,`cake_specification`,`chocolate_specification`,`tree_specification`,`exe_specification`,`capacity_to_delivery`,`vendor_id`,`user_id`) values (1,'2016-12-08 03:37:16','2016-12-08 03:37:16','Bouquet,Cakes,Chocolate,Any_Exclusive','flowers','Cakes','','','','','kw2',1),(2,'2016-12-08 04:58:08','2016-12-08 04:58:08','Tree,Exclusive','','','','bonsai','','','kw3',2),(3,'2016-12-10 00:57:58','2016-12-10 00:57:58','Bouquet,Cakes,Exclusive','Fresh Flowers','Delicious cakes','','','','','kw4',1),(4,'2016-12-13 05:26:36','2016-12-13 05:26:36','Bouquet,Cakes','','','','','','','kw5',1);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `products_id` int(10) NOT NULL auto_increment,
  `products_date_added` date default NULL,
  `products_date_available` date default NULL,
  `products_image` varchar(255) default NULL,
  `products_last_modified` date default NULL,
  `products_model` varchar(255) default NULL,
  `products_price` float default NULL,
  `products_quantity` int(11) default NULL,
  `products_status` int(11) default NULL,
  `products_tax` float default NULL,
  `products_weight` float default NULL,
  `products_price_offered` float(10,2) default NULL,
  `products_name` varchar(20) default NULL,
  PRIMARY KEY  (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`products_id`,`products_date_added`,`products_date_available`,`products_image`,`products_last_modified`,`products_model`,`products_price`,`products_quantity`,`products_status`,`products_tax`,`products_weight`,`products_price_offered`,`products_name`) values (1,'2016-11-10','2016-11-10','D:\\apache-tomcat-8.0.36\\tmpFiles\\WK0021.jpg','2016-12-08','F1',500,0,1,90,100,400.00,'Bouquet'),(2,'2016-11-12','2016-11-12','D:\\apache-tomcat-8.0.36\\tmpFiles\\WK0041.jpg','2016-12-08','F1',600,0,1,90,100,500.00,'Bouquet'),(3,'2016-11-12','2016-11-12','D:\\apache-tomcat-8.0.36\\tmpFiles\\cakes1.jpg','2016-12-08','C1',600,0,1,90,100,500.00,'Cake'),(4,'2016-11-15','2016-12-12','D:\\apache-tomcat-8.0.36\\tmpFiles\\cakes.jpg','2016-12-08','C1',700,0,1,20,100,600.00,'Cake'),(5,'2016-11-15','2016-12-12','D:\\apache-tomcat-8.0.36\\tmpFiles\\chocolate.jpg','2016-12-08','CH1',100,0,1,20,100,50.00,'Chocolate'),(6,'2016-11-12','2016-11-12','D:\\apache-tomcat-8.0.36\\tmpFiles\\chocolatejpg.jpg','2016-12-08','CH1',150,0,1,20,100,100.00,'Chocolate'),(7,'2016-11-12','2016-11-12','D:\\apache-tomcat-8.0.36\\tmpFiles\\tree.jpg','2016-12-08','T1',300,0,1,50,100,200.00,'Tree'),(8,'2016-12-04','2016-12-04','D:\\apache-tomcat-8.0.36\\tmpFiles\\tr.jpg','2016-12-08','T1',300,0,1,50,100,200.00,'Tree'),(9,'2016-12-06','2016-12-06','D:\\apache-tomcat-8.0.36\\tmpFiles\\anyEx.jpg','2016-12-08','A1',700,0,1,90,100,600.00,'Any_Exclusive'),(10,'2016-12-07','2016-12-07','D:\\apache-tomcat-8.0.36\\tmpFiles\\anyEx1.jpg','2016-12-08','A1',800,0,1,90,100,700.00,'Any_Exclusive'),(11,'2016-12-08','2016-12-08','D:\\apache-tomcat-8.0.36\\tmpFiles\\Exe.jpg','2016-12-08','E1',1000,0,1,90,100,800.00,'Exclusive'),(12,'2016-12-08','2016-12-08','D:\\apache-tomcat-8.0.36\\tmpFiles\\Exe1.jpg','2016-12-08','E1',1000,0,1,90,100,800.00,'Exclusive');

/*Table structure for table `reports` */

DROP TABLE IF EXISTS `reports`;

CREATE TABLE `reports` (
  `RID` int(50) NOT NULL,
  `Order_till_Date` int(50) default NULL,
  `Products_sold_till_date` int(50) default NULL,
  `Earnings_till_date` int(50) default NULL,
  `Orders_cancelled_till_date` int(50) default NULL,
  `Orders_delivered_till_date` int(50) default NULL,
  `Return_Orders_till_date` int(50) default NULL,
  `Vendor_count` int(50) default NULL,
  `Product_count` int(50) default NULL,
  `Vendors_active` int(50) default NULL,
  `Vendor_inactive` int(50) default NULL,
  `Vendors_fresh` int(50) default NULL,
  `Date` datetime default NULL,
  PRIMARY KEY  (`RID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reports` */

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `id` bigint(11) NOT NULL auto_increment,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `name` varchar(30) default NULL,
  `disc` varchar(50) default NULL,
  `flag` enum('t','f') default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `state` */

insert  into `state`(`id`,`date`,`name`,`disc`,`flag`) values (0,'2013-08-17 18:52:18','--','asda','f'),(1,'2015-08-20 12:20:08','Andhra Pradesh','South','t'),(2,'2015-08-20 12:20:11','Arunachal Pradesh','East','t'),(3,'2015-08-20 12:20:13','Assam','East','t'),(4,'2015-08-20 12:20:14','Bihar','East','t'),(5,'2015-08-20 12:21:03','Chattisagarh','West','t'),(6,'2015-08-20 12:20:41','Kerala','South','f'),(7,'2015-08-20 12:21:24','Delhi','North','t'),(8,'2015-08-20 12:21:06','Goa','West','t'),(9,'2015-08-20 12:21:06','Gujarat','West','t'),(10,'2015-08-20 12:21:25','Haryana','North','t'),(11,'2015-08-20 12:21:26','Himachal Pradesh','North','t'),(12,'2016-12-07 00:12:01','Jammu_Kashmir','North','t'),(13,'2015-08-20 12:20:20','Jharkhand','East','t'),(14,'2015-08-20 12:20:44','Karnataka','South','t'),(15,'2015-08-20 12:20:45','Kerala','South','t'),(16,'2015-08-20 12:21:09','Madhya Pradesh','West','t'),(17,'2016-12-06 01:53:46','Maharashtra','West','t'),(18,'2015-08-20 12:20:22','Meghalaya','East','t'),(19,'2015-08-20 12:20:23','Mizoram','East','t'),(20,'2015-08-20 12:20:24','Nagaland','East','t'),(21,'2015-08-20 12:20:25','Orissa','East','t'),(22,'2015-08-20 12:21:30','Punjab','North','t'),(23,'2015-08-20 12:21:30','Rajasthan','North','t'),(24,'2015-08-20 12:20:49','Tamil Nadu','South','t'),(25,'2015-08-20 12:21:32','Uttar Pradesh East','North','t'),(26,'2015-08-20 12:21:32','Uttarakhand','North','t'),(27,'2015-08-20 12:20:27','West Bengal','East','t'),(28,'2015-08-20 12:20:28','Sikkim','East','t'),(29,'2015-08-20 12:20:28','Manipur','East','t'),(30,'2015-08-20 12:20:29','Tripura','East','t'),(31,'2015-08-20 12:20:52','Andaman and Nicobar Islands','South','t'),(32,'2015-08-20 12:21:35','Uttar Pradesh West','North','t'),(33,'2013-08-02 16:43:27','Lenin Grad','','f'),(40,'2014-06-27 21:12:29','Telangana','South','t'),(41,'2014-07-10 21:54:23','Karnataka North','South','t');

/*Table structure for table `vendor_registration` */

DROP TABLE IF EXISTS `vendor_registration`;

CREATE TABLE `vendor_registration` (
  `vendor_id` varchar(20) NOT NULL default '',
  `id` int(20) NOT NULL auto_increment,
  `date` date default NULL,
  `systemdate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `vendor_name` varchar(50) default NULL,
  `designation` varchar(50) default NULL,
  `firm_name` varchar(100) default NULL,
  `phone` varchar(20) default NULL,
  `add1` text,
  `add2` text,
  `city` varchar(50) default NULL,
  `state` varchar(50) default NULL,
  `pin_code` varchar(10) default NULL,
  `area_cover` varchar(50) default NULL,
  `agreement` varchar(20) default NULL,
  `flag` enum('active','in_active','fresh') default NULL,
  `user_id` bigint(10) default NULL,
  `orders_count` int(30) default NULL,
  `products_sold_till_date` int(30) default NULL,
  `return_order_till_date` int(30) default NULL,
  `earnings_till_date` int(30) default NULL,
  `email` varchar(50) default NULL,
  `user_name` varchar(30) default NULL,
  `newsEmail` varchar(50) default NULL,
  `altphone` varchar(10) default NULL,
  PRIMARY KEY  (`vendor_id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `vendor_registration_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vendor_registration` */

insert  into `vendor_registration`(`vendor_id`,`id`,`date`,`systemdate`,`vendor_name`,`designation`,`firm_name`,`phone`,`add1`,`add2`,`city`,`state`,`pin_code`,`area_cover`,`agreement`,`flag`,`user_id`,`orders_count`,`products_sold_till_date`,`return_order_till_date`,`earnings_till_date`,`email`,`user_name`,`newsEmail`,`altphone`) values ('kw2',2,'2016-12-08','2016-12-08 03:29:38','Bhushan','Owner','Bhushan Flowers','9028262228','pune','pune','Pune','Maharashtra','411011','Whole City','Agree','active',3,5,6,10,1950,'bhushanborul13@gmail.com','bhushanborul13@gmail.com','bhushanborul13@gmail.com','9028262228'),('kw3',3,'2016-12-08','2016-12-08 04:55:17','Rohit','Owner','SandB Flowers','9028262228','budhwar peth','shanivar peth','Pune','Maharashtra','411011','Whole City','Agree','active',4,6,0,0,0,'developers@navisionworld.in','developers@navisionworld.in','Sandhbhor@navisionworld.com','9028262226'),('kw4',4,'2016-12-09','2016-12-09 04:20:19','Vijay','Admin','Vijay Flowers','7588072512','Purandar','Vanpuri','Mumbai','Maharashtra','412301','Whole City','Agree','active',5,0,0,0,0,'developers@navisionworld.in','developers@navisionworld.in','developers@navisionworld.in','7588072512'),('kw5',8,'2016-12-13','2016-12-13 03:41:03','Aniket Dhamal','Owner','Aniket Flowers','7588072512','Katraj Milk Deri','Amg Pathar','Pune','Maharashtra','412365','Whole City','Agree','active',9,0,0,0,0,'developers@navisionworld.in','developers@navisionworld.in','developers@navisionworld.in','9028262228');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
