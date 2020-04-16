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
USE `id13119275_db_zakat`;

/*Table structure for table `tbl_koordinator` */

DROP TABLE IF EXISTS `tbl_koordinator`;

CREATE TABLE `tbl_koordinator` (
  `id_koor` int(11) NOT NULL AUTO_INCREMENT,
  `nama_koor` varchar(50) DEFAULT NULL,
  `panggilan_koor` varchar(100) DEFAULT NULL,
  `alamat_koor` varchar(20) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text,
  `ket_pass` varchar(100) DEFAULT NULL,
  `level` int(11) DEFAULT '3',
  PRIMARY KEY (`id_koor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_koordinator` */

insert  into `tbl_koordinator`(`id_koor`,`nama_koor`,`panggilan_koor`,`alamat_koor`,`username`,`password`,`ket_pass`,`level`) values 
(1,'M. Apriadi Setiawan','Adi','RT01','adi','c46335eb267e2e1cde5b017acb4cd799','adi',3),
(2,'M. Nur Laba','Mas Nur','RT02','nur','b55178b011bfb206965f2638d0f87047','nur',3),
(3,'Mr. Rooki','Cak Roki','RT03','roki','64b69ce05f9e128794e433fea61a7e24','roki',3),
(4,'Abdul Mughni','Oni','RT18','oni','cb7f4a5e75e6f7340971c99ea4587999','oni',3),
(5,'Om Agus','ayah','RT19','agus','fdf169558242ee051cca1479770ebac3','agus',3),
(6,'M. zahid','Kacong','RT20','kacong','4b168cfef21e46be786f1f23ab31daa8','kacong',3);

/*Table structure for table `tbl_master_kwitansi` */

DROP TABLE IF EXISTS `tbl_master_kwitansi`;

CREATE TABLE `tbl_master_kwitansi` (
  `id_kwitansi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_organisasi` varchar(100) DEFAULT NULL,
  `nama_lembaga` varchar(100) DEFAULT NULL,
  `logo_organisasi` text,
  `pembayaran` text,
  `kota_kwitansi` varchar(30) DEFAULT NULL,
  `alamat_organisasi` text,
  PRIMARY KEY (`id_kwitansi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_master_kwitansi` */

insert  into `tbl_master_kwitansi`(`id_kwitansi`,`nama_organisasi`,`nama_lembaga`,`logo_organisasi`,`pembayaran`,`kota_kwitansi`,`alamat_organisasi`) values 
(1,'Remaja Masjid Nurul Huda','Masjid Besar Nurul Huda Janti','logo_1584761457.png','Maal, Partisipasi Sosial, Infaq/Shodaqoh, Fidyah','Janti','Jl. Brigjen Katamso No.123 Janti, Waru - Sidoarjo');

/*Table structure for table `tbl_master_laporan` */

DROP TABLE IF EXISTS `tbl_master_laporan`;

CREATE TABLE `tbl_master_laporan` (
  `id_laporan` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan_laporan` varchar(100) DEFAULT NULL,
  `nama_pemilik_jabatan` varchar(100) DEFAULT NULL,
  `masehi` varchar(12) DEFAULT NULL,
  `hijriyah` varchar(12) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `nama_sekretaris` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_laporan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_master_laporan` */

insert  into `tbl_master_laporan`(`id_laporan`,`jabatan_laporan`,`nama_pemilik_jabatan`,`masehi`,`hijriyah`,`jabatan`,`nama_sekretaris`) values 
(1,'Ketua Amil Zakat','M. Firdi Widiansyah','2019','1440','Sekretaris','Moch. Firman Firdaus');

/*Table structure for table `tbl_master_lokasi` */

DROP TABLE IF EXISTS `tbl_master_lokasi`;

CREATE TABLE `tbl_master_lokasi` (
  `id_lokasi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` text,
  `alamat_lokasi` varchar(100) DEFAULT NULL,
  `kontak_lokasi` varchar(100) DEFAULT NULL,
  `foto_lokasi` text,
  PRIMARY KEY (`id_lokasi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_master_lokasi` */

insert  into `tbl_master_lokasi`(`id_lokasi`,`nama_lokasi`,`alamat_lokasi`,`kontak_lokasi`,`foto_lokasi`) values 
(1,'Masjid Besar \"Nurul Huda\" Janti','Jl. Brigjen Katamso Janti','083857151187 - 089661668843','lok_1584763357.png');

/*Table structure for table `tbl_master_penerima` */

DROP TABLE IF EXISTS `tbl_master_penerima`;

CREATE TABLE `tbl_master_penerima` (
  `id_ket_penerima` int(11) NOT NULL AUTO_INCREMENT,
  `nama_ket` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_ket_penerima`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_master_penerima` */

insert  into `tbl_master_penerima`(`id_ket_penerima`,`nama_ket`) values 
(1,'Berat'),
(2,'Ringan'),
(3,'Sabilillah');

/*Table structure for table `tbl_penerima_zakat` */

DROP TABLE IF EXISTS `tbl_penerima_zakat`;

CREATE TABLE `tbl_penerima_zakat` (
  `id_penerima` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penerima` varchar(100) DEFAULT NULL,
  `ket_penerima` int(11) DEFAULT NULL,
  `koordinator` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_penerima`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_penerima_zakat` */

insert  into `tbl_penerima_zakat`(`id_penerima`,`nama_penerima`,`ket_penerima`,`koordinator`) values 
(1,'Sumarso',2,1),
(2,'Bu Yani',3,1),
(3,'Bpk Matakup',2,1),
(4,'Bu Saropah',2,1),
(5,'Bpk Parman',2,1),
(6,'Bpk Jayadi (Sanimas)',2,1),
(7,'Bu Matrio / Sampah',1,1),
(8,'Bu Jenjem',1,1),
(9,'Eka',1,1),
(10,'Bpk Suli',2,1),
(11,'Bpk Tasbun ',1,1),
(12,'Bpk Samsul',3,1),
(13,'Bu Susi',3,1),
(14,'Bu Zubaidah',2,1),
(15,'Bu Kasiah',2,1),
(16,'Bu Julaika',2,1),
(17,'Bpk Sumarsono',2,1),
(18,'Bpk Yono',1,1),
(19,'Bpk Marianto ',2,1),
(20,'Bpk Sahid ',2,1),
(21,'Bpk Surati',2,1),
(22,'Bu Sumar',2,1),
(23,'Bpk Nawasen (P. Kus)',2,1),
(24,'Bpk Sari (Suroso)',2,1),
(25,'Bpk Soemedi',2,1),
(26,'Bu Fida (Qodir)',2,1),
(27,'Bpk Hada’ (Bu Titin)',1,1),
(28,'Bpk Jaiman',1,1),
(29,'Bpk Paidi',1,1),
(30,'Bpk Suroso (Daia)',1,1),
(31,'Bu Siti',1,1),
(32,'Bpk Joko',1,1),
(33,'Slamet Yuda',1,1),
(34,'Darsono',1,1),
(35,'Sholeha (P. Sari)',1,1),
(36,'Choirul (Dian)',1,1),
(37,'Bpk Shidiq',1,1),
(38,'Mad Bukhori',1,1),
(39,'Bu Khomsatun',1,1),
(40,'Ten / Ketang',1,1),
(41,'Bpk Qodir',2,1),
(42,'Bapak Jingga',1,1),
(43,'Ny Muslika',1,1),
(44,'Ulfa (Kost Nyoman)',2,2),
(45,'Sowandi (Kost Suyono)',2,2),
(46,'Agus Salim',3,2),
(47,'Abd. Rosyid',3,2),
(48,'M. Isa',3,2),
(49,'Karsimin',2,2),
(50,'Socheh',3,2),
(51,'Juwariyah',3,2),
(52,'Agung',1,2),
(53,'Ibu Hamida',3,2),
(54,'Bu Nur (Pecel)',1,2),
(55,'Sunaryo (Doyok)',2,2),
(56,'H. Chamim Rosidi',3,2),
(57,'Abd. Ghofur',1,2),
(58,'Fatchul Korib',1,2),
(59,'Ach Kamaludin',2,2),
(60,'Sundari',1,2),
(61,'Rochimah',3,2),
(62,'Tulus',2,2),
(63,'Sua Pijet',1,2),
(64,'Riadi',2,2),
(65,'Kholil',1,2),
(66,'Ani',1,2),
(67,'Abd Karim',2,2),
(68,'Sriama (Pecel)',2,2),
(69,'Nining (Alm Kamid) ',2,2),
(70,'Zahro',3,2),
(71,'Bu Yati',2,2),
(72,'Hj Khodijah',2,2),
(73,'Mut (Kost Mak Yah)',1,2),
(74,'Martini (Kost Tulus)',2,2),
(75,'Maryam / Mamat',1,2),
(76,'Nanang (Kost Siti)',2,2),
(77,'Umi Nadya',3,3),
(78,'Bu Fathonah',1,3),
(79,'Ali Mustaqim',1,3),
(80,'Yulimah',1,3),
(81,'Mahfudz',1,3),
(82,'Suparmin',1,3),
(83,'Bu Mariah',1,3),
(84,'Musharokah',1,3),
(85,'Rahmawati',1,3),
(86,'Sri Hastuti',1,3),
(87,'Asiyah',1,3),
(88,'Linasih',2,3),
(89,'Sariyah',1,3),
(90,'Ninik',2,3),
(91,'Malikah',3,3),
(92,'M. Laili Rochi',1,3),
(93,'M. Jufri',3,3),
(94,'M. Zahid',3,3),
(95,'Abdul Kohar',1,3),
(96,'M. Yunus',1,3),
(97,'Gendok (Batak)',1,3),
(98,'Mina (Batak)',2,3),
(99,'Mariyati (Batak)',2,3),
(100,'M. Zainuri',3,3),
(101,'Imam Muslik ',1,3),
(102,'M. Lazwar Bakhri',3,3),
(103,'Bu Mar’ah',2,3),
(104,'Heri (Kost Didik)',2,3),
(105,'Bpk. Ali Fathoni',1,3),
(106,'Doni',1,3),
(107,'Bagio',2,3),
(108,'Belvi',2,3),
(109,'Eko',2,3),
(110,'Edi',2,3),
(111,'Warsito (kost batak ) ',2,3),
(112,'Heru P ( kost batak )',2,3),
(113,'Hj. Nurul Qomariyah',3,4),
(114,'Bu Ameni',1,4),
(115,'Bpk Khusairi',1,4),
(116,'Bu Sumarni',1,4),
(117,'Bu Semi',1,4),
(118,'Bpk Sigit Sugiarto ',2,4),
(119,'Bu Nur Rohmah',3,4),
(120,'Bpk Saki',1,4),
(121,'Bu Mudjiono',1,4),
(122,'Amal',2,4),
(123,'Bu Siamah',1,4),
(124,'Bu Nur Mahmuda',1,4),
(125,'Toni M',2,4),
(126,'Hj. Indahwati ',3,4),
(127,'H. Anas Aly',3,4),
(128,'M. Munir',3,4),
(129,'Bpk Mat Sholehuddin ',1,4),
(130,'Bu Harti (Malik)',1,4),
(131,'Muhaimin (Alex)',2,4),
(132,'Hari Setiono',1,4),
(133,'Bpk M Sofi’i',3,4),
(134,'Bpk Saimun',1,4),
(135,'Sunarto',1,5),
(136,'Mulyosantoso',1,5),
(137,'Mbak Tatik',1,5),
(138,'Mbah Mud',1,5),
(139,'Mbah Kamiso',1,5),
(140,'Mega FS',1,5),
(141,'Siti Fatimah',1,5),
(142,'Amala',1,5),
(143,'Misnati',1,5),
(144,'Latifah',1,5),
(145,'Mbah Ratmi',1,5),
(146,'Mamin',1,5),
(147,'Sutama',1,5),
(148,'Yadi',2,5),
(149,'Jamila',2,5),
(150,'Cak Mat',2,5),
(151,'Ibu Sum',2,5),
(152,'Pak Minto',2,5),
(153,'Mbak Ida',2,5),
(154,'Ari',2,5),
(155,'Sokib',2,5),
(156,'Suryati',2,5),
(157,'Khozin',2,5),
(158,'Sukir',2,5),
(159,'Yanto',2,5),
(160,'Mujiati',3,5),
(161,'Dewi Asfiyah',3,5),
(162,'Nur Anisah',3,5),
(163,'Nur C Mul',3,5),
(164,'Ulfa',3,5),
(165,'Wulan Jalil',3,5),
(166,'Romlah',1,6),
(167,'Bu Nafsiyah',2,6),
(168,'Asmalikah',3,6),
(169,'Maryam',1,6),
(170,'Bu Hindun',2,6),
(171,'Bu Nunuk',1,6),
(172,'Mutasor (Sate)',2,6),
(173,'Ulfa (Kos Pak No)',1,6),
(174,'Suripto',2,6),
(175,'Bu Sulasih',1,6),
(176,'Endang',3,6),
(177,'Ma’rufah',1,6),
(178,'Munasri',2,6),
(179,'Umar Effendi',1,6),
(180,'Ulis',2,6),
(181,'Asemah',2,6),
(182,'Ninik',1,6),
(183,'Bu Kadiman / Jayem',1,6),
(184,'Yanu',1,6),
(185,'Mad Hadi',2,6),
(186,'Ponidi',2,6),
(187,'Saipul (Kost Pak Yanto)',2,6),
(188,'Fitri ',2,6),
(189,'Didik (Kost Imam T)',1,6),
(190,'Alfi',2,6),
(191,'Dimas',1,6),
(192,'Leny',1,6),
(193,'Ibu Mirna',2,6),
(194,'Ny Amak',2,6),
(195,'M. Zahid',3,6),
(196,'Tun / Alm. Puji',2,6);

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `nama_user` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text,
  `ket_pass` varchar(100) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id_user`,`nama_lengkap`,`nama_user`,`username`,`password`,`ket_pass`,`level`) values 
(1,'Moch. Firman Firdaus','Firman','firman','b34b40ca8771c48c204e55f927376885','okedeh',1),
(3,'Farida Nur Zeha','Farida','admin','b34b40ca8771c48c204e55f927376885','okedeh',1),
(5,'Moch Firdi Widiansya','Widi','widi','f20a698699ddd337ae993089c08cd0fb','wada',1),
(6,'Teguh Ramadhan','Teguh','teguh','4841fdbdb2e27a75319b04f794f683ed','teguhtok',2),
(7,'Bima Anugerah','Bima','bima','7fcba392d4dcca33791a44cd892b2112','bima',4);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_zakat_fitrah` */

insert  into `tbl_zakat_fitrah`(`id_zakat_fitrah`,`nama_pemberi_zakat`,`besaran_jiwa`,`beras`,`uang`,`alamat`,`tanggal`,`petugas`) values 
(3,'boboho',5,'14','','RT 18','2019-06-02','Firman'),
(4,'Riski',5,'14','140000','Graha Tirta Permai','2019-06-03','Firman'),
(6,'Syahrul',2,'5.6','','','2019-06-04',NULL),
(7,'Syahrul',1,'2.8','140000','RT 20','2019-06-04',NULL),
(8,'Syahrul',2,'5.6','','RT 20','2019-06-23',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_zakat_maal` */

insert  into `tbl_zakat_maal`(`id_zakat_maal`,`nama_pemberi_zakat`,`kategori_zakat`,`nominal_zakat`,`alamat`,`tanggal`,`petugas1`,`petugas2`) values 
(1,'Firman Firdaus','maal','200000','RT 01','2020-03-09','Farida Nur Zeha','2'),
(2,'Widi','ps','1000000','RT 02','2019-07-07','Firman',''),
(3,'bgba','is','1000000','RT 1','2020-03-21','Firman','3'),
(4,'Zarah','fidyah','100000','Surabaya','2019-07-09','Firman','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
