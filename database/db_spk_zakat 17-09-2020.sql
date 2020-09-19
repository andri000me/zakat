/*
 Navicat Premium Data Transfer

 Source Server         : Laragon
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : db_inventory

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 17/09/2020 08:27:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_item
-- ----------------------------
DROP TABLE IF EXISTS `tbl_item`;
CREATE TABLE `tbl_item`  (
  `id_item` int(11) NOT NULL AUTO_INCREMENT,
  `nama_item` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tipe_kategori` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `departemen` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tipe_item` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tipe_sub_item` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `brand_item` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jumlah` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tipe_sn` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `serial_number` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `panjang` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lebar` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tinggi` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `berat` varbinary(30) NULL DEFAULT NULL,
  `warna` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gambar_item` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pajak_kendaraan` date NULL DEFAULT NULL,
  `masa_berlaku_stnk` date NULL DEFAULT NULL,
  `masa_berlaku_kir` date NULL DEFAULT NULL,
  `no_kir` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun_pembelian` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `berlaku_kendaraan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `berlaku_stnk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `berlaku_kir_silo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_item`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_item
-- ----------------------------
INSERT INTO `tbl_item` VALUES (1, 'Hino Tronton Crane/FL235JW ', '1', '1', '14', '70', '70', '1', 'sn', ' - ', '<table cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:100px\">Tipe Mobil</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>FL8JNKA GGJW</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:100px\">Plat Nomor</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>L 9987 J</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:100px\">No Rangka</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>MJEFL8JWKCJG18140</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:100px\">No Mesin</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>J08EUGJ33138</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:100px\">Tonase</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>12400 Kg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '770', '246', '80', 0x33363430, 'HIJAU', 'ITEM_04092020021703.png', '2020-09-10', '2020-09-10', '2020-09-10', '123456789', '2020', '', '', '3 Bulan', 'Moch. Firman Firdaus', '2020-09-16');
INSERT INTO `tbl_item` VALUES (2, 'Hino Engkel / WU302R DUTRO10SDL MT', '1', '1', '14', '74', '70', '2', 'sn', '05192486.B / JT 151 1001 1 011', '<table cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:100px\">Tipe Mobil</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>Hino Engkel / WU302R DUTRO10SDL MT</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:100px\">Plat Nomor</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>L 8804 AB</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:100px\">No Rangka</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>MJEC1JGX1D5017716</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:100px\">No Mesin</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>W04DTPJ43947</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:100px\">Tonase</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>1.900&nbsp; &nbsp;KG</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '378', '170', '85', 0x32323430, 'HIJAU', 'ITEM_05092020045226.png', '0000-00-00', '0000-00-00', '0000-00-00', '', NULL, NULL, NULL, NULL, 'Moch. Firman Firdaus', '2020-09-08');
INSERT INTO `tbl_item` VALUES (3, 'Hino Tronton 9 M Putih FL8JNK GGJW/FL235JW', '1', '1', '14', '71', '70', '3', 'sn', '06778093.B / JT 151 1001 1 271', 'Type : Hino FL8JNK GGJW/FL235JW\r\nNopol : L 8264 AJ\r\nNo Rangka : MJEFL8JWKDJG20869\r\nNo Mesin : j08eugj40215\r\nTonase : 12,8 Ton', '920', '226', '90', 0x33363630, 'PUTIH', 'ITEM_02092020064826.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (4, 'MITSUBHISI TRONTON FIGHTER', '1', '1', '14', '71', '71', '1', 'sn', '16946894 / JT / 151 1001 1 150', 'Type : Mitsubishi / Fuso FN517ML2 SP LONG GX2 MT\r\nNopol : L 9967 GF\r\nNo Rangka : MHMFN517GFK000506\r\nNo Mesin : GD16L99176\r\nTonase : 12,8 Ton', '920', '226', '90', 0x33363630, 'ORANYE', 'ITEM_02092020065941.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (5, 'ISUZU ELF  Euro-2 Engkel  Putih  6 Roda', '1', '1', '14', '72', '72', '1', 'sn', '00106127.C / JT 151 1001 1 150', 'Type : Isuzu / NKR 71 E2 - 2 LWB\r\nNopol : L 9404 BJ\r\nNo Rangka : MHCNKR71LEJ057297\r\nNo Mesin : B057297\r\nTonase : 4,44 Ton', '580', '200', '90', 0x33343430, 'PUTIH', 'ITEM_02092020071428.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (6, 'Truck Mitsubishi Crane  Kuning        ', '1', '1', '14', '70', '71', '2', 'sn', '00105971.C 151 1001 1 12092019', 'Type : MITSUBISHI / FK415K\r\nNopol : L 9713 KM\r\nNo Rangka : FK415KA20840\r\nNo Mesin ; 6D14613526\r\nTonase : 6,4 Ton', '516', '200', '80', 0x32333030, 'KUNING', 'ITEM_02092020072228.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (7, 'ISUZU FVM 34W Tronton', '1', '1', '14', '71', '72', '2', 'sn', '00111375.C / JT 151 1001 1 090', 'Type : ISUZU FVM 34W\r\nNopol : L 9739 BL\r\nNo Rangka : MHCFVM34WEJ001786\r\nNo Mesin : 6HK1F000372\r\nTonase : 12,4 Ton', '965', '235', '110', 0x38353430, 'PUTIH', 'ITEM_02092020072908.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (8, 'MITSUBISHI  ENGKEL DIESEL Kuning FE84G 4x2MT', '1', '1', '14', '74', '71', '3', 'sn', '03731325.C / JT 151 1001 1 100', 'Type : Mitsubishi / FE84G 4x2MT\r\nNopol : L 8916 BM\r\nNo Rangka : MHMFE84P8EK006173\r\nNo Mesin : 4D34TK70833\r\nTonase : 4,5 Ton\r\n', '590', '200', '90', 0x33343430, 'KUNING', 'ITEM_02092020073828.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (9, 'ISUZU GIGA TRAILLER', '1', '1', '14', '76', '72', '3', 'sn', '06257991.C / JT 151 1001 1 121', 'Type : ISUZU / CVR 34 H 4X2\r\nNopol : L 9636 BQ\r\nNo Rangka : MHCGVR34HEJ000026\r\nNo Mesin : 6HK1658887\r\nTonase : 21,5 Ton', '1200', '250', '0', 0x39383030, 'PUTIH', 'ITEM_02092020074651.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (10, 'Mitsubishi FUSO', '1', '1', '14', '71', '71', '4', 'sn', '11758177.C / JT 151 1001 1 220', 'Type : Mitsubishi / FUSO FJYIW 6x2 MT\r\nNopol : L 9705 BU\r\nNo Rangka : MEC2161CGEP008779\r\nNo Mesin : 400950D0009011\r\nTonase : 12,46 Ton\r\n', '975', '230', '110', 0x3131313630, 'ORANYE', 'ITEM_02092020075430.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (11, 'Mitsubishi FUSO', '1', '1', '14', '71', '71', '5', 'sn', '11221740.C 151 1001 1 16012020', 'Type : Mitsubishi FUSO FJYIW 6x2 MT\r\nNopol : L 9389 BU\r\nNo Rangka ; MEC2161CGEP008775\r\nNo Mesin : 400950D0009009\r\nTonase : 12,46 Ton\r\n', '975', '230', '110', 0x3132313630, 'ORANYE', 'ITEM_02092020080038.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (12, 'Mitsubishi PS 135', '1', '1', '14', '73', '71', '6', 'sn', '18218236.C / JT 151 1001 1 180', 'Type : Mitsubishi / FE84G 4x2 MT\r\nNopol : L 8966 AK\r\nNo Rangka : MHMFE84P8FK007734\r\nNo Mesin : 4D34TL57903\r\nTonase : 4.4 Ton\r\n', '485', '210', '70', 0x33343230, 'KUNING', 'ITEM_02092020080903.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (13, 'Mitsubishi Canter', '1', '1', '14', '73', '71', '7', 'sn', '19582229 / JT 151 1001 1 15102', 'Type : Mitsubishi / FE84G 4x2 MT\r\nNopol : L 9064 GF\r\nNo Rangka : MHMFE84P8FK007951\r\nNo Mesin : 4D34TL82644\r\nTonase : 4.4 Ton\r\n', '485', '210', '70', 0x33343230, 'KUNING', 'ITEM_02092020081527.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (14, 'Mitsubishi Canter', '1', '1', '14', '73', '71', '8', 'sn', '19582228 / JT 151 1001 1 15102', 'Type : Mitsubishi / FE84G 4x2 MT\r\nNopol : L 9065 GF\r\nNo Rangka : MHMFE84P8FK007950\r\nNo Mesin : 4D34TL82647\r\nTonase : 4.4 Ton\r\n', '485', '210', '70', 0x33343230, 'KUNING', 'ITEM_02092020083009.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (15, 'ISUZU GIGA GVR TRACTOR HEAD TRAILER', '1', '1', '14', '76', '71', '4', 'sn', '16917119 / JT 151 1001 1 16032', 'Type : ISUZU / GVR 34 H 4X2\r\nNopol : L 9983 GF\r\nNo Rangka : MHCGVR34HFJ000233\r\nNo Mesin : 6HK1674748\r\nTonase : 21,5 Ton', '0', '250', '0', 0x39383030, 'PUTIH', 'ITEM_02092020083912.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (16, 'Mitsubishi Colt', '1', '1', '14', '75', '71', '9', 'sn', '11221738.C / JT 151 1001 1 160', 'Type : Mitsubishi / L 300 FB - R 4 X 2 MT\r\nNopol : L 9388 BU\r\nNo Rangka : MHMLOPU39EK160990\\\r\nNo Mesin : 4D56CK92019\r\nTonase : 1.07 Ton\r\n\r\nNOTE :KIR MATI\r\n\r\n', '417', '170', '93', 0x31323230, 'COKLAT TUA', 'ITEM_02092020085110.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (17, 'Suzuki Carry Pick-Up', '1', '1', '14', '75', '73', '1', 'sn', '14623098.C / JT 151 1001 1 180', 'Type : Suzuki ST150\r\nNopol : L 8480 AH\r\nNo Rangka : MHYE6L415FJ715358\r\nNo Mesin : G15AID999286\r\nTonase : 920 KG', '391', '171', '62', 0x383430, 'HITAM', 'ITEM_02092020085824.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (18, 'Suzuki Carry Pick-Up', '1', '1', '14', '75', '73', '2', 'sn', '14623120.C 151 1001 1 18062020', 'Type : Suzuki ST150\r\nNopol : L 8501 AH\r\nNo Rangka : MHYESL415FJ718696\r\nNo Mesin : G15AID1004287\r\nTonase : 920 KG', '391', '171', '62', 0x383430, 'PUTIH', 'ITEM_02092020090900.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (19, 'Suzuki Carry Pick-Up', '1', '1', '14', '75', '73', '3', 'sn', '16917034 / JT 151 1001 1 16032', 'Type : Suzuki ST150\r\nNopol : L 9971 GF\r\nNo Rangka : MHYESL415FJ750598\r\nNo Mesin : G15AID1036685\r\nTonase : 920 KG', '391', '171', '62', 0x383430, 'PUTIH', 'ITEM_02092020092031.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');
INSERT INTO `tbl_item` VALUES (20, 'Suzuki Carry Pick-Up', '1', '1', '14', '75', '73', '4', 'sn', '16917035 / JT 151 1001 1 16032', 'Type : SUZUKI / ST150\r\nNopol : L 9973 GF\r\nNo Rangka : MHYESL415FJ752345\r\nNo Mesin : G15AID1039614\r\nTonase : 920 Kg', '391', '171', '62', 0x383430, 'HITAM', 'ITEM_02092020092808.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Novita', '2020-09-02');

-- ----------------------------
-- Table structure for tbl_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_karyawan`;
CREATE TABLE `tbl_karyawan`  (
  `id_karyawan` int(255) NOT NULL AUTO_INCREMENT,
  `nik` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_karyawan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `departemen` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_karyawan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_karyawan
-- ----------------------------
INSERT INTO `tbl_karyawan` VALUES (1, '00015', 'IFFA SUGESTI', 5);
INSERT INTO `tbl_karyawan` VALUES (2, '00021', 'FRANSISCUS DARMASETIAWAN', 5);
INSERT INTO `tbl_karyawan` VALUES (3, '00022', 'TABITA NATALIA WIJONO', 5);
INSERT INTO `tbl_karyawan` VALUES (4, '00026', 'YENY MEGA APRILITA', 5);
INSERT INTO `tbl_karyawan` VALUES (5, '00066', 'YENI SOFIANA', 5);
INSERT INTO `tbl_karyawan` VALUES (6, '00076', 'OKTAVIA ANISA RAWINDRA', 5);
INSERT INTO `tbl_karyawan` VALUES (7, '00120', 'ATIKAH GHASSANI', 5);
INSERT INTO `tbl_karyawan` VALUES (8, '00378', 'MOHAMAD BAGIR ASSEGAFF', 5);
INSERT INTO `tbl_karyawan` VALUES (9, '00385', 'IRFAN HARYO', 5);
INSERT INTO `tbl_karyawan` VALUES (10, '00016', 'MAI DWI NURJAYANTI', 6);
INSERT INTO `tbl_karyawan` VALUES (11, '00028', 'CYNTHIA DEWI WONODJOJO', 6);
INSERT INTO `tbl_karyawan` VALUES (12, '00030', 'NATANAEL MARCELINO', 6);
INSERT INTO `tbl_karyawan` VALUES (13, '00121', 'HARI RINI SAKTRIANI', 6);
INSERT INTO `tbl_karyawan` VALUES (14, '00027', 'YULIATI KRESNAWATININGSIH', 7);
INSERT INTO `tbl_karyawan` VALUES (15, '00034', 'EMA DELIMA', 7);
INSERT INTO `tbl_karyawan` VALUES (16, '00048', 'DESI PUTRI MULYASARI', 7);
INSERT INTO `tbl_karyawan` VALUES (17, '00087', 'NATHANIA LISTYANI', 7);
INSERT INTO `tbl_karyawan` VALUES (18, '00088', 'MUHAMMAD KOMARUS ZAMAN SE', 7);
INSERT INTO `tbl_karyawan` VALUES (19, '00047', 'UMI NADHIRO', 8);
INSERT INTO `tbl_karyawan` VALUES (20, '00365', 'AYU NUR ANISA RAHMAWATI', 8);
INSERT INTO `tbl_karyawan` VALUES (21, '00067', 'JALIL HAKIM', 9);
INSERT INTO `tbl_karyawan` VALUES (22, '00007', 'YULIANA INDAH', 10);
INSERT INTO `tbl_karyawan` VALUES (23, '00086', 'MUHAMMAD UMAR FAROUQ', 11);
INSERT INTO `tbl_karyawan` VALUES (24, '00099', 'MEGA AFRIANDINI', 11);
INSERT INTO `tbl_karyawan` VALUES (25, '00105', 'FEBRIANI', 11);
INSERT INTO `tbl_karyawan` VALUES (26, '00232\r\n', 'FIKRI AHMAD RAIHAN', 11);
INSERT INTO `tbl_karyawan` VALUES (27, '00092\r\n', 'DANANG WISNU BUDIARTO', 12);
INSERT INTO `tbl_karyawan` VALUES (28, '00102\r\n', 'NARITA KURNIASARI', 12);
INSERT INTO `tbl_karyawan` VALUES (29, '00106\r\n', 'ADITYA BAGUS SETIAWAN', 12);
INSERT INTO `tbl_karyawan` VALUES (30, '00107\r\n', 'PRASMA WIGESTIKA', 12);
INSERT INTO `tbl_karyawan` VALUES (31, '00108\r\n', 'LINA KURNIA PUTRI', 12);
INSERT INTO `tbl_karyawan` VALUES (32, '00109\r\n', 'LESTARI AYU SETYOWATI MPsi', 12);
INSERT INTO `tbl_karyawan` VALUES (33, '00111\r\n', 'IRFAN REZA WAHYUDI', 12);
INSERT INTO `tbl_karyawan` VALUES (34, '00118\r\n', 'VINCENTIUS RAYLANDYANTO SAKSONO', 12);
INSERT INTO `tbl_karyawan` VALUES (35, '00122\r\n', 'TANIA MUTIA RANI', 12);
INSERT INTO `tbl_karyawan` VALUES (36, '00123\r\n', 'DILA LESTARI', 12);
INSERT INTO `tbl_karyawan` VALUES (37, '00124\r\n', 'RANI RIZQI MAWARDI', 12);
INSERT INTO `tbl_karyawan` VALUES (38, '00135\r\n', 'KEVIN MUZAMMIL', 12);
INSERT INTO `tbl_karyawan` VALUES (39, '00321\r\n', 'AHMAD IRFAN SOEHARTONO', 12);
INSERT INTO `tbl_karyawan` VALUES (40, '00322\r\n', 'ALISA QURRATA A\'YUN', 12);
INSERT INTO `tbl_karyawan` VALUES (41, '00101\r\n', 'SARA AFIDA PERTIWI', 13);
INSERT INTO `tbl_karyawan` VALUES (42, '00137\r\n', 'RUDI WAHONO', 14);
INSERT INTO `tbl_karyawan` VALUES (43, '00140\r\n', 'MOH JAMZURI', 14);
INSERT INTO `tbl_karyawan` VALUES (44, '00156\r\n', 'SAMSUL ARIFIN (forklift)', 14);
INSERT INTO `tbl_karyawan` VALUES (45, '00159\r\n', 'MUSTAKIM', 14);
INSERT INTO `tbl_karyawan` VALUES (46, '00166\r\n', 'SAMSUL HADI', 14);
INSERT INTO `tbl_karyawan` VALUES (47, '00170\r\n', 'MOHAMAD SAENI', 14);
INSERT INTO `tbl_karyawan` VALUES (48, '00180\r\n', 'SAEFUDIEN AINUL YAQIN', 14);
INSERT INTO `tbl_karyawan` VALUES (49, '00184\r\n', 'M HIDAYATULLAH', 14);
INSERT INTO `tbl_karyawan` VALUES (50, '00189\r\n', 'ABDUL ROCHIM', 14);
INSERT INTO `tbl_karyawan` VALUES (51, '00190\r\n', 'AHMAD', 14);
INSERT INTO `tbl_karyawan` VALUES (52, '00192\r\n', 'MUKHAMAD IMRON', 14);
INSERT INTO `tbl_karyawan` VALUES (53, '00205\r\n', 'SAMSUL ARIFIN (Muat)', 14);
INSERT INTO `tbl_karyawan` VALUES (54, '00208\r\n', 'M ILHAM HABIBI', 14);
INSERT INTO `tbl_karyawan` VALUES (55, '00210\r\n', 'MUHAMMAD SHOLIHIN', 14);
INSERT INTO `tbl_karyawan` VALUES (56, '00220\r\n', 'MOHAMAD ARIS', 14);
INSERT INTO `tbl_karyawan` VALUES (57, '00272\r\n', 'Drs EC Kurniawan Budi S', 14);
INSERT INTO `tbl_karyawan` VALUES (58, '00274\r\n', 'Hartono', 14);
INSERT INTO `tbl_karyawan` VALUES (59, '00277\r\n', 'Septian Novan Saputra', 14);
INSERT INTO `tbl_karyawan` VALUES (60, '00278\r\n', 'Hariono', 14);
INSERT INTO `tbl_karyawan` VALUES (61, '00279\r\n', 'Ardy Catur Prasetyo', 14);
INSERT INTO `tbl_karyawan` VALUES (62, '00280\r\n', 'M Sholeh', 14);
INSERT INTO `tbl_karyawan` VALUES (63, '00286\r\n', 'Zainul', 14);
INSERT INTO `tbl_karyawan` VALUES (64, '00288\r\n', 'Basuki Rachmad', 14);
INSERT INTO `tbl_karyawan` VALUES (65, '00289\r\n', 'Munir', 14);
INSERT INTO `tbl_karyawan` VALUES (66, '00290\r\n', 'Achmad Fachrizal', 14);
INSERT INTO `tbl_karyawan` VALUES (67, '00292\r\n', 'Fatkhurrozi', 14);
INSERT INTO `tbl_karyawan` VALUES (68, NULL, 'Agus Pirmadi', 14);
INSERT INTO `tbl_karyawan` VALUES (69, NULL, 'Wahyudi Ariyanto', 14);
INSERT INTO `tbl_karyawan` VALUES (70, NULL, 'Abdul Wahid', 14);
INSERT INTO `tbl_karyawan` VALUES (71, NULL, 'ENY SURONO', 14);
INSERT INTO `tbl_karyawan` VALUES (72, NULL, 'TEGUH TRI BANANDA', 14);
INSERT INTO `tbl_karyawan` VALUES (73, NULL, 'TRI MUCHAMAD RAMADANI', 14);
INSERT INTO `tbl_karyawan` VALUES (74, NULL, 'Antonius Wijaya', 14);
INSERT INTO `tbl_karyawan` VALUES (75, NULL, 'JUMADI', 15);
INSERT INTO `tbl_karyawan` VALUES (76, NULL, 'TEDY JULIZAR', 15);
INSERT INTO `tbl_karyawan` VALUES (77, NULL, 'ADE SUPRIYADI', 15);
INSERT INTO `tbl_karyawan` VALUES (78, NULL, 'SUKRON', 15);
INSERT INTO `tbl_karyawan` VALUES (79, NULL, 'RUDI HARMONO', 15);
INSERT INTO `tbl_karyawan` VALUES (80, NULL, 'DENY ARIWARDANA', 15);
INSERT INTO `tbl_karyawan` VALUES (81, NULL, 'WIDYA ADI CANDRA', 15);
INSERT INTO `tbl_karyawan` VALUES (82, NULL, 'UDIYONO', 15);
INSERT INTO `tbl_karyawan` VALUES (83, NULL, 'MISRI FIDIYANTO', 15);
INSERT INTO `tbl_karyawan` VALUES (84, NULL, 'MUCHTAR SUGIANTO', 15);
INSERT INTO `tbl_karyawan` VALUES (85, NULL, 'GRIFFITHE FADLY', 15);
INSERT INTO `tbl_karyawan` VALUES (86, NULL, 'HERI SETYAWATI', 1);
INSERT INTO `tbl_karyawan` VALUES (87, NULL, 'ANDREAS ARIANTO TEDJASUKMANA MSi', 1);
INSERT INTO `tbl_karyawan` VALUES (88, NULL, 'NIKEN SUSANTI GUSTINA', 16);
INSERT INTO `tbl_karyawan` VALUES (89, NULL, 'MARCELINA KUSUMA PUTRI', 17);
INSERT INTO `tbl_karyawan` VALUES (90, NULL, 'ANA MASRUROH', 17);
INSERT INTO `tbl_karyawan` VALUES (91, NULL, 'ELSA SIRLY ELOK WAHYU PANGESTI', 17);
INSERT INTO `tbl_karyawan` VALUES (92, NULL, 'BERNARDUS LEGOWO WIDHI', 17);
INSERT INTO `tbl_karyawan` VALUES (93, NULL, 'KRISTIAN PRASETYO LOBO', 2);
INSERT INTO `tbl_karyawan` VALUES (94, NULL, 'Novita Seviyani Febri', 2);
INSERT INTO `tbl_karyawan` VALUES (95, NULL, 'JEFTA TIMOTIUS', 2);
INSERT INTO `tbl_karyawan` VALUES (97, NULL, 'CINTYA DINDA PERMATASARI GUNAWAN', 18);
INSERT INTO `tbl_karyawan` VALUES (98, NULL, 'CITRA AGUSTINE PUTRI RUMPAIDUS', 18);
INSERT INTO `tbl_karyawan` VALUES (99, NULL, 'PHILLIPS DAVID BEMBUAIN', 18);
INSERT INTO `tbl_karyawan` VALUES (100, NULL, 'AHMAD ZAKI ABDUL HAMID AL HABA', 3);
INSERT INTO `tbl_karyawan` VALUES (101, NULL, 'ANTONIUS MARIO SATRIA HERMAWAN', 3);
INSERT INTO `tbl_karyawan` VALUES (102, NULL, 'SUYATNAN', 3);
INSERT INTO `tbl_karyawan` VALUES (103, NULL, 'SAMSUL ARIFIN (Kraksaan)', 3);
INSERT INTO `tbl_karyawan` VALUES (104, NULL, 'ZAINAL ARIFIN', 3);
INSERT INTO `tbl_karyawan` VALUES (105, NULL, 'HARIYANTO', 3);
INSERT INTO `tbl_karyawan` VALUES (106, NULL, 'MUHAMMAD LUKMAN', 3);
INSERT INTO `tbl_karyawan` VALUES (107, NULL, 'AGUS IWAN SAPUTRO', 3);
INSERT INTO `tbl_karyawan` VALUES (108, NULL, 'M ISHAQ', 3);
INSERT INTO `tbl_karyawan` VALUES (109, NULL, 'Toni Eko Farianto', 3);
INSERT INTO `tbl_karyawan` VALUES (110, NULL, 'Mochamad Irwan', 3);
INSERT INTO `tbl_karyawan` VALUES (111, NULL, 'ARIS SUPRIANTO', 3);
INSERT INTO `tbl_karyawan` VALUES (112, NULL, 'KUSMALI', 3);
INSERT INTO `tbl_karyawan` VALUES (113, NULL, 'AHMAD EFENDI', 3);
INSERT INTO `tbl_karyawan` VALUES (114, NULL, 'WIENAR OCTANIA', 19);
INSERT INTO `tbl_karyawan` VALUES (115, NULL, 'ABDI JAYANATA', 19);
INSERT INTO `tbl_karyawan` VALUES (116, NULL, 'ROSA APRILIYANTI', 19);
INSERT INTO `tbl_karyawan` VALUES (117, NULL, 'VIKO VALDIANO', 19);
INSERT INTO `tbl_karyawan` VALUES (118, NULL, 'FETY IZZA LUTHFIYAH', 20);
INSERT INTO `tbl_karyawan` VALUES (119, NULL, 'M GHOZALI', 21);
INSERT INTO `tbl_karyawan` VALUES (120, NULL, 'HERI SUSENO', 21);
INSERT INTO `tbl_karyawan` VALUES (121, NULL, 'ANDIK NURIADI', 21);
INSERT INTO `tbl_karyawan` VALUES (122, NULL, 'RAMI', 21);
INSERT INTO `tbl_karyawan` VALUES (123, NULL, 'ANUS PALIMANA', 21);
INSERT INTO `tbl_karyawan` VALUES (124, NULL, 'YULIUS LALO AWANG', 21);
INSERT INTO `tbl_karyawan` VALUES (125, NULL, 'MOHAMMAD ANWAR', 21);
INSERT INTO `tbl_karyawan` VALUES (126, NULL, 'MUHAMAD HASAN', 21);
INSERT INTO `tbl_karyawan` VALUES (127, NULL, 'TARIMUN', 21);
INSERT INTO `tbl_karyawan` VALUES (128, NULL, 'MOCHAMAD SAFII', 21);
INSERT INTO `tbl_karyawan` VALUES (129, NULL, 'KANTODIHARJO', 21);
INSERT INTO `tbl_karyawan` VALUES (130, NULL, 'ABDULLAH (KB)', 21);
INSERT INTO `tbl_karyawan` VALUES (131, NULL, 'Dominikus Bora', 21);
INSERT INTO `tbl_karyawan` VALUES (132, NULL, 'Kariono', 21);
INSERT INTO `tbl_karyawan` VALUES (133, NULL, 'Samsiyah', 21);
INSERT INTO `tbl_karyawan` VALUES (134, NULL, 'Edu Wahyana', 22);
INSERT INTO `tbl_karyawan` VALUES (135, NULL, 'FAUZIATUL IKRIMA', 23);
INSERT INTO `tbl_karyawan` VALUES (136, NULL, 'IMRON ROSADI', 23);
INSERT INTO `tbl_karyawan` VALUES (137, NULL, 'LUTDIYONO', 23);
INSERT INTO `tbl_karyawan` VALUES (138, NULL, 'ALWI', 23);
INSERT INTO `tbl_karyawan` VALUES (139, NULL, 'SYAIFUDIN', 23);
INSERT INTO `tbl_karyawan` VALUES (140, NULL, 'MUHAMMAD YOSI CHANDRA', 23);
INSERT INTO `tbl_karyawan` VALUES (141, NULL, 'ABDUL GHOFUR', 23);
INSERT INTO `tbl_karyawan` VALUES (142, NULL, 'AGUS EKO SUGIYANTO', 23);
INSERT INTO `tbl_karyawan` VALUES (143, NULL, 'AINUL YAKIN', 23);
INSERT INTO `tbl_karyawan` VALUES (144, NULL, 'NOVAN WIBISONO', 23);
INSERT INTO `tbl_karyawan` VALUES (145, NULL, 'MOHAMMAD RIZKY', 23);
INSERT INTO `tbl_karyawan` VALUES (146, NULL, 'YAZID BASTOMI', 23);
INSERT INTO `tbl_karyawan` VALUES (147, NULL, 'Agus Santoso', 23);
INSERT INTO `tbl_karyawan` VALUES (148, NULL, 'AJENG AYU HAPSARI', 24);
INSERT INTO `tbl_karyawan` VALUES (149, NULL, 'JM STEPHANIE HALIM', 24);
INSERT INTO `tbl_karyawan` VALUES (150, NULL, 'ROBBY PRADANA PUTRA', 24);
INSERT INTO `tbl_karyawan` VALUES (151, NULL, 'FATIN KUNIA LAILI', 24);
INSERT INTO `tbl_karyawan` VALUES (152, NULL, 'IMRON ROSADI', 24);
INSERT INTO `tbl_karyawan` VALUES (153, NULL, 'ARLIA HARINAWATI', 25);
INSERT INTO `tbl_karyawan` VALUES (154, NULL, 'MOH HAFIDZ WAHIDIL R', 25);
INSERT INTO `tbl_karyawan` VALUES (155, NULL, 'TOMY TRI YULIANTO', 25);
INSERT INTO `tbl_karyawan` VALUES (156, NULL, 'MUNIP', 25);
INSERT INTO `tbl_karyawan` VALUES (157, NULL, 'IKKE NISFUL LAILA', 25);
INSERT INTO `tbl_karyawan` VALUES (158, NULL, 'DADANG SETIAWAN', 25);
INSERT INTO `tbl_karyawan` VALUES (159, NULL, 'Lily Yuli Astiti', 25);
INSERT INTO `tbl_karyawan` VALUES (160, NULL, 'NADHIF AMRIJAL', 25);
INSERT INTO `tbl_karyawan` VALUES (161, NULL, 'MICHAEL WILLIAM FAITH HARAWAN', 25);
INSERT INTO `tbl_karyawan` VALUES (162, NULL, 'ADEK MIFTAKHUL HUDA', 25);
INSERT INTO `tbl_karyawan` VALUES (163, NULL, 'RIRIN DESI ARIS WATI', 25);
INSERT INTO `tbl_karyawan` VALUES (164, NULL, 'JOHANNES IE', 26);
INSERT INTO `tbl_karyawan` VALUES (165, NULL, 'RONALD PINANGKAAN', 26);
INSERT INTO `tbl_karyawan` VALUES (166, NULL, 'AGUNG SETYA HERMAWAN', 26);
INSERT INTO `tbl_karyawan` VALUES (167, NULL, 'MEIFI LEONY PRASTIWI', 26);
INSERT INTO `tbl_karyawan` VALUES (168, NULL, 'SUYONO', 26);
INSERT INTO `tbl_karyawan` VALUES (169, NULL, 'MANSUR', 26);
INSERT INTO `tbl_karyawan` VALUES (170, NULL, 'LUTFI', 26);
INSERT INTO `tbl_karyawan` VALUES (171, NULL, 'MUHAMAD DAWUD', 26);
INSERT INTO `tbl_karyawan` VALUES (172, NULL, 'MUHAMMAD MUSAFAK', 26);
INSERT INTO `tbl_karyawan` VALUES (173, NULL, 'ARIF MULYONO', 26);
INSERT INTO `tbl_karyawan` VALUES (174, NULL, 'NURIL ASWAD', 26);
INSERT INTO `tbl_karyawan` VALUES (175, NULL, 'ACHMAD EKO YULI PERMADI', 26);
INSERT INTO `tbl_karyawan` VALUES (176, NULL, 'NUR WAHYU', 26);
INSERT INTO `tbl_karyawan` VALUES (177, NULL, 'M SYARONI', 26);
INSERT INTO `tbl_karyawan` VALUES (178, NULL, 'MOCHAMAD AZQI', 26);
INSERT INTO `tbl_karyawan` VALUES (179, NULL, 'FEBRI ARIS MAULANA', 26);
INSERT INTO `tbl_karyawan` VALUES (180, NULL, 'AGUS SHOLEHADI', 26);
INSERT INTO `tbl_karyawan` VALUES (181, NULL, 'MOH NUR AMINULLOH', 26);
INSERT INTO `tbl_karyawan` VALUES (182, NULL, 'CLARISTA WIDYA PANGESTIKA', 26);
INSERT INTO `tbl_karyawan` VALUES (183, NULL, 'EMMY WOELANSARI', 26);
INSERT INTO `tbl_karyawan` VALUES (184, NULL, 'TIARA WARDANI', 26);
INSERT INTO `tbl_karyawan` VALUES (185, NULL, 'ANANTO SANDDY SUBAGIO', 26);
INSERT INTO `tbl_karyawan` VALUES (186, NULL, 'EKO EKFANTO', 26);
INSERT INTO `tbl_karyawan` VALUES (187, NULL, 'SYILMI NADJIB', 27);
INSERT INTO `tbl_karyawan` VALUES (188, NULL, 'ROSELLA NANDA WIDIANINGSIH', 27);
INSERT INTO `tbl_karyawan` VALUES (189, NULL, 'BAGUS PRIYO UTOMO', 27);
INSERT INTO `tbl_karyawan` VALUES (190, NULL, 'ZULHAN CHANI', 27);
INSERT INTO `tbl_karyawan` VALUES (191, NULL, 'MUKHAMMAD RIZQI ALFIAN', 27);
INSERT INTO `tbl_karyawan` VALUES (192, NULL, 'ABDUL KARIM', 27);
INSERT INTO `tbl_karyawan` VALUES (193, NULL, 'TRISTIAWAN PUTRA NURHABIBI', 27);
INSERT INTO `tbl_karyawan` VALUES (194, NULL, 'AGUNG PUTRA PRATAMA', 27);
INSERT INTO `tbl_karyawan` VALUES (195, NULL, 'BUDI UTOMO', 27);
INSERT INTO `tbl_karyawan` VALUES (196, NULL, 'BAGUS SUSILO', 27);
INSERT INTO `tbl_karyawan` VALUES (197, NULL, 'ILHAM PANCA NUGRAHA', 27);
INSERT INTO `tbl_karyawan` VALUES (198, NULL, 'ZIVACK AR RAZAK VELAYATIE', 27);
INSERT INTO `tbl_karyawan` VALUES (199, NULL, 'SALMAN BISYRI', 27);
INSERT INTO `tbl_karyawan` VALUES (200, NULL, 'MUHAMMAD YUSUF ST', 27);
INSERT INTO `tbl_karyawan` VALUES (201, NULL, 'ENDANG SETIANI', 27);
INSERT INTO `tbl_karyawan` VALUES (202, NULL, 'ALFIANDI AKBAR MS', 27);
INSERT INTO `tbl_karyawan` VALUES (203, NULL, 'IDA BAGUS ANDIKA HARVIDYANTO', 27);
INSERT INTO `tbl_karyawan` VALUES (204, NULL, 'ERI RUSDIONO', 27);
INSERT INTO `tbl_karyawan` VALUES (205, NULL, 'MUHAMMAD ROHMAN ALAIKA', 27);
INSERT INTO `tbl_karyawan` VALUES (206, NULL, 'MUKHAMAAD SAIFUL', 27);
INSERT INTO `tbl_karyawan` VALUES (207, NULL, 'M JAYADI', 27);
INSERT INTO `tbl_karyawan` VALUES (208, NULL, 'MOH ANDRIANTO FIRMANSYAH', 27);
INSERT INTO `tbl_karyawan` VALUES (209, NULL, 'RACHMAD DANI', 27);
INSERT INTO `tbl_karyawan` VALUES (210, NULL, 'Taufa Rismanto', 27);
INSERT INTO `tbl_karyawan` VALUES (211, NULL, 'Muhammat Ardian Safii', 27);
INSERT INTO `tbl_karyawan` VALUES (212, NULL, 'Jery Prayogo', 27);
INSERT INTO `tbl_karyawan` VALUES (213, NULL, 'NUR SURONO', 27);
INSERT INTO `tbl_karyawan` VALUES (214, NULL, 'SHINTA MUHAMMIDA', 27);
INSERT INTO `tbl_karyawan` VALUES (215, NULL, 'RINA SUSILAWATI', 27);
INSERT INTO `tbl_karyawan` VALUES (216, NULL, 'ZEIN BIMA', 27);
INSERT INTO `tbl_karyawan` VALUES (217, NULL, 'AHMAD ULUL AL BAB', 27);
INSERT INTO `tbl_karyawan` VALUES (218, NULL, 'MUHAMMAD IMAM FAUZI', 27);
INSERT INTO `tbl_karyawan` VALUES (219, NULL, 'MUHAMMAD INDRA ROHMADDILLAH', 27);
INSERT INTO `tbl_karyawan` VALUES (220, NULL, 'ALFIAN HERLANDA AFIESTA', 27);
INSERT INTO `tbl_karyawan` VALUES (221, NULL, 'WENDI KUSTIAR', 27);
INSERT INTO `tbl_karyawan` VALUES (222, NULL, 'MUHAMMAD AGUNG BIMANTARA', 27);
INSERT INTO `tbl_karyawan` VALUES (223, NULL, 'RUDDY VIALI PANGAU', 28);
INSERT INTO `tbl_karyawan` VALUES (224, NULL, 'NURVA\'IN', 29);
INSERT INTO `tbl_karyawan` VALUES (225, NULL, 'MOCH ARIF KURNIAWAN', 30);
INSERT INTO `tbl_karyawan` VALUES (226, NULL, 'MUCHAMMAD MUSTAIN', 30);
INSERT INTO `tbl_karyawan` VALUES (227, NULL, 'A BASORI', 30);
INSERT INTO `tbl_karyawan` VALUES (228, NULL, 'Mangun Kusumo Subandriyo', 30);
INSERT INTO `tbl_karyawan` VALUES (229, NULL, 'Surya Arya Santo', 30);
INSERT INTO `tbl_karyawan` VALUES (230, NULL, 'ARIFIN', 31);
INSERT INTO `tbl_karyawan` VALUES (231, NULL, 'M MUSTOFA', 31);
INSERT INTO `tbl_karyawan` VALUES (232, NULL, 'Berdik Ariyanto', 31);
INSERT INTO `tbl_karyawan` VALUES (233, NULL, 'RAKHMAT SEPTIAN DWI DARMAWAN', 31);
INSERT INTO `tbl_karyawan` VALUES (234, NULL, 'DIAH MUSTIKA SARI', 32);
INSERT INTO `tbl_karyawan` VALUES (235, NULL, 'SITI MAISAROH', 32);
INSERT INTO `tbl_karyawan` VALUES (236, NULL, 'NENIK', 33);
INSERT INTO `tbl_karyawan` VALUES (237, NULL, 'RISMA LESTARI', 33);
INSERT INTO `tbl_karyawan` VALUES (238, NULL, 'DINA SULISTYOWATI', 33);
INSERT INTO `tbl_karyawan` VALUES (239, NULL, 'ELLYZABETH PRICILLINA', 33);
INSERT INTO `tbl_karyawan` VALUES (240, NULL, 'SHEILA AYU ANDINI', 33);
INSERT INTO `tbl_karyawan` VALUES (241, NULL, 'GURITNO KUNTOROYAKTI', 33);
INSERT INTO `tbl_karyawan` VALUES (242, NULL, 'LAURENTIUS WRESGIE PRINGGO YUNAWAN', 33);
INSERT INTO `tbl_karyawan` VALUES (243, NULL, 'VICTOR JEREMIA TOBING', 33);
INSERT INTO `tbl_karyawan` VALUES (244, NULL, 'MOCH SOLEH', 33);
INSERT INTO `tbl_karyawan` VALUES (245, NULL, 'SUMINTO', 33);
INSERT INTO `tbl_karyawan` VALUES (246, NULL, 'ABDUL HALIM', 33);
INSERT INTO `tbl_karyawan` VALUES (247, NULL, 'Siauw Yu Li', 33);
INSERT INTO `tbl_karyawan` VALUES (248, NULL, 'FX R BAMBANG GUTAMA', 33);
INSERT INTO `tbl_karyawan` VALUES (249, NULL, 'SITI ISTIARSIH SE', 33);
INSERT INTO `tbl_karyawan` VALUES (250, NULL, 'HARSO WALUYO', 33);
INSERT INTO `tbl_karyawan` VALUES (251, NULL, 'MUSTAFID', 33);
INSERT INTO `tbl_karyawan` VALUES (252, NULL, 'IIS SUSANTI', 33);
INSERT INTO `tbl_karyawan` VALUES (253, NULL, 'KHARISMA LARASATI', 35);
INSERT INTO `tbl_karyawan` VALUES (254, NULL, 'IZHARUDDIN AZHAR ALIF KHANS E MM', 35);
INSERT INTO `tbl_karyawan` VALUES (255, NULL, 'ARDYAN WAHYU PRADICTA UTAMA', 35);
INSERT INTO `tbl_karyawan` VALUES (256, NULL, 'YUDHI APRIANTO', 35);
INSERT INTO `tbl_karyawan` VALUES (257, NULL, 'Triono Hadi', 36);
INSERT INTO `tbl_karyawan` VALUES (258, NULL, 'FEBBY DAMAIRIA', 36);
INSERT INTO `tbl_karyawan` VALUES (259, NULL, 'TRI WAHYONO', 36);
INSERT INTO `tbl_karyawan` VALUES (260, NULL, 'YUSUF ARI JATMIKO', 36);
INSERT INTO `tbl_karyawan` VALUES (261, NULL, 'AJENG CAHYANING PERTIWI', 36);
INSERT INTO `tbl_karyawan` VALUES (262, NULL, 'GRACE NOVITA', 37);
INSERT INTO `tbl_karyawan` VALUES (263, NULL, 'PUTRI AYU INDAHSARI', 37);
INSERT INTO `tbl_karyawan` VALUES (264, NULL, 'Panan', 38);
INSERT INTO `tbl_karyawan` VALUES (265, NULL, 'SUJATMIKO DONOHADI', 39);
INSERT INTO `tbl_karyawan` VALUES (266, NULL, 'Rahadi Wiyono', 40);
INSERT INTO `tbl_karyawan` VALUES (267, NULL, 'Sutarti', 40);
INSERT INTO `tbl_karyawan` VALUES (268, NULL, 'Made Dhanang Dewata', 40);
INSERT INTO `tbl_karyawan` VALUES (269, NULL, 'RETTY EKSA KHARDIAS', 41);
INSERT INTO `tbl_karyawan` VALUES (270, NULL, 'YANNY KRISTIYOWATI', 4);
INSERT INTO `tbl_karyawan` VALUES (271, NULL, 'SUWARJI', 4);
INSERT INTO `tbl_karyawan` VALUES (272, NULL, 'SEGER', 4);
INSERT INTO `tbl_karyawan` VALUES (273, NULL, 'SEKARNYOTO', 4);
INSERT INTO `tbl_karyawan` VALUES (274, NULL, 'MIFTACHUL ANWAR', 4);
INSERT INTO `tbl_karyawan` VALUES (275, NULL, 'DIDIK SETIAWAN', 4);
INSERT INTO `tbl_karyawan` VALUES (276, NULL, 'SAMSUL ARIFIN (Kramat)', 4);
INSERT INTO `tbl_karyawan` VALUES (277, NULL, 'SOLEH', 4);
INSERT INTO `tbl_karyawan` VALUES (278, NULL, 'M SUKARTONO', 4);
INSERT INTO `tbl_karyawan` VALUES (279, NULL, 'ALEX SUBANDRIO', 4);
INSERT INTO `tbl_karyawan` VALUES (280, NULL, 'SOLIKHIN', 4);
INSERT INTO `tbl_karyawan` VALUES (281, NULL, 'MASHUDI', 4);
INSERT INTO `tbl_karyawan` VALUES (282, NULL, 'EDI SUDARMAWAN', 4);
INSERT INTO `tbl_karyawan` VALUES (283, NULL, 'M RIDUWAN', 4);
INSERT INTO `tbl_karyawan` VALUES (284, NULL, 'ARIS SISWANTO', 4);
INSERT INTO `tbl_karyawan` VALUES (285, NULL, 'AKHMAD RIDUWAN', 4);
INSERT INTO `tbl_karyawan` VALUES (286, NULL, 'UBAEDILLAH', 4);
INSERT INTO `tbl_karyawan` VALUES (287, NULL, 'ALIYADI', 4);
INSERT INTO `tbl_karyawan` VALUES (288, NULL, 'SUNARI', 4);
INSERT INTO `tbl_karyawan` VALUES (289, NULL, 'Natalius Watratan', 4);
INSERT INTO `tbl_karyawan` VALUES (290, NULL, 'Suhartono', 4);
INSERT INTO `tbl_karyawan` VALUES (291, NULL, 'Agus Riyadi', 4);
INSERT INTO `tbl_karyawan` VALUES (292, NULL, 'Abdul Shomat Alatas', 4);
INSERT INTO `tbl_karyawan` VALUES (293, NULL, 'Daud Waluyo Surip', 4);
INSERT INTO `tbl_karyawan` VALUES (294, NULL, 'Legian Silfanes', 4);
INSERT INTO `tbl_karyawan` VALUES (295, NULL, 'Mustofa', 4);
INSERT INTO `tbl_karyawan` VALUES (296, NULL, 'Moh Khoirur Rohimin', 4);
INSERT INTO `tbl_karyawan` VALUES (297, NULL, 'NOVA DATNO SUDARWANTO', 4);
INSERT INTO `tbl_karyawan` VALUES (298, NULL, 'M ASHAR KOLIQ', 4);
INSERT INTO `tbl_karyawan` VALUES (300, NULL, 'MOCH. FIRMAN FIRDAUS', 2);

-- ----------------------------
-- Table structure for tbl_master_brand
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_brand`;
CREATE TABLE `tbl_master_brand`  (
  `id_brand` int(11) NOT NULL AUTO_INCREMENT,
  `kode_brand` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_brand` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_brand`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_brand
-- ----------------------------
INSERT INTO `tbl_master_brand` VALUES (1, 'APL', 'APPLE');
INSERT INTO `tbl_master_brand` VALUES (2, 'SUS', 'ASUS');
INSERT INTO `tbl_master_brand` VALUES (3, 'AXO', 'AXIOO');
INSERT INTO `tbl_master_brand` VALUES (4, 'ACR', 'ACER');
INSERT INTO `tbl_master_brand` VALUES (5, 'CAN', 'CANON');
INSERT INTO `tbl_master_brand` VALUES (6, 'EPS', 'EPSON');
INSERT INTO `tbl_master_brand` VALUES (7, 'MKT', 'MIKROTIK');
INSERT INTO `tbl_master_brand` VALUES (8, 'VAI', 'VAIO');
INSERT INTO `tbl_master_brand` VALUES (9, 'LGT', 'LOGITECH');
INSERT INTO `tbl_master_brand` VALUES (10, 'LNV', 'LENOVO');
INSERT INTO `tbl_master_brand` VALUES (11, 'SNY', 'SONY');
INSERT INTO `tbl_master_brand` VALUES (12, 'VGN', 'VGEN');
INSERT INTO `tbl_master_brand` VALUES (13, 'SND', 'SANDISK');
INSERT INTO `tbl_master_brand` VALUES (14, 'DEL', 'DELL');
INSERT INTO `tbl_master_brand` VALUES (15, 'HP', 'HP');
INSERT INTO `tbl_master_brand` VALUES (16, 'TSB', 'TOSHIBA');
INSERT INTO `tbl_master_brand` VALUES (17, 'SMS', 'SAMSUNG');
INSERT INTO `tbl_master_brand` VALUES (18, 'XOM', 'XIAOMI');
INSERT INTO `tbl_master_brand` VALUES (19, 'HWI', 'HUAWEI');
INSERT INTO `tbl_master_brand` VALUES (20, 'TPL', 'TP LINK');
INSERT INTO `tbl_master_brand` VALUES (21, 'DLI', 'D LINK');
INSERT INTO `tbl_master_brand` VALUES (22, 'UNF', 'UNIFI');
INSERT INTO `tbl_master_brand` VALUES (23, 'BRT', 'BROTHER');
INSERT INTO `tbl_master_brand` VALUES (24, 'KNG', 'KINGSTON');
INSERT INTO `tbl_master_brand` VALUES (25, 'VSP', 'VISIPRO');
INSERT INTO `tbl_master_brand` VALUES (26, 'WD', 'WESTERN DIGITAL (WD)');
INSERT INTO `tbl_master_brand` VALUES (27, 'SGT', 'SEAGATE');
INSERT INTO `tbl_master_brand` VALUES (28, 'MXT', 'MAXTOR');
INSERT INTO `tbl_master_brand` VALUES (29, 'CRS', 'CORSAIR');
INSERT INTO `tbl_master_brand` VALUES (30, 'SPC', 'SPC');
INSERT INTO `tbl_master_brand` VALUES (31, 'SBD', 'SIMBADDA');
INSERT INTO `tbl_master_brand` VALUES (32, 'ELG', 'ENLIGHT');
INSERT INTO `tbl_master_brand` VALUES (33, 'BIF', 'BIO FINGER');
INSERT INTO `tbl_master_brand` VALUES (34, 'LG', 'LG');
INSERT INTO `tbl_master_brand` VALUES (35, 'AOC', 'AOC');
INSERT INTO `tbl_master_brand` VALUES (36, 'PNC', 'PANASONIC');
INSERT INTO `tbl_master_brand` VALUES (37, 'NEO', 'NEOPOST');
INSERT INTO `tbl_master_brand` VALUES (38, 'VTR', 'VOTRE');
INSERT INTO `tbl_master_brand` VALUES (39, 'GGB', 'GIGABYTE');
INSERT INTO `tbl_master_brand` VALUES (40, 'ASR', 'ASROCK');
INSERT INTO `tbl_master_brand` VALUES (41, 'ECS', 'ECS');
INSERT INTO `tbl_master_brand` VALUES (42, 'BIO', 'BIOSTAR');
INSERT INTO `tbl_master_brand` VALUES (43, 'ITL', 'INTEL');
INSERT INTO `tbl_master_brand` VALUES (44, 'AMD', 'AMD');
INSERT INTO `tbl_master_brand` VALUES (45, 'NVD', 'NVIDIA');
INSERT INTO `tbl_master_brand` VALUES (46, 'MSI', 'MSI');
INSERT INTO `tbl_master_brand` VALUES (47, 'ZBR', 'ZEBRA');
INSERT INTO `tbl_master_brand` VALUES (48, 'COM', 'COMMSCOPE');
INSERT INTO `tbl_master_brand` VALUES (49, 'BEL', 'BELDEN');
INSERT INTO `tbl_master_brand` VALUES (50, 'KON', 'KONIC');
INSERT INTO `tbl_master_brand` VALUES (51, 'CEL', 'CELLKIT');
INSERT INTO `tbl_master_brand` VALUES (52, 'STR', 'STURDY');
INSERT INTO `tbl_master_brand` VALUES (53, 'PRO', 'PROLINK');
INSERT INTO `tbl_master_brand` VALUES (54, 'ABC', 'ABC');
INSERT INTO `tbl_master_brand` VALUES (55, 'AAK', 'ABC ALKALINE');
INSERT INTO `tbl_master_brand` VALUES (56, 'EVR', 'EVEREADY');
INSERT INTO `tbl_master_brand` VALUES (57, 'TE', 'TEAM ELITE');
INSERT INTO `tbl_master_brand` VALUES (58, 'APP', 'APOTOP');
INSERT INTO `tbl_master_brand` VALUES (59, 'ZKK', 'ZIKKO');
INSERT INTO `tbl_master_brand` VALUES (60, 'KAS', 'KASSEN');
INSERT INTO `tbl_master_brand` VALUES (61, 'DC', 'DEEP COOL');
INSERT INTO `tbl_master_brand` VALUES (62, 'ETW', 'ETWO');
INSERT INTO `tbl_master_brand` VALUES (63, 'STE', 'STEALTH');
INSERT INTO `tbl_master_brand` VALUES (64, 'HIK', 'HIKVISION');
INSERT INTO `tbl_master_brand` VALUES (65, 'YUM', 'YUME');
INSERT INTO `tbl_master_brand` VALUES (66, 'UTI', 'UTICON');
INSERT INTO `tbl_master_brand` VALUES (67, 'MIK', 'MIKOTEK');
INSERT INTO `tbl_master_brand` VALUES (68, 'POY', 'POLYTRON');
INSERT INTO `tbl_master_brand` VALUES (69, 'MKT', 'MAKITA');
INSERT INTO `tbl_master_brand` VALUES (70, 'HNO', 'Hino');
INSERT INTO `tbl_master_brand` VALUES (71, 'MIT', 'Mitsubhisi');
INSERT INTO `tbl_master_brand` VALUES (72, 'ISZ', 'Isuzu');
INSERT INTO `tbl_master_brand` VALUES (73, 'SZK', 'Suzuki');

-- ----------------------------
-- Table structure for tbl_master_category_item
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_category_item`;
CREATE TABLE `tbl_master_category_item`  (
  `id_kategori_item` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kategori_item` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_kategori_item` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori_item`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_category_item
-- ----------------------------
INSERT INTO `tbl_master_category_item` VALUES (1, 'APC', 'All Personal Computer');
INSERT INTO `tbl_master_category_item` VALUES (2, 'STR', 'Storage');
INSERT INTO `tbl_master_category_item` VALUES (3, 'RAM', 'RAM');
INSERT INTO `tbl_master_category_item` VALUES (4, 'PCA', 'PC Accessoris');
INSERT INTO `tbl_master_category_item` VALUES (5, 'GDT', 'Gadget');
INSERT INTO `tbl_master_category_item` VALUES (6, 'PRT', 'Printer');
INSERT INTO `tbl_master_category_item` VALUES (7, 'NET', 'Networking');
INSERT INTO `tbl_master_category_item` VALUES (8, 'MMA', 'Multimedia');
INSERT INTO `tbl_master_category_item` VALUES (9, 'TLS', 'Tools');
INSERT INTO `tbl_master_category_item` VALUES (10, 'CBL', 'Cables');
INSERT INTO `tbl_master_category_item` VALUES (11, 'IOT', 'Internet of Thinks');
INSERT INTO `tbl_master_category_item` VALUES (12, 'MBL', 'Mobil');
INSERT INTO `tbl_master_category_item` VALUES (13, 'MTR', 'Motor');
INSERT INTO `tbl_master_category_item` VALUES (14, 'TRC', 'Truck');

-- ----------------------------
-- Table structure for tbl_master_departemen
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_departemen`;
CREATE TABLE `tbl_master_departemen`  (
  `id_departemen` int(11) NOT NULL AUTO_INCREMENT,
  `kode_departemen` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_departemen` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `validation` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_departemen`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_departemen
-- ----------------------------
INSERT INTO `tbl_master_departemen` VALUES (1, 'GA', 'General Affair', NULL);
INSERT INTO `tbl_master_departemen` VALUES (2, 'IT', 'Information Technology', NULL);
INSERT INTO `tbl_master_departemen` VALUES (3, 'MN', 'Maintenance', NULL);
INSERT INTO `tbl_master_departemen` VALUES (4, 'TP', 'Transportasi', NULL);
INSERT INTO `tbl_master_departemen` VALUES (5, 'AP', 'Account Payable', NULL);
INSERT INTO `tbl_master_departemen` VALUES (6, 'AR', 'Account Receivable', NULL);
INSERT INTO `tbl_master_departemen` VALUES (7, 'AC', 'Accounting', NULL);
INSERT INTO `tbl_master_departemen` VALUES (8, 'BI', 'Business Improvement', NULL);
INSERT INTO `tbl_master_departemen` VALUES (9, 'CA', 'Comunication Affair', NULL);
INSERT INTO `tbl_master_departemen` VALUES (10, 'DI', 'Data Integration & Analysis', NULL);
INSERT INTO `tbl_master_departemen` VALUES (11, 'EG', 'Engineering', NULL);
INSERT INTO `tbl_master_departemen` VALUES (12, 'EP', 'Engineering Project', NULL);
INSERT INTO `tbl_master_departemen` VALUES (13, 'ES', 'Engineering Standar & RnD', NULL);
INSERT INTO `tbl_master_departemen` VALUES (14, 'FT', 'Factory', NULL);
INSERT INTO `tbl_master_departemen` VALUES (15, 'FO', 'Fleet Operation', NULL);
INSERT INTO `tbl_master_departemen` VALUES (16, 'HC', 'Human Capital', NULL);
INSERT INTO `tbl_master_departemen` VALUES (17, 'HR', 'Human Resources', NULL);
INSERT INTO `tbl_master_departemen` VALUES (18, 'LG', 'Legal', NULL);
INSERT INTO `tbl_master_departemen` VALUES (19, 'MB', 'Marketing & Branding', NULL);
INSERT INTO `tbl_master_departemen` VALUES (20, 'OH', 'O&HSE', NULL);
INSERT INTO `tbl_master_departemen` VALUES (21, 'OB', 'Office & Building Maintenance', NULL);
INSERT INTO `tbl_master_departemen` VALUES (22, 'PC', 'Permit, Certificates and Documents Office', NULL);
INSERT INTO `tbl_master_departemen` VALUES (23, 'PT', 'PPIC & Transport', NULL);
INSERT INTO `tbl_master_departemen` VALUES (24, 'PM', 'Procurement', NULL);
INSERT INTO `tbl_master_departemen` VALUES (25, 'PP', 'Production Planning Control', NULL);
INSERT INTO `tbl_master_departemen` VALUES (26, 'PJ', 'Project', NULL);
INSERT INTO `tbl_master_departemen` VALUES (27, 'PS', 'Proyek Pasang', NULL);
INSERT INTO `tbl_master_departemen` VALUES (28, 'QA', 'Quality Assurance', NULL);
INSERT INTO `tbl_master_departemen` VALUES (29, 'QC', 'Quality Control', NULL);
INSERT INTO `tbl_master_departemen` VALUES (30, 'QP', 'Quality Control Plant', NULL);
INSERT INTO `tbl_master_departemen` VALUES (31, 'QJ', 'Quality Control Project', NULL);
INSERT INTO `tbl_master_departemen` VALUES (32, 'RO', 'Roll On Site', NULL);
INSERT INTO `tbl_master_departemen` VALUES (33, 'SL', 'Sales', NULL);
INSERT INTO `tbl_master_departemen` VALUES (35, 'SR', 'Sales Retail', NULL);
INSERT INTO `tbl_master_departemen` VALUES (36, 'SF', 'Sales Retail Factory Outlet', NULL);
INSERT INTO `tbl_master_departemen` VALUES (37, 'SK', 'Sekretaris', NULL);
INSERT INTO `tbl_master_departemen` VALUES (38, 'ST', 'SITE', NULL);
INSERT INTO `tbl_master_departemen` VALUES (39, 'SH', 'Strategic Human Capital', NULL);
INSERT INTO `tbl_master_departemen` VALUES (40, 'TX', 'Tax', NULL);
INSERT INTO `tbl_master_departemen` VALUES (41, 'TS', 'Testing', NULL);

-- ----------------------------
-- Table structure for tbl_master_deskripsi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_deskripsi`;
CREATE TABLE `tbl_master_deskripsi`  (
  `id_deskripsi` int(255) NOT NULL AUTO_INCREMENT,
  `master_deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_deskripsi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_deskripsi
-- ----------------------------
INSERT INTO `tbl_master_deskripsi` VALUES (1, '<table cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:100px\">Tipe Mobil</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:100px\">Plat Nomor</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:100px\">No Rangka</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:100px\">No Mesin</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:100px\">Tonase</td>\r\n			<td style=\"text-align:center; width:30px\">:</td>\r\n			<td>&nbsp; &nbsp;KG</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n');

-- ----------------------------
-- Table structure for tbl_master_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_kategori`;
CREATE TABLE `tbl_master_kategori`  (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kd_kategori` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `category_name` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `validation` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_kategori
-- ----------------------------
INSERT INTO `tbl_master_kategori` VALUES (1, 'INV', 'Inventory', '2020-08-03');
INSERT INTO `tbl_master_kategori` VALUES (2, 'BBK', 'Bahan Baku', '2020-08-03');
INSERT INTO `tbl_master_kategori` VALUES (3, 'BJD', 'Barang Jadi', '2020-08-03');
INSERT INTO `tbl_master_kategori` VALUES (4, 'BPG', 'Barang Penolong', '2020-08-03');
INSERT INTO `tbl_master_kategori` VALUES (5, 'BPK', 'Barang Pembantu Kerja', '2020-08-03');

-- ----------------------------
-- Table structure for tbl_master_status
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_status`;
CREATE TABLE `tbl_master_status`  (
  `id_status` int(255) NOT NULL AUTO_INCREMENT,
  `nama_status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_status
-- ----------------------------
INSERT INTO `tbl_master_status` VALUES (1, 'New Request');
INSERT INTO `tbl_master_status` VALUES (2, 'Process');
INSERT INTO `tbl_master_status` VALUES (3, 'Done');
INSERT INTO `tbl_master_status` VALUES (4, 'Pending');

-- ----------------------------
-- Table structure for tbl_master_sub_category_item
-- ----------------------------
DROP TABLE IF EXISTS `tbl_master_sub_category_item`;
CREATE TABLE `tbl_master_sub_category_item`  (
  `id_sub_kategori_item` int(11) NOT NULL AUTO_INCREMENT,
  `kode_sub_kategori_item` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_sub_kategori_item` varchar(170) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kategori_item` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_sub_kategori_item`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_master_sub_category_item
-- ----------------------------
INSERT INTO `tbl_master_sub_category_item` VALUES (1, '0001', 'CPU Desktop', '1');
INSERT INTO `tbl_master_sub_category_item` VALUES (2, '0002', 'LCD Monitor', '1');
INSERT INTO `tbl_master_sub_category_item` VALUES (3, '0003', 'Keyboard', '1');
INSERT INTO `tbl_master_sub_category_item` VALUES (4, '0004', 'Mouse', '1');
INSERT INTO `tbl_master_sub_category_item` VALUES (5, '0005', 'Wireless Keyboard & Mouse', '1');
INSERT INTO `tbl_master_sub_category_item` VALUES (6, '0006', 'Wireless Keyboard', '1');
INSERT INTO `tbl_master_sub_category_item` VALUES (7, '0007', 'Wireless Mouse', '1');
INSERT INTO `tbl_master_sub_category_item` VALUES (8, '0008', 'Laptop', '1');
INSERT INTO `tbl_master_sub_category_item` VALUES (9, '0009', 'Laptop Charger', '1');
INSERT INTO `tbl_master_sub_category_item` VALUES (10, '0010', 'Laptop Bag', '1');
INSERT INTO `tbl_master_sub_category_item` VALUES (11, '0001', 'HDD', '2');
INSERT INTO `tbl_master_sub_category_item` VALUES (12, '0002', 'SSD', '2');
INSERT INTO `tbl_master_sub_category_item` VALUES (13, '0003', 'NAS', '2');
INSERT INTO `tbl_master_sub_category_item` VALUES (14, '0004', 'Flashdrive', '2');
INSERT INTO `tbl_master_sub_category_item` VALUES (15, '0005', 'Memory Card', '2');
INSERT INTO `tbl_master_sub_category_item` VALUES (16, '0006', 'Enclosure HDD', '2');
INSERT INTO `tbl_master_sub_category_item` VALUES (17, '0001', 'PC Desktop', '3');
INSERT INTO `tbl_master_sub_category_item` VALUES (18, '0002', 'Laptop', '3');
INSERT INTO `tbl_master_sub_category_item` VALUES (19, '0001', 'USB Cooler pad / Cooling Pad', '4');
INSERT INTO `tbl_master_sub_category_item` VALUES (20, '0002', 'USB Hub', '4');
INSERT INTO `tbl_master_sub_category_item` VALUES (21, '0003', 'Converter VGA to HDMI', '4');
INSERT INTO `tbl_master_sub_category_item` VALUES (22, '0004', 'Cleaning Kit', '4');
INSERT INTO `tbl_master_sub_category_item` VALUES (23, '0001', 'Handphone', '5');
INSERT INTO `tbl_master_sub_category_item` VALUES (24, '0002', 'Android Tablet', '5');
INSERT INTO `tbl_master_sub_category_item` VALUES (25, '0003', 'Telephone', '5');
INSERT INTO `tbl_master_sub_category_item` VALUES (26, '0004', 'Android Smartphone', '5');
INSERT INTO `tbl_master_sub_category_item` VALUES (27, '0001', 'Printer Laser', '6');
INSERT INTO `tbl_master_sub_category_item` VALUES (28, '0002', 'Printer Inkjet', '6');
INSERT INTO `tbl_master_sub_category_item` VALUES (29, '0003', 'Laser cartridge', '6');
INSERT INTO `tbl_master_sub_category_item` VALUES (30, '0004', 'Inkjet cartridge', '6');
INSERT INTO `tbl_master_sub_category_item` VALUES (31, '0005', 'Printer Dotmatrix', '6');
INSERT INTO `tbl_master_sub_category_item` VALUES (32, '0006', 'Electronic Typing Machine', '6');
INSERT INTO `tbl_master_sub_category_item` VALUES (33, '0007', 'Franking Machine', '6');
INSERT INTO `tbl_master_sub_category_item` VALUES (34, '0001', 'Router', '7');
INSERT INTO `tbl_master_sub_category_item` VALUES (35, '0002', 'Switch', '7');
INSERT INTO `tbl_master_sub_category_item` VALUES (36, '0003', 'Hub', '7');
INSERT INTO `tbl_master_sub_category_item` VALUES (37, '0004', 'Modem', '7');
INSERT INTO `tbl_master_sub_category_item` VALUES (38, '0005', 'Wifi', '7');
INSERT INTO `tbl_master_sub_category_item` VALUES (39, '0006', 'Mifi', '7');
INSERT INTO `tbl_master_sub_category_item` VALUES (40, '0007', 'USB Wifi Adapter', '7');
INSERT INTO `tbl_master_sub_category_item` VALUES (41, '0001', 'Projector', '8');
INSERT INTO `tbl_master_sub_category_item` VALUES (42, '0002', 'Wifi Projector', '8');
INSERT INTO `tbl_master_sub_category_item` VALUES (43, '0003', 'LCD TV', '8');
INSERT INTO `tbl_master_sub_category_item` VALUES (44, '0004', 'LCD Smart TV', '8');
INSERT INTO `tbl_master_sub_category_item` VALUES (45, '0005', 'LCD Screen', '8');
INSERT INTO `tbl_master_sub_category_item` VALUES (46, '0006', 'Android Box', '8');
INSERT INTO `tbl_master_sub_category_item` VALUES (47, '0007', 'Laser Pointer', '8');
INSERT INTO `tbl_master_sub_category_item` VALUES (48, '0008', 'Active Speaker', '8');
INSERT INTO `tbl_master_sub_category_item` VALUES (49, '0009', 'Headphone', '8');
INSERT INTO `tbl_master_sub_category_item` VALUES (50, '0010', 'Bluetooth Speaker', '8');
INSERT INTO `tbl_master_sub_category_item` VALUES (51, '0011', 'Bluetooth Headset', '8');
INSERT INTO `tbl_master_sub_category_item` VALUES (52, '0001', 'Blower', '9');
INSERT INTO `tbl_master_sub_category_item` VALUES (53, '0002', 'Brush', '9');
INSERT INTO `tbl_master_sub_category_item` VALUES (54, '0003', 'Screwdriver', '9');
INSERT INTO `tbl_master_sub_category_item` VALUES (55, '0004', 'Tang', '9');
INSERT INTO `tbl_master_sub_category_item` VALUES (56, '0005', 'Solder', '9');
INSERT INTO `tbl_master_sub_category_item` VALUES (57, '0001', 'RJ45 Cable', '10');
INSERT INTO `tbl_master_sub_category_item` VALUES (58, '0002', 'Power roll', '10');
INSERT INTO `tbl_master_sub_category_item` VALUES (59, '0003', 'HDMI', '10');
INSERT INTO `tbl_master_sub_category_item` VALUES (60, '0004', 'VGA', '10');
INSERT INTO `tbl_master_sub_category_item` VALUES (61, '0005', 'Wire Duct', '10');
INSERT INTO `tbl_master_sub_category_item` VALUES (62, '0006', 'Cable Zipper', '10');
INSERT INTO `tbl_master_sub_category_item` VALUES (63, '0007', 'cable Ties', '10');
INSERT INTO `tbl_master_sub_category_item` VALUES (64, '0008', 'Heat Shrink', '10');
INSERT INTO `tbl_master_sub_category_item` VALUES (65, '0001', 'CCTV Closed-circuit television', '11');
INSERT INTO `tbl_master_sub_category_item` VALUES (66, '0002', 'Gate Lock', '11');
INSERT INTO `tbl_master_sub_category_item` VALUES (67, '0003', 'power consumption monitor', '11');
INSERT INTO `tbl_master_sub_category_item` VALUES (68, '0004', 'Arduino', '11');
INSERT INTO `tbl_master_sub_category_item` VALUES (69, '0005', 'Raspberry pi', '11');
INSERT INTO `tbl_master_sub_category_item` VALUES (70, '0001', 'Tronton Crane', '14');
INSERT INTO `tbl_master_sub_category_item` VALUES (71, '0002', 'Tronton', '14');
INSERT INTO `tbl_master_sub_category_item` VALUES (72, '0003', 'ELF', '14');
INSERT INTO `tbl_master_sub_category_item` VALUES (73, '0004', 'Canter', '14');
INSERT INTO `tbl_master_sub_category_item` VALUES (74, '0005', 'Colt', '14');
INSERT INTO `tbl_master_sub_category_item` VALUES (75, '0006', 'Pick Up', '14');
INSERT INTO `tbl_master_sub_category_item` VALUES (76, '0007', 'Trailler', '14');

-- ----------------------------
-- Table structure for tbl_status
-- ----------------------------
DROP TABLE IF EXISTS `tbl_status`;
CREATE TABLE `tbl_status`  (
  `id_status` int(255) NOT NULL AUTO_INCREMENT,
  `nama_status` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_transaksi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_transaksi`;
CREATE TABLE `tbl_transaksi`  (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `no_po` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_po` date NULL DEFAULT NULL,
  `item` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `diberikan_oleh` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `diterima_oleh` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `validation` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_transaksi
-- ----------------------------
INSERT INTO `tbl_transaksi` VALUES (1, '12345678', '2020-09-02', '1', '6', '8', 'Moch. Firman Firdaus', '2020-09-02');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `keterangan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `date_created` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'Moch. Firman Firdaus', 'admin', 'e79c7323f62151abde47e29987b38859', 'akusayangkamu', 1, '2020-07-28');
INSERT INTO `tbl_user` VALUES (2, 'JEFTA', 'jefta', '95a435faacf56c5ed61022da3e8afae8', 'jefta', 1, '2020-08-01');

SET FOREIGN_KEY_CHECKS = 1;
