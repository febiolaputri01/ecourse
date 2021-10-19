/*
Navicat MySQL Data Transfer

Source Server         : SERVER_LARAGON
Source Server Version : 50724
Source Host           : 127.0.0.1:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2021-09-03 16:51:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `admin_username` varchar(128) NOT NULL,
  `admin_password` varchar(128) NOT NULL,
  `admin_view_password` varchar(128) NOT NULL,
  `admin_level` int(11) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '1');

-- ----------------------------
-- Table structure for mainmenu
-- ----------------------------
DROP TABLE IF EXISTS `mainmenu`;
CREATE TABLE `mainmenu` (
  `seq` int(11) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `active_menu` varchar(50) NOT NULL,
  `icon_class` varchar(50) NOT NULL,
  `link_menu` varchar(50) NOT NULL,
  `menu_akses` varchar(12) NOT NULL,
  `entry_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mainmenu
-- ----------------------------
INSERT INTO `mainmenu` VALUES ('9', '9', 'Beranda', '', 'fas fa-home fa-2x', 'Admin', '', '2020-04-18 06:02:37', null);
INSERT INTO `mainmenu` VALUES ('10', '10', 'Slider', '', 'fas fa-sliders-h fa-2x', 'C_slider', '', '2020-04-17 21:01:03', null);
INSERT INTO `mainmenu` VALUES ('11', '11', 'Kursus', '', 'fas fa-book-reader fa-2x', 'C_kursus', '', '2020-04-17 21:24:57', null);
INSERT INTO `mainmenu` VALUES ('16', '16', 'Kontak', '', 'fa fa-phone fa-2x', 'Kontak', '', '2020-04-18 04:39:42', null);
INSERT INTO `mainmenu` VALUES ('27', '27', 'Setting Ukuran', '', 'fas fa-cogs fa-2x', 'Setting_ukuran', '', '2020-03-13 20:53:59', null);
INSERT INTO `mainmenu` VALUES ('21', '21', 'Setting Title', '', 'fas fa-wrench fa-2x', 'Setting_title', '', '2020-03-13 20:51:06', null);
INSERT INTO `mainmenu` VALUES ('22', '22', 'Setting User', '', 'fas fa-user fa-2x', 'setting_user', '', '2020-03-13 20:51:10', null);
INSERT INTO `mainmenu` VALUES ('12', '12', 'Pengajar', '', 'fas fa-chalkboard-teacher fa-2x', 'C_pengajar', '', '2020-04-18 03:53:12', null);
INSERT INTO `mainmenu` VALUES ('15', '15', 'Tentang', '', 'fas fa-info fa-2x', 'C_tentang', '', '2020-04-18 04:42:24', null);
INSERT INTO `mainmenu` VALUES ('13', '13', 'Member', '', 'fas fa-users fa-2x', 'C_member', '', '2020-04-18 04:24:25', null);
INSERT INTO `mainmenu` VALUES ('14', '14', 'Pertanyaan', '', 'fas fa-question fa-2x', 'C_pertanyaan', '', '2020-04-18 04:24:32', null);

-- ----------------------------
-- Table structure for meta_beranda
-- ----------------------------
DROP TABLE IF EXISTS `meta_beranda`;
CREATE TABLE `meta_beranda` (
  `id_meta_beranda` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL,
  PRIMARY KEY (`id_meta_beranda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of meta_beranda
-- ----------------------------
INSERT INTO `meta_beranda` VALUES ('1', 'Berandae', 'keyworde', 'desce', '11');

-- ----------------------------
-- Table structure for meta_kontak
-- ----------------------------
DROP TABLE IF EXISTS `meta_kontak`;
CREATE TABLE `meta_kontak` (
  `id_meta_kontak` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL,
  PRIMARY KEY (`id_meta_kontak`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of meta_kontak
-- ----------------------------
INSERT INTO `meta_kontak` VALUES ('1', 'Kontake', 'keyworde', 'yryee', '11');

-- ----------------------------
-- Table structure for meta_produk
-- ----------------------------
DROP TABLE IF EXISTS `meta_produk`;
CREATE TABLE `meta_produk` (
  `id_meta_produk` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL,
  PRIMARY KEY (`id_meta_produk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of meta_produk
-- ----------------------------
INSERT INTO `meta_produk` VALUES ('1', 'Produke', 'keyworde', 'oooooe', '11');

-- ----------------------------
-- Table structure for meta_struktur
-- ----------------------------
DROP TABLE IF EXISTS `meta_struktur`;
CREATE TABLE `meta_struktur` (
  `id_meta_struktur` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL,
  PRIMARY KEY (`id_meta_struktur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of meta_struktur
-- ----------------------------
INSERT INTO `meta_struktur` VALUES ('1', 'Strukture', 'keyworde', 'alale', '11');

-- ----------------------------
-- Table structure for setting_ukuran
-- ----------------------------
DROP TABLE IF EXISTS `setting_ukuran`;
CREATE TABLE `setting_ukuran` (
  `id_setting_ukuran` int(11) NOT NULL,
  `ukuran_foto_slider` char(15) NOT NULL,
  `ukuran_foto_tentang` char(15) NOT NULL,
  `ukuran_foto_produk` char(15) NOT NULL,
  `ukuran_foto_galeri` char(15) NOT NULL,
  `footer` char(15) NOT NULL,
  PRIMARY KEY (`id_setting_ukuran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of setting_ukuran
-- ----------------------------
INSERT INTO `setting_ukuran` VALUES ('1', '1000x500', '1000x1000', '2000x2000', '400x500', '200x200');

-- ----------------------------
-- Table structure for submenu
-- ----------------------------
DROP TABLE IF EXISTS `submenu`;
CREATE TABLE `submenu` (
  `id_sub` int(11) NOT NULL,
  `nama_sub` varchar(50) NOT NULL,
  `mainmenu_idmenu` int(11) NOT NULL,
  `active_sub` varchar(20) NOT NULL,
  `icon_class` varchar(100) NOT NULL,
  `link_sub` varchar(50) NOT NULL,
  `sub_akses` varchar(12) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_sub`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of submenu
-- ----------------------------
INSERT INTO `submenu` VALUES ('1', 'Entry User', '8', '', '', 'User', '', '2017-10-18 21:28:25', null);
INSERT INTO `submenu` VALUES ('2', 'Kategori Produk', '4', '', '', 'Produk', '', '2017-10-18 21:34:17', null);
INSERT INTO `submenu` VALUES ('3', 'Produk', '4', '', '', 'Produk/detail', '', '2017-10-18 21:34:26', null);
INSERT INTO `submenu` VALUES ('4', 'Album', '5', '', '', 'Gallery', '', '2017-10-18 21:34:34', null);
INSERT INTO `submenu` VALUES ('5', 'Foto', '5', '', '', 'Gallery/foto', '', '2017-10-18 21:34:40', null);

-- ----------------------------
-- Table structure for tab_akses_mainmenu
-- ----------------------------
DROP TABLE IF EXISTS `tab_akses_mainmenu`;
CREATE TABLE `tab_akses_mainmenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `c` int(11) DEFAULT '0',
  `r` int(11) DEFAULT '0',
  `u` int(11) DEFAULT '0',
  `d` int(11) DEFAULT '0',
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_akses_mainmenu
-- ----------------------------
INSERT INTO `tab_akses_mainmenu` VALUES ('1', '1', '1', null, '1', null, null, '2017-09-26 20:49:01', 'direktur');
INSERT INTO `tab_akses_mainmenu` VALUES ('8', '7', '1', '0', '1', '0', '0', '2017-10-28 00:52:10', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('9', '9', '1', '0', '1', '0', '0', '2018-01-21 02:05:57', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('10', '10', '1', '0', '1', '0', '0', '2018-12-28 08:29:38', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('11', '11', '1', '0', '1', '0', '0', '2018-12-28 08:29:38', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('12', '12', '1', '0', '1', '0', '0', '2018-12-28 08:29:38', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('13', '13', '1', '0', '1', '0', '0', '2019-01-09 09:27:14', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('14', '14', '1', '0', '1', '0', '0', '2019-01-10 08:43:47', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('15', '15', '1', '0', '1', '0', '0', '2019-01-10 12:59:44', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('23', '16', '1', '0', '1', '0', '0', '2019-02-08 08:00:02', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('24', '17', '1', '0', '1', '0', '0', '2020-01-23 23:30:13', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('25', '18', '1', '0', '1', '0', '0', '2020-01-23 23:30:13', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('26', '19', '1', '0', '1', '0', '0', '2020-03-13 20:46:38', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('27', '25', '1', '0', '1', '0', '0', '2020-02-24 10:49:48', '');

-- ----------------------------
-- Table structure for tab_akses_submenu
-- ----------------------------
DROP TABLE IF EXISTS `tab_akses_submenu`;
CREATE TABLE `tab_akses_submenu` (
  `id` int(11) NOT NULL,
  `id_sub_menu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `c` int(11) DEFAULT '0',
  `r` int(11) DEFAULT '0',
  `u` int(11) DEFAULT '0',
  `d` int(11) DEFAULT '0',
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_akses_submenu
-- ----------------------------
INSERT INTO `tab_akses_submenu` VALUES ('1', '1', '1', '0', '1', '0', '0', '2017-10-14 21:45:40', '');
INSERT INTO `tab_akses_submenu` VALUES ('2', '2', '1', '0', '1', '0', '0', '2017-10-17 02:59:02', '');
INSERT INTO `tab_akses_submenu` VALUES ('3', '3', '1', '0', '0', '0', '0', '2017-10-19 08:12:32', '');
INSERT INTO `tab_akses_submenu` VALUES ('4', '4', '1', '0', '1', '0', '0', '2017-10-17 02:59:16', '');
INSERT INTO `tab_akses_submenu` VALUES ('5', '5', '1', '0', '0', '0', '0', '2017-10-19 08:12:33', '');

-- ----------------------------
-- Table structure for tb_beranda
-- ----------------------------
DROP TABLE IF EXISTS `tb_beranda`;
CREATE TABLE `tb_beranda` (
  `id_beranda` int(11) NOT NULL,
  `file_slider1` text NOT NULL,
  `file_slider2` text NOT NULL,
  `file_slider3` text NOT NULL,
  `file_slider4` text NOT NULL,
  `keyword` text NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `judul_tentang` text NOT NULL,
  `deskripsi_tentang` text NOT NULL,
  PRIMARY KEY (`id_beranda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_beranda
-- ----------------------------
INSERT INTO `tb_beranda` VALUES ('1', 'spada.jpg', 'bergabung.jpg', 'materi.jpg', '1.jpg', 'Aptisi', '0', 'Selamat Datang Di SPADA APTISI JATIM', '<p>Official Site APTISI Pusat merupakan website utama dari Asosiasi Perguruan Tinggi Swasta Indonesia. Tidak berbeda dengan official site lainnya untuk menyajikan informasi berupa sebuah berita maupun artikel, official site APTISI Pusat memiliki sebuah artikel, dan saat ini sudah tercatat bahwa terdapat 360 postingan dengan total view mencapai 147238 views dalam official site APTISI Pusat. User yang sering aktif posting berita yaitu Resti Rahmawati dengan total posting sebanyak 117 Post. Terbukti pula bahwa official site APTISI sudah dikenal oleh seluruh anggota, mahasiswa maupun masyarakat luas. Mengapa tidak, subscriber official site APTISI saat ini tercatat sebanyak 288 subscriber. Dalam official site ini tidak hanya untuk melihat berita atau artikel tetapi bisa berkomunkasi dengan sesama pengguna lain dan terbukti dengan adanya 310 comment. Mari kita tingkatkan kualitas official site APTISI Pusat dengan menjadi subscriber dan memberikan feedback berupa comment pada setiap artikel yang ada</p>');

-- ----------------------------
-- Table structure for tb_detail_paket_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_detail_paket_member`;
CREATE TABLE `tb_detail_paket_member` (
  `id_detail_paket` int(11) NOT NULL AUTO_INCREMENT,
  `id_member` int(11) DEFAULT NULL,
  `id_kursus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detail_paket`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_detail_paket_member
-- ----------------------------
INSERT INTO `tb_detail_paket_member` VALUES ('1', '1', '1');
INSERT INTO `tb_detail_paket_member` VALUES ('2', '1', '2');

-- ----------------------------
-- Table structure for tb_detail_ujian
-- ----------------------------
DROP TABLE IF EXISTS `tb_detail_ujian`;
CREATE TABLE `tb_detail_ujian` (
  `id_detail_ujian` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(50) NOT NULL,
  `id_pertanyaan` int(50) NOT NULL,
  `jawaban_ujian` varchar(255) NOT NULL,
  PRIMARY KEY (`id_detail_ujian`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_detail_ujian
-- ----------------------------
INSERT INTO `tb_detail_ujian` VALUES ('1', '1', '1', 'C');
INSERT INTO `tb_detail_ujian` VALUES ('2', '1', '2', 'D');
INSERT INTO `tb_detail_ujian` VALUES ('3', '1', '3', 'B');
INSERT INTO `tb_detail_ujian` VALUES ('4', '1', '4', 'C');
INSERT INTO `tb_detail_ujian` VALUES ('5', '1', '5', 'C');

-- ----------------------------
-- Table structure for tb_kontak
-- ----------------------------
DROP TABLE IF EXISTS `tb_kontak`;
CREATE TABLE `tb_kontak` (
  `id_kontak` int(11) NOT NULL,
  `deskripsi_kontak` text NOT NULL,
  `script_embed_code` text NOT NULL,
  `email_kontak` varchar(128) NOT NULL,
  `nomor_kontak` varchar(128) NOT NULL,
  PRIMARY KEY (`id_kontak`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_kontak
-- ----------------------------
INSERT INTO `tb_kontak` VALUES ('1', '<p><span>Alamat : Jl. Kamal Raya Outer Ring Road Komplek Rukan Malibu Blok I No.75, Cengkareng, Jakarta Barat, DKI Jakarta, RT.7/RW.14, Cengkareng Tim., Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11730</span><br /><span>Hari : Senin &ndash; Jumat</span><br /><span>Jam Kerja : 09:00 &ndash; 16:00</span><br /><span>Telepon : (021) 56944914</span></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d44704.912996884916!2d112.95773565647879!3d-7.9582352167973385!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd636fe48e2b08b%3A0x19b75487127bd0c6!2sGn.%20Bromo!5e0!3m2!1sid!2sid!4v1587159508186!5m2!1sid!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'elecomp.sh@gmail.com', '0821 3122 2331');

-- ----------------------------
-- Table structure for tb_kursus
-- ----------------------------
DROP TABLE IF EXISTS `tb_kursus`;
CREATE TABLE `tb_kursus` (
  `id_kursus` int(11) NOT NULL AUTO_INCREMENT,
  `foto_kursus` text NOT NULL,
  `nama_kursus` text NOT NULL,
  `harga_kursus` text NOT NULL,
  `deskripsi_kursus` text NOT NULL,
  PRIMARY KEY (`id_kursus`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_kursus
-- ----------------------------
INSERT INTO `tb_kursus` VALUES ('1', 'course_9.jpg', 'Kursus Melukis', '700000', 'Seiring perkembangan sistem pendidikan, lembaga pendidikan non formal mulai digandrungi para orangtua. Mereka memberi pelatihan atau kursus untuk buah hatinya guna mendorong bakat sang anak.\r\n\r\nKursus menggambar dan mewarna menjadi salah satu favorit para orang tua. Maklum, banyak manfaat yang dipetik dari menggambar dan mewarna. Ambil misal, sang anak bisa mengenal warna dan memegang alat tulis dengan benar.\r\n\r\nDianggap potensial, penyedia jasanya pun mulai menjamur. Bahkan, beberapa diantara ada yang menawarkan waralaba. Seperti Ohayolukis. Kursus menggambar dan mewarna  yang dibangun Oscar Sumarli ini sudah berjalan sejak 2005 lalu. Gerai pertamanya ada di  Jakarta.');
INSERT INTO `tb_kursus` VALUES ('2', 'course_3.jpg', 'Kursus Web Design', '2000000', 'Dalam pelatihan ini akan mempelajari bagaimana membuat website dari 0 (nol). Anda akan mempelajari cara pembuatan Website Statis maupun Interaktif menggunakan HTML, CSS, Javascript, Dreamweaver, dan Photoshop.');

-- ----------------------------
-- Table structure for tb_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_member`;
CREATE TABLE `tb_member` (
  `id_member` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama_member` varchar(128) NOT NULL,
  `email_member` varchar(128) NOT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_member
-- ----------------------------
INSERT INTO `tb_member` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Udin', '');

-- ----------------------------
-- Table structure for tb_pengajar
-- ----------------------------
DROP TABLE IF EXISTS `tb_pengajar`;
CREATE TABLE `tb_pengajar` (
  `id_pengajar` int(11) NOT NULL AUTO_INCREMENT,
  `foto_pengajar` text NOT NULL,
  `nama_pengajar` text NOT NULL,
  `deskripsi_pengajar` text NOT NULL,
  PRIMARY KEY (`id_pengajar`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_pengajar
-- ----------------------------
INSERT INTO `tb_pengajar` VALUES ('1', 'team_4.jpg', 'Jacke Masito', 'Quantum Mechanics');
INSERT INTO `tb_pengajar` VALUES ('2', 'team_3.jpg', 'Veronica Vahn', 'Designer & Website');
INSERT INTO `tb_pengajar` VALUES ('3', 'team_2.jpg', 'Charles', 'Marketing & Management');

-- ----------------------------
-- Table structure for tb_pertanyaan
-- ----------------------------
DROP TABLE IF EXISTS `tb_pertanyaan`;
CREATE TABLE `tb_pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi_pertanyaan` text NOT NULL,
  `jawaban_a` text NOT NULL,
  `jawaban_b` text NOT NULL,
  `jawaban_c` text NOT NULL,
  `jawaban_d` text NOT NULL,
  `kunci_jawaban` text NOT NULL,
  PRIMARY KEY (`id_pertanyaan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_pertanyaan
-- ----------------------------
INSERT INTO `tb_pertanyaan` VALUES ('1', 'Dibawah ini yang termasuk rumah tradisional suku Dayak Kalimantan adalah ...', 'Rumah Lantik', 'Rumah Panjang', 'Rumah Joglo', 'Rumah Badui', 'b');
INSERT INTO `tb_pertanyaan` VALUES ('2', 'Berikut yang termasuk alat musik petik, kecuali ...', 'Kulintang', 'Gitar', 'Bass', 'Siter', 'a');
INSERT INTO `tb_pertanyaan` VALUES ('3', 'Tari Saman merupakan tarian dari daerah ...', 'Jawa Barat', 'Kalimantan', 'Aceh', 'Jawa Tengah', 'c');
INSERT INTO `tb_pertanyaan` VALUES ('4', 'Alat musik yang berasal dari Jawa Barat, yaitu ...', 'Gamelan', 'Rebana', 'Seruling', 'Gamelan dan Seruling', 'd');
INSERT INTO `tb_pertanyaan` VALUES ('5', '<p>Sudut lancip yang ukuran sudutnya antara 0 dan 90 derajat disebut ...</p>', 'Sudut Lancip ', 'Sudut Tumpul', 'Sudut Siku-siku', 'Sudut Datar', 'c');

-- ----------------------------
-- Table structure for tb_slider
-- ----------------------------
DROP TABLE IF EXISTS `tb_slider`;
CREATE TABLE `tb_slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `foto_slider` text NOT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_slider
-- ----------------------------
INSERT INTO `tb_slider` VALUES ('1', 'blog_images_1.jpg');
INSERT INTO `tb_slider` VALUES ('2', 'course_5.jpg');
INSERT INTO `tb_slider` VALUES ('3', 'course_4.jpg');

-- ----------------------------
-- Table structure for tb_tentang
-- ----------------------------
DROP TABLE IF EXISTS `tb_tentang`;
CREATE TABLE `tb_tentang` (
  `id_tentang` int(11) NOT NULL AUTO_INCREMENT,
  `foto_tentang` text NOT NULL,
  `nama_tentang` varchar(128) NOT NULL,
  `deskripsi_tentang` text NOT NULL,
  PRIMARY KEY (`id_tentang`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_tentang
-- ----------------------------
INSERT INTO `tb_tentang` VALUES ('1', 'about_1.jpg', 'Our Stories', 'Lorem ipsum dolor sit, consectet adipisi elit, sed do eiusmod tempor for enim en consectet adisipi elit, sed do consectet adipisi elit, sed doadesg, Lorem ipsum dolor sit, consectet adipisi elit, sed do eiusmod tempor for enim en consectet adisipi elit, sed do consectet adipisi elit, sed doadesg, Lorem ipsum dolor sit, consectet adipisi elit, sed do eiusmod tempor for enim en consectet adisipi elit, sed do consectet adipisi elit, sed doadesg');
INSERT INTO `tb_tentang` VALUES ('2', 'about_2.jpg', 'Our Mission', 'Lorem ipsum dolor sit, consectet adipisi elit, sed do eiusmod tempor for enim en consectet adisipi elit, sed do consectet adipisi elit, sed doadesg, Lorem ipsum dolor sit, consectet adipisi elit, sed do eiusmod tempor for enim en consectet adisipi elit, sed do consectet adipisi elit, sed doadesg, Lorem ipsum dolor sit, consectet adipisi elit, sed do eiusmod tempor for enim en consectet adisipi elit, sed do consectet adipisi elit, sed doadesg');

-- ----------------------------
-- Table structure for tb_ujian
-- ----------------------------
DROP TABLE IF EXISTS `tb_ujian`;
CREATE TABLE `tb_ujian` (
  `id_ujian` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_ujian` datetime NOT NULL,
  `id_member` int(50) NOT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_ujian
-- ----------------------------
INSERT INTO `tb_ujian` VALUES ('1', '2020-04-07 03:48:35', '2');
INSERT INTO `tb_ujian` VALUES ('2', '2020-04-08 20:56:37', '1');

-- ----------------------------
-- Table structure for tb_video
-- ----------------------------
DROP TABLE IF EXISTS `tb_video`;
CREATE TABLE `tb_video` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `judul_video` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `deskripsi` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `id_kursus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tb_video
-- ----------------------------
INSERT INTO `tb_video` VALUES ('1', '1.mp4', 'Blablabla', '1');
INSERT INTO `tb_video` VALUES ('2', '2.mp4', 'blablabla', '2');
