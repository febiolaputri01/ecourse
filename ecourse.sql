-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2021 pada 15.04
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecourse`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `admin_username` varchar(128) NOT NULL,
  `admin_password` varchar(128) NOT NULL,
  `admin_view_password` varchar(128) NOT NULL,
  `admin_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `admin_username`, `admin_password`, `admin_view_password`, `admin_level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainmenu`
--

CREATE TABLE `mainmenu` (
  `seq` int(11) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `active_menu` varchar(50) NOT NULL,
  `icon_class` varchar(50) NOT NULL,
  `link_menu` varchar(50) NOT NULL,
  `menu_akses` varchar(12) NOT NULL,
  `entry_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `entry_user` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mainmenu`
--

INSERT INTO `mainmenu` (`seq`, `idmenu`, `nama_menu`, `active_menu`, `icon_class`, `link_menu`, `menu_akses`, `entry_date`, `entry_user`) VALUES
(9, 9, 'Beranda', '', 'fas fa-home fa-2x', 'Admin', '', '2020-04-17 23:02:37', NULL),
(10, 10, 'Slider', '', 'fas fa-sliders-h fa-2x', 'C_slider', '', '2020-04-17 14:01:03', NULL),
(11, 11, 'Kursus', '', 'fas fa-book-reader fa-2x', 'C_kursus', '', '2020-04-17 14:24:57', NULL),
(16, 16, 'Kontak', '', 'fa fa-phone fa-2x', 'Kontak', '', '2020-04-17 21:39:42', NULL),
(27, 27, 'Setting Ukuran', '', 'fas fa-cogs fa-2x', 'Setting_ukuran', '', '2020-03-13 13:53:59', NULL),
(21, 21, 'Setting Title', '', 'fas fa-wrench fa-2x', 'Setting_title', '', '2020-03-13 13:51:06', NULL),
(22, 22, 'Setting User', '', 'fas fa-user fa-2x', 'setting_user', '', '2020-03-13 13:51:10', NULL),
(12, 12, 'Pengajar', '', 'fas fa-chalkboard-teacher fa-2x', 'C_pengajar', '', '2020-04-17 20:53:12', NULL),
(15, 15, 'Tentang', '', 'fas fa-info fa-2x', 'C_tentang', '', '2020-04-17 21:42:24', NULL),
(13, 13, 'Member', '', 'fas fa-users fa-2x', 'C_member', '', '2020-04-17 21:24:25', NULL),
(14, 14, 'Pertanyaan', '', 'fas fa-question fa-2x', 'C_pertanyaan', '', '2020-04-17 21:24:32', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `meta_beranda`
--

CREATE TABLE `meta_beranda` (
  `id_meta_beranda` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `meta_beranda`
--

INSERT INTO `meta_beranda` (`id_meta_beranda`, `title`, `meta_keyword`, `meta_description`, `link_canonical`) VALUES
(1, 'Berandae', 'keyworde', 'desce', '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `meta_kontak`
--

CREATE TABLE `meta_kontak` (
  `id_meta_kontak` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `meta_kontak`
--

INSERT INTO `meta_kontak` (`id_meta_kontak`, `title`, `meta_keyword`, `meta_description`, `link_canonical`) VALUES
(1, 'Kontake', 'keyworde', 'yryee', '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `meta_produk`
--

CREATE TABLE `meta_produk` (
  `id_meta_produk` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `meta_produk`
--

INSERT INTO `meta_produk` (`id_meta_produk`, `title`, `meta_keyword`, `meta_description`, `link_canonical`) VALUES
(1, 'Produke', 'keyworde', 'oooooe', '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `meta_struktur`
--

CREATE TABLE `meta_struktur` (
  `id_meta_struktur` int(11) NOT NULL,
  `title` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `link_canonical` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `meta_struktur`
--

INSERT INTO `meta_struktur` (`id_meta_struktur`, `title`, `meta_keyword`, `meta_description`, `link_canonical`) VALUES
(1, 'Strukture', 'keyworde', 'alale', '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_ukuran`
--

CREATE TABLE `setting_ukuran` (
  `id_setting_ukuran` int(11) NOT NULL,
  `ukuran_foto_slider` char(15) NOT NULL,
  `ukuran_foto_tentang` char(15) NOT NULL,
  `ukuran_foto_produk` char(15) NOT NULL,
  `ukuran_foto_galeri` char(15) NOT NULL,
  `footer` char(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_ukuran`
--

INSERT INTO `setting_ukuran` (`id_setting_ukuran`, `ukuran_foto_slider`, `ukuran_foto_tentang`, `ukuran_foto_produk`, `ukuran_foto_galeri`, `footer`) VALUES
(1, '1000x500', '1000x1000', '2000x2000', '400x500', '200x200');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenu`
--

CREATE TABLE `submenu` (
  `id_sub` int(11) NOT NULL,
  `nama_sub` varchar(50) NOT NULL,
  `mainmenu_idmenu` int(11) NOT NULL,
  `active_sub` varchar(20) NOT NULL,
  `icon_class` varchar(100) NOT NULL,
  `link_sub` varchar(50) NOT NULL,
  `sub_akses` varchar(12) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `entry_user` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `submenu`
--

INSERT INTO `submenu` (`id_sub`, `nama_sub`, `mainmenu_idmenu`, `active_sub`, `icon_class`, `link_sub`, `sub_akses`, `entry_date`, `entry_user`) VALUES
(1, 'Entry User', 8, '', '', 'User', '', '2017-10-18 14:28:25', NULL),
(2, 'Kategori Produk', 4, '', '', 'Produk', '', '2017-10-18 14:34:17', NULL),
(3, 'Produk', 4, '', '', 'Produk/detail', '', '2017-10-18 14:34:26', NULL),
(4, 'Album', 5, '', '', 'Gallery', '', '2017-10-18 14:34:34', NULL),
(5, 'Foto', 5, '', '', 'Gallery/foto', '', '2017-10-18 14:34:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_akses_mainmenu`
--

CREATE TABLE `tab_akses_mainmenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `c` int(11) DEFAULT 0,
  `r` int(11) DEFAULT 0,
  `u` int(11) DEFAULT 0,
  `d` int(11) DEFAULT 0,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `entry_user` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tab_akses_mainmenu`
--

INSERT INTO `tab_akses_mainmenu` (`id`, `id_menu`, `id_level`, `c`, `r`, `u`, `d`, `entry_date`, `entry_user`) VALUES
(1, 1, 1, NULL, 1, NULL, NULL, '2017-09-26 13:49:01', 'direktur'),
(8, 7, 1, 0, 1, 0, 0, '2017-10-27 17:52:10', ''),
(9, 9, 1, 0, 1, 0, 0, '2018-01-20 19:05:57', ''),
(10, 10, 1, 0, 1, 0, 0, '2018-12-28 01:29:38', ''),
(11, 11, 1, 0, 1, 0, 0, '2018-12-28 01:29:38', ''),
(12, 12, 1, 0, 1, 0, 0, '2018-12-28 01:29:38', ''),
(13, 13, 1, 0, 1, 0, 0, '2019-01-09 02:27:14', ''),
(14, 14, 1, 0, 1, 0, 0, '2019-01-10 01:43:47', ''),
(15, 15, 1, 0, 1, 0, 0, '2019-01-10 05:59:44', ''),
(23, 16, 1, 0, 1, 0, 0, '2019-02-08 01:00:02', ''),
(24, 17, 1, 0, 1, 0, 0, '2020-01-23 16:30:13', ''),
(25, 18, 1, 0, 1, 0, 0, '2020-01-23 16:30:13', ''),
(26, 19, 1, 0, 1, 0, 0, '2020-03-13 13:46:38', ''),
(27, 25, 1, 0, 1, 0, 0, '2020-02-24 03:49:48', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_akses_submenu`
--

CREATE TABLE `tab_akses_submenu` (
  `id` int(11) NOT NULL,
  `id_sub_menu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `c` int(11) DEFAULT 0,
  `r` int(11) DEFAULT 0,
  `u` int(11) DEFAULT 0,
  `d` int(11) DEFAULT 0,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `entry_user` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tab_akses_submenu`
--

INSERT INTO `tab_akses_submenu` (`id`, `id_sub_menu`, `id_level`, `c`, `r`, `u`, `d`, `entry_date`, `entry_user`) VALUES
(1, 1, 1, 0, 1, 0, 0, '2017-10-14 14:45:40', ''),
(2, 2, 1, 0, 1, 0, 0, '2017-10-16 19:59:02', ''),
(3, 3, 1, 0, 0, 0, 0, '2017-10-19 01:12:32', ''),
(4, 4, 1, 0, 1, 0, 0, '2017-10-16 19:59:16', ''),
(5, 5, 1, 0, 0, 0, 0, '2017-10-19 01:12:33', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_beranda`
--

CREATE TABLE `tb_beranda` (
  `id_beranda` int(11) NOT NULL,
  `file_slider1` text NOT NULL,
  `file_slider2` text NOT NULL,
  `file_slider3` text NOT NULL,
  `file_slider4` text NOT NULL,
  `keyword` text NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `judul_tentang` text NOT NULL,
  `deskripsi_tentang` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_beranda`
--

INSERT INTO `tb_beranda` (`id_beranda`, `file_slider1`, `file_slider2`, `file_slider3`, `file_slider4`, `keyword`, `jumlah_produk`, `judul_tentang`, `deskripsi_tentang`) VALUES
(1, 'spada.jpg', 'bergabung.jpg', 'materi.jpg', '1.jpg', 'Aptisi', 0, 'Selamat Datang Di SPADA APTISI JATIM', '<p>Official Site APTISI Pusat merupakan website utama dari Asosiasi Perguruan Tinggi Swasta Indonesia. Tidak berbeda dengan official site lainnya untuk menyajikan informasi berupa sebuah berita maupun artikel, official site APTISI Pusat memiliki sebuah artikel, dan saat ini sudah tercatat bahwa terdapat 360 postingan dengan total view mencapai 147238 views dalam official site APTISI Pusat. User yang sering aktif posting berita yaitu Resti Rahmawati dengan total posting sebanyak 117 Post. Terbukti pula bahwa official site APTISI sudah dikenal oleh seluruh anggota, mahasiswa maupun masyarakat luas. Mengapa tidak, subscriber official site APTISI saat ini tercatat sebanyak 288 subscriber. Dalam official site ini tidak hanya untuk melihat berita atau artikel tetapi bisa berkomunkasi dengan sesama pengguna lain dan terbukti dengan adanya 310 comment. Mari kita tingkatkan kualitas official site APTISI Pusat dengan menjadi subscriber dan memberikan feedback berupa comment pada setiap artikel yang ada</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_paket_member`
--

CREATE TABLE `tb_detail_paket_member` (
  `id_detail_paket` int(11) NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `id_kursus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_detail_paket_member`
--

INSERT INTO `tb_detail_paket_member` (`id_detail_paket`, `id_member`, `id_kursus`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_ujian`
--

CREATE TABLE `tb_detail_ujian` (
  `id_detail_ujian` int(11) NOT NULL,
  `id_ujian` int(50) NOT NULL,
  `id_pertanyaan` int(50) NOT NULL,
  `jawaban_ujian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_detail_ujian`
--

INSERT INTO `tb_detail_ujian` (`id_detail_ujian`, `id_ujian`, `id_pertanyaan`, `jawaban_ujian`) VALUES
(1, 1, 1, 'C'),
(2, 1, 2, 'D'),
(3, 1, 3, 'B'),
(4, 1, 4, 'C'),
(5, 1, 5, 'C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kontak`
--

CREATE TABLE `tb_kontak` (
  `id_kontak` int(11) NOT NULL,
  `deskripsi_kontak` text NOT NULL,
  `script_embed_code` text NOT NULL,
  `email_kontak` varchar(128) NOT NULL,
  `nomor_kontak` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kontak`
--

INSERT INTO `tb_kontak` (`id_kontak`, `deskripsi_kontak`, `script_embed_code`, `email_kontak`, `nomor_kontak`) VALUES
(1, '<p><span>Alamat : Jl. Kamal Raya Outer Ring Road Komplek Rukan Malibu Blok I No.75, Cengkareng, Jakarta Barat, DKI Jakarta, RT.7/RW.14, Cengkareng Tim., Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11730</span><br /><span>Hari : Senin &ndash; Jumat</span><br /><span>Jam Kerja : 09:00 &ndash; 16:00</span><br /><span>Telepon : (021) 56944914</span></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d44704.912996884916!2d112.95773565647879!3d-7.9582352167973385!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd636fe48e2b08b%3A0x19b75487127bd0c6!2sGn.%20Bromo!5e0!3m2!1sid!2sid!4v1587159508186!5m2!1sid!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'elecomp.sh@gmail.com', '0821 3122 2331');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kursus`
--

CREATE TABLE `tb_kursus` (
  `id_kursus` int(11) NOT NULL,
  `foto_kursus` text NOT NULL,
  `nama_kursus` text NOT NULL,
  `harga_kursus` text NOT NULL,
  `deskripsi_kursus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kursus`
--

INSERT INTO `tb_kursus` (`id_kursus`, `foto_kursus`, `nama_kursus`, `harga_kursus`, `deskripsi_kursus`) VALUES
(1, 'course_9.jpg', 'Kursus Melukis', '700000', 'Seiring perkembangan sistem pendidikan, lembaga pendidikan non formal mulai digandrungi para orangtua. Mereka memberi pelatihan atau kursus untuk buah hatinya guna mendorong bakat sang anak.\r\n\r\nKursus menggambar dan mewarna menjadi salah satu favorit para orang tua. Maklum, banyak manfaat yang dipetik dari menggambar dan mewarna. Ambil misal, sang anak bisa mengenal warna dan memegang alat tulis dengan benar.\r\n\r\nDianggap potensial, penyedia jasanya pun mulai menjamur. Bahkan, beberapa diantara ada yang menawarkan waralaba. Seperti Ohayolukis. Kursus menggambar dan mewarna  yang dibangun Oscar Sumarli ini sudah berjalan sejak 2005 lalu. Gerai pertamanya ada di  Jakarta.'),
(2, 'course_3.jpg', 'Kursus Web Design', '2000000', 'Dalam pelatihan ini akan mempelajari bagaimana membuat website dari 0 (nol). Anda akan mempelajari cara pembuatan Website Statis maupun Interaktif menggunakan HTML, CSS, Javascript, Dreamweaver, dan Photoshop.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_member`
--

CREATE TABLE `tb_member` (
  `id_member` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama_member` varchar(128) NOT NULL,
  `email_member` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_member`
--

INSERT INTO `tb_member` (`id_member`, `username`, `password`, `nama_member`, `email_member`) VALUES
(1, 'febiola', 'acc8fa9c29d777fed7f41c0d31bab06b', 'Febiola Putri Yunita', 'febiolaputri01@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengajar`
--

CREATE TABLE `tb_pengajar` (
  `id_pengajar` int(11) NOT NULL,
  `foto_pengajar` text NOT NULL,
  `nama_pengajar` text NOT NULL,
  `deskripsi_pengajar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengajar`
--

INSERT INTO `tb_pengajar` (`id_pengajar`, `foto_pengajar`, `nama_pengajar`, `deskripsi_pengajar`) VALUES
(1, 'team_4.jpg', 'Jacke Masito', 'Quantum Mechanics'),
(2, 'team_3.jpg', 'Veronica Vahn', 'Designer & Website'),
(3, 'team_2.jpg', 'Charles', 'Marketing & Management');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `deskripsi_pertanyaan` text NOT NULL,
  `jawaban_a` text NOT NULL,
  `jawaban_b` text NOT NULL,
  `jawaban_c` text NOT NULL,
  `jawaban_d` text NOT NULL,
  `kunci_jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`id_pertanyaan`, `deskripsi_pertanyaan`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`, `kunci_jawaban`) VALUES
(1, 'Dibawah ini yang termasuk rumah tradisional suku Dayak Kalimantan adalah ...', 'Rumah Lantik', 'Rumah Panjang', 'Rumah Joglo', 'Rumah Badui', 'b'),
(2, 'Berikut yang termasuk alat musik petik, kecuali ...', 'Kulintang', 'Gitar', 'Bass', 'Siter', 'a'),
(3, 'Tari Saman merupakan tarian dari daerah ...', 'Jawa Barat', 'Kalimantan', 'Aceh', 'Jawa Tengah', 'c'),
(4, 'Alat musik yang berasal dari Jawa Barat, yaitu ...', 'Gamelan', 'Rebana', 'Seruling', 'Gamelan dan Seruling', 'd'),
(5, '<p>Sudut lancip yang ukuran sudutnya antara 0 dan 90 derajat disebut ...</p>', 'Sudut Lancip ', 'Sudut Tumpul', 'Sudut Siku-siku', 'Sudut Datar', 'c');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id_slider` int(11) NOT NULL,
  `foto_slider` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_slider`
--

INSERT INTO `tb_slider` (`id_slider`, `foto_slider`) VALUES
(1, 'blog_images_1.jpg'),
(2, 'course_5.jpg'),
(3, 'course_4.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tentang`
--

CREATE TABLE `tb_tentang` (
  `id_tentang` int(11) NOT NULL,
  `foto_tentang` text NOT NULL,
  `nama_tentang` varchar(128) NOT NULL,
  `deskripsi_tentang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tentang`
--

INSERT INTO `tb_tentang` (`id_tentang`, `foto_tentang`, `nama_tentang`, `deskripsi_tentang`) VALUES
(1, 'about_1.jpg', 'Our Stories', 'Lorem ipsum dolor sit, consectet adipisi elit, sed do eiusmod tempor for enim en consectet adisipi elit, sed do consectet adipisi elit, sed doadesg, Lorem ipsum dolor sit, consectet adipisi elit, sed do eiusmod tempor for enim en consectet adisipi elit, sed do consectet adipisi elit, sed doadesg, Lorem ipsum dolor sit, consectet adipisi elit, sed do eiusmod tempor for enim en consectet adisipi elit, sed do consectet adipisi elit, sed doadesg'),
(2, 'about_2.jpg', 'Our Mission', 'Lorem ipsum dolor sit, consectet adipisi elit, sed do eiusmod tempor for enim en consectet adisipi elit, sed do consectet adipisi elit, sed doadesg, Lorem ipsum dolor sit, consectet adipisi elit, sed do eiusmod tempor for enim en consectet adisipi elit, sed do consectet adipisi elit, sed doadesg, Lorem ipsum dolor sit, consectet adipisi elit, sed do eiusmod tempor for enim en consectet adisipi elit, sed do consectet adipisi elit, sed doadesg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ujian`
--

CREATE TABLE `tb_ujian` (
  `id_ujian` int(11) NOT NULL,
  `tanggal_ujian` datetime NOT NULL,
  `id_member` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_ujian`
--

INSERT INTO `tb_ujian` (`id_ujian`, `tanggal_ujian`, `id_member`) VALUES
(1, '2020-04-07 03:48:35', 2),
(2, '2020-04-08 20:56:37', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_video`
--

CREATE TABLE `tb_video` (
  `id_video` int(11) NOT NULL,
  `judul_video` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `deskripsi` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `id_kursus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_video`
--

INSERT INTO `tb_video` (`id_video`, `judul_video`, `deskripsi`, `id_kursus`) VALUES
(1, '1.mp4', 'Blablabla', 1),
(2, '2.mp4', 'blablabla', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `mainmenu`
--
ALTER TABLE `mainmenu`
  ADD PRIMARY KEY (`seq`);

--
-- Indeks untuk tabel `meta_beranda`
--
ALTER TABLE `meta_beranda`
  ADD PRIMARY KEY (`id_meta_beranda`);

--
-- Indeks untuk tabel `meta_kontak`
--
ALTER TABLE `meta_kontak`
  ADD PRIMARY KEY (`id_meta_kontak`);

--
-- Indeks untuk tabel `meta_produk`
--
ALTER TABLE `meta_produk`
  ADD PRIMARY KEY (`id_meta_produk`);

--
-- Indeks untuk tabel `meta_struktur`
--
ALTER TABLE `meta_struktur`
  ADD PRIMARY KEY (`id_meta_struktur`);

--
-- Indeks untuk tabel `setting_ukuran`
--
ALTER TABLE `setting_ukuran`
  ADD PRIMARY KEY (`id_setting_ukuran`);

--
-- Indeks untuk tabel `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indeks untuk tabel `tab_akses_mainmenu`
--
ALTER TABLE `tab_akses_mainmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_akses_submenu`
--
ALTER TABLE `tab_akses_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_beranda`
--
ALTER TABLE `tb_beranda`
  ADD PRIMARY KEY (`id_beranda`);

--
-- Indeks untuk tabel `tb_detail_paket_member`
--
ALTER TABLE `tb_detail_paket_member`
  ADD PRIMARY KEY (`id_detail_paket`);

--
-- Indeks untuk tabel `tb_detail_ujian`
--
ALTER TABLE `tb_detail_ujian`
  ADD PRIMARY KEY (`id_detail_ujian`);

--
-- Indeks untuk tabel `tb_kontak`
--
ALTER TABLE `tb_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `tb_kursus`
--
ALTER TABLE `tb_kursus`
  ADD PRIMARY KEY (`id_kursus`);

--
-- Indeks untuk tabel `tb_member`
--
ALTER TABLE `tb_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  ADD PRIMARY KEY (`id_pengajar`);

--
-- Indeks untuk tabel `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indeks untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `tb_tentang`
--
ALTER TABLE `tb_tentang`
  ADD PRIMARY KEY (`id_tentang`);

--
-- Indeks untuk tabel `tb_ujian`
--
ALTER TABLE `tb_ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- Indeks untuk tabel `tb_video`
--
ALTER TABLE `tb_video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_detail_paket_member`
--
ALTER TABLE `tb_detail_paket_member`
  MODIFY `id_detail_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_detail_ujian`
--
ALTER TABLE `tb_detail_ujian`
  MODIFY `id_detail_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_kursus`
--
ALTER TABLE `tb_kursus`
  MODIFY `id_kursus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_member`
--
ALTER TABLE `tb_member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_pengajar`
--
ALTER TABLE `tb_pengajar`
  MODIFY `id_pengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_tentang`
--
ALTER TABLE `tb_tentang`
  MODIFY `id_tentang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_ujian`
--
ALTER TABLE `tb_ujian`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_video`
--
ALTER TABLE `tb_video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
