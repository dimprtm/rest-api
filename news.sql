-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2021 at 12:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `urlToImage` varchar(255) DEFAULT NULL,
  `publishedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `source`, `title`, `description`, `url`, `urlToImage`, `publishedAt`) VALUES
(1, 'Pikiran-rakyat.com', 'Lebih Menular dan Berbahaya, Berikut Daftar Vaksin yang Ampuh Tangani Virus Covid-19 Varian Delta - Zona Jakarta - Pikiran Rakyat', 'Tingginya angka kasus harian pasien virus covid-19 di DKI Jakarta diakibatkan oleh virus Covid-19 varian Delta.', 'https://zonajakarta.pikiran-rakyat.com/regional/pr-182068882/lebih-menular-dan-berbahaya-berikut-daftar-vaksin-yang-ampuh-tangani-virus-covid-19-varian-delta', 'https://assets.pikiran-rakyat.com/crop/0x0:0x0/750x500/photo/2021/06/17/21911400.jpg', '0000-00-00'),
(2, 'Cnbcindonesia.com', 'Bintang Raksasa Aneh Ditemukan di Pusat Galaksi Bima Sakti - CNBC Indonesia', 'Sebuah bintang raksasa ditemukan dalam pusat galaksi Bima Sakti atau berjarak 25 ribu tahun cahaya dari Bumi.', 'https://www.cnbcindonesia.com/tech/20210617112652-37-253827/bintang-raksasa-aneh-ditemukan-di-pusat-galaksi-bima-sakti', 'https://awsimages.detik.net.id/visual/2021/06/17/bintang-vvv-wit-08-dok-istnasa_169.png?w=650', '0000-00-00'),
(3, 'Harianjogja.com', 'Informasi Stok Darah PMI di DIY Kamis, 17 Juni 2021 - Harian Jogja', 'Bagi Anda yang membutuhkan transfusi darah, berikut ini informasi stok darah di DIY berdasarkan data yang diterima Harianjogja.com dari posko Palang Merah Indonesia (PMI) DIY: Update data per Kamis (17/6/2021) pagi.', 'https://jogjapolitan.harianjogja.com/read/2021/06/17/510/1074712/informasi-stok-darah-pmi-di-diy-kamis-17-juni-2021', 'https://img.harianjogja.com/posts/2021/06/17/1074712/kantong-darah-2.jpg?w=600', '0000-00-00'),
(4, 'Sindonews.com', 'NASA Siap Terbangkan Teleskop Pembidik Asteroid Pengancam Bumi - SINDOnews Sains', 'Badan Penerbangan dan Antariksa Amerika Serikat (NASA) menyetujui pembangunan teleskop yang dikenal sebagai Near-Earth Object Monitor Badan Penerbangan dan Antariksa...', 'https://sains.sindonews.com/read/458226/767/nasa-siap-terbangkan-teleskop-pembidik-asteroid-pengancam-bumi-1623899192', 'https://pict.sindonews.net/dyn/620/pena/news/2021/06/17/767/458226/nasa-siap-terbangkan-teleskop-pembidik-asteroid-pengancam-bumi-ngm.jpg', '0000-00-00'),
(9, 'ini sumber', 'ini judul', 'ini deskripsi', 'ini url', 'ini tumbnail', NULL),
(10, 'ini sumber yaaa', 'ini judul yaaa', 'ini deskripsi yaaa', 'ini urll yaaa', 'ini tumbnail yaaa', NULL),
(11, 'oyeaaa', 'judul lah ini', 'desc', 'http://wwww...', 'http://www......../kshfhkkskkkapsnds.png', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
