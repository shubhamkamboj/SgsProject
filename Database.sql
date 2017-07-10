/*
SQLyog Community v8.5 
MySQL - 5.7.18-log : Database - spice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`spice` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `spice`;

/*Table structure for table `attachment` */

DROP TABLE IF EXISTS `attachment`;

CREATE TABLE `attachment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `File_Name` varchar(100) NOT NULL,
  `File_Data` blob NOT NULL,
  `Description` varchar(1000) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `attachment` */

/*Table structure for table `guest_registration` */

DROP TABLE IF EXISTS `guest_registration`;

CREATE TABLE `guest_registration` (
  `gname` varchar(50) NOT NULL,
  `snumber` bigint(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `desig` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `password` (`password`),
  UNIQUE KEY `snumber` (`snumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `guest_registration` */

insert  into `guest_registration`(`gname`,`snumber`,`email`,`desig`,`location`,`username`,`password`,`is_active`,`id`) values ('VIKRAM DHEER',7485965252,'shubhamsinghdehradun@gmail.com','SENIOR H.R','NOIDA','1_VIKRAM DHEER_2017','sgsN6m0k',1,1);

/*Table structure for table `instructor` */

DROP TABLE IF EXISTS `instructor`;

CREATE TABLE `instructor` (
  `inst_id` int(11) NOT NULL AUTO_INCREMENT,
  `inst_name` varchar(30) DEFAULT NULL,
  `inst_mobile` varchar(11) DEFAULT NULL,
  `inst_email` varchar(20) DEFAULT NULL,
  `inst_location` varchar(50) DEFAULT NULL,
  `tech_taught` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`inst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `instructor` */

insert  into `instructor`(`inst_id`,`inst_name`,`inst_mobile`,`inst_email`,`inst_location`,`tech_taught`) values (1,'MR. ABHINAV','7878458585','abhinav@gmail.com','DEHRADUN','DBMS'),(2,'MR. BHUPENDRA BARTHWAL','7418520369','bhupendra@gmail.com','DEHRADUN','JAVA'),(3,'MR. MANAS ABROL','8527410963','manasabrol@yahoo.com','NOIDA','ANDROID'),(4,'MRS. NAMRATA','8596741458','namrata@gmail.com','NOIDA','GROOMING'),(5,'MR. TAJINDER','8965230147','tajindersingh@gmail.','MOHALI','PL-SQL');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`username`,`password`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `login` */

insert  into `login`(`username`,`password`,`user_type`,`is_active`,`id`) values ('1_MAYURI RANA_2017','sgsfRdIF','student',1,4),('1_SHUBHAM SINGH_2017','sgsA1316','student',1,2),('1_VIKRAM DHEER_2017','sgsN6m0k','guest',1,3),('rashmi mam','rashmi mam','admin',1,1);

/*Table structure for table `student_attendance` */

DROP TABLE IF EXISTS `student_attendance`;

CREATE TABLE `student_attendance` (
  `date` date DEFAULT NULL,
  `subject1` varchar(20) DEFAULT NULL,
  `subject2` varchar(20) DEFAULT NULL,
  `subject3` varchar(20) DEFAULT NULL,
  `session_by1` varchar(30) DEFAULT NULL,
  `sess1_start_time` varchar(20) DEFAULT NULL,
  `sess1_end_time` varchar(20) DEFAULT NULL,
  `session_by2` varchar(30) DEFAULT NULL,
  `sess2_start_time` varchar(20) DEFAULT NULL,
  `sess2_end_time` varchar(20) DEFAULT NULL,
  `session_by3` varchar(20) DEFAULT NULL,
  `sess3_start_time` varchar(20) DEFAULT NULL,
  `sess3_end_time` varchar(20) DEFAULT NULL,
  `session1` varchar(20) DEFAULT NULL,
  `session2` varchar(20) DEFAULT NULL,
  `session3` varchar(20) DEFAULT NULL,
  `present` varchar(20) DEFAULT NULL,
  `absent` varchar(20) DEFAULT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_attendance` */

insert  into `student_attendance`(`date`,`subject1`,`subject2`,`subject3`,`session_by1`,`sess1_start_time`,`sess1_end_time`,`session_by2`,`sess2_start_time`,`sess2_end_time`,`session_by3`,`sess3_start_time`,`sess3_end_time`,`session1`,`session2`,`session3`,`present`,`absent`,`sname`,`username`) values ('2017-06-01','JAVA','no session','no session','MR. BHUPENDRA BARTHWAL','14:00','16:00','no session','no session','no session','no session','no session','no session','present','no session','no session',NULL,NULL,'MAYURI RANA','1_MAYURI RANA_2017'),('2017-06-01','JAVA','no session','no session','MR. BHUPENDRA BARTHWAL','14:00','16:00','no session','no session','no session','no session','no session','no session','present','no session','no session',NULL,NULL,'SHUBHAM SINGH','1_SHUBHAM SINGH_2017');

/*Table structure for table `student_registration` */

DROP TABLE IF EXISTS `student_registration`;

CREATE TABLE `student_registration` (
  `sname` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `batch` int(20) NOT NULL,
  `date` varchar(50) NOT NULL,
  `snumber` bigint(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `course_type` varchar(50) NOT NULL,
  `total_fees` int(10) NOT NULL,
  `deposit_fees` int(10) NOT NULL,
  `pending_fees` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `snumber` (`snumber`),
  UNIQUE KEY `snumber_2` (`snumber`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `student_registration` */

insert  into `student_registration`(`sname`,`course`,`batch`,`date`,`snumber`,`email`,`course_type`,`total_fees`,`deposit_fees`,`pending_fees`,`username`,`password`,`is_active`,`id`) values ('SHUBHAM SINGH','BSC I.T',1,'10/13/1996',7088983522,'shubhamsinghdeveloper@gmail.com','graduation',45000,10000,35000,'1_SHUBHAM SINGH_2017','sgsA1316',1,1),('MAYURI RANA','B.C.A',1,'10/13/1996',7412589632,'mayurirana140@gmail.com','graduation',45000,15000,30000,'1_MAYURI RANA_2017','sgsfRdIF',1,2);

/*Table structure for table `technology` */

DROP TABLE IF EXISTS `technology`;

CREATE TABLE `technology` (
  `tech_id` int(11) NOT NULL AUTO_INCREMENT,
  `tech_name` varchar(50) DEFAULT NULL,
  `inst_id` int(11) DEFAULT NULL,
  `inst_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tech_id`),
  KEY `inst_id` (`inst_id`),
  CONSTRAINT `technology_ibfk_1` FOREIGN KEY (`inst_id`) REFERENCES `instructor` (`inst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `technology` */

insert  into `technology`(`tech_id`,`tech_name`,`inst_id`,`inst_name`) values (1,'DBMS',1,'MR. ABHINAV'),(2,'JAVA',2,'MR. BHUPENDRA BARTHWAL'),(3,'ANDROID',3,'MR. MANAS ABROL'),(4,'GROOMING',4,'MRS. NAMRATA'),(5,'PL-SQL',5,'MR. TAJINDER');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`full_name`,`designation`,`location`,`email`,`contact`,`username`,`password`) values (1,'RASHMI MITTAL','HR MANAGER','DEHRADUN','rashmimittal@gmail.com','7845968585','rashmi mam','rashmi mam');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
