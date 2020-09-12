/*
 Navicat Premium Data Transfer

 Source Server         : Laragon
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : db_spk_zakat

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 12/09/2020 21:01:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_alt_budak
-- ----------------------------
DROP TABLE IF EXISTS `tbl_alt_budak`;
CREATE TABLE `tbl_alt_budak`  (
  `id_alt_budak` int(11) NOT NULL AUTO_INCREMENT,
  `B11` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `B12` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `B13` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `B21` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `B22` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `B23` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `B31` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `B32` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `B33` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_alt_budak`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_alt_budak
-- ----------------------------
INSERT INTO `tbl_alt_budak` VALUES (1, '1', '3', '5', '0.3333333333333333', '1', '1', '0.2', '1', '1');
INSERT INTO `tbl_alt_budak` VALUES (2, '1', '3', '5', '0.3333333333333333', '1', '1', '0.2', '1', '1');
INSERT INTO `tbl_alt_budak` VALUES (3, '1', '3', '5', '0.3333333333333333', '1', '1', '0.2', '1', '1');

-- ----------------------------
-- Table structure for tbl_alt_ghorim
-- ----------------------------
DROP TABLE IF EXISTS `tbl_alt_ghorim`;
CREATE TABLE `tbl_alt_ghorim`  (
  `id_alt_ghorim` int(11) NOT NULL AUTO_INCREMENT,
  `G11` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `G12` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `G13` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `G21` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `G22` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `G23` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `G31` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `G32` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `G33` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_alt_ghorim`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_alt_ghorim
-- ----------------------------
INSERT INTO `tbl_alt_ghorim` VALUES (1, '1', '3', '3', '0.3333333333333333', '1', '3', '0.3333333333333333', '0.3333333333333333', '1');
INSERT INTO `tbl_alt_ghorim` VALUES (2, '1', '3', '3', '0.3333333333333333', '1', '3', '0.3333333333333333', '0.3333333333333333', '1');
INSERT INTO `tbl_alt_ghorim` VALUES (3, '1', '3', '3', '0.3333333333333333', '1', '3', '0.3333333333333333', '0.3333333333333333', '1');

-- ----------------------------
-- Table structure for tbl_alt_ibnu_sabil
-- ----------------------------
DROP TABLE IF EXISTS `tbl_alt_ibnu_sabil`;
CREATE TABLE `tbl_alt_ibnu_sabil`  (
  `id_alt_ibnu_sabil` int(255) NOT NULL AUTO_INCREMENT,
  `IS11` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `IS12` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `IS13` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `IS21` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `IS22` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `IS23` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `IS31` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `IS32` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `IS33` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_alt_ibnu_sabil`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_alt_ibnu_sabil
-- ----------------------------
INSERT INTO `tbl_alt_ibnu_sabil` VALUES (1, '1', '3', '3', '0.3333333333333333', '1', '3', '0.3333333333333333', '0.3333333333333333', '1');
INSERT INTO `tbl_alt_ibnu_sabil` VALUES (2, '1', '3', '3', '0.3333333333333333', '1', '3', '0.3333333333333333', '0.3333333333333333', '1');
INSERT INTO `tbl_alt_ibnu_sabil` VALUES (3, '1', '3', '3', '0.3333333333333333', '1', '3', '0.3333333333333333', '0.3333333333333333', '1');

-- ----------------------------
-- Table structure for tbl_alt_miskin
-- ----------------------------
DROP TABLE IF EXISTS `tbl_alt_miskin`;
CREATE TABLE `tbl_alt_miskin`  (
  `id_alt_miskin` int(11) NOT NULL AUTO_INCREMENT,
  `M11` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `M12` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `M13` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `M21` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `M22` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `M23` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `M31` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `M32` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `M33` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_alt_miskin`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_alt_miskin
-- ----------------------------
INSERT INTO `tbl_alt_miskin` VALUES (1, '1', '5', '3', '0.2', '1', '1', '0.3333333333333333', '1', '1');
INSERT INTO `tbl_alt_miskin` VALUES (2, '1', '', '', '0', '1', '', '0', '0', '1');
INSERT INTO `tbl_alt_miskin` VALUES (3, '1', '5', '3', '0.2', '1', '1', '0.3333333333333333', '1', '1');
INSERT INTO `tbl_alt_miskin` VALUES (4, '1', '5', '3', '0.2', '1', '1', '0.3333333333333333', '1', '1');
INSERT INTO `tbl_alt_miskin` VALUES (5, '1', '5', '3', '0.2', '1', '1', '0.3333333333333333', '1', '1');

-- ----------------------------
-- Table structure for tbl_alt_mualaf
-- ----------------------------
DROP TABLE IF EXISTS `tbl_alt_mualaf`;
CREATE TABLE `tbl_alt_mualaf`  (
  `id_alt_mualaf` int(255) NOT NULL AUTO_INCREMENT,
  `MU11` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MU12` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MU13` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MU21` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MU22` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MU23` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MU31` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MU32` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MU33` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_alt_mualaf`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_alt_mualaf
-- ----------------------------
INSERT INTO `tbl_alt_mualaf` VALUES (1, '1', '5', '3', '0.2', '1', '1', '0.3333333333333333', '1', '1');
INSERT INTO `tbl_alt_mualaf` VALUES (2, '1', '5', '3', '0.2', '1', '1', '0.3333333333333333', '1', '1');

-- ----------------------------
-- Table structure for tbl_donatur
-- ----------------------------
DROP TABLE IF EXISTS `tbl_donatur`;
CREATE TABLE `tbl_donatur`  (
  `id_donatur` int(255) NOT NULL AUTO_INCREMENT,
  `nama_donatur` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_donatur` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `bukti_terima` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `nominal` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `petugas_penerima` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data_validation` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_donatur`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_donatur
-- ----------------------------
INSERT INTO `tbl_donatur` VALUES (23, 'H. Sukani', 'RT 20', 'DONATUR_20052020161149.jpg', '300000', 'M. JAHID', '2020-05-20 16:11:49');
INSERT INTO `tbl_donatur` VALUES (24, 'Bpk Yokyok', 'RT 18 RW 01', 'DONATUR_23052020002104.jpg', '100000', 'ABDUL MUGHNI', '2020-05-23 00:21:04');

-- ----------------------------
-- Table structure for tbl_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jabatan`;
CREATE TABLE `tbl_jabatan`  (
  `id_jabatan` int(255) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_jabatan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_jabatan
-- ----------------------------
INSERT INTO `tbl_jabatan` VALUES (1, 'Ketua');
INSERT INTO `tbl_jabatan` VALUES (2, 'Wakil Ketua');
INSERT INTO `tbl_jabatan` VALUES (3, 'Bendahara');
INSERT INTO `tbl_jabatan` VALUES (4, 'Wakil Bendahara');
INSERT INTO `tbl_jabatan` VALUES (5, 'Sekretaris');
INSERT INTO `tbl_jabatan` VALUES (6, 'Wakil Sekretaris');
INSERT INTO `tbl_jabatan` VALUES (7, 'Koordinator');
INSERT INTO `tbl_jabatan` VALUES (8, 'Petugas');

-- ----------------------------
-- Table structure for tbl_koordinator
-- ----------------------------
DROP TABLE IF EXISTS `tbl_koordinator`;
CREATE TABLE `tbl_koordinator`  (
  `id_koor` int(11) NOT NULL AUTO_INCREMENT,
  `nama_koor` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `panggilan_koor` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_koor` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ket_pass` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT 3,
  PRIMARY KEY (`id_koor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_koordinator
-- ----------------------------
INSERT INTO `tbl_koordinator` VALUES (1, 'M. Apriadi Setiawan', 'Adi', 'RT01', 'adi', 'c46335eb267e2e1cde5b017acb4cd799', 'adi', 3);
INSERT INTO `tbl_koordinator` VALUES (2, 'M. Nur Laba', 'Mas Nur', 'RT02', 'nur', 'b55178b011bfb206965f2638d0f87047', 'nur', 3);
INSERT INTO `tbl_koordinator` VALUES (3, 'Mr. Rooki', 'Cak Roki', 'RT03', 'roki', '64b69ce05f9e128794e433fea61a7e24', 'roki', 3);
INSERT INTO `tbl_koordinator` VALUES (4, 'Abdul Mughni', 'Oni', 'RT18', 'oni', 'cb7f4a5e75e6f7340971c99ea4587999', 'oni', 3);
INSERT INTO `tbl_koordinator` VALUES (5, 'Om Agus', 'ayah', 'RT19', 'agus', 'fdf169558242ee051cca1479770ebac3', 'agus', 3);
INSERT INTO `tbl_koordinator` VALUES (6, 'M. zahid', 'Kacong', 'RT20', 'kacong', '4b168cfef21e46be786f1f23ab31daa8', 'kacong', 3);
INSERT INTO `tbl_koordinator` VALUES (7, 'Mr. Koordinator', 'Koordinator', 'RT01', 'koor', '6091496a74949f21e59b3f64607552e7', 'koor', 3);

-- ----------------------------
-- Table structure for tbl_master_alamat
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_alamat`;
CREATE TABLE `tbl_master_alamat`  (
  `id_alamat` int(255) NOT NULL AUTO_INCREMENT,
  `alamat` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_alamat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_alamat
-- ----------------------------
INSERT INTO `tbl_master_alamat` VALUES (1, 'RT 01');
INSERT INTO `tbl_master_alamat` VALUES (2, 'RT 02');
INSERT INTO `tbl_master_alamat` VALUES (3, 'RT 03');
INSERT INTO `tbl_master_alamat` VALUES (4, 'RT 18');
INSERT INTO `tbl_master_alamat` VALUES (5, 'RT 19');
INSERT INTO `tbl_master_alamat` VALUES (6, 'RT 20');

-- ----------------------------
-- Table structure for tbl_master_alternatif
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_alternatif`;
CREATE TABLE `tbl_master_alternatif`  (
  `id_alternatif` int(255) NOT NULL AUTO_INCREMENT,
  `kode_alternatif` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_alternatif` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_alternatif`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_alternatif
-- ----------------------------
INSERT INTO `tbl_master_alternatif` VALUES (1, 'A1', 'Fakir');
INSERT INTO `tbl_master_alternatif` VALUES (2, 'A2', 'Amil');
INSERT INTO `tbl_master_alternatif` VALUES (3, 'A3', 'Sabil');

-- ----------------------------
-- Table structure for tbl_master_bobot
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_bobot`;
CREATE TABLE `tbl_master_bobot`  (
  `id_bobot` int(11) NOT NULL AUTO_INCREMENT,
  `nominal_bobot` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ket_bobot` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_bobot`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_bobot
-- ----------------------------
INSERT INTO `tbl_master_bobot` VALUES (1, '1', 'Kedua Elemen Sama Penting');
INSERT INTO `tbl_master_bobot` VALUES (2, '2', 'Mendekati sedikit lebih penting dari');
INSERT INTO `tbl_master_bobot` VALUES (3, '3', 'Elemen yang satu sedikit penting daripada elemen yang lain');
INSERT INTO `tbl_master_bobot` VALUES (4, '4', 'Mendekati lebih penting dari');
INSERT INTO `tbl_master_bobot` VALUES (5, '5', 'Elemen yang satu lebih penting daripada yang lainnya');
INSERT INTO `tbl_master_bobot` VALUES (6, '6', 'Mendekati sangat penting dari');
INSERT INTO `tbl_master_bobot` VALUES (7, '7', 'Satu elemen jelas lebih mutlak penting daripada elemen lainnya');
INSERT INTO `tbl_master_bobot` VALUES (8, '8', 'Mendekati mutlak dari');
INSERT INTO `tbl_master_bobot` VALUES (9, '9', 'Satu elemen mutlak penting daripada elemen lainnya');

-- ----------------------------
-- Table structure for tbl_master_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_kriteria`;
CREATE TABLE `tbl_master_kriteria`  (
  `id_kriteria` int(255) NOT NULL AUTO_INCREMENT,
  `kode_kriteria` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_kriteria` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kriteria`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_kriteria
-- ----------------------------
INSERT INTO `tbl_master_kriteria` VALUES (1, 'C1', 'Ghorim');
INSERT INTO `tbl_master_kriteria` VALUES (2, 'C2', 'Budak');
INSERT INTO `tbl_master_kriteria` VALUES (3, 'C3', 'Miskin');
INSERT INTO `tbl_master_kriteria` VALUES (4, 'C4', 'Ibnu Sabil');
INSERT INTO `tbl_master_kriteria` VALUES (5, 'C5', 'Mualaf');

-- ----------------------------
-- Table structure for tbl_master_kwitansi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_kwitansi`;
CREATE TABLE `tbl_master_kwitansi`  (
  `id_kwitansi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_organisasi` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_lembaga` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logo_organisasi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pembayaran` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kota_kwitansi` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_organisasi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_kwitansi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_kwitansi
-- ----------------------------
INSERT INTO `tbl_master_kwitansi` VALUES (1, 'Remaja Masjid Nurul Huda', 'Masjid Besar Nurul Huda Janti', 'logo_1587121453.png', 'Maal, Partisipasi Sosial, Infaq/Shodaqoh, Fidyah', 'Janti ', 'Jl. Brigjen Katamso No.123 Janti, Waru - Sidoarjo');

-- ----------------------------
-- Table structure for tbl_master_laporan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_laporan`;
CREATE TABLE `tbl_master_laporan`  (
  `id_laporan` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan_laporan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_pemilik_jabatan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `masehi` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hijriyah` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_sekretaris` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_laporan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_laporan
-- ----------------------------
INSERT INTO `tbl_master_laporan` VALUES (1, 'Ketua Amil Zakat', 'M. Firdi Widiansyah', '2020', '1441', 'Sekretaris', 'Moch. Firman Firdaus');

-- ----------------------------
-- Table structure for tbl_master_lokasi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_lokasi`;
CREATE TABLE `tbl_master_lokasi`  (
  `id_lokasi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `alamat_lokasi` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kontak_lokasi` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_lokasi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_lokasi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_lokasi
-- ----------------------------
INSERT INTO `tbl_master_lokasi` VALUES (1, 'Masjid Besar \"Nurul Huda\" Janti Waru', 'Jl. Brigjen Katamso Janti', '083857151187 - 089661668843', 'lok_1587179601.png');

-- ----------------------------
-- Table structure for tbl_master_penerima
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_penerima`;
CREATE TABLE `tbl_master_penerima`  (
  `id_ket_penerima` int(11) NOT NULL AUTO_INCREMENT,
  `nama_ket` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_ket_penerima`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_penerima
-- ----------------------------
INSERT INTO `tbl_master_penerima` VALUES (1, 'Berat');
INSERT INTO `tbl_master_penerima` VALUES (2, 'Ringan');
INSERT INTO `tbl_master_penerima` VALUES (3, 'Sabilillah');

-- ----------------------------
-- Table structure for tbl_panitia
-- ----------------------------
DROP TABLE IF EXISTS `tbl_panitia`;
CREATE TABLE `tbl_panitia`  (
  `id_panitia` int(255) NOT NULL AUTO_INCREMENT,
  `nama_panitia` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan_panitia` varbinary(50) NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kontak` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_panitia` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_panitia`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_panitia
-- ----------------------------
INSERT INTO `tbl_panitia` VALUES (1, 'Moch. Firman Firdaus', 0x35, '1', '089666515952', 'PANITIA_29042020121634.png');

-- ----------------------------
-- Table structure for tbl_penduduk
-- ----------------------------
DROP TABLE IF EXISTS `tbl_penduduk`;
CREATE TABLE `tbl_penduduk`  (
  `id_peduduk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penduduk` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_peduduk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_penerima_zakat
-- ----------------------------
DROP TABLE IF EXISTS `tbl_penerima_zakat`;
CREATE TABLE `tbl_penerima_zakat`  (
  `id_penerima` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penerima` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ket_penerima` int(11) NULL DEFAULT NULL,
  `koordinator` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_penerima`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 302 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_penerima_zakat
-- ----------------------------
INSERT INTO `tbl_penerima_zakat` VALUES (1, 'Sumarso', 1, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (2, 'Bu Yani', 3, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (3, 'Bpk Matakup', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (4, 'Bu Saropah', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (5, 'Bpk Parman', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (6, 'Bpk Jayadi (Sanimas)', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (7, 'Bu Matrio / Sampah', 1, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (8, 'Bu Jenjem', 1, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (9, 'Eka', 1, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (10, 'Bpk Suli', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (11, 'Ibu hasanah ', 1, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (12, 'Bpk Samsul', 3, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (13, 'Futihatus', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (14, 'Bu Zubaidah', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (15, 'Bu Kasiah', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (16, 'Bu Julaika', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (17, 'Bpk Sumarsono', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (18, 'Bpk Yono', 1, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (19, 'Bpk Marianto ', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (20, 'Bpk Sahid ', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (21, 'Bpk Surati', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (22, 'Bu Sunar', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (23, 'Bpak hasan', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (24, 'Bpk Sari (Suroso) /sri utami', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (25, 'Bpk Soemedi', 3, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (26, 'Bu Fida (Qodir)', 3, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (27, 'Bpk Hada’ (Bu Titin)', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (28, 'Bpk Jaiman', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (29, 'Bpk Paidi', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (30, 'Bpk Suroso (Daia)', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (31, 'Bu Siti', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (32, 'Bpk Joko', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (33, 'Rita', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (35, 'Sholeha (P. Sari)', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (36, 'Choirul (Dian)', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (37, 'ibu diana', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (38, 'Mad Bukhori', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (39, 'Bu Khomsatun', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (40, 'Ten / Ketang zainul ', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (41, 'Bpk Qodir', 3, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (42, 'bu juaria', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (43, 'Ny Muslika', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (44, 'Ulfa (Kost Nyoman)', 1, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (45, 'Sowandi (Kost Suyono)', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (46, 'Agus Salim', 3, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (47, 'Abd. Rosyid', 3, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (48, 'M. Isa', 3, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (49, 'Karsimin', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (50, 'Socheh', 3, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (51, 'Juwariyah', 3, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (53, 'Ibu Hamida', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (54, 'Bu Nur (Pecel)', 1, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (55, 'Sunaryo (Doyok)', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (56, 'H. Chamim Rosidi', 3, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (57, 'Abd. Ghofur', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (58, 'Fatchul Korib', 1, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (59, 'Ach Kamaludin', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (60, 'Sundari', 1, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (61, 'Rochimah', 3, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (63, 'Sua Pijet', 1, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (64, 'Riadi', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (65, 'Kholil', 1, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (66, 'Ani', 1, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (67, 'Abd Karim', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (68, 'Sriama (Pecel)', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (69, 'Nining (Alm Kamid) ', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (70, 'Zahro', 3, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (74, 'Martini (Kost Tulus)', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (76, 'Nanang (Kost Siti)', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (113, 'Hj. Nurul Qomariyah', 3, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (114, 'Bu Ameni', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (115, 'Bpk Khusairi', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (116, 'Bu Sumarni', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (117, 'Bu Semi', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (118, 'Bpk Sigit Sugiarto ', 2, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (119, 'Bu Nur Rohmah', 3, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (120, 'Bpk Saki', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (121, 'Bu Mudjiono', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (122, 'Amal', 2, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (123, 'Bu Siamah', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (124, 'Bu Nur Mahmuda', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (125, 'Toni M', 2, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (126, 'Hj. Indahwati ', 3, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (127, 'H. Anas Aly', 3, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (128, 'M. Munir', 3, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (129, 'Bpk Mat Sholehuddin ', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (130, 'Bu Harti (Malik)', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (131, 'Muhaimin (Alex)', 2, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (132, 'Hari Setiono', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (133, 'Bpk M Sofi’i', 3, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (134, 'Bpk Saimun', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (135, 'Sunarto', 1, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (136, 'Mulyosantoso', 1, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (137, 'Mbak Tatik', 1, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (138, 'Mbah Mud', 1, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (139, 'Mbah Kamiso', 1, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (140, 'Mega FS', 1, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (142, 'Amala', 1, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (143, 'Misnati', 1, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (144, 'Latifah', 1, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (145, 'Mbah Ratmi', 1, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (147, 'Sutama', 1, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (148, 'Yadi', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (149, 'Jamila', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (150, 'Cak Mat Satpam', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (151, 'Ibu Sum', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (152, 'Pak Minto', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (155, 'Bpk. Sokib', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (156, 'Suryati', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (157, 'Khozin', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (158, 'Sukir', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (159, 'Yanto', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (160, 'Mujiati', 3, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (161, 'Dewi Asfiyah', 3, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (162, 'Nur Anisah', 3, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (163, 'Nur Sakbani', 3, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (164, 'Ulfa', 3, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (165, 'Wulan Jalil', 3, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (166, 'Asemah', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (167, 'Ulis', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (168, 'Ninik', 1, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (169, 'Fitri', 1, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (170, 'Bu Kadiman/Jayem', 1, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (172, 'Ny Sembodo', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (173, 'Munasri', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (174, 'Kholiq', 1, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (175, 'Bpk Ilham Kos', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (176, 'Imam kos Mukiyat', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (177, 'Gunawan Kos Yus', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (178, 'Endang', 3, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (179, 'Bunda Diyah', 3, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (180, 'Alm Umar Efendy', 1, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (181, 'Agus', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (182, 'Taufiq', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (183, 'Kusnan kos', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (184, 'Meme', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (185, 'Sunarsih', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (186, 'Ibu Mirna', 1, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (187, 'Makrufah', 1, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (188, 'Ibu Ulfa', 1, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (190, 'Bu Hindun', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (191, 'Rinda', 3, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (192, 'Asmalika', 3, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (193, 'Ibu Maya', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (194, 'Romlah', 1, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (195, 'Maryam ', 1, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (196, 'Saipul kos yanto', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (209, 'P.panut', 3, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (210, 'Udin bodrex', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (211, 'Harsono/ning nur', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (213, 'Agus mujaidi(edi)', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (215, 'Bu Lek Alif', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (216, 'Sulika', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (217, 'Asmadi', 1, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (218, 'Lut', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (219, 'eka wulan', 1, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (220, 'bpk untung', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (221, 'dul hadi', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (222, 'sulton', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (223, 'bu nurul', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (224, 'bpk buri', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (225, 'irtanto', 2, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (226, 'Jaswadi', 2, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (227, 'Dani', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (228, 'Tutik', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (229, 'Umiyati (kos p. Ahmad)', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (230, 'Khundoli', 2, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (231, 'Mut (gorengan)', 1, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (232, 'Abdul Kahar', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (233, 'Khotimah', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (234, 'Ning Tin', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (235, 'Hamzah', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (236, 'Sholeh', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (237, 'Jumadi', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (238, 'Ninik', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (239, 'Tutik', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (240, 'Linasih', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (241, 'ASiah', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (242, 'Sariyah', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (243, 'H. JUfri', 3, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (244, 'Yasak', 3, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (245, 'Dayat', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (246, 'Naium', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (247, 'Ali Usman', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (248, 'Rika', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (249, 'Lilik', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (250, 'Farid', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (251, 'Zainuri', 3, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (252, 'Sunarto', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (253, 'Edi Supriyanto', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (254, 'Eko', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (255, 'Ali Ibrahim', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (256, 'Ali Fathani', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (257, 'Fathana', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (258, 'Ali Mustaqim', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (259, 'Yulima', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (260, 'Buk MAr', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (261, 'Rokha', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (262, 'Mariah', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (263, 'Wati', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (264, 'Ibuk e yoyok', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (265, 'Aas', 3, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (266, 'Bu Siti', 3, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (267, 'Yayuk', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (268, 'Genduk', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (269, 'Sundari', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (270, 'Aris', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (271, 'Bu Suha', 1, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (272, 'P. Bambang', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (273, 'Zaky Fanani', 2, 3);
INSERT INTO `tbl_penerima_zakat` VALUES (274, 'Yanu', 2, 6);
INSERT INTO `tbl_penerima_zakat` VALUES (275, 'Misbakhul', 2, 2);
INSERT INTO `tbl_penerima_zakat` VALUES (276, 'Susi', 3, 1);
INSERT INTO `tbl_penerima_zakat` VALUES (277, 'Leo Sunaryo', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (278, 'Seno Susanto', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (279, 'Bpk. Misri', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (280, 'Bpk. Rokim', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (281, 'Bpk. Roni', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (282, 'Bpk. Duki', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (283, 'Bpk. Suhadak', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (284, 'Bpk. Taufik H', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (285, 'Ibu Lilik', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (286, 'Tantok', 1, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (287, 'Putra', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (288, 'Purnomo', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (289, 'Bamban s (ASE)', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (290, 'Sanjono', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (291, 'bpk. Putro', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (292, 'Bpk. Donok', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (293, 'Sutrisno', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (294, 'Sugeng R', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (295, 'Mbah Siti', 1, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (296, 'Cak mat baihaqi', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (297, 'Firman ady bopeng', 2, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (298, 'Yaati kos erwin', 2, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (299, 'Toari', 2, 4);
INSERT INTO `tbl_penerima_zakat` VALUES (300, 'Sugeng R', 2, 5);
INSERT INTO `tbl_penerima_zakat` VALUES (301, 'M amin', 2, 5);

-- ----------------------------
-- Table structure for tbl_rank
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rank`;
CREATE TABLE `tbl_rank`  (
  `id_rank` int(255) NOT NULL AUTO_INCREMENT,
  `fakir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sabil` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amil` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_rank`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_rank
-- ----------------------------
INSERT INTO `tbl_rank` VALUES (1, '0.617', '0.226', '0.157');
INSERT INTO `tbl_rank` VALUES (2, '0.617', '0.226', '0.157');
INSERT INTO `tbl_rank` VALUES (3, '0.617', '0.226', '0.157');
INSERT INTO `tbl_rank` VALUES (4, '0.617', '0.226', '0.157');
INSERT INTO `tbl_rank` VALUES (5, '0.617', '0.226', '0.157');
INSERT INTO `tbl_rank` VALUES (6, '0.617', '0.226', '0.157');
INSERT INTO `tbl_rank` VALUES (7, '0.617', '0.226', '0.157');
INSERT INTO `tbl_rank` VALUES (8, '0.617', '0.226', '0.157');

-- ----------------------------
-- Table structure for tbl_ranking
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ranking`;
CREATE TABLE `tbl_ranking`  (
  `id_rank` int(255) NOT NULL AUTO_INCREMENT,
  `fakir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sabil` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amil` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_rank`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_spk_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `tbl_spk_kriteria`;
CREATE TABLE `tbl_spk_kriteria`  (
  `id_kriteria` int(255) NOT NULL AUTO_INCREMENT,
  `C11` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C12` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C13` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C14` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C15` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C21` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C22` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C23` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C24` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C25` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C31` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C32` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C33` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C34` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C35` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C41` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C42` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C43` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C44` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C45` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C51` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C52` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C53` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C54` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `C55` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kriteria`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_spk_kriteria
-- ----------------------------
INSERT INTO `tbl_spk_kriteria` VALUES (1, '1', '3', '3', '1', '3', '0.3333333333333333', '1', '3', '3', '3', '0.3333333333333333', '0.3333333333333333', '1', '3', '3', '1', '0.3333333333333333', '0.3333333333333333', '1', '1', '0.3333333333333333', '0.3333333333333333', '0.3333333333333333', '1', '1');
INSERT INTO `tbl_spk_kriteria` VALUES (2, '1', '3', '3', '1', '3', '0.3333333333333333', '1', '3', '3', '3', '0.3333333333333333', '0.3333333333333333', '1', '3', '3', '1', '0.3333333333333333', '0.3333333333333333', '1', '1', '0.3333333333333333', '0.3333333333333333', '0.3333333333333333', '1', '1');
INSERT INTO `tbl_spk_kriteria` VALUES (3, '1', '3', '3', '1', '3', '0.3333333333333333', '1', '3', '3', '3', '0.3333333333333333', '0.3333333333333333', '1', '3', '3', '1', '0.3333333333333333', '0.3333333333333333', '1', '1', '0.3333333333333333', '0.3333333333333333', '0.3333333333333333', '1', '1');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ket_pass` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'Moch. Firman Firdaus', 'Firman', 'firman', 'e79c7323f62151abde47e29987b38859', 'akusayangkamu', 1);
INSERT INTO `tbl_user` VALUES (3, 'Farida Nur Zeha', 'Farida', 'admin', 'b34b40ca8771c48c204e55f927376885', 'okedeh', 1);
INSERT INTO `tbl_user` VALUES (5, 'Moch Firdi Widiansya', 'Widi', 'widi', 'f20a698699ddd337ae993089c08cd0fb', 'wada', 1);
INSERT INTO `tbl_user` VALUES (6, 'Teguh Ramadhan', 'Teguh', 'teguh', 'f5cd3a020bc94866049206a7cf14e266', 'teguh', 2);
INSERT INTO `tbl_user` VALUES (7, 'Bima Anugerah', 'Bima', 'bima', '7fcba392d4dcca33791a44cd892b2112', 'bima', 4);
INSERT INTO `tbl_user` VALUES (8, 'Mr. Sekretaris', 'Sekretaris', 'sekretaris', 'ce1023b227de5c34b98c470cda4699bb', 'sekretaris', 2);
INSERT INTO `tbl_user` VALUES (9, 'Mr. Petugas', 'Petugas', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'petugas', 4);
INSERT INTO `tbl_user` VALUES (10, 'Tes Petugas1', 'Tes Petugas1', 'petugas1', 'b53fe7751b37e40ff34d012c7774d65f', 'petugas1', 4);
INSERT INTO `tbl_user` VALUES (11, 'Tes Petugas2', 'Petugas2', 'petugas2', 'ac5604a8b8504d4ff5b842480df02e91', 'petugas2', 4);
INSERT INTO `tbl_user` VALUES (12, 'Tes Petugas3', 'Petugas3', 'petugas3', '6f7dc121bccfd778744109cac9593474', 'petugas3', 4);
INSERT INTO `tbl_user` VALUES (13, 'Tes Petugas4', 'Petugas4', 'petugas4', '95c477e4932b3b16500674c18fb6f9a4', 'petugas4', 4);

-- ----------------------------
-- Table structure for tbl_zakat_fitrah
-- ----------------------------
DROP TABLE IF EXISTS `tbl_zakat_fitrah`;
CREATE TABLE `tbl_zakat_fitrah`  (
  `id_zakat_fitrah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pemberi_zakat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `besaran_jiwa` int(11) NULL DEFAULT NULL,
  `beras` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uang` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tanggal` date NULL DEFAULT NULL,
  `petugas` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_zakat_fitrah`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 423 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_zakat_fitrah
-- ----------------------------
INSERT INTO `tbl_zakat_fitrah` VALUES (1, 'Bapak suwandi', 1, '2.8', '', 'RT 01', '2020-05-14', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (2, 'Ibu sehati', 1, '2.8', '', 'RT 01', '2020-05-14', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (3, 'Marinda salsabila', 1, '2.8', '', 'RT 01', '2020-05-14', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (4, 'Bapak Fauzan ', 1, '2.8', '', 'RT 01', '2020-05-14', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (5, 'Ibu sulastri', 1, '2.8', '', 'RT 01', '2020-05-14', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (6, 'Nauval vito w', 1, '2.8', '', 'RT 01', '2020-05-14', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (7, 'Donito cello a', 1, '2.8', '', 'RT 01', '2020-05-14', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (8, 'Bapak Gatot', 4, '11.2', '', 'Janti, RT 20, RW 01', '2020-05-15', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (9, 'Bapak ali', 3, '8.399999999999999', '', 'RT 03 RW 01', '2020-05-16', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (10, 'Bpk suwadi', 3, '8.399999999999999', '', 'Rt 03', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (11, 'Bpk jainuri', 2, '5.6', '', 'Rt 03', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (12, 'Ibu diah', 3, '8.399999999999999', '', 'RT 20 RW 01', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (13, 'Agus', 1, '2.8', '', 'RT 20', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (14, 'Andiiana', 1, '2.8', '', 'RT 20', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (15, 'Keisyah', 1, '2.8', '', 'RT 20', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (16, 'Hafiz', 1, '2.8', '', 'RT 20', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (17, 'Bu sri amah', 2, '5.6', '', 'Janti, RT 02, RW 01', '2020-05-17', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (18, 'Bapak Arofiq', 2, '5.6', '', 'Janti, RT 02, RW 01', '2020-05-17', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (19, 'Bapak khambali', 1, '2.8', '', 'Janti, RT 02, RW 01', '2020-05-17', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (20, 'Ibu jamilah', 1, '2.8', '', 'Janti, RT 02, RW 01', '2020-05-17', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (21, 'Bu siti nur khomariah', 1, '2.8', '', 'Janti, RT 02, RW 01', '2020-05-17', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (22, 'Bapak Udin', 3, '8.399999999999999', '', 'Janti, RT 02, RW 01', '2020-05-17', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (23, 'Bapak boedy soesanto', 6, '16.799999999999997', '', 'Rt 19, RW 01', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (24, 'Septi', 2, '5.6', '', 'RT 02 RW 01', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (25, 'Bpk mito', 2, '5.6', '', 'RT 20 RW 01', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (26, 'M. Zuli Rohman', 1, '2.8', '32000', 'RT 03 RW 01', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (27, 'Bpk shoki', 1, '2.8', '', 'RT 03 RW 01', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (28, 'Bpk ibrahim', 6, '16.799999999999997', '', 'RT 03 RW 01', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (29, 'Bpk Syaichu', 3, '8.399999999999999', '', 'RT 02 RW 01', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (30, 'Bpk nanang', 6, '16.799999999999997', '', 'RT 02 RW 01', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (31, 'Bpk Robin', 7, '19.599999999999998', '224000', 'Tropodo', '2020-05-17', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (32, 'Ibu napsiyah', 3, '8.399999999999999', '', 'RT.20', '2020-05-17', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (33, 'Febrika p.', 2, '5.6', '', 'RT.20', '2020-05-17', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (34, 'Bu faizatul', 2, '5.6', '', 'RT.20', '2020-05-17', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (35, 'Bp. Tas\'an', 2, '5.6', '', 'RT.20', '2020-05-17', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (36, 'Jahid', 1, '2.8', '', 'RT.20', '2020-05-17', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (37, 'Bp. Mugiono', 3, '8.399999999999999', '', 'RT.20', '2020-05-17', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (38, 'Hadi z.', 2, '5.6', '', 'RT.20', '2020-05-17', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (39, 'Bp. Nanang', 3, '8.399999999999999', '', 'RT.20', '2020-05-17', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (40, 'Bp. Roni', 4, '11.2', '', 'RT.20', '2020-05-17', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (41, 'Sulanto', 4, '11.2', '', 'RT19', '2020-05-17', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (42, 'Yogi', 3, '8.399999999999999', '', 'RT19', '2020-05-17', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (44, 'Firman', 3, '8.399999999999999', '', 'RT19', '2020-05-17', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (45, 'Agus', 2, '5.6', '', 'RT19', '2020-05-17', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (46, 'Supridi', 2, '5.6', '', 'RT19', '2020-05-17', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (47, 'Sugeng Purnomo', 3, '8.399999999999999', '', 'RT19', '2020-05-17', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (48, 'Bapak lindung', 2, '5.6', '', 'Wadung asri', '2020-05-18', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (49, 'Bu endang', 1, '2.8', '', 'Brigjenkatamso 5 no 128', '2020-05-18', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (50, 'Wiwik', 3, '8.399999999999999', '96000', 'GSI', '2020-05-18', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (51, 'Nur wicaksono', 2, '5.6', '64000', 'Rt 01 Rw 01', '2020-05-18', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (52, 'Mujiono', 2, '5.6', '', 'Janti , RT 18 RW 01', '2020-05-18', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (53, 'H Suprapto ', 2, '5.6', '', 'RT 18 RW01', '2020-05-18', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (54, 'Bpk Agus Sugiantoro', 6, '16.799999999999997', '192000', 'RT02 RW01', '2020-05-18', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (55, 'Bpk M Amin', 5, '14', '', 'RT 19 RW01', '2020-05-18', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (56, 'Sugeng', 3, '8.399999999999999', '', 'RT19', '2020-05-18', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (57, 'Kamiso', 1, '2.8', '', 'RT19', '2020-05-18', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (58, 'Bpak Riva', 4, '11.2', '128000', 'RT03', '2020-05-18', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (59, 'Bu Susi Ani', 3, '8.399999999999999', '', 'RT02', '2020-05-18', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (60, 'Bpk. Kasmidi', 5, '14', '', 'RT02', '2020-05-18', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (61, 'Bpk. Abdul Karim', 4, '11.2', '', 'RT02', '2020-05-18', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (62, 'Bpk. Kholil', 6, '16.799999999999997', '', 'RT02', '2020-05-18', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (63, 'Ibu Khusnul', 2, '5.6', '', 'RT03', '2020-05-18', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (64, 'Wahyu', 3, '8.399999999999999', '', 'RT02', '2020-05-18', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (65, 'Bpk.Socheh', 5, '14', '', 'Janti RT 02', '2020-05-18', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (66, 'Bapak dimas', 1, '2.8', '', 'RT 20 RW 01', '2020-05-18', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (67, 'Bapak ponco', 4, '11.2', '128000', 'Janti, RT 20, RW 01', '2020-05-18', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (68, 'Bapak wahyudi', 4, '11.2', '', 'Janti, RT 20, RW 01', '2020-05-18', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (69, 'Bapak eko', 4, '11.2', '', 'RT 03 RW 01', '2020-05-18', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (70, 'Bu lailatul', 4, '11.2', '', 'Janti RT 03 RW 01', '2020-05-18', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (71, 'Bu Ameni', 3, '8.399999999999999', '', 'Janti RT.18', '2020-05-18', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (72, 'Pak Ali Mustaqim', 5, '14', '', 'Janti RT.03', '2020-05-18', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (73, 'Bpk. Soemedi', 2, '5.6', '', 'RT01', '2020-05-18', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (74, 'Bpk. Khoirul anam', 4, '11.2', '', 'RT01', '2020-05-18', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (75, 'Bapak Mujianto', 3, '8.399999999999999', '', 'Janti RT.19 ', '2020-05-18', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (76, 'Bapak Bambang ', 3, '8.399999999999999', '', 'Janti RT.19', '2020-05-18', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (77, 'Bapak Miftahuddin', 2, '5.6', '', 'Janti RT.19', '2020-05-18', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (78, 'Bp. Bisar', 4, '11.2', '', 'RT.20', '2020-05-18', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (79, 'H. Sukani', 1, '2.8', '', 'RT.20', '2020-05-18', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (80, 'Bpk imron', 3, '8.399999999999999', '', 'RT 18 RW 01', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (81, 'Bpk sotomin', 2, '5.6', '', 'RT 18 RW 01', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (82, 'Bpk sumali', 2, '5.6', '', 'RT 03 RW 01', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (83, 'Bapak firman', 3, '8.399999999999999', '96000', 'Rt 18 Rw 01', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (84, 'Ibu anita', 2, '5.6', '64000', 'Brigjend katamso non9a', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (85, 'Ibu heri suhartati', 4, '11.2', '', 'Graha tirta dahlia 3', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (86, 'Bpk taufik', 4, '11.2', '', 'wisma tropodo jlm srayu block bj no 3', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (87, 'Bpk Much Sofii', 2, '5.6', '64000', 'RT 18 RW 01', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (88, 'Bpk adi', 4, '11.2', '128000', 'Graha tirta perum boughenvil', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (89, 'Bpk poniran', 3, '8.399999999999999', '', 'RT 18 RW 01', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (90, 'Bpk jaswadi', 2, '5.6', '', 'RT 18 RW 01', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (91, 'Bu nur mahmuda', 2, '5.6', '', 'RT 18 RW 01', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (92, 'Bpk mulyo santoso', 5, '14', '', 'RT 19 RW 01', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (93, 'Much nawawi jalaludin', 1, '2.8', '', 'RT 18 RW 01', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (94, 'Bpk aris ariyanto', 4, '11.2', '128000', 'Balongpo', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (95, 'Bpk eko', 6, '16.799999999999997', '192000', 'Makariya', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (96, 'Bpk. Arif', 5, '14', '', 'RT01', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (97, 'Bkp. Khamim', 3, '8.399999999999999', '', 'RT02', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (98, 'Bpk. Rifki', 3, '8.399999999999999', '', 'RT02', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (99, 'Bpk. Satria', 8, '22.4', '', 'Jl. Raung No15. Pepelegi', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (100, 'Bpk. Mahmud', 3, '8.399999999999999', '', 'Graha Tirta Raya', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (101, 'H.Mulyadi', 1, '2.8', '', 'RT 18 ', '2020-05-19', 'hafid');
INSERT INTO `tbl_zakat_fitrah` VALUES (102, 'Bpk. Abdilah Setiawan', 3, '8.399999999999999', '', 'RT01', '2020-05-19', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (103, 'Bpk. Sueb', 11, '33.599999999999994', '', 'RT18', '2020-05-19', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (104, 'Bpk. Misbahul arifin', 5, '14', '', 'RT02', '2020-05-19', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (105, 'Wahyu Romadhony', 1, '2.8', '32000', 'Magetan', '2020-05-19', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (106, 'Bpk. Aksin', 3, '8.399999999999999', '', 'RT02', '2020-05-19', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (107, 'Bpk.Burhan', 3, '8.399999999999999', '', 'RT 02', '2020-05-19', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (109, 'Bpk.Purnomo', 5, '14', '', 'RT 19', '2020-05-19', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (110, 'Bpk. David', 2, '5.6', '', 'RT02', '2020-05-19', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (111, 'Sujito', 3, '8.399999999999999', '', 'Rt 02', '2020-05-19', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (112, 'Bp. Fadil', 2, '5.6', '', 'RT.20', '2020-05-19', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (113, 'Bp. Suwandi', 2, '5.6', '', 'RT.20', '2020-05-19', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (114, 'Bp. Imam s.', 4, '11.2', '', 'RT.20', '2020-05-19', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (115, 'Bp. Mukirom', 3, '8.399999999999999', '', 'RT.20', '2020-05-19', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (116, 'Rojikin', 3, '8.399999999999999', '', 'RT.20', '2020-05-19', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (117, 'Bp. Mahfud', 4, '11.2', '', 'RT.20', '2020-05-19', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (118, 'Candra', 1, '2.8', '', 'RT.20', '2020-05-19', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (119, 'Bpk. Kojin', 2, '5.6', '', 'RT19', '2020-05-19', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (120, 'Bu Suharnik', 4, '11.2', '', 'RT19', '2020-05-19', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (121, 'Bapak samsul huda', 4, '11.2', '', 'Rt 2 rw 1 jant', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (122, 'Bapak suryanto', 3, '8.399999999999999', '', 'Janti rt 3 rw 1', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (123, 'Jamilil', 4, '11.2', '', 'Graha tirta', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (124, 'Rizal', 2, '5.6', '', 'Brigjen katamso gang V e', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (125, 'Rendy', 2, '5.6', '', 'RT 18 RW 1', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (126, 'Ibu Aisyah', 2, '5.6', '', ' RT 03 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (127, 'Bapak mad zakarya', 2, '5.6', '', 'Janti rt 03 rw 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (128, 'Bpk. Naimun', 5, '14', '', 'RT03', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (129, 'Ibu Linasih', 1, '2.8', '', 'RT 03 ', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (130, 'Bapak Ardi Kushartantyo', 4, '11.2', '128000', 'Makarya Binangun Xa/12', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (131, 'Bpk Sigit', 3, '8.399999999999999', '', 'RT 03 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (132, 'Ibu Siamah', 3, '8.399999999999999', '', 'RT18 RW01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (133, ' Bpk.Choiruddin ', 4, '11.2', '', 'RT 18', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (134, 'Bpk.Mad J', 4, '11.2', '', 'RT 18', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (135, 'Bpk.Zainuri', 3, '8.399999999999999', '', 'RT 18', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (136, 'Bok Rokhim', 5, '14', '', 'Rt 19 Rw 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (137, 'Ibu rani', 4, '11.2', '', 'Rt 19 Rw 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (138, 'Bpk Taufik', 4, '11.2', '', 'RT 19', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (139, 'Bu Ismiati', 1, '2.8', '', 'RT 19', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (140, 'H Jufri', 2, '5.6', '', 'RT 03 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (141, 'Bpk Munasan', 5, '14', '', 'RT 01 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (142, 'Bpk Sunarto', 8, '22.4', '', 'RT 19 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (143, 'Hari Supriyadi', 3, '8.399999999999999', '96000', 'RT. 03 RT. 01 Janti', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (144, 'Rumanto', 2, '5.6', '', 'Makarya Binangun H-12', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (145, 'Bpk Haru', 3, '8.399999999999999', '96000', 'RT 20 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (146, 'Bpk Mudji Surachman', 5, '14', '', 'RT 18 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (147, 'Bpk Saiful', 4, '11.2', '', 'RT 02', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (148, 'Bpk Solikin', 3, '8.399999999999999', '', 'RT 01 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (149, 'Ibu Aulia Roihana', 2, '5.6', '', 'RT 01 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (150, 'Bpk Ulil', 1, '2.8', '', 'RT 01 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (151, 'Bpk Sapii', 3, '8.399999999999999', '', 'RT 01 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (153, 'Ibu Poniati', 2, '5.6', '', 'RT 01 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (154, 'Bpk Prabowo', 4, '11.2', '', 'RT 01 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (155, 'Ibu Winda', 3, '8.399999999999999', '', 'RT 01 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (156, 'Siska', 3, '8.399999999999999', '', 'RT 01 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (158, 'M Apriadi S', 2, '5.6', '', 'RT 01 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (159, 'Bpk Supri', 3, '8.399999999999999', '', 'RT 01 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (160, 'Bpk Rowi', 2, '5.6', '', 'RT 01 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (161, 'Bpk Hasyim', 4, '11.2', '', 'RT 01 RW 01', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (162, 'Hamsah', 4, '11.2', '128000', 'Janti rt 03', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (163, 'Argi', 6, '16.799999999999997', '', 'Janti rt 03', '2020-05-20', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (164, 'H. Tri Kardi. S', 3, '8.399999999999999', '', 'Janti RT.19 RW.01', '2020-05-20', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (165, 'Tri Kardi Astuti', 1, '2.8', '', 'Janti RT.19 RW.01', '2020-05-20', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (166, 'Bapak. H. Mutholib', 1, '2.8', '', 'Janti RT.19 RW.01', '2020-05-20', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (167, 'Bp.sukarji', 2, '5.6', '', 'RT.20', '2020-05-20', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (168, 'Bp. Sayuti', 1, '2.8', '', 'RT.20', '2020-05-20', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (169, 'Bp.khoirul', 2, '5.6', '', 'RT.20', '2020-05-20', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (171, 'Bapak isa', 7, '19.599999999999998', '', 'Janti RT 2 RW 1', '2020-05-21', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (172, 'Bapak panut dan ibu sulasih', 2, '5.6', '', 'Janti', '2020-05-21', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (173, 'Agus s', 5, '14', '160000', 'Rt 02', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (174, 'Anton', 12, '33.599999999999994', '', 'Rt 19', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (175, 'Bp. Rahman', 3, '8.399999999999999', '', 'Rt. 02', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (176, 'Mulyo H', 3, '8.399999999999999', '', 'Rt 01', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (177, 'Hafidz', 3, '8.399999999999999', '', 'Rt 02', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (178, 'Jihan ', 1, '2.8', '', 'Kureksari', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (179, 'Bp. Mansur', 5, '14', '', 'Rt. 03', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (180, 'Bp. Kistoro', 2, '5.6', '', 'Rri', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (181, 'Bp. Sukaji', 1, '2.8', '', 'Rt. 18', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (182, 'Bp. Sobik', 2, '5.6', '', 'Rt. 18', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (183, 'Siti ma\'rufah', 3, '8.399999999999999', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (184, 'Siti anisa', 1, '2.8', '', 'Siwalan kerto', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (185, 'Fajar H', 2, '5.6', '', 'Siwalan kerto', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (186, 'Bpk Amusiri', 4, '11.2', '128000', 'Balongpoh', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (187, 'Bapak adrianto', 4, '11.2', '', 'RT 19, RW 01', '2020-05-21', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (188, 'Bapak adi', 4, '11.2', '', 'RT 19, RW 01', '2020-05-21', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (189, 'Mas Wawan', 3, '8.399999999999999', '96000', 'RT 19', '2020-05-21', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (190, 'Bpk Muji', 3, '8.399999999999999', '', 'RT. 20', '2020-05-21', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (191, 'Syarifudin', 2, '5.6', '', 'RT 20', '2020-05-21', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (192, 'Bpk Nuri', 3, '8.399999999999999', '', 'RT 20', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (193, 'Bpk Alex', 3, '8.399999999999999', '96000', 'RT 02', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (194, 'Bpk Asep', 3, '8.399999999999999', '', 'RT 02', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (195, 'Bpk Mahfud', 3, '8.399999999999999', '', 'RT 19', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (196, 'Bapak imam', 1, '2.8', '', 'Janti, RT 02, RW 01', '2020-05-21', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (197, 'Bapak arifin', 4, '11.2', '', 'Janti, RT 02, RW 01', '2020-05-21', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (198, 'Pak Adi. lukmanto', 4, '11.2', '128000', 'Rt 18 ', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (199, 'Bpk Sumijo', 5, '14', '', 'RT 01', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (200, 'Bu Diana', 2, '5.6', '', 'RT 01', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (201, 'Bapak. Hery', 1, '2.8', '', 'Rt 18 rw. 01', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (202, 'Alfin', 2, '5.6', '', 'Rt. 03 Rw 01', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (203, 'Bapak. Malik', 1, '2.8', '', 'Rt. 18 Rw 01', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (204, 'Bapak Subangga ', 7, '19.599999999999998', '224000', 'Jl. Jatayu U23 - Rewwin', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (205, 'Ibu siti', 4, '11.2', '', 'Janti rt.02', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (206, 'Bapak. Sunaryo', 11, '30.799999999999997', '', 'Rt 1 Rw 1', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (207, 'Bapak nur', 2, '5.6', '64000', 'RT 18', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (208, 'Bapak Bambang', 4, '11.2', '', 'RT 03', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (209, 'Bapak Irfan', 3, '8.399999999999999', '', 'RT 03', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (210, 'Bapak Nasichin', 4, '11.2', '128000', 'RT 01', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (211, 'Bapak Bani', 13, '36.4', '', 'RT 20', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (212, 'Bapak Taufiq', 4, '11.2', '', 'RT 19', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (213, 'Maulana', 3, '8.399999999999999', '', 'RT 19', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (214, 'Bapak Jalil', 4, '11.2', '128000', 'RT 19', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (215, 'Bapak Paijo Rustam', 4, '11.2', '', 'Makarya Binangun', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (216, 'Riski', 1, '2.8', '', 'RT 19', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (217, 'Bunda', 1, '2.8', '', 'RT 19', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (218, 'Fajar nur laba', 4, '11.2', '', 'RT 02 Rw 01', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (219, 'Mas andi', 4, '11.2', '', 'RT 19 RW 01', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (220, 'Bapak Mangsor Ali', 5, '14', '', 'Siwalankerto', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (221, 'Baitul', 1, '2.8', '', 'RT 02', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (222, 'Kiara', 1, '2.8', '', 'RT 02', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (223, 'Bapak Slamet', 5, '14', '', 'RT 02', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (224, 'Bapak Rasidi', 3, '8.399999999999999', '', 'RT 19', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (225, 'Duki Randika', 3, '8.399999999999999', '', 'RT 19', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (226, 'Juanto', 2, '5.6', '', 'RT 20', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (227, 'Grendis', 7, '19.599999999999998', '', 'RT 01', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (228, 'Bapak Yanto', 5, '14', '', 'RT 03', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (229, 'Bpk.Safrudin', 4, '11.2', '', 'RT 02', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (230, 'Bpk.Narto', 4, '11.2', '', 'RT.02', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (231, 'Bpk samian', 3, '8.399999999999999', '', 'Rt. 02. Rw 01', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (233, 'Ghofur', 4, '11.2', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (234, 'Tugino', 2, '5.6', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (235, 'Agus', 3, '8.399999999999999', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (236, 'Alfi', 3, '8.399999999999999', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (237, 'Bu mun', 2, '5.6', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (238, 'Khasan', 2, '5.6', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (239, 'Mahfudon', 5, '14', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (240, 'Mislan', 4, '11.2', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (241, 'Feri', 3, '8.399999999999999', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (242, 'Yauman', 2, '5.6', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (243, 'Haryono', 2, '5.6', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (244, 'Minarno', 6, '16.799999999999997', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (245, 'Warto', 4, '11.2', '', 'RT.20', '2020-05-21', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (246, 'Bapak Purnomo', 1, '2.8', '', 'Janti RT.19 RW.01', '2020-05-21', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (247, 'Ibu Nur Majida', 1, '2.8', '', 'Janti RT.19 RW.01', '2020-05-21', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (248, 'Bu Diah', 2, '5.6', '', 'Janti RT.19 RW.01', '2020-05-21', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (249, 'Bapak Andri ', 2, '5.6', '', 'Janti RT.19 RW.01', '2020-05-21', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (250, 'Bapak Sukardi', 2, '5.6', '', 'Janti RT.19 RW.01', '2020-05-21', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (251, 'Samsul', 2, '5.6', '', 'Janti RT.19 RW.01', '2020-05-21', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (252, 'Bpk Rodhi', 5, '14', '', 'RT 02', '2020-05-21', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (253, 'Ryan', 1, '2.8', '', 'RT 02', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (254, 'Bapak Didit', 4, '11.2', '', 'RT 02', '2020-05-21', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (255, 'Bapak Weli', 3, '8.399999999999999', '', 'RT 20', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (256, 'Bu Rusmiati', 2, '5.6', '', 'RT 02', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (257, 'Bapak Manali', 2, '5.6', '', 'RT 03', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (258, 'Bapak Edi Sutrisno', 4, '11.2', '128000', 'RT 20', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (259, 'Bapak miswanto', 3, '8.399999999999999', '', 'RT 20 RW 01', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (260, 'Bapak agus purnomo', 4, '11.2', '', 'RT 20 RW 01', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (261, 'Ibu ifa', 3, '8.399999999999999', '', 'RT 03 RW 01', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (262, 'Bpk. Salim', 5, '14', '', 'RT02', '2020-05-22', 'Widi');
INSERT INTO `tbl_zakat_fitrah` VALUES (263, 'Bpk. Sugeng Adi Purnomo', 10, '28', '', 'RT01', '2020-05-22', 'Widi');
INSERT INTO `tbl_zakat_fitrah` VALUES (264, 'Ratna', 1, '2.8', '', 'RT19', '2020-05-22', 'Widi');
INSERT INTO `tbl_zakat_fitrah` VALUES (265, 'Bpk. Sukri', 5, '14', '', 'RT18', '2020-05-22', 'Widi');
INSERT INTO `tbl_zakat_fitrah` VALUES (266, 'Bpk. Uslan', 1, '2.8', '32000', 'Jl. Brigjen katamso RT01 ', '2020-05-22', 'Widi');
INSERT INTO `tbl_zakat_fitrah` VALUES (267, 'Nasifa, Fadila, Friska', 3, '8.399999999999999', '', 'Janti', '2020-05-22', 'Widi');
INSERT INTO `tbl_zakat_fitrah` VALUES (268, 'Bpk. Sunari', 4, '11.2', '', 'RT02', '2020-05-22', 'Widi');
INSERT INTO `tbl_zakat_fitrah` VALUES (269, 'Bpk. Wahyu Triatmojo', 4, '11.2', '128000', 'Perum RRI Blog B13', '2020-05-22', 'Widi');
INSERT INTO `tbl_zakat_fitrah` VALUES (270, 'Bpk. Dayat', 4, '11.2', '', 'RT03', '2020-05-22', 'Widi');
INSERT INTO `tbl_zakat_fitrah` VALUES (271, 'Hj. Muawanah', 1, '2.8', '', 'RT 02 RW 01', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (272, 'Bapak agus', 4, '11.2', '', 'RT 02 RW 01', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (273, 'H. Ruddy', 5, '14', '', 'Jl. Bougenvil no. 74 graha tirta', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (274, 'Ibu Zahro', 3, '8.399999999999999', '', 'Janti rt 2', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (275, 'Bapak fatkur', 4, '11.2', '', 'Rt 18', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (277, 'Bpk. Allun Senjaya', 3, '8.399999999999999', '96.000', 'Makarya Binangun A5', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (278, 'Bpk Achmad junaidi a', 2, '5.6', '', 'Rt 3 rw 01', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (279, 'Bpk. Anang', 5, '14', '', 'RT20', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (280, 'Bpk. Kadiono', 6, '16.799999999999997', '', 'RT01', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (281, 'Ibu luluk masrufah', 1, '2.8', '32000', '', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (282, 'Bpk Rizki', 5, '14', '', 'Rewwin', '2020-05-22', 'Rafli');
INSERT INTO `tbl_zakat_fitrah` VALUES (283, 'Bpk. Aris Cahyadi', 3, '25.2', '', 'Jl. Brigjen Katamso', '2020-05-22', 'Widi');
INSERT INTO `tbl_zakat_fitrah` VALUES (284, 'Bpk. Eko', 3, '8.399999999999999', '', 'RT19', '2020-05-22', 'Widi');
INSERT INTO `tbl_zakat_fitrah` VALUES (285, 'Bpk. Saipul', 1, '2.8', '', 'RT18', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (286, 'Ugik Sutipto', 2, '5.6', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (287, 'Bapak Arif', 5, '14', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (288, 'Bpk. Ghofur', 4, '11.2', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (289, 'Bpk. Luqmanul', 3, '8.399999999999999', '', 'RT20', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (290, 'Bpk. Sukirman', 3, '8.399999999999999', '', 'RT01', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (291, 'Bpk. Kholil', 4, '11.2', '', 'RT03', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (292, 'Bpk. Achmad', 4, '11.2', '128000', 'Tirta Burgenvil', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (293, 'Bpk. Mardi', 2, '5.6', '', 'Janti', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (294, 'Bpk. Marwah Dhani', 2, '5.6', '64000', 'Sidoarjo', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (295, 'Bu Yati', 3, '8.399999999999999', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (296, 'Bapak hendra', 4, '11.2', '128000', 'Rt 20', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (297, 'Bapak samian', 4, '11.2', '', 'Rt01', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (298, 'Delfi anjani', 3, '8.399999999999999', '', 'Rt 03', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (299, 'Bu khotimah', 1, '2.8', '', 'Rt 03', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (300, 'Pak eko', 3, '8.399999999999999', '', 'Tirta bougenvil', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (301, 'Bpk. Matakub', 4, '11.2', '', 'Janti', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (302, 'Bpk. Bambang', 9, '25.2', '', 'Tirta Bugenvil 44', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (303, 'Mbah Sutomo', 7, '19.599999999999998', '', 'RT01', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (304, 'Bpk. Samsul', 4, '11.2', '', 'Rt02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (305, 'Bpk. Siswanto', 4, '11.2', '', 'RT20', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (306, 'Ibu Akhadiyah', 3, '8.399999999999999', '', 'Gg. 5 C', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (307, 'H. Nuril Huda', 5, '14', '', 'RT20', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (308, 'Bpk. Jawani', 6, '16.799999999999997', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (309, 'Bpk. Suyanto', 3, '8.399999999999999', '', 'Rat19', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (310, 'Bpk. Wawan', 2, '5.6', '64000', 'Gg.V 171', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (311, 'Bpk. Nayik', 1, '2.8', '', 'RT03', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (312, 'Bpk. Iwan', 5, '14', '160000', 'RT07', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (313, 'Bpk. Rohmat T.', 5, '14', '', 'RT01', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (314, 'Bpk. Dicky', 5, '14', '160000', 'Tirta Skasiyah', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (315, 'Bpk. Sulton', 8, '22.4', '', 'RT01', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (316, 'Bpk. Tio', 2, '5.6', '', 'Wedoro', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (317, 'Bpk. Ayid', 4, '11.2', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (318, 'Bpk. Puji', 3, '8.399999999999999', '', 'RT18', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (319, 'Bpk. Fajar P', 3, '8.399999999999999', '', 'Jl. Wilis kepuh permai', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (320, 'Bpk. Hadi', 6, '16.799999999999997', '', 'RT03', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (321, 'Ibu Umi', 2, '5.6', '', 'RT18', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (322, 'Bpk. Ubed', 2, '5.6', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (323, 'Situ nur hasanah', 3, '8.399999999999999', '', 'RT01', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (324, 'Bpk. Jahuri', 3, '8.399999999999999', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (325, 'Ibu sami', 4, '11.2', '', 'RT2', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (326, 'Bpk. Usman', 3, '8.399999999999999', '', 'Rt03', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (327, 'Bpk. Samiran', 5, '14', '', 'RT18', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (328, 'Bpk. Supriono', 5, '14', '', 'RT01', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (329, 'Bpk.  Ermahadi', 3, '8.399999999999999', '', 'RT19', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (330, 'Bpk. Sumarlan', 4, '11.2', '', 'RT01', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (331, 'Bpk. Sadali', 4, '11.2', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (332, 'Bpk. Firdaus Faisal', 3, '8.399999999999999', '', 'RRI', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (333, 'Bpk. Hendri', 3, '8.399999999999999', '', 'Janti', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (334, 'Bpk. Rudi', 4, '11.2', '128000', 'RT18', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (335, 'Bpk. Roykhan', 1, '2.8', '32000', 'RT03', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (336, 'Bpk. Herianto s', 6, '16.799999999999997', '192000', 'Ngingas', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (337, 'Bpk. Hendri', 2, '5.6', '', 'RT18', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (338, 'Bpk. Aris b', 3, '8.399999999999999', '', 'RT20', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (339, 'Bpk. Hariono', 4, '11.2', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (340, 'Bpk. Haris S', 5, '14', '', 'Rt20', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (341, 'Bpk. Irianto', 3, '8.399999999999999', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (342, 'Bpk. Imron', 4, '11.2', '128000', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (343, 'Bpk. Miftahul Hadi', 5, '14', '', 'RRI', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (344, 'Imam Taufik', 4, '11.2', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (345, 'Ibu Sundari', 1, '2.8', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (346, 'Nuril', 1, '2.8', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (347, 'Bpk. Jupri', 3, '8.399999999999999', '', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (348, 'Ibu Sariya', 1, '2.8', '32000', 'RT03', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (349, 'Bpk. Asiyah', 1, '2.8', '32000', 'RT02', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (350, 'Ibu Nafsiyah', 4, '11.2', '130000', 'RT03', '2020-05-22', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (351, 'Ust abdi', 2, '5.6', '', 'Rt 2', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (352, 'Bpk, supriyanto', 2, '5.6', '', 'RT3', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (353, 'Bpk. Dedik M', 6, '16.799999999999997', '', 'RT 18', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (354, 'Bpk. Alauddin', 4, '11.2', '', 'Wedoro PP NOVENA', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (355, 'Bpk tri wijaya yulianto, ibu krisna fitriani, putri berrly', 3, '8.399999999999999', '', 'Janti Gg 5D', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (356, 'Bpk. Febri', 3, '8.399999999999999', '', 'Kavling bbc no 66', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (357, 'Bpk. Gunawan', 2, '5.6', '', 'RT 01', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (358, 'Bpk.kurniadi', 2, '5.6', '', 'RT 03', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (359, 'Bpk. Saipul', 2, '5.6', '', 'RT 03', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (360, 'Yanuindri ', 3, '8.399999999999999', '', 'RT 20', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (361, 'Bpk. Sahid', 2, '5.6', '', 'RT 02', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (362, 'Bpk. Shiwa', 4, '11.2', '', 'Rt 2', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (363, 'Bpk. Sudjadmiko', 7, '19.599999999999998', '', 'RT 18', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (364, 'Bpk. Heri wahyudi', 4, '11.2', '128000', 'Janti', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (365, 'Bpk. Jalil', 1, '2.8', '', 'RT 2', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (366, 'Miftachur Rozzaq', 3, '8.399999999999999', '', 'Jl. Anggrek 3 kureksari', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (367, 'Abah gatot', 7, '19.599999999999998', '', 'Hanil jaya', '2020-05-23', 'Firman');
INSERT INTO `tbl_zakat_fitrah` VALUES (368, 'H. Syaiful Hadi', 4, '11.2', '', 'RT. 18 RW. 1 Janti Waru', '2020-05-23', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (369, 'Ari Kurniawan', 6, '16.799999999999997', '', 'Aa', '2020-05-23', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (370, 'Nur Azizah', 1, '2.8', '', 'RT. 13 RW. 02 Janti Waru', '2020-05-23', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (371, 'M. Hasyim', 1, '2.8', '', 'RT. 13 RW. 02 Janti', '2020-05-23', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (372, 'Kevin', 1, '2.8', '', 'RT. 13 RW. 02 Janti', '2020-05-23', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (373, 'Sochi Kadarusman', 2, '5.6', '', 'RT. 20 RW. 01 Janti Waru', '2020-05-23', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (374, 'Iman', 1, '2.8', '', 'Jambangan Sby', '2020-05-23', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (375, 'Siti Rukayah', 1, '2.8', '', 'Jambangan Sby.', '2020-05-23', 'FIAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (376, 'Rosid', 4, '11.2', '', 'Janti RT.19 RW.01', '2020-05-23', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (377, 'Ibu Susana', 2, '5.6', '', 'Janti RT.19 RW.01', '2020-05-23', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (378, 'Adi ', 3, '8.399999999999999', '', 'Janti RT.19 RW.01', '2020-05-23', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (379, 'Rama', 1, '2.8', '', 'Janti RT.19 RW.01', '2020-05-23', 'SYAHRUL');
INSERT INTO `tbl_zakat_fitrah` VALUES (380, 'Eddi darmawan', 7, '19.599999999999998', '', 'RT.20', '2020-05-23', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (381, 'Saiful', 5, '14', '', 'RT.20', '2020-05-23', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (382, 'Sumiati', 1, '2.8', '', 'RT.20', '2020-05-23', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (383, 'Munasri', 1, '2.8', '', 'RT.20', '2020-05-23', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (384, 'Topik', 5, '14', '', 'RT.20', '2020-05-23', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (385, 'Angga', 4, '11.2', '', 'RT.20', '2020-05-23', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (386, 'Arif', 4, '11.2', '', 'RT.20', '2020-05-23', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (387, 'Gianto', 6, '16.799999999999997', '', 'RT.20', '2020-05-23', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (388, 'Zainun', 1, '2.8', '', 'RT.20', '2020-05-23', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (389, 'Bp.yulianto', 3, '8.399999999999999', '', 'RT.20', '2020-05-23', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (390, 'Toni h.', 5, '14', '', 'RT.20', '2020-05-23', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (391, 'Bp. Sipin', 2, '5.6', '', 'RT.20', '2020-05-23', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (392, 'Novan', 4, '11.2', '', 'RT. 02 RW 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (393, 'M. Badrul Qomar', 4, '11.2', '', 'RT. 19 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (394, 'Hamba Allah ', 2, '5.6', '', 'RT.20', '2020-05-23', 'WAWAN');
INSERT INTO `tbl_zakat_fitrah` VALUES (395, 'Didik Suprianto', 6, '16.799999999999997', '', 'RT. 18 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (396, 'M. Yasin', 5, '14', '', 'RT. 02 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (397, 'Abdur Rosyid', 3, '8.399999999999999', '', 'RT. 02 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (398, 'M. Tohir', 4, '11.2', '', 'RT. 03 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (399, 'Hermanto', 1, '2.8', '', 'RT. 18 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (400, 'Kuwat', 4, '11.2', '128000', 'RT. 02 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (401, 'Alfian Nur Rizky', 1, '2.8', '', 'RT. 02 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (402, 'Alfianti Nur Rizky', 1, '2.8', '', 'RT. 02 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (403, 'Bayu', 5, '14', '', 'RT. 02 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (404, 'Dwi Ikhmawan', 5, '14', '160000', 'Surabaya', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (405, 'Juwartatik', 2, '5.6', '', 'RT. 19 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (406, 'Deny Oktavianto', 1, '2.8', '32000', 'Pengkol Kedungrejo', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (407, 'Agus Nur Salim', 5, '14', '', 'RT. 18 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (408, 'M. Nasrullah', 5, '14', '', 'RT. 03 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (409, 'M. Rahmat Fahmi', 3, '8.399999999999999', '', 'RT. 03 RW. 01 Janti Waru', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (410, 'Gus Fajar Rohmatullah', 1, '2.8', '', 'RT 02 ', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (411, 'Pulung', 10, '28', '320000', 'Graha', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (412, 'Setya april', 1, '2.8', '', 'Kedung rejo', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (413, 'Kusmana mandiri', 1, '2.8', '', 'Graha', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (414, 'Rizki vegasari', 1, '2.8', '', 'Graha', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (415, 'Deandra azzahra', 1, '2.8', '', 'Graha', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (416, 'Danendra alzio', 1, '2.8', '', 'Graha', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (417, 'M iswahyu', 1, '2.8', '', 'Janti', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (418, 'Isnuri', 1, '2.8', '', 'Janti', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (419, 'Dicky', 3, '8.399999999999999', '96000', 'Janti', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (420, 'Sulfi cahyani', 1, '2.8', '', 'Kedung', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (421, 'Bondan Artandyo', 5, '14', '160000', 'Graha Tirta Dahlia 93', '2020-05-23', 'RIZKI');
INSERT INTO `tbl_zakat_fitrah` VALUES (422, 'Moch. Firman Firdaus', 2, '5.6', '100000', 'Rt1', '2020-08-13', 'Firman');

-- ----------------------------
-- Table structure for tbl_zakat_maal
-- ----------------------------
DROP TABLE IF EXISTS `tbl_zakat_maal`;
CREATE TABLE `tbl_zakat_maal`  (
  `id_zakat_maal` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pemberi_zakat` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kategori_zakat` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nominal_zakat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tanggal` date NULL DEFAULT NULL,
  `petugas1` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `petugas2` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_zakat_maal`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_zakat_maal
-- ----------------------------
INSERT INTO `tbl_zakat_maal` VALUES (2, 'Ibu Lina ', 'fidyah', '150000', 'Rewwin', '2020-05-17', 'hafid', '', '10 Hari');
INSERT INTO `tbl_zakat_maal` VALUES (16, 'Lukman Hakim', 'maal', '2000000', 'Graha Tirta Akasia No. 36', '2020-05-13', 'Firman', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (17, 'Bu sri amah', 'is', '10000', 'Janti, RT 02, RW 01', '2020-05-17', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (18, 'Nanuk susilowati', 'fidyah', '360000', 'Jln dewi sartika utara 6 pnge', '2020-05-18', 'FIAN', '', 'Zakan');
INSERT INTO `tbl_zakat_maal` VALUES (19, 'Wiwik', 'is', '4000', 'GSI', '2020-05-18', 'FIAN', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (20, 'Bapak Mahmud', 'fidyah', '120000', 'Janti Rt01.Rw01', '2020-05-18', 'RIZKI', '1', 'Tidak berpuasa 5 hari dikarenakan sakit');
INSERT INTO `tbl_zakat_maal` VALUES (21, 'Bu Prapto', 'fidyah', '240000', 'RT 18 RW 01', '2020-05-18', 'FIAN', '', 'Sakit ');
INSERT INTO `tbl_zakat_maal` VALUES (22, 'Bpk Agus Sugiantoro', 'is', '18000', 'RT 02 RW 01', '2020-05-19', 'hafid', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (23, 'Bpk. Riva', 'is', '2000', 'RT03', '2020-05-18', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (24, 'Munfaati karimah', 'fidyah', '360000', 'RT02', '2020-05-20', 'FIAN', '', 'Menyusui / 30 hari');
INSERT INTO `tbl_zakat_maal` VALUES (25, 'Bapak sigit', 'maal', '100000', 'RT 02, RW 01', '2020-05-18', 'Rafli', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (26, 'Wahyu Romadony', 'is', '18000', 'Magetan', '2020-05-19', 'Rafli', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (27, 'H. Abdul Manann', 'maal', '500000', 'Wedoro masjid', '2020-05-19', 'Rafli', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (28, 'Bpk Sunarto', 'is', '50000', 'RT 19 RW 01', '2020-05-20', 'FIAN', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (29, 'Hari Supriyadi', 'is', '4000', 'RT. 03 RW. 01 Janti Waru', '2020-05-20', 'FIAN', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (31, 'H. Sukani', 'is', '300000', 'RT 20, RW 01', '2020-05-20', 'Rafli', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (32, 'Bu suminten ( 30 hari )', 'fidyah', '360000', 'Rt. 19', '2020-05-21', 'WAWAN', '', 'Lansia ');
INSERT INTO `tbl_zakat_maal` VALUES (33, 'Gangsar motor', 'maal', '750000', 'Janti, RT 02, RW 01', '2020-05-21', 'RIZKI', '2', '');
INSERT INTO `tbl_zakat_maal` VALUES (34, 'Bapak sunaryo', 'is', '50000', 'Rt 1 Rw 1', '2020-05-21', 'Rafli', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (35, 'Bapak Slamet', 'is', '50000', 'RT 02', '2020-05-21', 'Rafli', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (36, 'Juanto', 'maal', '200000', 'RT 20', '2020-05-21', 'Rafli', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (37, 'Bu Kikis', 'maal', '1000000', 'Makarya Binangun', '2020-05-22', 'Rafli', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (38, 'Bapak sarip', 'is', '100000', 'RT 03 RW 01', '2020-05-22', 'Rafli', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (39, 'Ibu ifa', 'is', '104000', 'RT 03 RW 01', '2020-05-22', 'Rafli', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (40, 'Bpk. Sukri', 'is', ' 250000', 'RT 18', '2020-05-22', 'Firman', '4', '');
INSERT INTO `tbl_zakat_maal` VALUES (41, 'Bpk. Dayat', 'is', '150000', 'RT03', '2020-05-22', 'Widi', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (42, 'Bpk. Allun senjaya', 'is', '4000', 'Makarya Bnangun a5', '2020-05-22', 'Rafli', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (43, 'Bpk. Kadiono', 'is', '18000', 'RT01', '2020-05-22', 'Rafli', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (44, 'Ibu luluk masrufah', 'is', '38000', '', '2020-05-22', 'Rafli', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (45, 'Bpk. Samiran', 'is', '5000', 'RT18', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (46, 'Etik Purwoningsih', 'fidyah', '25 kg', 'RT01', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (47, 'Bpk.Rudi', 'is', '2000', 'RT18', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (48, 'Bpk. Roikhon', 'is', '18000', 'Janti', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (49, 'Bpk. Ahmadi', 'is', '8000', 'RT03', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (50, 'Ibu Hasnah', 'maal', '400000', 'RT18', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (51, 'Bpk. Setiawan', 'ps', '200000', 'RT02', '2020-05-22', 'RIZKI', '2', '');
INSERT INTO `tbl_zakat_maal` VALUES (53, 'Mbah Sutomo', 'maal', '1000000', 'RT01', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (54, 'Bpk. Aksin', 'is', '250000', '', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (55, 'Bpk. Artono', 'maal', '300000', 'RT02', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (56, 'Bpk. Aris Budiman', 'is', '200000', 'RT02', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (57, 'Bpk. Sadali', 'is', '250000', 'RT02', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (58, 'Bpk. Makmun', 'is', '300000', 'RT03', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (59, 'Bpk. Imron', 'maal', '300000', 'RT02', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (60, 'Bpk. Imron', 'is', '18000', 'RT02', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (61, 'Miftahul Hadi', 'is', '100000', 'RRI', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (62, 'H. Mulyadi', 'is', '100000', 'RT18', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (63, 'Bpk. Sumarlan', 'is', '150000', 'RT01', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (64, 'Ibu Linasih', 'fidyah', '360000', 'RT03', '2020-05-22', 'RIZKI', '', 'Usia\r\n');
INSERT INTO `tbl_zakat_maal` VALUES (65, 'Bpk. Bambang ', 'maal', '2000000', 'Makariya Binangun R12', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (66, 'H. Nuril Huda', 'is', '200000', 'RT20', '2020-05-22', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (67, 'Bpk. Abdul rochim', 'maal', '100000', 'RT 18', '2020-05-23', 'Firman', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (68, 'Ari Kurniawan', 'is', '200000', 'RT. 18 RW. 01 Janti Waru', '2020-05-23', 'FIAN', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (69, 'Tri R.', 'is', '400000', 'RT. 18 RW. 01 Janti Waru', '2020-05-23', 'FIAN', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (70, 'Bpk. Soetikno', 'is', '67000', 'RT. 18 RW. 01 Janti Waru', '2020-05-23', 'FIAN', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (71, 'H. Suyono', 'maal', '300000', 'RT20', '2020-05-23', 'Widi', '6', '');
INSERT INTO `tbl_zakat_maal` VALUES (72, 'Deny Oktavianto', 'is', '3000', 'Pengkol Kedungrejo', '2020-05-23', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (73, 'Aan', 'maal', '1000000', 'RT. 18', '2020-05-23', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (74, 'M.Nasrullah', 'maal', '350000', 'Pepelegi', '2020-05-23', 'RIZKI', '', '');
INSERT INTO `tbl_zakat_maal` VALUES (75, 'Desi, susanto, diego', 'ps', '100000', 'Gedangan sidoarjo', '2020-05-23', 'Firman', '', '');

SET FOREIGN_KEY_CHECKS = 1;
