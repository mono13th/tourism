-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.16 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for tourism
CREATE DATABASE IF NOT EXISTS `tourism` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tourism`;


-- Dumping structure for table tourism.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- Dumping structure for table tourism.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_category` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.category: ~9 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name_category`, `icon`, `description`) VALUES
	(1, 'Tempat Wisata', 'wisata.png', ''),
	(2, 'Penginapan', 'penginapan.png', ''),
	(3, 'Pusat Belanja', 'pusatbelanja.png', ''),
	(4, 'Bandara', 'bandara.png', ''),
	(5, 'Terminal', 'terminal.png', ''),
	(6, 'Restaurant', 'restauran.png', ''),
	(7, 'SPBU', 'spbu.png', ''),
	(8, 'Pusat ATM', 'atm.png', ''),
	(9, 'Dermaga', 'dermaga.png', '');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


-- Dumping structure for table tourism.map
CREATE TABLE IF NOT EXISTS `map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.map: ~2 rows (approximately)
/*!40000 ALTER TABLE `map` DISABLE KEYS */;
INSERT INTO `map` (`id`, `path`, `description`, `name`) VALUES
	(8, 'jabar2.kml', 'jabar 2 ini adalah blablalba', 'Jabar2'),
	(9, 'jabar3.kml', 'jabar 3 adalaha baskjdhklasjdghkadbvklwbgS', 'jabar3');
/*!40000 ALTER TABLE `map` ENABLE KEYS */;


-- Dumping structure for table tourism.pointer
CREATE TABLE IF NOT EXISTS `pointer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `desc_point` text NOT NULL,
  `picture` varchar(300) NOT NULL,
  `panorama` varchar(300) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `community_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pointer: ~3 rows (approximately)
/*!40000 ALTER TABLE `pointer` DISABLE KEYS */;
INSERT INTO `pointer` (`id`, `name`, `desc_point`, `picture`, `panorama`, `promo_id`, `community_id`, `category`, `lat`, `lng`) VALUES
	(1, 'Pantai Raja Ampat', '<p><b style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">Kepulauan Raja Ampat</b><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">&nbsp;merupakan rangkaian empat gugusan&nbsp;</span><a href="http://id.wikipedia.org/wiki/Pulau" title="Pulau" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">pulau</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">&nbsp;yang berdekatan dan berlokasi di barat bagian&nbsp;</span><a href="http://id.wikipedia.org/wiki/Kepala_Burung" title="Kepala Burung" class="mw-redirect" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">Kepala Burung</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">(</span><i style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">Vogelkoop</i><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">)&nbsp;</span><a href="http://id.wikipedia.org/wiki/Pulau_Papua" title="Pulau Papua" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">Pulau Papua</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">. Secara administrasi, gugusan ini berada di bawah&nbsp;</span><a href="http://id.wikipedia.org/wiki/Kabupaten_Raja_Ampat" title="Kabupaten Raja Ampat" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">Kabupaten Raja Ampat</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">, Provinsi&nbsp;</span><a href="http://id.wikipedia.org/wiki/Papua_Barat" title="Papua Barat" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">Papua Barat</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">. Kepulauan ini sekarang menjadi tujuan para penyelam yang tertarik akan keindahan pemandangan bawah lautnya. Empat gugusan pulau yang menjadi anggotanya dinamakan menurut empat pulau terbesarnya, yaitu&nbsp;</span><a href="http://id.wikipedia.org/wiki/Pulau_Waigeo" title="Pulau Waigeo" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">Pulau Waigeo</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">,&nbsp;</span><a href="http://id.wikipedia.org/wiki/Pulau_Misool" title="Pulau Misool" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">Pulau Misool</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">,&nbsp;</span><a href="http://id.wikipedia.org/wiki/Pulau_Salawati" title="Pulau Salawati" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">Pulau Salawati</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">, dan&nbsp;</span><a href="http://id.wikipedia.org/wiki/Pulau_Batanta" title="Pulau Batanta" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">Pulau Batanta</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">.</span><br></p>', 'rajaampat.jpg', 'beach2.jpg', 0, 0, 1, -0.8503792390929392, 131.24486446380615),
	(2, 'Dermaga Sorong', '<p>Dermaga Sorong adalah labuhan Kapal yang ada di Sorong. disebut Dermaga karena diberi nama demikian.&nbsp;<br></p>', 'Dermaga.jpg', '', 0, 0, 9, -0.8895135209034635, 131.26803874969482),
	(3, 'Bandar Udara Dominique Edward Osok', '<p><b style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">Bandar Udara Dominique Edward Osok</b><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">&nbsp;(dikenal juga sebagai&nbsp;</span><b style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">Bandar Udara Sorong</b><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">) adalah&nbsp;</span><a href="http://id.wikipedia.org/wiki/Bandar_udara" title="Bandar udara" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">bandar udara</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">&nbsp;yang berada di&nbsp;</span><a href="http://id.wikipedia.org/wiki/Sorong" title="Sorong" class="mw-redirect" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">Sorong</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">,</span><a href="http://id.wikipedia.org/wiki/Papua_Barat" title="Papua Barat" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">Papua Barat</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">,&nbsp;</span><a href="http://id.wikipedia.org/wiki/Indonesia" title="Indonesia" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">Indonesia</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">&nbsp;(</span><a href="http://id.wikipedia.org/wiki/Kode_bandar_udara_IATA" title="Kode bandar udara IATA" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">IATA</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">:&nbsp;</span><b style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">SOQ</b><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">,&nbsp;</span><a href="http://id.wikipedia.org/wiki/Kode_bandar_udara_ICAO" title="Kode bandar udara ICAO" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">ICAO</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">:&nbsp;</span><b style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">WASS</b><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">). Bandara ini merupakan salah satu bandar udara terbesar dan tersibuk di</span><a href="http://id.wikipedia.org/wiki/Semenanjung_Doberai" title="Semenanjung Doberai" style="color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-color: rgb(255, 255, 255); background-position: initial;">Semenanjung Kepala Burung</a><span style="color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;">.</span><br></p>', 'bandara.jpg', '', 0, 0, 4, -0.8911441070992783, 131.28855228424072);
/*!40000 ALTER TABLE `pointer` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_berita
CREATE TABLE IF NOT EXISTS `pr_berita` (
  `id_berita` int(10) NOT NULL AUTO_INCREMENT,
  `judul_berita_ina` varchar(255) NOT NULL,
  `judul_berita_eng` varchar(255) NOT NULL,
  `isi_berita_ina` text,
  `isi_berita_eng` text,
  `tanggal_berita` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_berita`),
  UNIQUE KEY `judul_berita_ina` (`judul_berita_ina`),
  UNIQUE KEY `judul_berita_eng` (`judul_berita_eng`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_berita: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_berita` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_berita` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_berita_tag
CREATE TABLE IF NOT EXISTS `pr_berita_tag` (
  `id_berita_tag` int(11) NOT NULL AUTO_INCREMENT,
  `tag` int(11) NOT NULL,
  PRIMARY KEY (`id_berita_tag`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_berita_tag: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_berita_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_berita_tag` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_berita_tag_trans
CREATE TABLE IF NOT EXISTS `pr_berita_tag_trans` (
  `id_berita_tag_trans` int(10) NOT NULL AUTO_INCREMENT,
  `id_berita` int(10) NOT NULL,
  `id_berita_tag` int(10) NOT NULL,
  PRIMARY KEY (`id_berita_tag_trans`),
  KEY `FK_pr_berita_tag_trans_pr_berita` (`id_berita`),
  KEY `FK_pr_berita_tag_trans_pr_berita_tag` (`id_berita_tag`),
  CONSTRAINT `FK_pr_berita_tag_trans_pr_berita` FOREIGN KEY (`id_berita`) REFERENCES `pr_berita` (`id_berita`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_pr_berita_tag_trans_pr_berita_tag` FOREIGN KEY (`id_berita_tag`) REFERENCES `pr_berita_tag` (`id_berita_tag`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_berita_tag_trans: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_berita_tag_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_berita_tag_trans` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_global
CREATE TABLE IF NOT EXISTS `pr_global` (
  `id_global` int(10) NOT NULL AUTO_INCREMENT,
  `nama_variabel` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `val_int` int(10) NOT NULL,
  `val_varchar` varchar(255) NOT NULL,
  `val_text` text NOT NULL,
  PRIMARY KEY (`id_global`),
  UNIQUE KEY `nama_variabel` (`nama_variabel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_global: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_global` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_global` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_kategori_promosi
CREATE TABLE IF NOT EXISTS `pr_kategori_promosi` (
  `id_kategori_promosi` int(10) NOT NULL AUTO_INCREMENT,
  `kategori_promosi` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kategori_promosi`),
  UNIQUE KEY `kategori_promosi` (`kategori_promosi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_kategori_promosi: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_kategori_promosi` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_kategori_promosi` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_kategori_sarana_prasarana
CREATE TABLE IF NOT EXISTS `pr_kategori_sarana_prasarana` (
  `id_kategori_sarana_prasarana` int(10) NOT NULL AUTO_INCREMENT,
  `kategori_sarana_prasarana_ina` varchar(255) NOT NULL,
  `kategori_sarana_prasarana_eng` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_kategori_sarana_prasarana`),
  UNIQUE KEY `kategori_sarana_prasarana_ina` (`kategori_sarana_prasarana_ina`),
  UNIQUE KEY `kategori_sarana_prasarana_eng` (`kategori_sarana_prasarana_eng`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_kategori_sarana_prasarana: ~3 rows (approximately)
/*!40000 ALTER TABLE `pr_kategori_sarana_prasarana` DISABLE KEYS */;
INSERT INTO `pr_kategori_sarana_prasarana` (`id_kategori_sarana_prasarana`, `kategori_sarana_prasarana_ina`, `kategori_sarana_prasarana_eng`, `icon`) VALUES
	(1, 'Transportasi Darat', 'Inland Transportation', NULL),
	(2, 'Transportasi Udara', 'Air Transportation', NULL),
	(3, 'Transportasi Laut', 'Water Transportation', NULL);
/*!40000 ALTER TABLE `pr_kategori_sarana_prasarana` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_lokasi_wisata
CREATE TABLE IF NOT EXISTS `pr_lokasi_wisata` (
  `id_lokasi_wisata` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `nama_lokasi_wisata_ina` varchar(255) NOT NULL,
  `nama_lokasi_wisata_eng` varchar(255) NOT NULL,
  `deskripsi_ina` text NOT NULL,
  `deskripsi_eng` text NOT NULL,
  `id_peta` int(10) NOT NULL,
  PRIMARY KEY (`id_lokasi_wisata`),
  UNIQUE KEY `nama_lokasi_wisata_ina` (`nama_lokasi_wisata_ina`),
  UNIQUE KEY `nama_lokasi_wisata_eng` (`nama_lokasi_wisata_eng`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_lokasi_wisata: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_lokasi_wisata` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_lokasi_wisata` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_lokasi_wisata_gambar
CREATE TABLE IF NOT EXISTS `pr_lokasi_wisata_gambar` (
  `id_pr_lokasi_wisata_gambar` int(10) NOT NULL AUTO_INCREMENT,
  `id_lokasi_wisata` int(10) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi_ina` text NOT NULL,
  `deskripsi_eng` text NOT NULL,
  PRIMARY KEY (`id_pr_lokasi_wisata_gambar`),
  UNIQUE KEY `gambar` (`gambar`),
  KEY `FK_pr_lokasi_wisata_gambar_pr_lokasi_wisata` (`id_lokasi_wisata`),
  CONSTRAINT `FK_pr_lokasi_wisata_gambar_pr_lokasi_wisata` FOREIGN KEY (`id_lokasi_wisata`) REFERENCES `pr_lokasi_wisata` (`id_lokasi_wisata`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_lokasi_wisata_gambar: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_lokasi_wisata_gambar` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_lokasi_wisata_gambar` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_lokasi_wisata_tag_sarana
CREATE TABLE IF NOT EXISTS `pr_lokasi_wisata_tag_sarana` (
  `id_pr_lokasi_wisata_tag_sarana` int(10) NOT NULL AUTO_INCREMENT,
  `id_sarana_prasarana` int(10) NOT NULL,
  `id_lokasi_wisata` int(10) NOT NULL,
  PRIMARY KEY (`id_pr_lokasi_wisata_tag_sarana`),
  KEY `FK_pr_lokasi_wisata_tag_sarana_pr_sarana_prasarana` (`id_sarana_prasarana`),
  KEY `FK_pr_lokasi_wisata_tag_sarana_pr_lokasi_wisata` (`id_lokasi_wisata`),
  CONSTRAINT `FK_pr_lokasi_wisata_tag_sarana_pr_lokasi_wisata` FOREIGN KEY (`id_lokasi_wisata`) REFERENCES `pr_lokasi_wisata` (`id_lokasi_wisata`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_pr_lokasi_wisata_tag_sarana_pr_sarana_prasarana` FOREIGN KEY (`id_sarana_prasarana`) REFERENCES `pr_sarana_prasarana` (`id_sarana_prasarana`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_lokasi_wisata_tag_sarana: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_lokasi_wisata_tag_sarana` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_lokasi_wisata_tag_sarana` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_paket_wisata
CREATE TABLE IF NOT EXISTS `pr_paket_wisata` (
  `id_paket_wisata` int(10) NOT NULL AUTO_INCREMENT,
  `paket_wisata_ina` varchar(255) NOT NULL,
  `paket_wisata_eng` varchar(255) NOT NULL,
  `deskripsi_ina` text,
  `deskripsi_eng` text,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_paket_wisata`),
  UNIQUE KEY `paket_wisata_ina` (`paket_wisata_ina`),
  UNIQUE KEY `paket_wisata_eng` (`paket_wisata_eng`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_paket_wisata: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_paket_wisata` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_paket_wisata` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_paket_wisata_gambar
CREATE TABLE IF NOT EXISTS `pr_paket_wisata_gambar` (
  `id_paket_wisata_gambar` int(10) NOT NULL AUTO_INCREMENT,
  `id_paket_wisata` int(10) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi_ina` text,
  `deskripsi_eng` text,
  PRIMARY KEY (`id_paket_wisata_gambar`),
  UNIQUE KEY `gambar` (`gambar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_paket_wisata_gambar: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_paket_wisata_gambar` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_paket_wisata_gambar` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_promosi
CREATE TABLE IF NOT EXISTS `pr_promosi` (
  `id_promosi` int(10) NOT NULL AUTO_INCREMENT,
  `id_promosi_kategori` int(10) NOT NULL,
  `promosi_ina` varchar(255) NOT NULL,
  `promosi_eng` varchar(255) NOT NULL,
  `deskripsi_ina` text NOT NULL,
  `deskripsi_eng` text NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `tanggal_promosi` date DEFAULT NULL,
  `tanggal_kadarluarsa` date DEFAULT NULL,
  PRIMARY KEY (`id_promosi`),
  UNIQUE KEY `promosi_ina` (`promosi_ina`),
  UNIQUE KEY `promosi_eng` (`promosi_eng`),
  KEY `FKpr_promosi647132` (`id_promosi_kategori`),
  CONSTRAINT `FKpr_promosi647132` FOREIGN KEY (`id_promosi_kategori`) REFERENCES `pr_kategori_promosi` (`id_kategori_promosi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_promosi: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_promosi` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_promosi` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_promosi_berkas
CREATE TABLE IF NOT EXISTS `pr_promosi_berkas` (
  `id_promosi_berkas` int(10) NOT NULL AUTO_INCREMENT,
  `id_promosi` int(10) NOT NULL,
  `berkas` varchar(255) NOT NULL,
  PRIMARY KEY (`id_promosi_berkas`),
  KEY `FKpr_promosi426263` (`id_promosi`),
  CONSTRAINT `FKpr_promosi426263` FOREIGN KEY (`id_promosi`) REFERENCES `pr_promosi` (`id_promosi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_promosi_berkas: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_promosi_berkas` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_promosi_berkas` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_promosi_gambar
CREATE TABLE IF NOT EXISTS `pr_promosi_gambar` (
  `id_promosi_gambar` int(10) NOT NULL AUTO_INCREMENT,
  `id_promosi` int(10) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  PRIMARY KEY (`id_promosi_gambar`),
  KEY `FKpr_promosi132058` (`id_promosi`),
  CONSTRAINT `FKpr_promosi132058` FOREIGN KEY (`id_promosi`) REFERENCES `pr_promosi` (`id_promosi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_promosi_gambar: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_promosi_gambar` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_promosi_gambar` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_route_edges
CREATE TABLE IF NOT EXISTS `pr_route_edges` (
  `id_edges` int(10) NOT NULL AUTO_INCREMENT,
  `edge_from` int(10) NOT NULL,
  `edge_to` int(10) NOT NULL,
  PRIMARY KEY (`id_edges`),
  KEY `FKpr_route_e719767` (`edge_to`),
  KEY `FKpr_route_e886141` (`edge_from`),
  CONSTRAINT `FKpr_route_e719767` FOREIGN KEY (`edge_to`) REFERENCES `pr_route_nodes` (`id_nodes`),
  CONSTRAINT `FKpr_route_e886141` FOREIGN KEY (`edge_from`) REFERENCES `pr_route_nodes` (`id_nodes`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_route_edges: ~11 rows (approximately)
/*!40000 ALTER TABLE `pr_route_edges` DISABLE KEYS */;
INSERT INTO `pr_route_edges` (`id_edges`, `edge_from`, `edge_to`) VALUES
	(1, 1, 2),
	(2, 1, 4),
	(4, 1, 3),
	(5, 3, 5),
	(6, 4, 5),
	(7, 4, 7),
	(9, 2, 5),
	(10, 5, 6),
	(11, 5, 7),
	(13, 5, 8),
	(15, 7, 8);
/*!40000 ALTER TABLE `pr_route_edges` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_route_nodes
CREATE TABLE IF NOT EXISTS `pr_route_nodes` (
  `id_nodes` int(10) NOT NULL AUTO_INCREMENT,
  `nodes` varchar(255) NOT NULL,
  PRIMARY KEY (`id_nodes`),
  UNIQUE KEY `nodes` (`nodes`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_route_nodes: ~8 rows (approximately)
/*!40000 ALTER TABLE `pr_route_nodes` DISABLE KEYS */;
INSERT INTO `pr_route_nodes` (`id_nodes`, `nodes`) VALUES
	(4, 'Bau-bau'),
	(8, 'Binongko'),
	(1, 'Jakarta'),
	(6, 'Kalidupa'),
	(3, 'Kendari'),
	(2, 'Makassar'),
	(7, 'Tomia'),
	(5, 'Wanci');
/*!40000 ALTER TABLE `pr_route_nodes` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_route_transportation
CREATE TABLE IF NOT EXISTS `pr_route_transportation` (
  `id_transportation` int(10) NOT NULL AUTO_INCREMENT,
  `id_edges` int(10) NOT NULL,
  `id_sarana_prasarana` int(10) NOT NULL,
  `deskripsi_ina` varchar(4000) DEFAULT NULL,
  `deskripsi_eng` varchar(4000) DEFAULT NULL,
  `waktu_perjalanan` int(10) NOT NULL,
  `estimasi_biaya` int(10) NOT NULL,
  PRIMARY KEY (`id_transportation`),
  KEY `FKpr_route_t494151` (`id_edges`),
  KEY `FK_pr_route_transportation_pr_sarana_prasarana` (`id_sarana_prasarana`),
  CONSTRAINT `FK_pr_route_transportation_pr_sarana_prasarana` FOREIGN KEY (`id_sarana_prasarana`) REFERENCES `pr_sarana_prasarana` (`id_sarana_prasarana`),
  CONSTRAINT `FKpr_route_t494151` FOREIGN KEY (`id_edges`) REFERENCES `pr_route_edges` (`id_edges`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_route_transportation: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_route_transportation` DISABLE KEYS */;
INSERT INTO `pr_route_transportation` (`id_transportation`, `id_edges`, `id_sarana_prasarana`, `deskripsi_ina`, `deskripsi_eng`, `waktu_perjalanan`, `estimasi_biaya`) VALUES
	(2, 1, 1, 'Naik Pesawat akan memakan waktu kurang lebih 2 jam', 'Naik Pesawat akan memakan waktu kurang lebih 2 jam', 2, 1000000);
/*!40000 ALTER TABLE `pr_route_transportation` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_sarana_prasarana
CREATE TABLE IF NOT EXISTS `pr_sarana_prasarana` (
  `id_sarana_prasarana` int(10) NOT NULL AUTO_INCREMENT,
  `id_kategori_sarana_prasarana` int(10) NOT NULL,
  `nama_ina` varchar(255) NOT NULL,
  `nama_eng` varchar(255) NOT NULL,
  `deskripsi_ina` text,
  `deskripsi_eng` text,
  `url` varchar(255) DEFAULT NULL,
  `id_peta` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_sarana_prasarana`),
  KEY `FK_pr_sarana_prasarana_pr_kategori_sarana_prasarana` (`id_kategori_sarana_prasarana`),
  CONSTRAINT `FK_pr_sarana_prasarana_pr_kategori_sarana_prasarana` FOREIGN KEY (`id_kategori_sarana_prasarana`) REFERENCES `pr_kategori_sarana_prasarana` (`id_kategori_sarana_prasarana`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_sarana_prasarana: ~1 rows (approximately)
/*!40000 ALTER TABLE `pr_sarana_prasarana` DISABLE KEYS */;
INSERT INTO `pr_sarana_prasarana` (`id_sarana_prasarana`, `id_kategori_sarana_prasarana`, `nama_ina`, `nama_eng`, `deskripsi_ina`, `deskripsi_eng`, `url`, `id_peta`) VALUES
	(1, 2, 'Pesawat Terbang', 'Aircraft', 'Pesawat Tebang', 'Aircraft', NULL, NULL);
/*!40000 ALTER TABLE `pr_sarana_prasarana` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_sarana_prasarana_gambar
CREATE TABLE IF NOT EXISTS `pr_sarana_prasarana_gambar` (
  `id_sarana_prasarana_gambar` int(10) NOT NULL AUTO_INCREMENT,
  `id_sarana_prasarana` int(10) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi_ina` text NOT NULL,
  `deskripsi_eng` text NOT NULL,
  PRIMARY KEY (`id_sarana_prasarana_gambar`),
  UNIQUE KEY `gambar` (`gambar`),
  KEY `FK_pr_sarana_prasarana_gambar_pr_sarana_prasarana` (`id_sarana_prasarana`),
  CONSTRAINT `FK_pr_sarana_prasarana_gambar_pr_sarana_prasarana` FOREIGN KEY (`id_sarana_prasarana`) REFERENCES `pr_sarana_prasarana` (`id_sarana_prasarana`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_sarana_prasarana_gambar: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_sarana_prasarana_gambar` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_sarana_prasarana_gambar` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_sitemap
CREATE TABLE IF NOT EXISTS `pr_sitemap` (
  `id_sitemap` int(10) NOT NULL AUTO_INCREMENT,
  `sitemap_no` varchar(255) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `nama_sitemap_ina` varchar(255) NOT NULL,
  `nama_sitemap_eng` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `css_id` varchar(255) DEFAULT NULL,
  `css_class` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_sitemap`),
  UNIQUE KEY `sitemap_no` (`sitemap_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_sitemap: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_sitemap` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_tanya_kami
CREATE TABLE IF NOT EXISTS `pr_tanya_kami` (
  `id_tanya_kami` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `pertanyaan` text NOT NULL,
  `jawaban` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tanya_kami`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_tanya_kami: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_tanya_kami` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_tanya_kami` ENABLE KEYS */;


-- Dumping structure for table tourism.pr_testimoni_lokasi_wisata
CREATE TABLE IF NOT EXISTS `pr_testimoni_lokasi_wisata` (
  `id_testimoni_lokasi_wisata` int(10) NOT NULL AUTO_INCREMENT,
  `id_lokasi_wisata` int(10) NOT NULL,
  `testimoni` text NOT NULL,
  `tanggal_testimoni` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `publish` set('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_testimoni_lokasi_wisata`),
  KEY `FK_pr_testimoni_lokasi_wisata_pr_lokasi_wisata` (`id_lokasi_wisata`),
  CONSTRAINT `FK_pr_testimoni_lokasi_wisata_pr_lokasi_wisata` FOREIGN KEY (`id_lokasi_wisata`) REFERENCES `pr_lokasi_wisata` (`id_lokasi_wisata`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table tourism.pr_testimoni_lokasi_wisata: ~0 rows (approximately)
/*!40000 ALTER TABLE `pr_testimoni_lokasi_wisata` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr_testimoni_lokasi_wisata` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
