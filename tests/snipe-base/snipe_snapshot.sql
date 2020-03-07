-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: dcas_l58_testing
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.10.2

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
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_us` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portrait` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_us`
--

LOCK TABLES `about_us` WRITE;
/*!40000 ALTER TABLE `about_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `about_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airports` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `airports_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_regions`
--

DROP TABLE IF EXISTS `asset_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_regions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endpoint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `protocol` enum('http','https') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_regions`
--

LOCK TABLES `asset_regions` WRITE;
/*!40000 ALTER TABLE `asset_regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hardware_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datacenter_id` int(10) unsigned DEFAULT NULL,
  `network_device_id` int(10) unsigned DEFAULT NULL,
  `switchport_id` int(10) unsigned DEFAULT NULL,
  `network_interface_cards` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `port_speed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chassis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motherboard_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpus` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `memory` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `operating_system_id` int(10) unsigned DEFAULT NULL,
  `control_panel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `administrator_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onhand_qty` int(10) unsigned NOT NULL,
  `pending_testing_qty` int(10) unsigned NOT NULL,
  `rma_qty` int(10) unsigned NOT NULL,
  `last_checkin` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availability_zones`
--

DROP TABLE IF EXISTS `availability_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availability_zones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `region_ids` json NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability_zones`
--

LOCK TABLES `availability_zones` WRITE;
/*!40000 ALTER TABLE `availability_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `availability_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_info`
--

DROP TABLE IF EXISTS `billing_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_type` enum('home','mobile','office','work','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_info`
--

LOCK TABLES `billing_info` WRITE;
/*!40000 ALTER TABLE `billing_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chassis`
--

DROP TABLE IF EXISTS `chassis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chassis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_owner` int(10) unsigned DEFAULT NULL,
  `accountable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountable_id` int(10) unsigned DEFAULT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_factor_in_u` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chassis_type` enum('rackmount','tower') COLLATE utf8mb4_unicode_ci NOT NULL,
  `power_supply` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_swap_drive_bays` int(10) unsigned NOT NULL,
  `internal_drive_bays` int(10) unsigned NOT NULL,
  `expansion_slots` int(10) unsigned NOT NULL,
  `expansion_slot_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chassis`
--

LOCK TABLES `chassis` WRITE;
/*!40000 ALTER TABLE `chassis` DISABLE KEYS */;
/*!40000 ALTER TABLE `chassis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_type` enum('home','mobile','office','work','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_panels`
--

DROP TABLE IF EXISTS `control_panels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_panels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `control_panel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `free` tinyint(1) NOT NULL,
  `frontend` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `backend` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `databases` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dns` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `multi_server` tinyint(1) NOT NULL,
  `operating_system` enum('linux','windows') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipv6_enabled` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_panels`
--

LOCK TABLES `control_panels` WRITE;
/*!40000 ALTER TABLE `control_panels` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_panels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maximum_discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_start_time` datetime NOT NULL,
  `valid_end_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpus`
--

DROP TABLE IF EXISTS `cpus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `architecture` enum('x86','x64') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'x64',
  `vendor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `family` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `speed` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cache_size` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_cores` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpus`
--

LOCK TABLES `cpus` WRITE;
/*!40000 ALTER TABLE `cpus` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_active` timestamp NULL DEFAULT NULL,
  `cart_session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datacenters`
--

DROP TABLE IF EXISTS `datacenters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datacenters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'O',
  `opening_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datacenters`
--

LOCK TABLES `datacenters` WRITE;
/*!40000 ALTER TABLE `datacenters` DISABLE KEYS */;
/*!40000 ALTER TABLE `datacenters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_employee`
--

DROP TABLE IF EXISTS `department_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_employee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int(10) unsigned NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `department_employee_department_id_employee_id_index` (`department_id`,`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_employee`
--

LOCK TABLES `department_employee` WRITE;
/*!40000 ALTER TABLE `department_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `hexcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disks`
--

DROP TABLE IF EXISTS `disks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `interface` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seed` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latency` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_factor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disks`
--

LOCK TABLES `disks` WRITE;
/*!40000 ALTER TABLE `disks` DISABLE KEYS */;
/*!40000 ALTER TABLE `disks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domains`
--

DROP TABLE IF EXISTS `domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) unsigned NOT NULL,
  `account_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registrar_id` int(10) unsigned NOT NULL,
  `domain_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `monitor` tinyint(1) NOT NULL DEFAULT '0',
  `whois_record_updated` timestamp NULL DEFAULT NULL,
  `whois_record_created` timestamp NULL DEFAULT NULL,
  `whois_record_expiry` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domains`
--

LOCK TABLES `domains` WRITE;
/*!40000 ALTER TABLE `domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_active` timestamp NULL DEFAULT NULL,
  `cart_session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
-- Table structure for table `firewall_zones`
--

DROP TABLE IF EXISTS `firewall_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firewall_zones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `network_asset_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datacenter_id` int(10) unsigned NOT NULL,
  `network_device_id` int(10) unsigned NOT NULL,
  `available` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firewall_zones`
--

LOCK TABLES `firewall_zones` WRITE;
/*!40000 ALTER TABLE `firewall_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `firewall_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_emails`
--

DROP TABLE IF EXISTS `inbound_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_emails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body_plain` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_full` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_id` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripped_html` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripped_signature` longtext COLLATE utf8mb4_unicode_ci,
  `stripped_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response_timestamp` datetime NOT NULL DEFAULT '2019-03-14 03:58:50',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inbound_emails_message_id_unique` (`message_id`),
  UNIQUE KEY `inbound_emails_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_emails`
--

LOCK TABLES `inbound_emails` WRITE;
/*!40000 ALTER TABLE `inbound_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_items_invoice_id_index` (`invoice_id`),
  KEY `invoice_items_service_id_index` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_items`
--

LOCK TABLES `invoice_items` WRITE;
/*!40000 ALTER TABLE `invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) unsigned NOT NULL,
  `account_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_option` enum('check','credit card','free','mail','NET 30','NET 90','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_info_id` int(10) unsigned NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `date_due` timestamp NULL DEFAULT NULL,
  `date_paid` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_account_id_index` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_addresses`
--

DROP TABLE IF EXISTS `ip_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_owner` int(10) unsigned DEFAULT NULL,
  `network_interface_card_id` int(10) unsigned NOT NULL,
  `firewall_zone_id` int(10) unsigned DEFAULT '1',
  `port_number` int(10) unsigned NOT NULL,
  `accountable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountable_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address_type` enum('IPv4','IPv6','Reserved') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'IPv4',
  `ip_address_visibility` enum('private','public') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `gateway_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subnet_address_id` int(10) unsigned NOT NULL,
  `other_ip_addresses` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `allocation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_addresses`
--

LOCK TABLES `ip_addresses` WRITE;
/*!40000 ALTER TABLE `ip_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,NULL,'en','2019-03-14 08:57:55','2019-03-14 08:57:55');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `larametrics_logs`
--

DROP TABLE IF EXISTS `larametrics_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `larametrics_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trace` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `larametrics_logs`
--

LOCK TABLES `larametrics_logs` WRITE;
/*!40000 ALTER TABLE `larametrics_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `larametrics_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `larametrics_models`
--

DROP TABLE IF EXISTS `larametrics_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `larametrics_models` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(11) NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original` text COLLATE utf8mb4_unicode_ci,
  `changes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `larametrics_models`
--

LOCK TABLES `larametrics_models` WRITE;
/*!40000 ALTER TABLE `larametrics_models` DISABLE KEYS */;
/*!40000 ALTER TABLE `larametrics_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `larametrics_notifications`
--

DROP TABLE IF EXISTS `larametrics_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `larametrics_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `notify_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `last_fired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `larametrics_notifications`
--

LOCK TABLES `larametrics_notifications` WRITE;
/*!40000 ALTER TABLE `larametrics_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `larametrics_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `larametrics_requests`
--

DROP TABLE IF EXISTS `larametrics_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `larametrics_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci,
  `start_time` double(16,4) DEFAULT NULL,
  `end_time` double(16,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `larametrics_requests`
--

LOCK TABLES `larametrics_requests` WRITE;
/*!40000 ALTER TABLE `larametrics_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `larametrics_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailbox_inbound_emails`
--

DROP TABLE IF EXISTS `mailbox_inbound_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailbox_inbound_emails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailbox_inbound_emails`
--

LOCK TABLES `mailbox_inbound_emails` WRITE;
/*!40000 ALTER TABLE `mailbox_inbound_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailbox_inbound_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memory`
--

DROP TABLE IF EXISTS `memory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `speed` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ecc` tinyint(1) NOT NULL DEFAULT '0',
  `buffered` tinyint(1) NOT NULL DEFAULT '0',
  `registered` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memory`
--

LOCK TABLES `memory` WRITE;
/*!40000 ALTER TABLE `memory` DISABLE KEYS */;
/*!40000 ALTER TABLE `memory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_pages`
--

DROP TABLE IF EXISTS `menu_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `can` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isTitle` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_pages`
--

LOCK TABLES `menu_pages` WRITE;
/*!40000 ALTER TABLE `menu_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_customers_table',1),(2,'2014_10_12_000000_create_employees_table',1),(3,'2014_10_12_000000_create_vendors_table',1),(4,'2014_10_12_000000_create_whitegloves_table',1),(5,'2014_10_12_100000_create_password_resets_table',1),(6,'2016_06_01_000001_create_oauth_auth_codes_table',1),(7,'2016_06_01_000002_create_oauth_access_tokens_table',1),(8,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(9,'2016_06_01_000004_create_oauth_clients_table',1),(10,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(11,'2018_06_01_000000_create_larametrics_models_table',1),(12,'2018_07_01_000000_create_larametrics_requests_table',1),(13,'2018_07_28_000000_create_larametrics_logs_table',1),(14,'2018_08_02_000000_create_larametrics_notifications_table',1),(15,'2018_08_08_100000_create_telescope_entries_table',1),(16,'2018_08_29_200844_create_languages_table',1),(17,'2018_08_29_205156_create_translations_table',1),(18,'2018_09_21_000940_create_permission_tables',1),(19,'2018_09_21_004306_create_notifications_table',1),(20,'2018_09_21_004313_create_failed_jobs_table',1),(21,'2018_09_21_004315_create_sessions_table',1),(22,'2018_09_22_002744_create_tickets_table',1),(23,'2018_09_22_004105_create_statuses_table',1),(24,'2018_09_22_004119_create_departments_table',1),(25,'2018_09_22_013701_create_department_employee_table',1),(26,'2018_09_22_032808_create_comments_table',1),(27,'2018_09_22_032824_create_notes_table',1),(28,'2018_09_24_232053_create_about_us_table',1),(29,'2018_10_13_164227_create_nameserver_domains_table',1),(30,'2018_10_13_164256_create_nameserver_records_table',1),(31,'2018_10_13_164306_create_nameserver_supermasters_table',1),(32,'2018_10_13_164328_create_nameserver_comments_table',1),(33,'2018_10_13_164355_create_nameserver_domainmetadata_table',1),(34,'2018_10_13_164423_create_nameserver_cryptokeys_table',1),(35,'2018_10_13_164452_create_nameserver_tsigkeys_table',1),(36,'2018_10_14_170339_create_resellers_table',1),(37,'2018_10_14_170401_create_companies_table',1),(38,'2018_10_14_170413_create_invoices_table',1),(39,'2018_10_14_170421_create_invoice_items_table',1),(40,'2018_10_14_170428_create_assets_table',1),(41,'2018_10_14_170436_create_domains_table',1),(42,'2018_10_14_170445_create_services_table',1),(43,'2018_10_14_170454_create_registrars_table',1),(44,'2018_10_14_171806_create_billing_info_table',1),(45,'2018_10_16_045426_create_sales_reps_table',1),(46,'2018_10_16_052158_create_datacenters_table',1),(47,'2018_10_16_052207_create_network_devices_table',1),(48,'2018_10_16_052215_create_switchport_information_table',1),(49,'2018_10_16_053041_create_queues_table',1),(50,'2018_10_17_011250_create_operating_systems_table',1),(51,'2018_10_18_183254_create_tld_extensions_table',1),(52,'2018_10_18_222517_create_network_configurations_table',1),(53,'2018_10_19_024829_create_network_device_types_table',1),(54,'2018_11_05_055336_add_last_active_to_roles_tables',1),(55,'2018_11_12_104516_create_menu_pages_table',1),(56,'2018_11_27_011023_add_cart_session_id_to_users_table',1),(57,'2018_11_27_192059_create_products_table',1),(58,'2018_11_27_192138_create_coupons_table',1),(59,'2018_12_01_111324_create_carts_table',1),(60,'2018_12_24_014515_modify_tickets_table',1),(61,'2018_12_26_013737_create_network_interface_cards_table',1),(62,'2018_12_26_013905_create_ip_addresses_table',1),(63,'2018_12_26_014005_create_chassis_table',1),(64,'2018_12_26_014113_create_motherboard_types_table',1),(65,'2018_12_26_014218_create_cpus_table',1),(66,'2018_12_26_014321_create_memory_table',1),(67,'2018_12_26_014425_create_disks_table',1),(68,'2018_12_26_014535_create_control_panels_table',1),(69,'2018_12_27_030612_create_firewall_zones_table',1),(70,'2018_12_27_203625_create_subnet_addresses_table',1),(71,'2019_01_05_023349_create_motherboards_table',1),(72,'2019_01_05_023509_create_raid_cards_table',1),(73,'2019_01_15_224323_create_security_groups_table',1),(74,'2019_01_15_224417_create_resource_groups_table',1),(75,'2019_01_15_224506_create_resource_names_table',1),(76,'2019_01_15_224556_create_service_namespaces_table',1),(77,'2019_01_15_224646_create_availability_zones_table',1),(78,'2019_01_15_224737_create_asset_regions_table',1),(79,'2019_01_15_224828_create_service_limits_table',1),(80,'2019_01_25_223926_create_power_supply_units_table',1),(81,'2019_01_26_010607_create_mailbox_inbound_emails_table',1),(82,'2019_01_27_181942_create_inbound_emails_table',1),(83,'2019_03_04_225023_setup_airports_table',1),(84,'2019_03_04_225024_charify_airports_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motherboard_types`
--

DROP TABLE IF EXISTS `motherboard_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motherboard_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_factor` enum('AT','Baby AT','ATX','Mini ATX','Micro ATX','Flex ATX','LPX','Mini LPX','NLX') COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_chassis` int(10) unsigned DEFAULT NULL,
  `assigned_hdds` json NOT NULL,
  `assigned_memory` json NOT NULL,
  `assigned_networking_cards` json NOT NULL,
  `assigned_raid_cards` json NOT NULL,
  `bios_features` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `chipset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expansion_slots` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `front_side_bus` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hdd_connection_type` enum('SCSI','SATA','SAS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `processor_information` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motherboard_types`
--

LOCK TABLES `motherboard_types` WRITE;
/*!40000 ALTER TABLE `motherboard_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `motherboard_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motherboards`
--

DROP TABLE IF EXISTS `motherboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motherboards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpu_id` int(10) unsigned NOT NULL,
  `chipset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socket_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_factor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dvi` text COLLATE utf8mb4_unicode_ci,
  `hdmi` text COLLATE utf8mb4_unicode_ci,
  `display_port` text COLLATE utf8mb4_unicode_ci,
  `bios` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `graphics` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_chipset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_lan_speed` int(10) unsigned NOT NULL,
  `memory_slots` int(10) unsigned NOT NULL,
  `maximum_memory_supported` int(10) unsigned NOT NULL,
  `channels_supported` json NOT NULL,
  `storage` json NOT NULL,
  `connectors` json NOT NULL,
  `supported_oses` json NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `eol_announced` tinyint(1) NOT NULL DEFAULT '0',
  `ipmi_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motherboards`
--

LOCK TABLES `motherboards` WRITE;
/*!40000 ALTER TABLE `motherboards` DISABLE KEYS */;
/*!40000 ALTER TABLE `motherboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nameserver_comments`
--

DROP TABLE IF EXISTS `nameserver_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nameserver_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_at` int(11) NOT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nameserver_comments_domain_id_index` (`domain_id`),
  KEY `nameserver_comments_name_type_index` (`name`,`type`),
  KEY `nameserver_comments_domain_id_modified_at_index` (`domain_id`,`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nameserver_comments`
--

LOCK TABLES `nameserver_comments` WRITE;
/*!40000 ALTER TABLE `nameserver_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `nameserver_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nameserver_cryptokeys`
--

DROP TABLE IF EXISTS `nameserver_cryptokeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nameserver_cryptokeys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain_id` int(10) unsigned NOT NULL,
  `flags` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nameserver_cryptokeys_domain_id_index` (`domain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nameserver_cryptokeys`
--

LOCK TABLES `nameserver_cryptokeys` WRITE;
/*!40000 ALTER TABLE `nameserver_cryptokeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `nameserver_cryptokeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nameserver_domainmetadata`
--

DROP TABLE IF EXISTS `nameserver_domainmetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nameserver_domainmetadata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain_id` int(10) unsigned NOT NULL,
  `kind` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nameserver_domainmetadata_domain_id_kind_index` (`domain_id`,`kind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nameserver_domainmetadata`
--

LOCK TABLES `nameserver_domainmetadata` WRITE;
/*!40000 ALTER TABLE `nameserver_domainmetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `nameserver_domainmetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nameserver_domains`
--

DROP TABLE IF EXISTS `nameserver_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nameserver_domains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_check` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notified_serial` int(11) DEFAULT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nameserver_domains_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nameserver_domains`
--

LOCK TABLES `nameserver_domains` WRITE;
/*!40000 ALTER TABLE `nameserver_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `nameserver_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nameserver_records`
--

DROP TABLE IF EXISTS `nameserver_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nameserver_records` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ttl` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `change_date` int(11) DEFAULT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `ordername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nameserver_records_name_type_index` (`name`,`type`),
  KEY `nameserver_records_domain_id_index` (`domain_id`),
  KEY `nameserver_records_domain_id_ordername_index` (`domain_id`,`ordername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nameserver_records`
--

LOCK TABLES `nameserver_records` WRITE;
/*!40000 ALTER TABLE `nameserver_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `nameserver_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nameserver_supermasters`
--

DROP TABLE IF EXISTS `nameserver_supermasters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nameserver_supermasters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameserver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nameserver_supermasters`
--

LOCK TABLES `nameserver_supermasters` WRITE;
/*!40000 ALTER TABLE `nameserver_supermasters` DISABLE KEYS */;
/*!40000 ALTER TABLE `nameserver_supermasters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nameserver_tsigkeys`
--

DROP TABLE IF EXISTS `nameserver_tsigkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nameserver_tsigkeys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `algorithm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nameserver_tsigkeys_name_algorithm_index` (`name`,`algorithm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nameserver_tsigkeys`
--

LOCK TABLES `nameserver_tsigkeys` WRITE;
/*!40000 ALTER TABLE `nameserver_tsigkeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `nameserver_tsigkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network_configurations`
--

DROP TABLE IF EXISTS `network_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `network_configurations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `switchport_information_id` int(10) unsigned NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network_configurations`
--

LOCK TABLES `network_configurations` WRITE;
/*!40000 ALTER TABLE `network_configurations` DISABLE KEYS */;
/*!40000 ALTER TABLE `network_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network_device_types`
--

DROP TABLE IF EXISTS `network_device_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `network_device_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network_device_types`
--

LOCK TABLES `network_device_types` WRITE;
/*!40000 ALTER TABLE `network_device_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `network_device_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network_devices`
--

DROP TABLE IF EXISTS `network_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `network_devices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `network_device_type_id` int(10) unsigned NOT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address_alt` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hardware_maker` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hardware_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_os_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_ports` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network_devices`
--

LOCK TABLES `network_devices` WRITE;
/*!40000 ALTER TABLE `network_devices` DISABLE KEYS */;
/*!40000 ALTER TABLE `network_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network_interface_cards`
--

DROP TABLE IF EXISTS `network_interface_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `network_interface_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `speed` enum('10Mbps','100Mbps','1000Mbps','10GbE','25GbE','50GbE','100GbE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '100Mbps',
  `duplex` enum('half','full') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'full',
  `mac_address` char(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_ports` int(10) unsigned NOT NULL,
  `vendor` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('onhand','pending_testing','rma') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network_interface_cards`
--

LOCK TABLES `network_interface_cards` WRITE;
/*!40000 ALTER TABLE `network_interface_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `network_interface_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `noteable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noteable_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_noteable_type_noteable_id_index` (`noteable_type`,`noteable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operating_systems`
--

DROP TABLE IF EXISTS `operating_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operating_systems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `architecture` enum('x86','x64') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('UNIX','BSD','Linux','Microsoft Windows') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operating_systems`
--

LOCK TABLES `operating_systems` WRITE;
/*!40000 ALTER TABLE `operating_systems` DISABLE KEYS */;
/*!40000 ALTER TABLE `operating_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `power_supply_units`
--

DROP TABLE IF EXISTS `power_supply_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `power_supply_units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `power_supply_units`
--

LOCK TABLES `power_supply_units` WRITE;
/*!40000 ALTER TABLE `power_supply_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `power_supply_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qty` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'On-hand qty',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `taxable` tinyint(1) NOT NULL DEFAULT '1',
  `lineItem` tinyint(1) NOT NULL DEFAULT '1',
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queues`
--

DROP TABLE IF EXISTS `queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queues`
--

LOCK TABLES `queues` WRITE;
/*!40000 ALTER TABLE `queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raid_cards`
--

DROP TABLE IF EXISTS `raid_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raid_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `launch_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expected_discontinuance` timestamp NULL DEFAULT NULL,
  `data_transfer_rate` int(10) unsigned NOT NULL,
  `supported_devices` json NOT NULL,
  `supported_raid_levels` json NOT NULL,
  `jbod_mode` tinyint(1) NOT NULL DEFAULT '0',
  `number_of_internal_ports` int(10) unsigned NOT NULL,
  `number_of_supported_devices` int(10) unsigned NOT NULL,
  `embedded_memory` int(10) unsigned NOT NULL,
  `supported_oses` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raid_cards`
--

LOCK TABLES `raid_cards` WRITE;
/*!40000 ALTER TABLE `raid_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `raid_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrars`
--

DROP TABLE IF EXISTS `registrars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrars`
--

LOCK TABLES `registrars` WRITE;
/*!40000 ALTER TABLE `registrars` DISABLE KEYS */;
/*!40000 ALTER TABLE `registrars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resellers`
--

DROP TABLE IF EXISTS `resellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resellers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `expiry_date` timestamp NULL DEFAULT NULL,
  `salesrep_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resellers`
--

LOCK TABLES `resellers` WRITE;
/*!40000 ALTER TABLE `resellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `resellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_groups`
--

DROP TABLE IF EXISTS `resource_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_ids` json NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resource_groups_serial_number_unique` (`serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_groups`
--

LOCK TABLES `resource_groups` WRITE;
/*!40000 ALTER TABLE `resource_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_names`
--

DROP TABLE IF EXISTS `resource_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `partition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_namespace_id` int(10) unsigned NOT NULL,
  `service_region_id` int(10) unsigned NOT NULL,
  `accountable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountable_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `resource_names_accountable_type_accountable_id_index` (`accountable_type`,`accountable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_names`
--

LOCK TABLES `resource_names` WRITE;
/*!40000 ALTER TABLE `resource_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
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
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_reps`
--

DROP TABLE IF EXISTS `sales_reps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_reps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_reps`
--

LOCK TABLES `sales_reps` WRITE;
/*!40000 ALTER TABLE `sales_reps` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_reps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_groups`
--

DROP TABLE IF EXISTS `security_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `security_group_serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` enum('inbound','outbound') COLLATE utf8mb4_unicode_ci NOT NULL,
  `protocol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port_range` json NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_groups`
--

LOCK TABLES `security_groups` WRITE;
/*!40000 ALTER TABLE `security_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_limits`
--

DROP TABLE IF EXISTS `service_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_limits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resource_operation_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_limit` int(11) NOT NULL DEFAULT '-1',
  `min_limit` int(10) unsigned NOT NULL DEFAULT '0',
  `max_limit` int(10) unsigned NOT NULL,
  `burst_capacity` int(10) unsigned DEFAULT NULL,
  `is_calls_per_second` tinyint(1) NOT NULL DEFAULT '0',
  `is_adjustable` timestamp NULL DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_limits`
--

LOCK TABLES `service_limits` WRITE;
/*!40000 ALTER TABLE `service_limits` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_namespaces`
--

DROP TABLE IF EXISTS `service_namespaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_namespaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `services_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_namespaces`
--

LOCK TABLES `service_namespaces` WRITE;
/*!40000 ALTER TABLE `service_namespaces` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_namespaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) unsigned NOT NULL,
  `account_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_payment` timestamp NULL DEFAULT NULL,
  `last_invoice` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `hexcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subnet_addresses`
--

DROP TABLE IF EXISTS `subnet_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subnet_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subnet_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `network_block` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `network_mask` int(10) unsigned NOT NULL,
  `datacenter_id` int(10) unsigned NOT NULL,
  `available` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subnet_addresses`
--

LOCK TABLES `subnet_addresses` WRITE;
/*!40000 ALTER TABLE `subnet_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `subnet_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switchport_information`
--

DROP TABLE IF EXISTS `switchport_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switchport_information` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `network_device_id` int(10) unsigned NOT NULL,
  `switchport_number` int(11) NOT NULL,
  `category` enum('managed','hybrid/smart','unmanaged') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unmanaged',
  `port_speed` enum('10','100','1000','10000','40000','100000') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '10',
  `connection_type` enum('ethernet/cat-5e','ethernet/cat-6','ethernet/cat-6a','ethernet/cat-7','fiber-channel/infiniband','fiber-channel/osfp','fiber-channel/sfp+','fiber-channel/10g-cx4','fiber-channel/lc','fiber-channel/sc','fiber-channel/st','fiber-optic/st','fiber-optic/sc','fiber-optic/fc','fiber-optic/mt-rj','fiber-optic/lc','coaxial') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ethernet/cat-7',
  `poe_status` enum('POE','Non-POE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'POE',
  `stackable_status` enum('stackable','standalone') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standalone',
  `duplex_type` enum('simplex','half-duplex','full-duplex') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'full-duplex',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switchport_information`
--

LOCK TABLES `switchport_information` WRITE;
/*!40000 ALTER TABLE `switchport_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `switchport_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telescope_entries`
--

DROP TABLE IF EXISTS `telescope_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`sequence`),
  UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  KEY `telescope_entries_batch_id_index` (`batch_id`),
  KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`),
  KEY `telescope_entries_family_hash_index` (`family_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telescope_entries`
--

LOCK TABLES `telescope_entries` WRITE;
/*!40000 ALTER TABLE `telescope_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `telescope_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telescope_entries_tags`
--

DROP TABLE IF EXISTS `telescope_entries_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  KEY `telescope_entries_tags_tag_index` (`tag`),
  CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telescope_entries_tags`
--

LOCK TABLES `telescope_entries_tags` WRITE;
/*!40000 ALTER TABLE `telescope_entries_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `telescope_entries_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telescope_monitoring`
--

DROP TABLE IF EXISTS `telescope_monitoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telescope_monitoring`
--

LOCK TABLES `telescope_monitoring` WRITE;
/*!40000 ALTER TABLE `telescope_monitoring` DISABLE KEYS */;
/*!40000 ALTER TABLE `telescope_monitoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  `technician_assigned_id` int(10) unsigned NOT NULL,
  `is_resolved` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ticketable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ticketable_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tickets_ticketable_type_ticketable_id_index` (`ticketable_type`,`ticketable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tld_extensions`
--

DROP TABLE IF EXISTS `tld_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tld_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('country-code','generic','generic-restricted','infrastructure','sponsored','test') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'generic',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tld_extensions`
--

LOCK TABLES `tld_extensions` WRITE;
/*!40000 ALTER TABLE `tld_extensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tld_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translations_language_id_foreign` (`language_id`),
  CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_active` timestamp NULL DEFAULT NULL,
  `cart_session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendors_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whitegloves`
--

DROP TABLE IF EXISTS `whitegloves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whitegloves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_active` timestamp NULL DEFAULT NULL,
  `cart_session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `whitegloves_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whitegloves`
--

LOCK TABLES `whitegloves` WRITE;
/*!40000 ALTER TABLE `whitegloves` DISABLE KEYS */;
/*!40000 ALTER TABLE `whitegloves` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-13 22:58:53
