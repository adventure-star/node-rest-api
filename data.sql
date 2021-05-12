/*
SQLyog Community v13.1.5  (32 bit)
MySQL - 10.4.13-MariaDB : Database - api
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`api` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `api`;

/*Table structure for table `registrations` */

DROP TABLE IF EXISTS `registrations`;

CREATE TABLE `registrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `registrations` */

insert  into `registrations`(`id`,`data`) values 
(1,'{\n            \"plate_number\": \"EBF28E\",\n            \"registration\": {\n                \"expired\": false,\n                \"expiry_date\": \"2021-02-05T23:15:30.000Z\"\n            },\n            \"vehicle\": {\n                \"type\": \"Wagon\",\n                \"make\": \"BMW\",\n                \"model\": \"X4 M40i\",\n                \"colour\": \"Blue\",\n                \"vin\": \"12389347324\",\n                \"tare_weight\": 1700,\n                \"gross_mass\": null\n            },\n            \"insurer\": {\n                \"name\": \"Allianz\",\n                \"code\": 32\n                }\n        }'),
(2,'{\n            \"plate_number\": \"CXD82F\",\n            \"registration\": {\n                \"expired\": true,\n                \"expiry_date\": \"2020-03-01T23:15:30.000Z\"\n            },\n            \"vehicle\": {\n                \"type\": \"Hatch\",\n                \"make\": \"Toyota\",\n                \"model\": \"Corolla\",\n                \"colour\": \"Silver\",\n                \"vin\": \"54646546313\",\n                \"tare_weight\": 1432,\n                \"gross_mass\": 1500\n            },\n            \"insurer\": {\n                \"name\": \"AAMI\",\n                \"code\": 17\n                }\n        }'),
(3,'{\n            \"plate_number\": \"WOP29P\",\n            \"registration\": {\n                \"expired\": false,\n                \"expiry_date\": \"2020-12-08T23:15:30.000Z\"\n            },\n            \"vehicle\": {\n                \"type\": \"Sedan\",\n                \"make\": \"Mercedes\",\n                \"model\": \"X4 M40i\",\n                \"colour\": \"Blue\",\n                \"vin\": \"87676676762\",\n                \"tare_weight\": 1700,\n                \"gross_mass\": null\n            },\n            \"insurer\": {\n                \"name\": \"GIO\",\n                \"code\": 13\n                }\n        }'),
(4,'{\n            \"plate_number\": \"QWX55Z\",\n            \"registration\": {\n                \"expired\": false,\n                \"expiry_date\": \"2021-07-20T23:15:30.000Z\"\n            },\n            \"vehicle\": {\n                \"type\": \"SUV\",\n                \"make\": \"Jaguar\",\n                \"model\": \"F pace\",\n                \"colour\": \"Green\",\n                \"vin\": \"65465466541\",\n                \"tare_weight\": 1620,\n                \"gross_mass\": null\n            },\n            \"insurer\": {\n                \"name\": \"NRMA\",\n                \"code\": 27\n                }\n        }');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
