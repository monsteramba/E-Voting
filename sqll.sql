/*
SQLyog Enterprise - MySQL GUI v8.18 
MySQL - 5.0.67-community : Database - energymeter
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`energymeter` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `energymeter`;

/*Table structure for table `123` */

DROP TABLE IF EXISTS `123`;

CREATE TABLE `123` (
  `rms_c` bigint(20) default NULL,
  `rms_p` bigint(20) default NULL,
  `kilos` bigint(20) default NULL,
  `peakp` bigint(20) default NULL,
  `date` date default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `123` */

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_id` int(12) NOT NULL,
  `pass` varchar(250) default NULL,
  `firstname` varchar(50) default NULL,
  PRIMARY KEY  (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`admin_id`,`pass`,`firstname`) values (456798,'21232f297a57a5a743894a0e4a801fc3','tneb');

/*Table structure for table `hdetails` */

DROP TABLE IF EXISTS `hdetails`;

CREATE TABLE `hdetails` (
  `meter_id` int(11) default NULL,
  `name` varchar(25) default NULL,
  `door_no` varchar(10) default NULL,
  `address` text,
  `city` varchar(10) default NULL,
  `phno` bigint(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `hdetails` */

insert  into `hdetails`(`meter_id`,`name`,`door_no`,`address`,`city`,`phno`) values (123,'henderson','d-34','street 1,block-20\r\n','neyveli',9876543211),(124,'logesh','17-c','main bazzar,block-19\r\n','ne',9841617627),(125,'gopi','e-1','Chengalpattu road,Block-17\r\n\r\n\r\n','Neyveli',9952637045);

/*Table structure for table `mdetails` */

DROP TABLE IF EXISTS `mdetails`;

CREATE TABLE `mdetails` (
  `meter_id` int(12) default NULL,
  `name` varchar(50) default NULL,
  `month` varchar(12) default NULL,
  `meter_read` int(5) default NULL,
  `unit` int(10) default NULL,
  `cost` int(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `mdetails` */

insert  into `mdetails`(`meter_id`,`name`,`month`,`meter_read`,`unit`,`cost`) values (123,'karthic','jan',1324,4567,465),(123,'logesh','jan',1325,465,489);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
