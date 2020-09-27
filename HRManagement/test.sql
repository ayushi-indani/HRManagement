/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.0.24-community-nt : Database - hrmanagement
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hrmanagement` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hrmanagement`;

/*Table structure for table `e_attendence` */

DROP TABLE IF EXISTS `e_attendence`;

CREATE TABLE `e_attendence` (
  `e_id` varchar(20) NOT NULL,
  `projectname` varchar(20) default NULL,
  `login` datetime default NULL,
  `logout` datetime default NULL,
  `status` tinyint(1) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `e_attendence` */

insert  into `e_attendence`(`e_id`,`projectname`,`login`,`logout`,`status`) values ('ayu','sdsas','2016-10-11 05:26:19','2016-10-11 05:26:22',0),('a1','fdsfsd','2016-10-11 05:28:12','2016-10-11 05:28:17',0),('b1','dsf','2016-10-11 05:30:02','2016-10-11 05:30:06',0),('c1','kjhk','2016-10-11 05:32:03','2016-10-11 05:32:20',0),('ayu','ffsdf','2016-10-11 05:53:40','2016-10-11 05:54:29',0),('a1','hgh','2016-10-12 06:15:40','2016-10-12 06:16:11',0),('a1','jkg','2016-10-12 06:16:40','2016-10-12 06:17:38',0),('a1','trt','2016-10-12 06:19:10','2016-10-12 06:20:02',0),('ayu','dfs','2016-10-12 10:54:07','2016-10-12 10:55:25',0),('a1','sda','2016-10-12 10:57:33','2016-10-12 10:57:48',0),('a1','gf','2016-10-12 11:04:01','2016-10-12 11:04:10',0),('ayu',NULL,'2016-10-12 11:12:20','2016-10-12 11:12:33',0),('ayu','dfs','2016-10-12 11:16:17','2016-10-12 11:17:08',0);

/*Table structure for table `e_mgmt` */

DROP TABLE IF EXISTS `e_mgmt`;

CREATE TABLE `e_mgmt` (
  `hr_id` varchar(10) NOT NULL default '',
  `to1` varchar(10) default NULL,
  `sub` varchar(50) default NULL,
  `msg` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `e_mgmt` */

insert  into `e_mgmt`(`hr_id`,`to1`,`sub`,`msg`) values ('c1','a1','asf','aff'),('c1','ayu','fds','dgdggdfg');

/*Table structure for table `emp` */

DROP TABLE IF EXISTS `emp`;

CREATE TABLE `emp` (
  `e_id` varchar(20) NOT NULL,
  `password` varchar(20) default NULL,
  `name` varchar(20) default NULL,
  `email` varchar(50) default NULL,
  `dept` varchar(20) default NULL,
  `address` varchar(20) default NULL,
  `mobile` varchar(20) default NULL,
  PRIMARY KEY  (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp` */

insert  into `emp`(`e_id`,`password`,`name`,`email`,`dept`,`address`,`mobile`) values ('a1','612','asw','agf','ahgf','afg','966664486'),('am','108','amit','asasas','it','gsgsg','4524'),('ayu','933','ayushi indani','ayushi','it','xyz','94641'),('ayushi','035','ayushi','ayushi.indani','cs','xyz','99999999'),('b1','148','b','b','b','b','98648896'),('c1','845','c','c','c','c','986485136');

/*Table structure for table `hr` */

DROP TABLE IF EXISTS `hr`;

CREATE TABLE `hr` (
  `name` varchar(20) NOT NULL,
  `address` varchar(50) default NULL,
  `email` varchar(30) default NULL,
  `zip` decimal(10,0) default NULL,
  `mobile` decimal(12,0) default NULL,
  `hr_id` varchar(20) default NULL,
  `password` varchar(20) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hr` */

insert  into `hr`(`name`,`address`,`email`,`zip`,`mobile`,`hr_id`,`password`) values ('a','a','a@a.com','454855','914541512','a1','12308'),('b','bb','b@b.com','452','77777','b1','66668'),('c','c','c@c.com','452154','9415345221','c1','561'),('d','d','d@d.com','451425','9435122132','d1','119');

/*Table structure for table `lea` */

DROP TABLE IF EXISTS `lea`;

CREATE TABLE `lea` (
  `e_id` varchar(20) NOT NULL,
  `desc_leave` varchar(50) default NULL,
  `status_leave` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `lea` */

insert  into `lea`(`e_id`,`desc_leave`,`status_leave`) values ('ayu','fsdf','Approved'),('a1','sdc','Rejected'),('a1','gdfg','Rejected'),('ayu','fdf','NA');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
