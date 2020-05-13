/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.1.49-community : Database - dormitory
*********************************************************************
系统登录密码：123456
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dormitory` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dormitory`;

/*Table structure for table `d_admin` */

DROP TABLE IF EXISTS `d_admin`;

CREATE TABLE `d_admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_username` varchar(20) NOT NULL,
  `a_password` varchar(50) NOT NULL,
  `a_name` varchar(20) DEFAULT NULL,
  `a_phone` bigint(20) DEFAULT NULL,
  `a_power` varchar(20) DEFAULT NULL,
  `a_describe` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `d_admin` */

insert  into `d_admin`(`a_id`,`a_username`,`a_password`,`a_name`,`a_phone`,`a_power`,`a_describe`) values (1,'zxk','E10ADC3949BA59ABBE56E057F20F883E','周荀凯',138138138,'1','高'),(2,'zj','E10ADC3949BA59ABBE56E057F20F883E','张杰',138138138,'2','低'),(3,'zh','E10ADC3949BA59ABBE56E057F20F883E','张欢',138138138,'1','高'),(4,'zk','E10ADC3949BA59ABBE56E057F20F883E','赵凯',138138138,'2','低'),(5,'ywj','E10ADC3949BA59ABBE56E057F20F883E','杨雯雯',138138138,'1','高'),(6,'wh','E10ADC3949BA59ABBE56E057F20F883E','王皓',138138138,'1','高'),(7,'zw','E10ADC3949BA59ABBE56E057F20F883E','张伟',138138138,'2','低'),(8,'zjn','E10ADC3949BA59ABBE56E057F20F883E','赵佳妮',138138138,'2','低'),(9,'wf','E10ADC3949BA59ABBE56E057F20F883E','王凡',138138138,'1','高'),(10,'zn','E10ADC3949BA59ABBE56E057F20F883E','张娜',138138138,'1','高'),(11,'jzh','E10ADC3949BA59ABBE56E057F20F883E','蒋子华',138138138,'2','低'),(12,'xl','E10ADC3949BA59ABBE56E057F20F883E','薛磊',138138138,'2','低');

/*Table structure for table `d_class` */

DROP TABLE IF EXISTS `d_class`;

CREATE TABLE `d_class` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_classid` int(11) NOT NULL,
  `c_classname` varchar(30) DEFAULT NULL,
  `c_counsellor` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `d_class` */

insert  into `d_class`(`c_id`,`c_classid`,`c_classname`,`c_counsellor`) values (1,141,'生物','徐超'),(2,151,'应化','刘晨'),(3,142,'土木','孙玲'),(4,161,'物流','刘阳'),(5,153,'数师','张宇'),(6,162,'物流','刘阳'),(7,171,'自动化','周涵涵'),(8,154,'土木','孙玲'),(9,151,'纺织','赵凯'),(10,153,'金融','刘培');

/*Table structure for table `d_cost` */

DROP TABLE IF EXISTS `d_cost`;

CREATE TABLE `d_cost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dormitoryid` int(11) DEFAULT NULL,
  `waterprice` double DEFAULT NULL,
  `electricityprice` double DEFAULT NULL,
  `sumprice` double DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `d_cost` */

insert  into `d_cost`(`id`,`dormitoryid`,`waterprice`,`electricityprice`,`sumprice`,`status`,`remark`,`create_time`) values (1,301,50,30,80,'未缴纳','12月份水电费','2019-12-28 14:55:35'),(2,302,11,11,22,'未缴纳','11月份','2019-12-28 17:37:14');

/*Table structure for table `d_dormgrade` */

DROP TABLE IF EXISTS `d_dormgrade`;

CREATE TABLE `d_dormgrade` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) NOT NULL,
  `d_dormbuilding` varchar(20) DEFAULT NULL,
  `d_grade` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `d_dormgrade` */

insert  into `d_dormgrade`(`g_id`,`d_id`,`d_dormbuilding`,`d_grade`,`create_time`,`update_time`) values (1,301,'24号楼',6,'2019-04-25 10:51:17','2019-05-12 17:28:38'),(2,302,'24号楼',7,'2019-05-01 16:36:47','2019-05-01 16:36:55'),(3,322,'24号楼',8,'2019-05-04 16:37:42','2019-05-04 16:37:47'),(4,602,'23号楼',7,'2019-05-08 16:38:25','2019-05-08 16:38:30'),(5,112,'22号楼',7,'2019-05-12 16:38:53','2019-05-12 16:39:00'),(6,222,'27号楼',9,'2019-05-09 16:39:37','2019-05-09 16:39:41'),(7,213,'27号楼',8,'2019-05-10 16:40:02','2019-05-10 16:40:08');

/*Table structure for table `d_dormitoryinfo` */

DROP TABLE IF EXISTS `d_dormitoryinfo`;

CREATE TABLE `d_dormitoryinfo` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_dormitoryid` int(11) NOT NULL,
  `d_dormbuilding` varchar(20) DEFAULT NULL,
  `d_bedtotal` varchar(20) DEFAULT NULL,
  `d_bed` varchar(20) DEFAULT NULL,
  `a_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `d_dormitoryinfo` */

insert  into `d_dormitoryinfo`(`d_id`,`s_dormitoryid`,`d_dormbuilding`,`d_bedtotal`,`d_bed`,`a_name`) values (1,311,'24号楼','4','3','周荀凯'),(2,322,'24号楼','4','4','周荀凯'),(3,601,'23号楼','6','6','张杰'),(4,602,'23号楼','6','5','张杰'),(5,111,'22号楼','4','4','杨雯雯'),(6,112,'22号楼','4','3','杨雯雯'),(7,222,'27号楼','6','6','张伟'),(8,213,'27号楼','4','4','张伟'),(9,312,'26号楼','6','6','薛磊'),(10,313,'22号楼','4','4','张磊'),(11,323,'22号楼','6','5','张磊'),(12,301,'24号楼','6','6','周荀凯'),(13,302,'24号楼','6','6','周荀凯'),(14,423,'29号楼','4','3','郭浩然');

/*Table structure for table `d_dormrepair` */

DROP TABLE IF EXISTS `d_dormrepair`;

CREATE TABLE `d_dormrepair` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) NOT NULL,
  `d_dormbuilding` varchar(20) NOT NULL,
  `r_name` varchar(20) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `d_dormrepair` */

insert  into `d_dormrepair`(`r_id`,`d_id`,`d_dormbuilding`,`r_name`,`reason`,`create_time`,`update_time`) values (1,301,'24号楼','王涛','水池','2019-05-13 22:39:58','2019-05-13 22:39:58'),(2,322,'24号楼','王涛','灯管','2019-05-11 16:29:20','2019-05-14 16:29:35'),(3,601,'23号楼','冯军','水龙头','2019-05-15 16:31:14','2019-05-14 16:31:20'),(4,601,'23号楼','冯军','插孔','2019-05-15 16:31:56','2019-05-15 16:32:04'),(5,213,'27号楼','冯军','排风扇','2019-05-18 16:32:54','2019-05-14 16:33:00'),(6,312,'26号楼','彭建国','空调','2019-05-20 16:33:56','2019-05-20 16:34:01');

/*Table structure for table `d_stgrade` */

DROP TABLE IF EXISTS `d_stgrade`;

CREATE TABLE `d_stgrade` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_studentid` int(11) NOT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `s_grade` int(11) DEFAULT NULL,
  `s_classid` int(11) DEFAULT NULL,
  `s_dormitoryid` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `d_stgrade` */

insert  into `d_stgrade`(`g_id`,`s_studentid`,`s_name`,`s_grade`,`s_classid`,`s_dormitoryid`,`create_time`,`update_time`) values (1,1413032001,'张杰',6,141,301,'2019-04-26 09:56:51','2019-04-26 11:02:13'),(2,1413032002,'赵凯',7,141,301,'2019-05-01 17:00:05','2019-05-01 17:00:13'),(3,1413032003,'许文文',6,141,301,'2019-05-06 17:00:54','2019-05-06 17:01:01'),(4,1413032003,'许文文',7,141,301,'2019-05-16 17:01:33','2019-05-16 17:02:15'),(5,1413032004,'王浩',7,141,301,'2019-05-10 17:03:03','2019-05-10 17:03:09'),(6,1413032005,'张伟',8,141,301,'2019-05-14 17:03:53','2019-05-14 17:03:56'),(7,1513112412,'赵跃',9,151,112,'2019-05-08 17:05:04','2019-05-08 17:05:07'),(8,1513112412,'赵跃',9,151,112,'2019-05-17 17:05:34','2019-05-17 17:05:39'),(9,1513122418,'田野',8,151,213,'2019-05-15 17:06:28','2019-05-15 17:06:35'),(10,1513122419,'张嘉佳',8,151,213,'2019-05-15 17:07:09','2019-05-15 17:07:13');

/*Table structure for table `d_student` */

DROP TABLE IF EXISTS `d_student`;

CREATE TABLE `d_student` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_studentid` int(11) NOT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `s_sex` varchar(20) DEFAULT NULL,
  `s_age` int(11) DEFAULT NULL,
  `s_phone` bigint(20) DEFAULT NULL,
  `s_classid` int(11) NOT NULL,
  `s_classname` varchar(20) DEFAULT NULL,
  `s_dormitoryid` int(11) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `d_student` */

insert  into `d_student`(`s_id`,`s_studentid`,`s_name`,`s_sex`,`s_age`,`s_phone`,`s_classid`,`s_classname`,`s_dormitoryid`) values (1,1413032001,'张杰','男',22,138138138,141,'生物',301),(2,1413032002,'赵凯','男',22,138138138,141,'生物',301),(3,1413032003,'许文文','男',21,138138138,141,'生物',301),(4,1413032004,'王浩','男',22,138138138,141,'生物',301),(5,1413032005,'张伟','男',22,138138138,141,'土木',301),(6,1413032006,'郭顶','男',21,138138138,141,'土木',301),(7,1513112411,'曹原','男',20,138138138,151,'应化',112),(8,1513112412,'赵跃','男',21,138138138,151,'纺织',112),(9,1513112413,'孙畅','男',21,138138138,151,'纺织',112),(10,1513122417,'周帆','男',21,138138138,161,'物流',213),(11,1513122418,'田野','男',21,138138138,153,'数师',213),(12,1513122419,'张嘉佳','男',20,138138138,153,'金融',213),(13,1513122420,'陈昊','男',21,138138138,153,'金融',213);

/*Table structure for table `d_visitor` */

DROP TABLE IF EXISTS `d_visitor`;

CREATE TABLE `d_visitor` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(20) DEFAULT NULL,
  `v_phone` bigint(20) DEFAULT NULL,
  `v_dormitoryid` int(11) DEFAULT NULL,
  `v_dormbuilding` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `d_visitor` */

insert  into `d_visitor`(`v_id`,`v_name`,`v_phone`,`v_dormitoryid`,`v_dormbuilding`,`create_time`) values (1,'郑杰',138138138,301,'24号楼','2019-05-14 13:26:13'),(2,'李博',138138138,322,'24号楼','2019-05-12 19:36:23'),(3,'张盈盈',138138138,601,'23号楼','2019-05-13 19:37:11'),(4,'王涛',138138138,111,'22号楼','2019-05-15 19:37:46'),(5,'胡浩',138138138,222,'27号楼','2019-05-16 19:38:27'),(6,'陈昊',138138138,213,'27号楼','2019-05-18 19:39:03'),(7,'刘军',138138138,213,'27号楼','2019-05-20 19:39:42'),(8,'黄智',138138138,312,'26号楼','2019-05-22 19:46:38'),(9,'郑杰',123123123,311,'24号楼','2019-05-16 16:59:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
