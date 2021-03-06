/*
SQLyog Enterprise - MySQL GUI v8.18 
MySQL - 5.0.67-community : Database - online1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`online1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `online1`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_id` int(12) NOT NULL,
  `pass` varchar(250) default NULL,
  `firstname` varchar(50) default NULL,
  PRIMARY KEY  (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`admin_id`,`pass`,`firstname`) values (456789,'828c28bde20e57e975cd26464add1306','amba');

/*Table structure for table `joint_secretary` */

DROP TABLE IF EXISTS `joint_secretary`;

CREATE TABLE `joint_secretary` (
  `candidate` varchar(50) default NULL,
  `votes` int(2) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `joint_secretary` */

insert  into `joint_secretary`(`candidate`,`votes`) values ('aakash',0),('kishore',0);

/*Table structure for table `joint_treasurer` */

DROP TABLE IF EXISTS `joint_treasurer`;

CREATE TABLE `joint_treasurer` (
  `candidate` varchar(50) default NULL,
  `votes` int(2) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `joint_treasurer` */

insert  into `joint_treasurer`(`candidate`,`votes`) values ('surya',0),('vignesh',0),('janarthan',0),('barath',0),('maruthu',0),('ramya',0),('geetha',0),('tamil',0);

/*Table structure for table `vice_president` */

DROP TABLE IF EXISTS `vice_president`;

CREATE TABLE `vice_president` (
  `candidate` varchar(50) default NULL,
  `votes` int(2) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `vice_president` */

insert  into `vice_president`(`candidate`,`votes`) values ('archith',0),('perumal',0),('durga',0),('dinesh',0);

/*Table structure for table `voters` */

DROP TABLE IF EXISTS `voters`;

CREATE TABLE `voters` (
  `voters_id` int(11) default NULL,
  `firstname` varchar(765) default NULL,
  `lastname` varchar(765) default NULL,
  `dept` varchar(765) default NULL,
  `address` blob,
  `date_voted` datetime default NULL,
  `done_voting` double default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `voters` */

insert  into `voters`(`voters_id`,`firstname`,`lastname`,`dept`,`address`,`date_voted`,`done_voting`) values (14104001,'AJITH KUMAR.P','','CSE_FINAL','UCEK',NULL,0),(14104002,'AKILA.P.L','','CSE_FINAL','UCEK',NULL,0),(14104003,'ANNAPOORANI.D','','CSE_FINAL','UCEK',NULL,0),(14104004,'ARAVINDAN.S','','CSE_FINAL','UCEK',NULL,0),(14104005,'BABY SHALINI.G','','CSE_FINAL','UCEK',NULL,0),(14104006,'BARANI PRASATH.K.V.K','','CSE_FINAL','UCEK',NULL,0),(14104007,'BHAGYALAKSHMI.E','','CSE_FINAL','UCEK',NULL,0),(14104008,'BHAVANI.D','','CSE_FINAL','UCEK',NULL,0),(14104009,'DHANALAKSHMI.K','','CSE_FINAL','UCEK',NULL,0),(14104010,'DHATCHAYANI.P','','CSE_FINAL','UCEK',NULL,0),(14104011,'DIVYA.N','','CSE_FINAL','UCEK',NULL,0),(14104012,'GOPINATH.A','','CSE_FINAL','UCEK',NULL,0),(14104013,'GOWSALYA.P','','CSE_FINAL','UCEK',NULL,0),(14104014,'JAYALAKSHMI.V','','CSE_FINAL','UCEK',NULL,0),(14104015,'JOAN OLIVIYA.J','','CSE_FINAL','UCEK',NULL,0),(14104016,'KAAVIYA.N','','CSE_FINAL','UCEK',NULL,0),(14104017,'KARTHIC AMBALAVANAN.B','','CSE_FINAL','UCEK',NULL,0),(14104018,'KARTHIKEYAN.M','','CSE_FINAL','UCEK',NULL,0),(14104019,'KISHORE KUMAR.S','','CSE_FINAL','UCEK',NULL,0),(14104020,'LATHA.P','','CSE_FINAL','UCEK',NULL,0),(14104021,'LOGESH.S','','CSE_FINAL','UCEK',NULL,0),(14104022,'LOGESHWARAN.B','','CSE_FINAL','UCEK',NULL,0),(14104023,'MAHALAKSHMI.V','','CSE_FINAL','UCEK',NULL,0),(14104024,'NANDHANA.V.L','','CSE_FINAL','UCEK',NULL,0),(14104025,'NANDHINI.V','','CSE_FINAL','UCEK',NULL,0),(14104026,'NAVEEN KUMAR.V','','CSE_FINAL','UCEK',NULL,0),(14104027,'PAVITHRA.M','','CSE_FINAL','UCEK',NULL,0),(14104028,'RAGINI.S.K','','CSE_FINAL','UCEK',NULL,0),(14104029,'RANJINI.V','','CSE_FINAL','UCEK',NULL,0),(14104030,'SANGEETHA.R','','CSE_FINAL','UCEK',NULL,0),(14104031,'SARANYA.P','','CSE_FINAL','UCEK',NULL,0),(14104032,'SASIKUMAR.S','','CSE_FINAL','UCEK',NULL,0),(14104033,'SELVA KUMAR.M','','CSE_FINAL','UCEK',NULL,0),(14104034,'SHAHANAS.S','','CSE_FINAL','UCEK',NULL,0),(14104035,'SHANKARI.N','','CSE_FINAL','UCEK',NULL,0),(14104036,'SHRAVANI.A.R','','CSE_FINAL','UCEK',NULL,0),(14104037,'SHYAMALA.G','','CSE_FINAL','UCEK',NULL,0),(14104038,'SIVARANJANI.M','','CSE_FINAL','UCEK',NULL,0),(14104039,'SRIDEVI.N','','CSE_FINAL','UCEK',NULL,0),(14104040,'SUMITHRA.A.I','','CSE_FINAL','UCEK',NULL,0),(14104041,'THIYAGARAJAN.V','','CSE_FINAL','UCEK',NULL,0),(14104042,'VENKAT KUMARI.N','','CSE_FINAL','UCEK',NULL,0),(14104301,'GOPI.V','','CSE_FINAL','UCEK',NULL,0),(14104302,'INDHU.G','','CSE_FINAL','UCEK',NULL,0),(14104303,'JENNATH PIRTHOUSE.B','','CSE_FINAL','UCEK',NULL,0),(14104304,'KANDAKUMARSHA.D.S','','CSE_FINAL','UCEK',NULL,0),(14104305,'KATTERI PERUMAL.C','','CSE_FINAL','UCEK',NULL,0),(14104306,'KUMAR.A','','CSE_FINAL','UCEK',NULL,0),(14104307,'MAYAVATHI.Y','','CSE_FINAL','UCEK',NULL,0),(14104308,'RUCKMANI.M','','CSE_FINAL','UCEK',NULL,0),(14104309,'SUNIL.S','','CSE_FINAL','UCEK',NULL,0),(14104310,'TAMIZHARASAU.S','','CSE_FINAL','UCEK',NULL,0),(14104311,'VINOTH.S','','CSE_FINAL','UCEK',NULL,0),(14104701,'SARAVANAN.M','','CSE_FINAL','UCEK',NULL,0),(14104702,'VIJAYAKUMAR.L','','CSE_FINAL','UCEK',NULL,0),(14104703,'REVATHI.S','','CSE_FINAL','UCEK',NULL,0),(14104704,'SRINIVASAN.S.P','','CSE_FINAL','UCEK',NULL,0),(14104705,'SURIYA.B','','CSE_FINAL','UCEK',NULL,0),(14104706,'KAMALA MALINI.N','','CSE_FINAL','UCEK',NULL,0),(14104901,'KRISHNAMOORTHY','','CSE_FINAL','UCEK',NULL,0),(14104902,'PRIYAN','','CSE_FINAL','UCEK',NULL,0),(15104001,'AAKASH.B','','CSE_THIRD','UCEK',NULL,0),(15104002,'AFRAH BANU.R','','CSE_THIRD','UCEK',NULL,0),(15104003,'AISHWARIYA.M','','CSE_THIRD','UCEK',NULL,0),(15104004,'ANUPRIYA.D','','CSE_THIRD','UCEK',NULL,0),(15104005,'ARCHITH KRISHNAN.S.R','','CSE_THIRD','UCEK',NULL,0),(15104007,'DINA JOSE.J','','CSE_THIRD','UCEK',NULL,0),(15104008,'DINESH KUMAR.K','','CSE_THIRD','UCEK',NULL,0),(15104009,'DURGA.K','','CSE_THIRD','UCEK',NULL,0),(15104010,'GEETANJALI.B','','CSE_THIRD','UCEK',NULL,0),(15104011,'GEETHA VANI AMRITHA .S','','CSE_THIRD','UCEK',NULL,0),(15104012,'HARI KRISHNAN.K','','CSE_THIRD','UCEK',NULL,0),(15104014,'HEMAVATHI.R','','CSE_THIRD','UCEK',NULL,0),(15104015,'ILAKKIYA.S','','CSE_THIRD','UCEK',NULL,0),(15104016,'JAYAPRADHA.M','','CSE_THIRD','UCEK',NULL,0),(15104017,'JAYASHREE.B','','CSE_THIRD','UCEK',NULL,0),(15104018,'KARTHIKEYAN.S','','CSE_THIRD','UCEK',NULL,0),(15104019,'KAVITHA.V','','CSE_THIRD','UCEK',NULL,0),(15104020,'KAVIYARASU.S','','CSE_THIRD','UCEK',NULL,0),(15104021,'KISHORE.R','','CSE_THIRD','UCEK',NULL,0),(15104022,'LOGESH.S','','CSE_THIRD','UCEK',NULL,0),(15104023,'MANIBHARATHI.E.R','','CSE_THIRD','UCEK',NULL,0),(15104024,'MARUTHU PANDI.N','','CSE_THIRD','UCEK',NULL,0),(15104025,'MOHANA PRIYA.B','','CSE_THIRD','UCEK',NULL,0),(15104026,'MOHAN RAM.S','','CSE_THIRD','UCEK',NULL,0),(15104027,'MYEL MURUGAN.M','','CSE_THIRD','UCEK',NULL,0),(15104028,'NANDHINI.K','','CSE_THIRD','UCEK',NULL,0),(15104029,'NAVEEN KUMAR.K','','CSE_THIRD','UCEK',NULL,0),(15104030,'NAVIN.M.V','','CSE_THIRD','UCEK',NULL,0),(15104031,'NIVEDHA.D','','CSE_THIRD','UCEK',NULL,0),(15104032,'PAVITHRA.A','','CSE_THIRD','UCEK',NULL,0),(15104033,'PERUMAL.D','','CSE_THIRD','UCEK',NULL,0),(15104034,'PRIYANGA.G','','CSE_THIRD','UCEK',NULL,0),(15104035,'PRIYANKA.M','','CSE_THIRD','UCEK',NULL,0),(15104036,'RAJALAKSHMI.C','','CSE_THIRD','UCEK',NULL,0),(15104037,'RAJESH.G','','CSE_THIRD','UCEK',NULL,0),(15104038,'RAMYA.P','','CSE_THIRD','UCEK',NULL,0),(15104039,'RAMYA.R','','CSE_THIRD','UCEK',NULL,0),(15104040,'ROHINI.N.P','','CSE_THIRD','UCEK',NULL,0),(15104042,'SIVALAKSHMI.M','','CSE_THIRD','UCEK',NULL,0),(15104043,'SOWMIYA.R','','CSE_THIRD','UCEK',NULL,0),(15104044,'SURYA.E.R','','CSE_THIRD','UCEK',NULL,0),(15104045,'SWARNA.E','','CSE_THIRD','UCEK',NULL,0),(15104046,'TAMILARASI.A','','CSE_THIRD','UCEK',NULL,0),(15104047,'UGESH KUMAR.L','','CSE_THIRD','UCEK',NULL,0),(15104048,'UMA MAGESWARI.T.T','','CSE_THIRD','UCEK',NULL,0),(15104049,'VIGNESHWARAN.V','','CSE_THIRD','UCEK',NULL,0),(15104050,'VIJAYAKUMAR.S','','CSE_THIRD','UCEK',NULL,0),(15104051,'VINOTH KUMAR.S','','CSE_THIRD','UCEK',NULL,0),(15104301,'KALAIYARASI.K','','CSE_THIRD','UCEK',NULL,0),(15104302,'LEELADEVI.V','','CSE_THIRD','UCEK',NULL,0),(15104303,'PRIYADHARSHINI.D','','CSE_THIRD','UCEK',NULL,0),(15104304,'PURUSHOTHAMAN.J','','CSE_THIRD','UCEK',NULL,0),(15104305,'SANTHIYA.U','','CSE_THIRD','UCEK',NULL,0),(15104306,'SOLAI RAJAN.M','','CSE_THIRD','UCEK',NULL,0),(15104307,'VIBU.J.P','','CSE_THIRD','UCEK',NULL,0),(15104701,'JANARTHANAN.N','','CSE_THIRD','UCEK',NULL,0),(15104702,'AKILA NIZARA','','CSE_THIRD','UCEK',NULL,0),(15104703,'DIVYA.T','','CSE_THIRD','UCEK',NULL,0),(15104704,'JEEVITHA.M','','CSE_THIRD','UCEK',NULL,0),(15104705,'SHARMILA.R','','CSE_THIRD','UCEK',NULL,0),(15104706,'KARAN.S','','CSE_THIRD','UCEK',NULL,0),(15104707,'BARATH.G','','CSE_THIRD','UCEK',NULL,0),(15104708,'THAMARAI SELVI.T','','CSE_THIRD','UCEK',NULL,0),(15104709,'RAJASEKAR.N','','CSE_THIRD','UCEK',NULL,0),(15104710,'SANDHIYA.S','','CSE_THIRD','UCEK',NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
