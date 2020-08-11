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

/*Table structure for table `tbl_donatur` */

DROP TABLE IF EXISTS `tbl_donatur`;

CREATE TABLE `tbl_donatur` (
  `id_donatur` int(255) NOT NULL AUTO_INCREMENT,
  `nama_donatur` varchar(100) DEFAULT NULL,
  `alamat_donatur` text,
  `bukti_terima` text,
  `nominal` varchar(30) DEFAULT NULL,
  `petugas_penerima` varchar(100) DEFAULT NULL,
  `data_validation` datetime DEFAULT NULL,
  PRIMARY KEY (`id_donatur`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_donatur` */

insert  into `tbl_donatur`(`id_donatur`,`nama_donatur`,`alamat_donatur`,`bukti_terima`,`nominal`,`petugas_penerima`,`data_validation`) values 
(23,'H. Sukani','RT 20','DONATUR_20052020161149.jpg','300000','M. JAHID','2020-05-20 16:11:49'),
(24,'Bpk Yokyok','RT 18 RW 01','DONATUR_23052020002104.jpg','100000','ABDUL MUGHNI','2020-05-23 00:21:04');

/*Table structure for table `tbl_jabatan` */

DROP TABLE IF EXISTS `tbl_jabatan`;

CREATE TABLE `tbl_jabatan` (
  `id_jabatan` int(255) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_jabatan` */

insert  into `tbl_jabatan`(`id_jabatan`,`nama_jabatan`) values 
(1,'Ketua'),
(2,'Wakil Ketua'),
(3,'Bendahara'),
(4,'Wakil Bendahara'),
(5,'Sekretaris'),
(6,'Wakil Sekretaris'),
(7,'Koordinator'),
(8,'Petugas');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_koordinator` */

insert  into `tbl_koordinator`(`id_koor`,`nama_koor`,`panggilan_koor`,`alamat_koor`,`username`,`password`,`ket_pass`,`level`) values 
(1,'M. Apriadi Setiawan','Adi','RT01','adi','c46335eb267e2e1cde5b017acb4cd799','adi',3),
(2,'M. Nur Laba','Mas Nur','RT02','nur','b55178b011bfb206965f2638d0f87047','nur',3),
(3,'Mr. Rooki','Cak Roki','RT03','roki','64b69ce05f9e128794e433fea61a7e24','roki',3),
(4,'Abdul Mughni','Oni','RT18','oni','cb7f4a5e75e6f7340971c99ea4587999','oni',3),
(5,'Om Agus','ayah','RT19','agus','fdf169558242ee051cca1479770ebac3','agus',3),
(6,'M. zahid','Kacong','RT20','kacong','4b168cfef21e46be786f1f23ab31daa8','kacong',3),
(7,'Mr. Koordinator','Koordinator','RT01','koor','6091496a74949f21e59b3f64607552e7','koor',3);

/*Table structure for table `tbl_master_alamat` */

DROP TABLE IF EXISTS `tbl_master_alamat`;

CREATE TABLE `tbl_master_alamat` (
  `id_alamat` int(255) NOT NULL AUTO_INCREMENT,
  `alamat` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id_alamat`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_master_alamat` */

insert  into `tbl_master_alamat`(`id_alamat`,`alamat`) values 
(1,'RT 01'),
(2,'RT 02'),
(3,'RT 03'),
(4,'RT 18'),
(5,'RT 19'),
(6,'RT 20');

/*Table structure for table `tbl_master_alternatif` */

DROP TABLE IF EXISTS `tbl_master_alternatif`;

CREATE TABLE `tbl_master_alternatif` (
  `id_alternatif` int(255) NOT NULL AUTO_INCREMENT,
  `kode_alternatif` varchar(5) DEFAULT NULL,
  `nama_alternatif` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_alternatif`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_master_alternatif` */

insert  into `tbl_master_alternatif`(`id_alternatif`,`kode_alternatif`,`nama_alternatif`) values 
(1,'A1','Fakir'),
(2,'A2','Amil'),
(3,'A3','Sabil');

/*Table structure for table `tbl_master_bobot` */

DROP TABLE IF EXISTS `tbl_master_bobot`;

CREATE TABLE `tbl_master_bobot` (
  `id_bobot` int(11) NOT NULL AUTO_INCREMENT,
  `nominal_bobot` varchar(2) DEFAULT NULL,
  `ket_bobot` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_bobot`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_master_bobot` */

insert  into `tbl_master_bobot`(`id_bobot`,`nominal_bobot`,`ket_bobot`) values 
(1,'1','Kedua Elemen Sama Penting'),
(2,'2','Mendekati sedikit lebih penting dari'),
(3,'3','Elemen yang satu sedikit penting daripada elemen yang lain'),
(4,'4','Mendekati lebih penting dari'),
(5,'5','Elemen yang satu lebih penting daripada yang lainnya'),
(6,'6','Mendekati sangat penting dari'),
(7,'7','Satu elemen jelas lebih mutlak penting daripada elemen lainnya'),
(8,'8','Mendekati mutlak dari'),
(9,'9','Satu elemen mutlak penting daripada elemen lainnya');

/*Table structure for table `tbl_master_kriteria` */

DROP TABLE IF EXISTS `tbl_master_kriteria`;

CREATE TABLE `tbl_master_kriteria` (
  `id_kriteria` int(255) NOT NULL AUTO_INCREMENT,
  `kode_kriteria` varchar(10) DEFAULT NULL,
  `nama_kriteria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_master_kriteria` */

insert  into `tbl_master_kriteria`(`id_kriteria`,`kode_kriteria`,`nama_kriteria`) values 
(1,'C1','Ghorim'),
(2,'C2','Budak'),
(3,'C3','Miskin'),
(4,'C4','Ibnu Sabil'),
(5,'C5','Mualaf');

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
(1,'Remaja Masjid Nurul Huda','Masjid Besar Nurul Huda Janti','logo_1587121453.png','Maal, Partisipasi Sosial, Infaq/Shodaqoh, Fidyah','Janti ','Jl. Brigjen Katamso No.123 Janti, Waru - Sidoarjo');

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
(1,'Ketua Amil Zakat','M. Firdi Widiansyah','2020','1441','Sekretaris','Moch. Firman Firdaus');

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
(1,'Masjid Besar \"Nurul Huda\" Janti Waru','Jl. Brigjen Katamso Janti','083857151187 - 089661668843','lok_1587179601.png');

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

/*Table structure for table `tbl_panitia` */

DROP TABLE IF EXISTS `tbl_panitia`;

CREATE TABLE `tbl_panitia` (
  `id_panitia` int(255) NOT NULL AUTO_INCREMENT,
  `nama_panitia` varchar(100) DEFAULT NULL,
  `jabatan_panitia` varbinary(50) DEFAULT NULL,
  `alamat` text,
  `kontak` varchar(20) DEFAULT NULL,
  `foto_panitia` text,
  PRIMARY KEY (`id_panitia`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_panitia` */

insert  into `tbl_panitia`(`id_panitia`,`nama_panitia`,`jabatan_panitia`,`alamat`,`kontak`,`foto_panitia`) values 
(1,'Moch. Firman Firdaus','5','1','089666515952','PANITIA_29042020121634.png');

/*Table structure for table `tbl_penerima_zakat` */

DROP TABLE IF EXISTS `tbl_penerima_zakat`;

CREATE TABLE `tbl_penerima_zakat` (
  `id_penerima` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penerima` varchar(100) DEFAULT NULL,
  `ket_penerima` int(11) DEFAULT NULL,
  `koordinator` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_penerima`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_penerima_zakat` */

insert  into `tbl_penerima_zakat`(`id_penerima`,`nama_penerima`,`ket_penerima`,`koordinator`) values 
(1,'Sumarso',1,1),
(2,'Bu Yani',3,1),
(3,'Bpk Matakup',2,1),
(4,'Bu Saropah',2,1),
(5,'Bpk Parman',2,1),
(6,'Bpk Jayadi (Sanimas)',2,1),
(7,'Bu Matrio / Sampah',1,1),
(8,'Bu Jenjem',1,1),
(9,'Eka',1,1),
(10,'Bpk Suli',2,1),
(11,'Ibu hasanah ',1,1),
(12,'Bpk Samsul',3,1),
(13,'Futihatus',2,1),
(14,'Bu Zubaidah',2,1),
(15,'Bu Kasiah',2,1),
(16,'Bu Julaika',2,1),
(17,'Bpk Sumarsono',2,1),
(18,'Bpk Yono',1,1),
(19,'Bpk Marianto ',2,1),
(20,'Bpk Sahid ',2,1),
(21,'Bpk Surati',2,1),
(22,'Bu Sunar',2,1),
(23,'Bpak hasan',2,1),
(24,'Bpk Sari (Suroso) /sri utami',2,1),
(25,'Bpk Soemedi',3,1),
(26,'Bu Fida (Qodir)',3,1),
(27,'Bpk Hada’ (Bu Titin)',2,1),
(28,'Bpk Jaiman',2,1),
(29,'Bpk Paidi',2,1),
(30,'Bpk Suroso (Daia)',2,1),
(31,'Bu Siti',2,1),
(32,'Bpk Joko',2,1),
(33,'Rita',2,1),
(35,'Sholeha (P. Sari)',2,1),
(36,'Choirul (Dian)',2,1),
(37,'ibu diana',2,1),
(38,'Mad Bukhori',2,1),
(39,'Bu Khomsatun',2,1),
(40,'Ten / Ketang zainul ',2,1),
(41,'Bpk Qodir',3,1),
(42,'bu juaria',2,1),
(43,'Ny Muslika',2,1),
(44,'Ulfa (Kost Nyoman)',1,2),
(45,'Sowandi (Kost Suyono)',2,2),
(46,'Agus Salim',3,2),
(47,'Abd. Rosyid',3,2),
(48,'M. Isa',3,2),
(49,'Karsimin',2,2),
(50,'Socheh',3,2),
(51,'Juwariyah',3,2),
(53,'Ibu Hamida',2,2),
(54,'Bu Nur (Pecel)',1,2),
(55,'Sunaryo (Doyok)',2,2),
(56,'H. Chamim Rosidi',3,2),
(57,'Abd. Ghofur',2,2),
(58,'Fatchul Korib',1,2),
(59,'Ach Kamaludin',2,2),
(60,'Sundari',1,2),
(61,'Rochimah',3,2),
(63,'Sua Pijet',1,2),
(64,'Riadi',2,2),
(65,'Kholil',1,2),
(66,'Ani',1,2),
(67,'Abd Karim',2,2),
(68,'Sriama (Pecel)',2,2),
(69,'Nining (Alm Kamid) ',2,2),
(70,'Zahro',3,2),
(74,'Martini (Kost Tulus)',2,2),
(76,'Nanang (Kost Siti)',2,2),
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
(142,'Amala',1,5),
(143,'Misnati',1,5),
(144,'Latifah',1,5),
(145,'Mbah Ratmi',1,5),
(147,'Sutama',1,5),
(148,'Yadi',2,5),
(149,'Jamila',2,5),
(150,'Cak Mat Satpam',2,5),
(151,'Ibu Sum',2,5),
(152,'Pak Minto',2,5),
(155,'Bpk. Sokib',2,5),
(156,'Suryati',2,5),
(157,'Khozin',2,5),
(158,'Sukir',2,5),
(159,'Yanto',2,5),
(160,'Mujiati',3,5),
(161,'Dewi Asfiyah',3,5),
(162,'Nur Anisah',3,5),
(163,'Nur Sakbani',3,5),
(164,'Ulfa',3,5),
(165,'Wulan Jalil',3,5),
(166,'Asemah',2,6),
(167,'Ulis',2,6),
(168,'Ninik',1,6),
(169,'Fitri',1,6),
(170,'Bu Kadiman/Jayem',1,6),
(172,'Ny Sembodo',2,6),
(173,'Munasri',2,6),
(174,'Kholiq',1,6),
(175,'Bpk Ilham Kos',2,6),
(176,'Imam kos Mukiyat',2,6),
(177,'Gunawan Kos Yus',2,6),
(178,'Endang',3,6),
(179,'Bunda Diyah',3,6),
(180,'Alm Umar Efendy',1,6),
(181,'Agus',2,6),
(182,'Taufiq',2,6),
(183,'Kusnan kos',2,6),
(184,'Meme',2,6),
(185,'Sunarsih',2,6),
(186,'Ibu Mirna',1,6),
(187,'Makrufah',1,6),
(188,'Ibu Ulfa',1,6),
(190,'Bu Hindun',2,6),
(191,'Rinda',3,6),
(192,'Asmalika',3,6),
(193,'Ibu Maya',2,6),
(194,'Romlah',1,6),
(195,'Maryam ',1,6),
(196,'Saipul kos yanto',2,6),
(209,'P.panut',3,2),
(210,'Udin bodrex',2,2),
(211,'Harsono/ning nur',2,2),
(213,'Agus mujaidi(edi)',2,2),
(215,'Bu Lek Alif',2,6),
(216,'Sulika',2,6),
(217,'Asmadi',1,6),
(218,'Lut',2,6),
(219,'eka wulan',1,1),
(220,'bpk untung',2,1),
(221,'dul hadi',2,1),
(222,'sulton',2,1),
(223,'bu nurul',2,1),
(224,'bpk buri',2,1),
(225,'irtanto',2,1),
(226,'Jaswadi',2,4),
(227,'Dani',1,4),
(228,'Tutik',1,4),
(229,'Umiyati (kos p. Ahmad)',1,4),
(230,'Khundoli',2,4),
(231,'Mut (gorengan)',1,4),
(232,'Abdul Kahar',2,3),
(233,'Khotimah',1,3),
(234,'Ning Tin',2,3),
(235,'Hamzah',1,3),
(236,'Sholeh',2,3),
(237,'Jumadi',2,3),
(238,'Ninik',2,3),
(239,'Tutik',2,3),
(240,'Linasih',1,3),
(241,'ASiah',1,3),
(242,'Sariyah',1,3),
(243,'H. JUfri',3,3),
(244,'Yasak',3,3),
(245,'Dayat',2,3),
(246,'Naium',2,3),
(247,'Ali Usman',2,3),
(248,'Rika',2,3),
(249,'Lilik',2,3),
(250,'Farid',2,3),
(251,'Zainuri',3,3),
(252,'Sunarto',2,3),
(253,'Edi Supriyanto',2,3),
(254,'Eko',2,3),
(255,'Ali Ibrahim',1,3),
(256,'Ali Fathani',1,3),
(257,'Fathana',1,3),
(258,'Ali Mustaqim',1,3),
(259,'Yulima',1,3),
(260,'Buk MAr',1,3),
(261,'Rokha',1,3),
(262,'Mariah',1,3),
(263,'Wati',2,3),
(264,'Ibuk e yoyok',1,3),
(265,'Aas',3,3),
(266,'Bu Siti',3,3),
(267,'Yayuk',2,3),
(268,'Genduk',1,3),
(269,'Sundari',1,3),
(270,'Aris',2,3),
(271,'Bu Suha',1,3),
(272,'P. Bambang',2,3),
(273,'Zaky Fanani',2,3),
(274,'Yanu',2,6),
(275,'Misbakhul',2,2),
(276,'Susi',3,1),
(277,'Leo Sunaryo',2,5),
(278,'Seno Susanto',2,5),
(279,'Bpk. Misri',2,5),
(280,'Bpk. Rokim',2,5),
(281,'Bpk. Roni',2,5),
(282,'Bpk. Duki',2,5),
(283,'Bpk. Suhadak',2,5),
(284,'Bpk. Taufik H',2,5),
(285,'Ibu Lilik',2,5),
(286,'Tantok',1,5),
(287,'Putra',2,5),
(288,'Purnomo',2,5),
(289,'Bamban s (ASE)',2,5),
(290,'Sanjono',2,5),
(291,'bpk. Putro',2,5),
(292,'Bpk. Donok',2,5),
(293,'Sutrisno',2,5),
(294,'Sugeng R',2,5),
(295,'Mbah Siti',1,5),
(296,'Cak mat baihaqi',2,5),
(297,'Firman ady bopeng',2,4),
(298,'Yaati kos erwin',2,4),
(299,'Toari',2,4),
(300,'Sugeng R',2,5),
(301,'M amin',2,5);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id_user`,`nama_lengkap`,`nama_user`,`username`,`password`,`ket_pass`,`level`) values 
(1,'Moch. Firman Firdaus','Firman','firman','e79c7323f62151abde47e29987b38859','akusayangkamu',1),
(3,'Farida Nur Zeha','Farida','admin','b34b40ca8771c48c204e55f927376885','okedeh',1),
(5,'Moch Firdi Widiansya','Widi','widi','f20a698699ddd337ae993089c08cd0fb','wada',1),
(6,'Teguh Ramadhan','Teguh','teguh','f5cd3a020bc94866049206a7cf14e266','teguh',2),
(7,'Bima Anugerah','Bima','bima','7fcba392d4dcca33791a44cd892b2112','bima',4),
(8,'Mr. Sekretaris','Sekretaris','sekretaris','ce1023b227de5c34b98c470cda4699bb','sekretaris',2),
(9,'Mr. Petugas','Petugas','petugas','afb91ef692fd08c445e8cb1bab2ccf9c','petugas',4),
(10,'Tes Petugas1','Tes Petugas1','petugas1','b53fe7751b37e40ff34d012c7774d65f','petugas1',4),
(11,'Tes Petugas2','Petugas2','petugas2','ac5604a8b8504d4ff5b842480df02e91','petugas2',4),
(12,'Tes Petugas3','Petugas3','petugas3','6f7dc121bccfd778744109cac9593474','petugas3',4),
(13,'Tes Petugas4','Petugas4','petugas4','95c477e4932b3b16500674c18fb6f9a4','petugas4',4);

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
) ENGINE=InnoDB AUTO_INCREMENT=422 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_zakat_fitrah` */

insert  into `tbl_zakat_fitrah`(`id_zakat_fitrah`,`nama_pemberi_zakat`,`besaran_jiwa`,`beras`,`uang`,`alamat`,`tanggal`,`petugas`) values 
(1,'Bapak suwandi',1,'2.8','','RT 01','2020-05-14','Firman'),
(2,'Ibu sehati',1,'2.8','','RT 01','2020-05-14','Firman'),
(3,'Marinda salsabila',1,'2.8','','RT 01','2020-05-14','Firman'),
(4,'Bapak Fauzan ',1,'2.8','','RT 01','2020-05-14','Firman'),
(5,'Ibu sulastri',1,'2.8','','RT 01','2020-05-14','Firman'),
(6,'Nauval vito w',1,'2.8','','RT 01','2020-05-14','Firman'),
(7,'Donito cello a',1,'2.8','','RT 01','2020-05-14','Firman'),
(8,'Bapak Gatot',4,'11.2','','Janti, RT 20, RW 01','2020-05-15','RIZKI'),
(9,'Bapak ali',3,'8.399999999999999','','RT 03 RW 01','2020-05-16','RIZKI'),
(10,'Bpk suwadi',3,'8.399999999999999','','Rt 03','2020-05-17','hafid'),
(11,'Bpk jainuri',2,'5.6','','Rt 03','2020-05-17','hafid'),
(12,'Ibu diah',3,'8.399999999999999','','RT 20 RW 01','2020-05-17','hafid'),
(13,'Agus',1,'2.8','','RT 20','2020-05-17','hafid'),
(14,'Andiiana',1,'2.8','','RT 20','2020-05-17','hafid'),
(15,'Keisyah',1,'2.8','','RT 20','2020-05-17','hafid'),
(16,'Hafiz',1,'2.8','','RT 20','2020-05-17','hafid'),
(17,'Bu sri amah',2,'5.6','','Janti, RT 02, RW 01','2020-05-17','RIZKI'),
(18,'Bapak Arofiq',2,'5.6','','Janti, RT 02, RW 01','2020-05-17','RIZKI'),
(19,'Bapak khambali',1,'2.8','','Janti, RT 02, RW 01','2020-05-17','RIZKI'),
(20,'Ibu jamilah',1,'2.8','','Janti, RT 02, RW 01','2020-05-17','RIZKI'),
(21,'Bu siti nur khomariah',1,'2.8','','Janti, RT 02, RW 01','2020-05-17','RIZKI'),
(22,'Bapak Udin',3,'8.399999999999999','','Janti, RT 02, RW 01','2020-05-17','RIZKI'),
(23,'Bapak boedy soesanto',6,'16.799999999999997','','Rt 19, RW 01','2020-05-17','hafid'),
(24,'Septi',2,'5.6','','RT 02 RW 01','2020-05-17','hafid'),
(25,'Bpk mito',2,'5.6','','RT 20 RW 01','2020-05-17','hafid'),
(26,'M. Zuli Rohman',1,'2.8','32000','RT 03 RW 01','2020-05-17','hafid'),
(27,'Bpk shoki',1,'2.8','','RT 03 RW 01','2020-05-17','hafid'),
(28,'Bpk ibrahim',6,'16.799999999999997','','RT 03 RW 01','2020-05-17','hafid'),
(29,'Bpk Syaichu',3,'8.399999999999999','','RT 02 RW 01','2020-05-17','hafid'),
(30,'Bpk nanang',6,'16.799999999999997','','RT 02 RW 01','2020-05-17','hafid'),
(31,'Bpk Robin',7,'19.599999999999998','224000','Tropodo','2020-05-17','hafid'),
(32,'Ibu napsiyah',3,'8.399999999999999','','RT.20','2020-05-17','WAWAN'),
(33,'Febrika p.',2,'5.6','','RT.20','2020-05-17','WAWAN'),
(34,'Bu faizatul',2,'5.6','','RT.20','2020-05-17','WAWAN'),
(35,'Bp. Tas\'an',2,'5.6','','RT.20','2020-05-17','WAWAN'),
(36,'Jahid',1,'2.8','','RT.20','2020-05-17','WAWAN'),
(37,'Bp. Mugiono',3,'8.399999999999999','','RT.20','2020-05-17','WAWAN'),
(38,'Hadi z.',2,'5.6','','RT.20','2020-05-17','WAWAN'),
(39,'Bp. Nanang',3,'8.399999999999999','','RT.20','2020-05-17','WAWAN'),
(40,'Bp. Roni',4,'11.2','','RT.20','2020-05-17','WAWAN'),
(41,'Sulanto',4,'11.2','','RT19','2020-05-17','SYAHRUL'),
(42,'Yogi',3,'8.399999999999999','','RT19','2020-05-17','SYAHRUL'),
(44,'Firman',3,'8.399999999999999','','RT19','2020-05-17','SYAHRUL'),
(45,'Agus',2,'5.6','','RT19','2020-05-17','SYAHRUL'),
(46,'Supridi',2,'5.6','','RT19','2020-05-17','SYAHRUL'),
(47,'Sugeng Purnomo',3,'8.399999999999999','','RT19','2020-05-17','SYAHRUL'),
(48,'Bapak lindung',2,'5.6','','Wadung asri','2020-05-18','RIZKI'),
(49,'Bu endang',1,'2.8','','Brigjenkatamso 5 no 128','2020-05-18','Rafli'),
(50,'Wiwik',3,'8.399999999999999','96000','GSI','2020-05-18','FIAN'),
(51,'Nur wicaksono',2,'5.6','64000','Rt 01 Rw 01','2020-05-18','FIAN'),
(52,'Mujiono',2,'5.6','','Janti , RT 18 RW 01','2020-05-18','FIAN'),
(53,'H Suprapto ',2,'5.6','','RT 18 RW01','2020-05-18','FIAN'),
(54,'Bpk Agus Sugiantoro',6,'16.799999999999997','192000','RT02 RW01','2020-05-18','FIAN'),
(55,'Bpk M Amin',5,'14','','RT 19 RW01','2020-05-18','FIAN'),
(56,'Sugeng',3,'8.399999999999999','','RT19','2020-05-18','RIZKI'),
(57,'Kamiso',1,'2.8','','RT19','2020-05-18','RIZKI'),
(58,'Bpak Riva',4,'11.2','128000','RT03','2020-05-18','RIZKI'),
(59,'Bu Susi Ani',3,'8.399999999999999','','RT02','2020-05-18','Rafli'),
(60,'Bpk. Kasmidi',5,'14','','RT02','2020-05-18','Rafli'),
(61,'Bpk. Abdul Karim',4,'11.2','','RT02','2020-05-18','Rafli'),
(62,'Bpk. Kholil',6,'16.799999999999997','','RT02','2020-05-18','Rafli'),
(63,'Ibu Khusnul',2,'5.6','','RT03','2020-05-18','Rafli'),
(64,'Wahyu',3,'8.399999999999999','','RT02','2020-05-18','Rafli'),
(65,'Bpk.Socheh',5,'14','','Janti RT 02','2020-05-18','Rafli'),
(66,'Bapak dimas',1,'2.8','','RT 20 RW 01','2020-05-18','Rafli'),
(67,'Bapak ponco',4,'11.2','128000','Janti, RT 20, RW 01','2020-05-18','RIZKI'),
(68,'Bapak wahyudi',4,'11.2','','Janti, RT 20, RW 01','2020-05-18','RIZKI'),
(69,'Bapak eko',4,'11.2','','RT 03 RW 01','2020-05-18','Rafli'),
(70,'Bu lailatul',4,'11.2','','Janti RT 03 RW 01','2020-05-18','Rafli'),
(71,'Bu Ameni',3,'8.399999999999999','','Janti RT.18','2020-05-18','SYAHRUL'),
(72,'Pak Ali Mustaqim',5,'14','','Janti RT.03','2020-05-18','SYAHRUL'),
(73,'Bpk. Soemedi',2,'5.6','','RT01','2020-05-18','FIAN'),
(74,'Bpk. Khoirul anam',4,'11.2','','RT01','2020-05-18','FIAN'),
(75,'Bapak Mujianto',3,'8.399999999999999','','Janti RT.19 ','2020-05-18','SYAHRUL'),
(76,'Bapak Bambang ',3,'8.399999999999999','','Janti RT.19','2020-05-18','SYAHRUL'),
(77,'Bapak Miftahuddin',2,'5.6','','Janti RT.19','2020-05-18','SYAHRUL'),
(78,'Bp. Bisar',4,'11.2','','RT.20','2020-05-18','WAWAN'),
(79,'H. Sukani',1,'2.8','','RT.20','2020-05-18','WAWAN'),
(80,'Bpk imron',3,'8.399999999999999','','RT 18 RW 01','2020-05-19','hafid'),
(81,'Bpk sotomin',2,'5.6','','RT 18 RW 01','2020-05-19','hafid'),
(82,'Bpk sumali',2,'5.6','','RT 03 RW 01','2020-05-19','hafid'),
(83,'Bapak firman',3,'8.399999999999999','96000','Rt 18 Rw 01','2020-05-19','hafid'),
(84,'Ibu anita',2,'5.6','64000','Brigjend katamso non9a','2020-05-19','hafid'),
(85,'Ibu heri suhartati',4,'11.2','','Graha tirta dahlia 3','2020-05-19','hafid'),
(86,'Bpk taufik',4,'11.2','','wisma tropodo jlm srayu block bj no 3','2020-05-19','hafid'),
(87,'Bpk Much Sofii',2,'5.6','64000','RT 18 RW 01','2020-05-19','hafid'),
(88,'Bpk adi',4,'11.2','128000','Graha tirta perum boughenvil','2020-05-19','hafid'),
(89,'Bpk poniran',3,'8.399999999999999','','RT 18 RW 01','2020-05-19','hafid'),
(90,'Bpk jaswadi',2,'5.6','','RT 18 RW 01','2020-05-19','hafid'),
(91,'Bu nur mahmuda',2,'5.6','','RT 18 RW 01','2020-05-19','hafid'),
(92,'Bpk mulyo santoso',5,'14','','RT 19 RW 01','2020-05-19','hafid'),
(93,'Much nawawi jalaludin',1,'2.8','','RT 18 RW 01','2020-05-19','hafid'),
(94,'Bpk aris ariyanto',4,'11.2','128000','Balongpo','2020-05-19','hafid'),
(95,'Bpk eko',6,'16.799999999999997','192000','Makariya','2020-05-19','hafid'),
(96,'Bpk. Arif',5,'14','','RT01','2020-05-19','hafid'),
(97,'Bkp. Khamim',3,'8.399999999999999','','RT02','2020-05-19','hafid'),
(98,'Bpk. Rifki',3,'8.399999999999999','','RT02','2020-05-19','hafid'),
(99,'Bpk. Satria',8,'22.4','','Jl. Raung No15. Pepelegi','2020-05-19','hafid'),
(100,'Bpk. Mahmud',3,'8.399999999999999','','Graha Tirta Raya','2020-05-19','hafid'),
(101,'H.Mulyadi',1,'2.8','','RT 18 ','2020-05-19','hafid'),
(102,'Bpk. Abdilah Setiawan',3,'8.399999999999999','','RT01','2020-05-19','Rafli'),
(103,'Bpk. Sueb',11,'33.599999999999994','','RT18','2020-05-19','Rafli'),
(104,'Bpk. Misbahul arifin',5,'14','','RT02','2020-05-19','Rafli'),
(105,'Wahyu Romadhony',1,'2.8','32000','Magetan','2020-05-19','Rafli'),
(106,'Bpk. Aksin',3,'8.399999999999999','','RT02','2020-05-19','Rafli'),
(107,'Bpk.Burhan',3,'8.399999999999999','','RT 02','2020-05-19','Rafli'),
(109,'Bpk.Purnomo',5,'14','','RT 19','2020-05-19','Rafli'),
(110,'Bpk. David',2,'5.6','','RT02','2020-05-19','Rafli'),
(111,'Sujito',3,'8.399999999999999','','Rt 02','2020-05-19','Rafli'),
(112,'Bp. Fadil',2,'5.6','','RT.20','2020-05-19','WAWAN'),
(113,'Bp. Suwandi',2,'5.6','','RT.20','2020-05-19','WAWAN'),
(114,'Bp. Imam s.',4,'11.2','','RT.20','2020-05-19','WAWAN'),
(115,'Bp. Mukirom',3,'8.399999999999999','','RT.20','2020-05-19','WAWAN'),
(116,'Rojikin',3,'8.399999999999999','','RT.20','2020-05-19','WAWAN'),
(117,'Bp. Mahfud',4,'11.2','','RT.20','2020-05-19','WAWAN'),
(118,'Candra',1,'2.8','','RT.20','2020-05-19','WAWAN'),
(119,'Bpk. Kojin',2,'5.6','','RT19','2020-05-19','SYAHRUL'),
(120,'Bu Suharnik',4,'11.2','','RT19','2020-05-19','SYAHRUL'),
(121,'Bapak samsul huda',4,'11.2','','Rt 2 rw 1 jant','2020-05-20','FIAN'),
(122,'Bapak suryanto',3,'8.399999999999999','','Janti rt 3 rw 1','2020-05-20','FIAN'),
(123,'Jamilil',4,'11.2','','Graha tirta','2020-05-20','FIAN'),
(124,'Rizal',2,'5.6','','Brigjen katamso gang V e','2020-05-20','FIAN'),
(125,'Rendy',2,'5.6','','RT 18 RW 1','2020-05-20','FIAN'),
(126,'Ibu Aisyah',2,'5.6','',' RT 03 RW 01','2020-05-20','FIAN'),
(127,'Bapak mad zakarya',2,'5.6','','Janti rt 03 rw 01','2020-05-20','FIAN'),
(128,'Bpk. Naimun',5,'14','','RT03','2020-05-20','FIAN'),
(129,'Ibu Linasih',1,'2.8','','RT 03 ','2020-05-20','FIAN'),
(130,'Bapak Ardi Kushartantyo',4,'11.2','128000','Makarya Binangun Xa/12','2020-05-20','FIAN'),
(131,'Bpk Sigit',3,'8.399999999999999','','RT 03 RW 01','2020-05-20','FIAN'),
(132,'Ibu Siamah',3,'8.399999999999999','','RT18 RW01','2020-05-20','FIAN'),
(133,' Bpk.Choiruddin ',4,'11.2','','RT 18','2020-05-20','FIAN'),
(134,'Bpk.Mad J',4,'11.2','','RT 18','2020-05-20','FIAN'),
(135,'Bpk.Zainuri',3,'8.399999999999999','','RT 18','2020-05-20','FIAN'),
(136,'Bok Rokhim',5,'14','','Rt 19 Rw 01','2020-05-20','FIAN'),
(137,'Ibu rani',4,'11.2','','Rt 19 Rw 01','2020-05-20','FIAN'),
(138,'Bpk Taufik',4,'11.2','','RT 19','2020-05-20','FIAN'),
(139,'Bu Ismiati',1,'2.8','','RT 19','2020-05-20','FIAN'),
(140,'H Jufri',2,'5.6','','RT 03 RW 01','2020-05-20','FIAN'),
(141,'Bpk Munasan',5,'14','','RT 01 RW 01','2020-05-20','FIAN'),
(142,'Bpk Sunarto',8,'22.4','','RT 19 RW 01','2020-05-20','FIAN'),
(143,'Hari Supriyadi',3,'8.399999999999999','96000','RT. 03 RT. 01 Janti','2020-05-20','FIAN'),
(144,'Rumanto',2,'5.6','','Makarya Binangun H-12','2020-05-20','FIAN'),
(145,'Bpk Haru',3,'8.399999999999999','96000','RT 20 RW 01','2020-05-20','FIAN'),
(146,'Bpk Mudji Surachman',5,'14','','RT 18 RW 01','2020-05-20','FIAN'),
(147,'Bpk Saiful',4,'11.2','','RT 02','2020-05-20','FIAN'),
(148,'Bpk Solikin',3,'8.399999999999999','','RT 01 RW 01','2020-05-20','FIAN'),
(149,'Ibu Aulia Roihana',2,'5.6','','RT 01 RW 01','2020-05-20','FIAN'),
(150,'Bpk Ulil',1,'2.8','','RT 01 RW 01','2020-05-20','FIAN'),
(151,'Bpk Sapii',3,'8.399999999999999','','RT 01 RW 01','2020-05-20','FIAN'),
(153,'Ibu Poniati',2,'5.6','','RT 01 RW 01','2020-05-20','FIAN'),
(154,'Bpk Prabowo',4,'11.2','','RT 01 RW 01','2020-05-20','FIAN'),
(155,'Ibu Winda',3,'8.399999999999999','','RT 01 RW 01','2020-05-20','FIAN'),
(156,'Siska',3,'8.399999999999999','','RT 01 RW 01','2020-05-20','FIAN'),
(158,'M Apriadi S',2,'5.6','','RT 01 RW 01','2020-05-20','FIAN'),
(159,'Bpk Supri',3,'8.399999999999999','','RT 01 RW 01','2020-05-20','FIAN'),
(160,'Bpk Rowi',2,'5.6','','RT 01 RW 01','2020-05-20','FIAN'),
(161,'Bpk Hasyim',4,'11.2','','RT 01 RW 01','2020-05-20','FIAN'),
(162,'Hamsah',4,'11.2','128000','Janti rt 03','2020-05-20','FIAN'),
(163,'Argi',6,'16.799999999999997','','Janti rt 03','2020-05-20','FIAN'),
(164,'H. Tri Kardi. S',3,'8.399999999999999','','Janti RT.19 RW.01','2020-05-20','SYAHRUL'),
(165,'Tri Kardi Astuti',1,'2.8','','Janti RT.19 RW.01','2020-05-20','SYAHRUL'),
(166,'Bapak. H. Mutholib',1,'2.8','','Janti RT.19 RW.01','2020-05-20','SYAHRUL'),
(167,'Bp.sukarji',2,'5.6','','RT.20','2020-05-20','WAWAN'),
(168,'Bp. Sayuti',1,'2.8','','RT.20','2020-05-20','WAWAN'),
(169,'Bp.khoirul',2,'5.6','','RT.20','2020-05-20','WAWAN'),
(171,'Bapak isa',7,'19.599999999999998','','Janti RT 2 RW 1','2020-05-21','FIAN'),
(172,'Bapak panut dan ibu sulasih',2,'5.6','','Janti','2020-05-21','FIAN'),
(173,'Agus s',5,'14','160000','Rt 02','2020-05-21','WAWAN'),
(174,'Anton',12,'33.599999999999994','','Rt 19','2020-05-21','WAWAN'),
(175,'Bp. Rahman',3,'8.399999999999999','','Rt. 02','2020-05-21','WAWAN'),
(176,'Mulyo H',3,'8.399999999999999','','Rt 01','2020-05-21','WAWAN'),
(177,'Hafidz',3,'8.399999999999999','','Rt 02','2020-05-21','WAWAN'),
(178,'Jihan ',1,'2.8','','Kureksari','2020-05-21','WAWAN'),
(179,'Bp. Mansur',5,'14','','Rt. 03','2020-05-21','WAWAN'),
(180,'Bp. Kistoro',2,'5.6','','Rri','2020-05-21','WAWAN'),
(181,'Bp. Sukaji',1,'2.8','','Rt. 18','2020-05-21','WAWAN'),
(182,'Bp. Sobik',2,'5.6','','Rt. 18','2020-05-21','WAWAN'),
(183,'Siti ma\'rufah',3,'8.399999999999999','','RT.20','2020-05-21','WAWAN'),
(184,'Siti anisa',1,'2.8','','Siwalan kerto','2020-05-21','WAWAN'),
(185,'Fajar H',2,'5.6','','Siwalan kerto','2020-05-21','WAWAN'),
(186,'Bpk Amusiri',4,'11.2','128000','Balongpoh','2020-05-21','WAWAN'),
(187,'Bapak adrianto',4,'11.2','','RT 19, RW 01','2020-05-21','RIZKI'),
(188,'Bapak adi',4,'11.2','','RT 19, RW 01','2020-05-21','RIZKI'),
(189,'Mas Wawan',3,'8.399999999999999','96000','RT 19','2020-05-21','RIZKI'),
(190,'Bpk Muji',3,'8.399999999999999','','RT. 20','2020-05-21','RIZKI'),
(191,'Syarifudin',2,'5.6','','RT 20','2020-05-21','RIZKI'),
(192,'Bpk Nuri',3,'8.399999999999999','','RT 20','2020-05-21','Rafli'),
(193,'Bpk Alex',3,'8.399999999999999','96000','RT 02','2020-05-21','Rafli'),
(194,'Bpk Asep',3,'8.399999999999999','','RT 02','2020-05-21','Rafli'),
(195,'Bpk Mahfud',3,'8.399999999999999','','RT 19','2020-05-21','Rafli'),
(196,'Bapak imam',1,'2.8','','Janti, RT 02, RW 01','2020-05-21','RIZKI'),
(197,'Bapak arifin',4,'11.2','','Janti, RT 02, RW 01','2020-05-21','RIZKI'),
(198,'Pak Adi. lukmanto',4,'11.2','128000','Rt 18 ','2020-05-21','Rafli'),
(199,'Bpk Sumijo',5,'14','','RT 01','2020-05-21','Rafli'),
(200,'Bu Diana',2,'5.6','','RT 01','2020-05-21','Rafli'),
(201,'Bapak. Hery',1,'2.8','','Rt 18 rw. 01','2020-05-21','Rafli'),
(202,'Alfin',2,'5.6','','Rt. 03 Rw 01','2020-05-21','Rafli'),
(203,'Bapak. Malik',1,'2.8','','Rt. 18 Rw 01','2020-05-21','Rafli'),
(204,'Bapak Subangga ',7,'19.599999999999998','224000','Jl. Jatayu U23 - Rewwin','2020-05-21','Rafli'),
(205,'Ibu siti',4,'11.2','','Janti rt.02','2020-05-21','Rafli'),
(206,'Bapak. Sunaryo',11,'30.799999999999997','','Rt 1 Rw 1','2020-05-21','Rafli'),
(207,'Bapak nur',2,'5.6','64000','RT 18','2020-05-21','Rafli'),
(208,'Bapak Bambang',4,'11.2','','RT 03','2020-05-21','Rafli'),
(209,'Bapak Irfan',3,'8.399999999999999','','RT 03','2020-05-21','Rafli'),
(210,'Bapak Nasichin',4,'11.2','128000','RT 01','2020-05-21','Rafli'),
(211,'Bapak Bani',13,'36.4','','RT 20','2020-05-21','Rafli'),
(212,'Bapak Taufiq',4,'11.2','','RT 19','2020-05-21','Rafli'),
(213,'Maulana',3,'8.399999999999999','','RT 19','2020-05-21','Rafli'),
(214,'Bapak Jalil',4,'11.2','128000','RT 19','2020-05-21','Rafli'),
(215,'Bapak Paijo Rustam',4,'11.2','','Makarya Binangun','2020-05-21','Rafli'),
(216,'Riski',1,'2.8','','RT 19','2020-05-21','Rafli'),
(217,'Bunda',1,'2.8','','RT 19','2020-05-21','Rafli'),
(218,'Fajar nur laba',4,'11.2','','RT 02 Rw 01','2020-05-21','Rafli'),
(219,'Mas andi',4,'11.2','','RT 19 RW 01','2020-05-21','Rafli'),
(220,'Bapak Mangsor Ali',5,'14','','Siwalankerto','2020-05-21','Rafli'),
(221,'Baitul',1,'2.8','','RT 02','2020-05-21','Rafli'),
(222,'Kiara',1,'2.8','','RT 02','2020-05-21','Rafli'),
(223,'Bapak Slamet',5,'14','','RT 02','2020-05-21','Rafli'),
(224,'Bapak Rasidi',3,'8.399999999999999','','RT 19','2020-05-21','Rafli'),
(225,'Duki Randika',3,'8.399999999999999','','RT 19','2020-05-21','Rafli'),
(226,'Juanto',2,'5.6','','RT 20','2020-05-21','Rafli'),
(227,'Grendis',7,'19.599999999999998','','RT 01','2020-05-21','Rafli'),
(228,'Bapak Yanto',5,'14','','RT 03','2020-05-21','Rafli'),
(229,'Bpk.Safrudin',4,'11.2','','RT 02','2020-05-21','Rafli'),
(230,'Bpk.Narto',4,'11.2','','RT.02','2020-05-21','Rafli'),
(231,'Bpk samian',3,'8.399999999999999','','Rt. 02. Rw 01','2020-05-21','Rafli'),
(233,'Ghofur',4,'11.2','','RT.20','2020-05-21','WAWAN'),
(234,'Tugino',2,'5.6','','RT.20','2020-05-21','WAWAN'),
(235,'Agus',3,'8.399999999999999','','RT.20','2020-05-21','WAWAN'),
(236,'Alfi',3,'8.399999999999999','','RT.20','2020-05-21','WAWAN'),
(237,'Bu mun',2,'5.6','','RT.20','2020-05-21','WAWAN'),
(238,'Khasan',2,'5.6','','RT.20','2020-05-21','WAWAN'),
(239,'Mahfudon',5,'14','','RT.20','2020-05-21','WAWAN'),
(240,'Mislan',4,'11.2','','RT.20','2020-05-21','WAWAN'),
(241,'Feri',3,'8.399999999999999','','RT.20','2020-05-21','WAWAN'),
(242,'Yauman',2,'5.6','','RT.20','2020-05-21','WAWAN'),
(243,'Haryono',2,'5.6','','RT.20','2020-05-21','WAWAN'),
(244,'Minarno',6,'16.799999999999997','','RT.20','2020-05-21','WAWAN'),
(245,'Warto',4,'11.2','','RT.20','2020-05-21','WAWAN'),
(246,'Bapak Purnomo',1,'2.8','','Janti RT.19 RW.01','2020-05-21','SYAHRUL'),
(247,'Ibu Nur Majida',1,'2.8','','Janti RT.19 RW.01','2020-05-21','SYAHRUL'),
(248,'Bu Diah',2,'5.6','','Janti RT.19 RW.01','2020-05-21','SYAHRUL'),
(249,'Bapak Andri ',2,'5.6','','Janti RT.19 RW.01','2020-05-21','SYAHRUL'),
(250,'Bapak Sukardi',2,'5.6','','Janti RT.19 RW.01','2020-05-21','SYAHRUL'),
(251,'Samsul',2,'5.6','','Janti RT.19 RW.01','2020-05-21','SYAHRUL'),
(252,'Bpk Rodhi',5,'14','','RT 02','2020-05-21','SYAHRUL'),
(253,'Ryan',1,'2.8','','RT 02','2020-05-21','Rafli'),
(254,'Bapak Didit',4,'11.2','','RT 02','2020-05-21','Rafli'),
(255,'Bapak Weli',3,'8.399999999999999','','RT 20','2020-05-22','Rafli'),
(256,'Bu Rusmiati',2,'5.6','','RT 02','2020-05-22','Rafli'),
(257,'Bapak Manali',2,'5.6','','RT 03','2020-05-22','Rafli'),
(258,'Bapak Edi Sutrisno',4,'11.2','128000','RT 20','2020-05-22','Rafli'),
(259,'Bapak miswanto',3,'8.399999999999999','','RT 20 RW 01','2020-05-22','Rafli'),
(260,'Bapak agus purnomo',4,'11.2','','RT 20 RW 01','2020-05-22','Rafli'),
(261,'Ibu ifa',3,'8.399999999999999','','RT 03 RW 01','2020-05-22','Rafli'),
(262,'Bpk. Salim',5,'14','','RT02','2020-05-22','Widi'),
(263,'Bpk. Sugeng Adi Purnomo',10,'28','','RT01','2020-05-22','Widi'),
(264,'Ratna',1,'2.8','','RT19','2020-05-22','Widi'),
(265,'Bpk. Sukri',5,'14','','RT18','2020-05-22','Widi'),
(266,'Bpk. Uslan',1,'2.8','32000','Jl. Brigjen katamso RT01 ','2020-05-22','Widi'),
(267,'Nasifa, Fadila, Friska',3,'8.399999999999999','','Janti','2020-05-22','Widi'),
(268,'Bpk. Sunari',4,'11.2','','RT02','2020-05-22','Widi'),
(269,'Bpk. Wahyu Triatmojo',4,'11.2','128000','Perum RRI Blog B13','2020-05-22','Widi'),
(270,'Bpk. Dayat',4,'11.2','','RT03','2020-05-22','Widi'),
(271,'Hj. Muawanah',1,'2.8','','RT 02 RW 01','2020-05-22','Rafli'),
(272,'Bapak agus',4,'11.2','','RT 02 RW 01','2020-05-22','Rafli'),
(273,'H. Ruddy',5,'14','','Jl. Bougenvil no. 74 graha tirta','2020-05-22','Rafli'),
(274,'Ibu Zahro',3,'8.399999999999999','','Janti rt 2','2020-05-22','Rafli'),
(275,'Bapak fatkur',4,'11.2','','Rt 18','2020-05-22','Rafli'),
(277,'Bpk. Allun Senjaya',3,'8.399999999999999','96.000','Makarya Binangun A5','2020-05-22','Rafli'),
(278,'Bpk Achmad junaidi a',2,'5.6','','Rt 3 rw 01','2020-05-22','Rafli'),
(279,'Bpk. Anang',5,'14','','RT20','2020-05-22','Rafli'),
(280,'Bpk. Kadiono',6,'16.799999999999997','','RT01','2020-05-22','Rafli'),
(281,'Ibu luluk masrufah',1,'2.8','32000','','2020-05-22','Rafli'),
(282,'Bpk Rizki',5,'14','','Rewwin','2020-05-22','Rafli'),
(283,'Bpk. Aris Cahyadi',3,'25.2','','Jl. Brigjen Katamso','2020-05-22','Widi'),
(284,'Bpk. Eko',3,'8.399999999999999','','RT19','2020-05-22','Widi'),
(285,'Bpk. Saipul',1,'2.8','','RT18','2020-05-22','RIZKI'),
(286,'Ugik Sutipto',2,'5.6','','RT02','2020-05-22','RIZKI'),
(287,'Bapak Arif',5,'14','','RT02','2020-05-22','RIZKI'),
(288,'Bpk. Ghofur',4,'11.2','','RT02','2020-05-22','RIZKI'),
(289,'Bpk. Luqmanul',3,'8.399999999999999','','RT20','2020-05-22','RIZKI'),
(290,'Bpk. Sukirman',3,'8.399999999999999','','RT01','2020-05-22','RIZKI'),
(291,'Bpk. Kholil',4,'11.2','','RT03','2020-05-22','RIZKI'),
(292,'Bpk. Achmad',4,'11.2','128000','Tirta Burgenvil','2020-05-22','RIZKI'),
(293,'Bpk. Mardi',2,'5.6','','Janti','2020-05-22','RIZKI'),
(294,'Bpk. Marwah Dhani',2,'5.6','64000','Sidoarjo','2020-05-22','RIZKI'),
(295,'Bu Yati',3,'8.399999999999999','','RT02','2020-05-22','RIZKI'),
(296,'Bapak hendra',4,'11.2','128000','Rt 20','2020-05-22','RIZKI'),
(297,'Bapak samian',4,'11.2','','Rt01','2020-05-22','RIZKI'),
(298,'Delfi anjani',3,'8.399999999999999','','Rt 03','2020-05-22','RIZKI'),
(299,'Bu khotimah',1,'2.8','','Rt 03','2020-05-22','RIZKI'),
(300,'Pak eko',3,'8.399999999999999','','Tirta bougenvil','2020-05-22','RIZKI'),
(301,'Bpk. Matakub',4,'11.2','','Janti','2020-05-22','RIZKI'),
(302,'Bpk. Bambang',9,'25.2','','Tirta Bugenvil 44','2020-05-22','RIZKI'),
(303,'Mbah Sutomo',7,'19.599999999999998','','RT01','2020-05-22','RIZKI'),
(304,'Bpk. Samsul',4,'11.2','','Rt02','2020-05-22','RIZKI'),
(305,'Bpk. Siswanto',4,'11.2','','RT20','2020-05-22','RIZKI'),
(306,'Ibu Akhadiyah',3,'8.399999999999999','','Gg. 5 C','2020-05-22','RIZKI'),
(307,'H. Nuril Huda',5,'14','','RT20','2020-05-22','RIZKI'),
(308,'Bpk. Jawani',6,'16.799999999999997','','RT02','2020-05-22','RIZKI'),
(309,'Bpk. Suyanto',3,'8.399999999999999','','Rat19','2020-05-22','RIZKI'),
(310,'Bpk. Wawan',2,'5.6','64000','Gg.V 171','2020-05-22','RIZKI'),
(311,'Bpk. Nayik',1,'2.8','','RT03','2020-05-22','RIZKI'),
(312,'Bpk. Iwan',5,'14','160000','RT07','2020-05-22','RIZKI'),
(313,'Bpk. Rohmat T.',5,'14','','RT01','2020-05-22','RIZKI'),
(314,'Bpk. Dicky',5,'14','160000','Tirta Skasiyah','2020-05-22','RIZKI'),
(315,'Bpk. Sulton',8,'22.4','','RT01','2020-05-22','RIZKI'),
(316,'Bpk. Tio',2,'5.6','','Wedoro','2020-05-22','RIZKI'),
(317,'Bpk. Ayid',4,'11.2','','RT02','2020-05-22','RIZKI'),
(318,'Bpk. Puji',3,'8.399999999999999','','RT18','2020-05-22','RIZKI'),
(319,'Bpk. Fajar P',3,'8.399999999999999','','Jl. Wilis kepuh permai','2020-05-22','RIZKI'),
(320,'Bpk. Hadi',6,'16.799999999999997','','RT03','2020-05-22','RIZKI'),
(321,'Ibu Umi',2,'5.6','','RT18','2020-05-22','RIZKI'),
(322,'Bpk. Ubed',2,'5.6','','RT02','2020-05-22','RIZKI'),
(323,'Situ nur hasanah',3,'8.399999999999999','','RT01','2020-05-22','RIZKI'),
(324,'Bpk. Jahuri',3,'8.399999999999999','','RT02','2020-05-22','RIZKI'),
(325,'Ibu sami',4,'11.2','','RT2','2020-05-22','RIZKI'),
(326,'Bpk. Usman',3,'8.399999999999999','','Rt03','2020-05-22','RIZKI'),
(327,'Bpk. Samiran',5,'14','','RT18','2020-05-22','RIZKI'),
(328,'Bpk. Supriono',5,'14','','RT01','2020-05-22','RIZKI'),
(329,'Bpk.  Ermahadi',3,'8.399999999999999','','RT19','2020-05-22','RIZKI'),
(330,'Bpk. Sumarlan',4,'11.2','','RT01','2020-05-22','RIZKI'),
(331,'Bpk. Sadali',4,'11.2','','RT02','2020-05-22','RIZKI'),
(332,'Bpk. Firdaus Faisal',3,'8.399999999999999','','RRI','2020-05-22','RIZKI'),
(333,'Bpk. Hendri',3,'8.399999999999999','','Janti','2020-05-22','RIZKI'),
(334,'Bpk. Rudi',4,'11.2','128000','RT18','2020-05-22','RIZKI'),
(335,'Bpk. Roykhan',1,'2.8','32000','RT03','2020-05-22','RIZKI'),
(336,'Bpk. Herianto s',6,'16.799999999999997','192000','Ngingas','2020-05-22','RIZKI'),
(337,'Bpk. Hendri',2,'5.6','','RT18','2020-05-22','RIZKI'),
(338,'Bpk. Aris b',3,'8.399999999999999','','RT20','2020-05-22','RIZKI'),
(339,'Bpk. Hariono',4,'11.2','','RT02','2020-05-22','RIZKI'),
(340,'Bpk. Haris S',5,'14','','Rt20','2020-05-22','RIZKI'),
(341,'Bpk. Irianto',3,'8.399999999999999','','RT02','2020-05-22','RIZKI'),
(342,'Bpk. Imron',4,'11.2','128000','RT02','2020-05-22','RIZKI'),
(343,'Bpk. Miftahul Hadi',5,'14','','RRI','2020-05-22','RIZKI'),
(344,'Imam Taufik',4,'11.2','','RT02','2020-05-22','RIZKI'),
(345,'Ibu Sundari',1,'2.8','','RT02','2020-05-22','RIZKI'),
(346,'Nuril',1,'2.8','','RT02','2020-05-22','RIZKI'),
(347,'Bpk. Jupri',3,'8.399999999999999','','RT02','2020-05-22','RIZKI'),
(348,'Ibu Sariya',1,'2.8','32000','RT03','2020-05-22','RIZKI'),
(349,'Bpk. Asiyah',1,'2.8','32000','RT02','2020-05-22','RIZKI'),
(350,'Ibu Nafsiyah',4,'11.2','130000','RT03','2020-05-22','RIZKI'),
(351,'Ust abdi',2,'5.6','','Rt 2','2020-05-23','Firman'),
(352,'Bpk, supriyanto',2,'5.6','','RT3','2020-05-23','Firman'),
(353,'Bpk. Dedik M',6,'16.799999999999997','','RT 18','2020-05-23','Firman'),
(354,'Bpk. Alauddin',4,'11.2','','Wedoro PP NOVENA','2020-05-23','Firman'),
(355,'Bpk tri wijaya yulianto, ibu krisna fitriani, putri berrly',3,'8.399999999999999','','Janti Gg 5D','2020-05-23','Firman'),
(356,'Bpk. Febri',3,'8.399999999999999','','Kavling bbc no 66','2020-05-23','Firman'),
(357,'Bpk. Gunawan',2,'5.6','','RT 01','2020-05-23','Firman'),
(358,'Bpk.kurniadi',2,'5.6','','RT 03','2020-05-23','Firman'),
(359,'Bpk. Saipul',2,'5.6','','RT 03','2020-05-23','Firman'),
(360,'Yanuindri ',3,'8.399999999999999','','RT 20','2020-05-23','Firman'),
(361,'Bpk. Sahid',2,'5.6','','RT 02','2020-05-23','Firman'),
(362,'Bpk. Shiwa',4,'11.2','','Rt 2','2020-05-23','Firman'),
(363,'Bpk. Sudjadmiko',7,'19.599999999999998','','RT 18','2020-05-23','Firman'),
(364,'Bpk. Heri wahyudi',4,'11.2','128000','Janti','2020-05-23','Firman'),
(365,'Bpk. Jalil',1,'2.8','','RT 2','2020-05-23','Firman'),
(366,'Miftachur Rozzaq',3,'8.399999999999999','','Jl. Anggrek 3 kureksari','2020-05-23','RIZKI'),
(367,'Abah gatot',7,'19.599999999999998','','Hanil jaya','2020-05-23','Firman'),
(368,'H. Syaiful Hadi',4,'11.2','','RT. 18 RW. 1 Janti Waru','2020-05-23','FIAN'),
(369,'Ari Kurniawan',6,'16.799999999999997','','Aa','2020-05-23','FIAN'),
(370,'Nur Azizah',1,'2.8','','RT. 13 RW. 02 Janti Waru','2020-05-23','FIAN'),
(371,'M. Hasyim',1,'2.8','','RT. 13 RW. 02 Janti','2020-05-23','FIAN'),
(372,'Kevin',1,'2.8','','RT. 13 RW. 02 Janti','2020-05-23','FIAN'),
(373,'Sochi Kadarusman',2,'5.6','','RT. 20 RW. 01 Janti Waru','2020-05-23','FIAN'),
(374,'Iman',1,'2.8','','Jambangan Sby','2020-05-23','FIAN'),
(375,'Siti Rukayah',1,'2.8','','Jambangan Sby.','2020-05-23','FIAN'),
(376,'Rosid',4,'11.2','','Janti RT.19 RW.01','2020-05-23','SYAHRUL'),
(377,'Ibu Susana',2,'5.6','','Janti RT.19 RW.01','2020-05-23','SYAHRUL'),
(378,'Adi ',3,'8.399999999999999','','Janti RT.19 RW.01','2020-05-23','SYAHRUL'),
(379,'Rama',1,'2.8','','Janti RT.19 RW.01','2020-05-23','SYAHRUL'),
(380,'Eddi darmawan',7,'19.599999999999998','','RT.20','2020-05-23','WAWAN'),
(381,'Saiful',5,'14','','RT.20','2020-05-23','WAWAN'),
(382,'Sumiati',1,'2.8','','RT.20','2020-05-23','WAWAN'),
(383,'Munasri',1,'2.8','','RT.20','2020-05-23','WAWAN'),
(384,'Topik',5,'14','','RT.20','2020-05-23','WAWAN'),
(385,'Angga',4,'11.2','','RT.20','2020-05-23','WAWAN'),
(386,'Arif',4,'11.2','','RT.20','2020-05-23','WAWAN'),
(387,'Gianto',6,'16.799999999999997','','RT.20','2020-05-23','WAWAN'),
(388,'Zainun',1,'2.8','','RT.20','2020-05-23','WAWAN'),
(389,'Bp.yulianto',3,'8.399999999999999','','RT.20','2020-05-23','WAWAN'),
(390,'Toni h.',5,'14','','RT.20','2020-05-23','WAWAN'),
(391,'Bp. Sipin',2,'5.6','','RT.20','2020-05-23','WAWAN'),
(392,'Novan',4,'11.2','','RT. 02 RW 01 Janti Waru','2020-05-23','RIZKI'),
(393,'M. Badrul Qomar',4,'11.2','','RT. 19 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(394,'Hamba Allah ',2,'5.6','','RT.20','2020-05-23','WAWAN'),
(395,'Didik Suprianto',6,'16.799999999999997','','RT. 18 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(396,'M. Yasin',5,'14','','RT. 02 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(397,'Abdur Rosyid',3,'8.399999999999999','','RT. 02 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(398,'M. Tohir',4,'11.2','','RT. 03 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(399,'Hermanto',1,'2.8','','RT. 18 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(400,'Kuwat',4,'11.2','128000','RT. 02 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(401,'Alfian Nur Rizky',1,'2.8','','RT. 02 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(402,'Alfianti Nur Rizky',1,'2.8','','RT. 02 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(403,'Bayu',5,'14','','RT. 02 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(404,'Dwi Ikhmawan',5,'14','160000','Surabaya','2020-05-23','RIZKI'),
(405,'Juwartatik',2,'5.6','','RT. 19 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(406,'Deny Oktavianto',1,'2.8','32000','Pengkol Kedungrejo','2020-05-23','RIZKI'),
(407,'Agus Nur Salim',5,'14','','RT. 18 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(408,'M. Nasrullah',5,'14','','RT. 03 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(409,'M. Rahmat Fahmi',3,'8.399999999999999','','RT. 03 RW. 01 Janti Waru','2020-05-23','RIZKI'),
(410,'Gus Fajar Rohmatullah',1,'2.8','','RT 02 ','2020-05-23','RIZKI'),
(411,'Pulung',10,'28','320000','Graha','2020-05-23','RIZKI'),
(412,'Setya april',1,'2.8','','Kedung rejo','2020-05-23','RIZKI'),
(413,'Kusmana mandiri',1,'2.8','','Graha','2020-05-23','RIZKI'),
(414,'Rizki vegasari',1,'2.8','','Graha','2020-05-23','RIZKI'),
(415,'Deandra azzahra',1,'2.8','','Graha','2020-05-23','RIZKI'),
(416,'Danendra alzio',1,'2.8','','Graha','2020-05-23','RIZKI'),
(417,'M iswahyu',1,'2.8','','Janti','2020-05-23','RIZKI'),
(418,'Isnuri',1,'2.8','','Janti','2020-05-23','RIZKI'),
(419,'Dicky',3,'8.399999999999999','96000','Janti','2020-05-23','RIZKI'),
(420,'Sulfi cahyani',1,'2.8','','Kedung','2020-05-23','RIZKI'),
(421,'Bondan Artandyo',5,'14','160000','Graha Tirta Dahlia 93','2020-05-23','RIZKI');

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
  `keterangan` text,
  PRIMARY KEY (`id_zakat_maal`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_zakat_maal` */

insert  into `tbl_zakat_maal`(`id_zakat_maal`,`nama_pemberi_zakat`,`kategori_zakat`,`nominal_zakat`,`alamat`,`tanggal`,`petugas1`,`petugas2`,`keterangan`) values 
(2,'Ibu Lina ','fidyah','150000','Rewwin','2020-05-17','hafid','','10 Hari'),
(16,'Lukman Hakim','maal','2000000','Graha Tirta Akasia No. 36','2020-05-13','Firman','',''),
(17,'Bu sri amah','is','10000','Janti, RT 02, RW 01','2020-05-17','RIZKI','',''),
(18,'Nanuk susilowati','fidyah','360000','Jln dewi sartika utara 6 pnge','2020-05-18','FIAN','','Zakan'),
(19,'Wiwik','is','4000','GSI','2020-05-18','FIAN','',''),
(20,'Bapak Mahmud','fidyah','120000','Janti Rt01.Rw01','2020-05-18','RIZKI','1','Tidak berpuasa 5 hari dikarenakan sakit'),
(21,'Bu Prapto','fidyah','240000','RT 18 RW 01','2020-05-18','FIAN','','Sakit '),
(22,'Bpk Agus Sugiantoro','is','18000','RT 02 RW 01','2020-05-19','hafid','',''),
(23,'Bpk. Riva','is','2000','RT03','2020-05-18','RIZKI','',''),
(24,'Munfaati karimah','fidyah','360000','RT02','2020-05-20','FIAN','','Menyusui / 30 hari'),
(25,'Bapak sigit','maal','100000','RT 02, RW 01','2020-05-18','Rafli','',''),
(26,'Wahyu Romadony','is','18000','Magetan','2020-05-19','Rafli','',''),
(27,'H. Abdul Manann','maal','500000','Wedoro masjid','2020-05-19','Rafli','',''),
(28,'Bpk Sunarto','is','50000','RT 19 RW 01','2020-05-20','FIAN','',''),
(29,'Hari Supriyadi','is','4000','RT. 03 RW. 01 Janti Waru','2020-05-20','FIAN','',''),
(31,'H. Sukani','is','300000','RT 20, RW 01','2020-05-20','Rafli','',''),
(32,'Bu suminten ( 30 hari )','fidyah','360000','Rt. 19','2020-05-21','WAWAN','','Lansia '),
(33,'Gangsar motor','maal','750000','Janti, RT 02, RW 01','2020-05-21','RIZKI','2',''),
(34,'Bapak sunaryo','is','50000','Rt 1 Rw 1','2020-05-21','Rafli','',''),
(35,'Bapak Slamet','is','50000','RT 02','2020-05-21','Rafli','',''),
(36,'Juanto','maal','200000','RT 20','2020-05-21','Rafli','',''),
(37,'Bu Kikis','maal','1000000','Makarya Binangun','2020-05-22','Rafli','',''),
(38,'Bapak sarip','is','100000','RT 03 RW 01','2020-05-22','Rafli','',''),
(39,'Ibu ifa','is','104000','RT 03 RW 01','2020-05-22','Rafli','',''),
(40,'Bpk. Sukri','is',' 250000','RT 18','2020-05-22','Firman','4',''),
(41,'Bpk. Dayat','is','150000','RT03','2020-05-22','Widi','',''),
(42,'Bpk. Allun senjaya','is','4000','Makarya Bnangun a5','2020-05-22','Rafli','',''),
(43,'Bpk. Kadiono','is','18000','RT01','2020-05-22','Rafli','',''),
(44,'Ibu luluk masrufah','is','38000','','2020-05-22','Rafli','',''),
(45,'Bpk. Samiran','is','5000','RT18','2020-05-22','RIZKI','',''),
(46,'Etik Purwoningsih','fidyah','25 kg','RT01','2020-05-22','RIZKI','',''),
(47,'Bpk.Rudi','is','2000','RT18','2020-05-22','RIZKI','',''),
(48,'Bpk. Roikhon','is','18000','Janti','2020-05-22','RIZKI','',''),
(49,'Bpk. Ahmadi','is','8000','RT03','2020-05-22','RIZKI','',''),
(50,'Ibu Hasnah','maal','400000','RT18','2020-05-22','RIZKI','',''),
(51,'Bpk. Setiawan','ps','200000','RT02','2020-05-22','RIZKI','2',''),
(53,'Mbah Sutomo','maal','1000000','RT01','2020-05-22','RIZKI','',''),
(54,'Bpk. Aksin','is','250000','','2020-05-22','RIZKI','',''),
(55,'Bpk. Artono','maal','300000','RT02','2020-05-22','RIZKI','',''),
(56,'Bpk. Aris Budiman','is','200000','RT02','2020-05-22','RIZKI','',''),
(57,'Bpk. Sadali','is','250000','RT02','2020-05-22','RIZKI','',''),
(58,'Bpk. Makmun','is','300000','RT03','2020-05-22','RIZKI','',''),
(59,'Bpk. Imron','maal','300000','RT02','2020-05-22','RIZKI','',''),
(60,'Bpk. Imron','is','18000','RT02','2020-05-22','RIZKI','',''),
(61,'Miftahul Hadi','is','100000','RRI','2020-05-22','RIZKI','',''),
(62,'H. Mulyadi','is','100000','RT18','2020-05-22','RIZKI','',''),
(63,'Bpk. Sumarlan','is','150000','RT01','2020-05-22','RIZKI','',''),
(64,'Ibu Linasih','fidyah','360000','RT03','2020-05-22','RIZKI','','Usia\r\n'),
(65,'Bpk. Bambang ','maal','2000000','Makariya Binangun R12','2020-05-22','RIZKI','',''),
(66,'H. Nuril Huda','is','200000','RT20','2020-05-22','RIZKI','',''),
(67,'Bpk. Abdul rochim','maal','100000','RT 18','2020-05-23','Firman','',''),
(68,'Ari Kurniawan','is','200000','RT. 18 RW. 01 Janti Waru','2020-05-23','FIAN','',''),
(69,'Tri R.','is','400000','RT. 18 RW. 01 Janti Waru','2020-05-23','FIAN','',''),
(70,'Bpk. Soetikno','is','67000','RT. 18 RW. 01 Janti Waru','2020-05-23','FIAN','',''),
(71,'H. Suyono','maal','300000','RT20','2020-05-23','Widi','6',''),
(72,'Deny Oktavianto','is','3000','Pengkol Kedungrejo','2020-05-23','RIZKI','',''),
(73,'Aan','maal','1000000','RT. 18','2020-05-23','RIZKI','',''),
(74,'M.Nasrullah','maal','350000','Pepelegi','2020-05-23','RIZKI','',''),
(75,'Desi, susanto, diego','ps','100000','Gedangan sidoarjo','2020-05-23','Firman','','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
