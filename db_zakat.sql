/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 10.1.36-MariaDB : Database - db_zakat
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_zakat` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_zakat`;

/*Table structure for table `tbl_koordinator` */

DROP TABLE IF EXISTS `tbl_koordinator`;

CREATE TABLE `tbl_koordinator` (
  `id_koor` int(11) NOT NULL AUTO_INCREMENT,
  `nama_koor` varchar(50) DEFAULT NULL,
  `alamat_koor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_koor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_koordinator` */

insert  into `tbl_koordinator`(`id_koor`,`nama_koor`,`alamat_koor`) values 
(1,'M. Apriadi','RT 01'),
(2,'M. Nur Laba','RT 02'),
(3,'Roki','RT 03'),
(4,'ONI','RT 18'),
(5,'Miftakhudin','RT 19'),
(6,'M Zaid','RT 20');

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id_user`,`nama_user`,`username`,`password`,`level`) values 
(1,'Firman','firman','b34b40ca8771c48c204e55f927376885',1),
(2,'Widi','widi','d49b9709c6ca14577f08b2ab21ab7964',1);

/*Table structure for table `tbl_zakat_fitrah` */

DROP TABLE IF EXISTS `tbl_zakat_fitrah`;

CREATE TABLE `tbl_zakat_fitrah` (
  `id_zakat_fitrah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pemberi_zakat` varchar(100) DEFAULT NULL,
  `besaran_jiwa` int(11) DEFAULT NULL,
  `beras` varchar(20) DEFAULT NULL,
  `uang` varchar(20) DEFAULT NULL,
  `alamat` text,
  `tanggal` date DEFAULT NULL,
  `petugas` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_zakat_fitrah`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_zakat_fitrah` */

insert  into `tbl_zakat_fitrah`(`id_zakat_fitrah`,`nama_pemberi_zakat`,`besaran_jiwa`,`beras`,`uang`,`alamat`,`tanggal`,`petugas`) values 
(2,'Widi',2,'5,6','','RT 02','2019-06-02','Firman'),
(3,'boboho',5,'14','','RT 18','2019-06-02','Firman'),
(4,'Riski',5,'14','140000','Graha Tirta Permai','2019-06-03','Firman'),
(5,'Riski',2,'5.6','64000','RT 20','2019-06-03',NULL),
(6,'Syahrul',2,'5.6','','','2019-06-04',NULL),
(7,'Syahrul',1,'2.8','140000','RT 20','2019-06-04',NULL),
(8,'Syahrul',2,'5.6','','RT 20','2019-06-23',NULL),
(9,'Ica',4,'11.2','100000','Trosobo','2019-06-27',NULL),
(10,'Paijo',4,'11.2','','RT 01','2019-07-06',NULL),
(11,'Roby',2,'5.6','30000','RT 20','2019-07-06','Firman'),
(12,'Firman Firdaus',2,'5.6','','RT 01','2019-07-07','Firman');

/*Table structure for table `tbl_zakat_maal` */

DROP TABLE IF EXISTS `tbl_zakat_maal`;

CREATE TABLE `tbl_zakat_maal` (
  `id_zakat_maal` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pemberi_zakat` varchar(50) DEFAULT NULL,
  `kategori_zakat` varchar(30) DEFAULT NULL,
  `nominal_zakat` varchar(100) DEFAULT NULL,
  `alamat` text,
  `tanggal` date DEFAULT NULL,
  `petugas1` varchar(30) DEFAULT NULL,
  `petugas2` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_zakat_maal`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_zakat_maal` */

insert  into `tbl_zakat_maal`(`id_zakat_maal`,`nama_pemberi_zakat`,`kategori_zakat`,`nominal_zakat`,`alamat`,`tanggal`,`petugas1`,`petugas2`) values 
(1,'Firman','maal','200000','RT 01','2019-07-07','','M. Apriadi'),
(2,'Widi','ps','1000000','RT 02','2019-07-07','Firman',''),
(3,'bgb','is','1000000','RT 1','2019-07-09','','M. Nur Laba'),
(4,'Zarah','fidyah','100000','Surabaya','2019-07-09','Firman',''),
(5,'Firman','fidyah','100000','sadsad','2019-07-09','Firman','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
