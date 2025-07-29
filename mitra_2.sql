-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2024 at 11:14 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mitra_2`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_users` (IN `u_username` VARCHAR(100), IN `u_password` VARCHAR(255), IN `u_email` VARCHAR(100), IN `u_name` VARCHAR(100), IN `idgroups` INT(11))  BEGIN 
INSERT INTO 
users (u_username,u_password,u_email,u_name,idgroups)
VALUES (u_username,u_password,u_email,u_name,idgroups);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_read_users` ()  BEGIN
SELECT *  FROM  users JOIN groups ON users.idgroups = groups.idgroups;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `idcustomer` int(11) NOT NULL,
  `c_nama` varchar(255) NOT NULL,
  `c_alamat` varchar(255) NOT NULL,
  `c_telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idcustomer`, `c_nama`, `c_alamat`, `c_telp`) VALUES
(1, 'Ruslan', 'SDN Karang Asih 12', NULL),
(2, 'Ucok', 'Pilar Barat', '087779072647'),
(3, 'Ahmad Suryanto', 'Cipayung', '081234567890'),
(4, 'Budi Santoso', 'Hegarmanah', '082345678901'),
(5, 'Chandra Wijaya', 'Jatibaru', '083456789012'),
(6, 'Dewi Kartika', 'Jatireja', '084567890123'),
(7, 'Eka Kurnia', 'Karangsari', '085678901234'),
(8, 'Fajar Nugroho', 'Labansari', '086789012345'),
(9, 'Gita Sari', 'Sertajaya', '087890123456'),
(10, 'Hendra Wibowo', 'Tanjungbaru', '088901234567'),
(11, 'Intan Permata', 'TK Amanah', '081234567891'),
(12, 'Joko Prasetyo', 'TKIT Nurul Iman', '082345678912'),
(13, 'Kiki Saputra', 'TK IT Al-mishbah', '083456789123'),
(14, 'Lina Melati', 'TK Mentari', '084567891234'),
(15, 'Mulyadi', 'TKIT Qonita', '085678912345'),
(16, 'Nina Susanti', 'TK Spring Garden School', '086789123456'),
(17, 'Oki Suryadi', 'SMAN 1 Cikarang Timur', '087890123457'),
(18, 'Putri Lestari', 'SMA Bhakti Negara Kab Bekasi', '088901234568'),
(19, 'Rani Setiawati', 'SD Negeri Hegarmanah 03', '081234567892'),
(20, 'Satria Pratama', 'SD Spring Garden School', '082345678913'),
(21, 'Tasya Widya', 'SDIT Mumtaz Mulia', '083456789234'),
(22, 'Umar Zulfikar', 'SD Negeri Jatibaru 02', '084567891345'),
(23, 'Vina Ananda', 'SD Negeri Karangsari 03', '085678912356'),
(24, 'Wahyu Saputra', 'Cipayung', '086789123457'),
(25, 'Yudi Hermansyah', 'Hegarmanah', '087890123468'),
(26, 'Zahra Salsabila', 'Jatibaru', '088901234579'),
(27, 'Andi Nugraha', 'Jatireja', '081234567893'),
(28, 'Bunga Maharani', 'Karangsari', '082345678934'),
(29, 'Cahya Anugrah', 'Labansari', '083456789345'),
(30, 'Doni Ramadhan', 'Sertajaya', '084567891456'),
(31, 'Euis Maemunah', 'Tanjungbaru', '085678912467'),
(32, 'Farida Khairunisa', 'TK Amanah', '086789123478'),
(33, 'Guntur Prabowo', 'TKIT Nurul Iman', '087890123489'),
(34, 'Hana Aulia', 'TK IT Al-mishbah', '088901234590'),
(35, 'Ihsan Mubarok', 'TK Mentari', '081234567904'),
(36, 'Jasmin Ayu', 'TKIT Qonita', '082345678915'),
(37, 'Kurnia Dewi', 'TK Spring Garden School', '083456789126'),
(38, 'Lukman Hakim', 'SMAN 1 Cikarang Timur', '084567891237'),
(39, 'Maya Cahyani', 'SMA Bhakti Negara Kab Bekasi', '085678912348'),
(40, 'Novi Hartini', 'SD Negeri Hegarmanah 03', '086789123459'),
(41, 'Omar Dani', 'SD Spring Garden School', '087890123460'),
(42, 'Prita Agustina', 'SDIT Mumtaz Mulia', '088901234571'),
(43, 'Qori Rahmat', 'SD Negeri Jatibaru 02', '081234567912'),
(44, 'Rizky Aditya', 'SD Negeri Karangsari 03', '082345678923'),
(45, 'Sari Andini', 'Cipayung', '083456789134'),
(46, 'Taufik Hidayat', 'Hegarmanah', '084567891245'),
(47, 'Umi Khusna', 'Jatibaru', '085678912356'),
(48, 'Vicky Ramdani', 'Jatireja', '086789123467'),
(49, 'Widia Ratnasari', 'Karangsari', '087890123478'),
(50, 'Yana Suryani', 'Labansari', '088901234589'),
(51, 'Zainal Arifin', 'Sertajaya', '081234567923'),
(52, 'Agus Raharjo', 'Tanjungbaru', '081234567934'),
(53, 'Bayu Saputra', 'TK Amanah', '082345678945'),
(54, 'Citra Dewi', 'TKIT Nurul Iman', '083456789156'),
(55, 'Dina Maharani', 'TK IT Al-mishbah', '084567891267'),
(56, 'Erwin Kurniawan', 'TK Mentari', '085678912378'),
(57, 'Fathir Rasyid', 'TKIT Qonita', '086789123489'),
(58, 'Gilang Ramadhan', 'TK Spring Garden School', '087890123590'),
(59, 'Hani Setiawati', 'SMAN 1 Cikarang Timur', '088901234601'),
(60, 'Irfan Hidayat', 'SMA Bhakti Negara Kab Bekasi', '081234567945'),
(61, 'Juli Susanti', 'SD Negeri Hegarmanah 03', '082345678956'),
(62, 'Karina Andriani', 'SD Spring Garden School', '083456789167'),
(63, 'Lukman Sardi', 'SDIT Mumtaz Mulia', '084567891278'),
(64, 'Mila Permata', 'SD Negeri Jatibaru 02', '085678912389'),
(65, 'Nino Farhan', 'SD Negeri Karangsari 03', '086789123490'),
(66, 'Olivia Pratiwi', 'Cipayung', '087890123501'),
(67, 'Putra Ardiansyah', 'Hegarmanah', '088901234612'),
(68, 'Qiana Zahra', 'Jatibaru', '081234567956'),
(69, 'Rendra Dwi', 'Jatireja', '082345678967'),
(70, 'Silvi Mayangsari', 'Karangsari', '083456789178'),
(71, 'Tari Widyaningrum', 'Labansari', '084567891289'),
(72, 'Ucup Susanto', 'Sertajaya', '085678912390'),
(73, 'Verra Andriana', 'Tanjungbaru', '086789123501'),
(74, 'Willy Hartono', 'TK Amanah', '087890123612'),
(75, 'Xenia Amara', 'TKIT Nurul Iman', '088901234723'),
(76, 'Yoga Rahmad', 'TK IT Al-mishbah', '081234567967'),
(77, 'Zeni Wahyuni', 'TK Mentari', '082345678978'),
(78, 'Anton Sugianto', 'TKIT Qonita', '083456789189'),
(79, 'Bima Wicaksono', 'TK Spring Garden School', '084567891390'),
(80, 'Candra Aditya', 'SMAN 1 Cikarang Timur', '085678912401'),
(81, 'Dewi Sartika', 'SMA Bhakti Negara Kab Bekasi', '086789123512'),
(82, 'Edo Prakoso', 'SD Negeri Hegarmanah 03', '087890123623'),
(83, 'Fitria Kurnia', 'SD Spring Garden School', '088901234734'),
(84, 'Gita Andini', 'SDIT Mumtaz Mulia', '081234567978'),
(85, 'Hanif Suhendar', 'SD Negeri Jatibaru 02', '082345678989'),
(86, 'Ika Apriyani', 'SD Negeri Karangsari 03', '083456789290'),
(87, 'Joko Waluyo', 'Cipayung', '084567891401'),
(88, 'Kristina Wijaya', 'Hegarmanah', '085678912512'),
(89, 'Lina Kusuma', 'Jatibaru', '086789123623'),
(90, 'Marta Siregar', 'Jatireja', '087890123734'),
(91, 'Nurul Fadilah', 'Karangsari', '088901234845'),
(92, 'Okta Haryanto', 'Labansari', '081234567989'),
(93, 'Pipit Lestari', 'Sertajaya', '082345678990'),
(94, 'Qomarudin', 'Tanjungbaru', '083456789301'),
(95, 'Rahmat Sujana', 'TK Amanah', '084567891412'),
(96, 'Sri Andayani', 'TKIT Nurul Iman', '085678912523'),
(97, 'Taufik Mubarok', 'TK IT Al-mishbah', '086789123634'),
(98, 'Uci Nurhasanah', 'TK Mentari', '087890123745'),
(99, 'Vicky Hakim', 'TKIT Qonita', '088901234857'),
(100, 'Suparman', 'TKIS Tarakanita', '081201234853');

-- --------------------------------------------------------

--
-- Table structure for table `databarang`
--

CREATE TABLE `databarang` (
  `idbarang` int(11) NOT NULL,
  `b_namabarang` varchar(220) CHARACTER SET latin1 NOT NULL,
  `b_merek` varchar(100) CHARACTER SET latin1 NOT NULL,
  `b_jenis` varchar(100) CHARACTER SET latin1 NOT NULL,
  `b_hbeli` int(11) NOT NULL,
  `b_hjual` int(11) NOT NULL,
  `b_stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `databarang`
--

INSERT INTO `databarang` (`idbarang`, `b_namabarang`, `b_merek`, `b_jenis`, `b_hbeli`, `b_hjual`, `b_stok`) VALUES
(1, 'Beras', 'Merpati', 'Bulok', 200000, 300000, 20),
(3, 'Beras', 'Dara', 'Merah', 30000, 35000, 20),
(4, 'Beras', 'Perkutut', 'Merah', 20000, 25000, 10),
(6, 'Beras', 'Kenari', 'Jagung', 400000, 450000, 12),
(7, 'Beras', 'Ayam Mas', 'Raskin', 100000, 150000, 50),
(8, 'Beras', 'Ayam Mas', 'Merah', 200000, 250000, 20),
(9, 'Beras', 'BMW', 'Rojolele', 9200, 11500, 45),
(10, 'Beras', 'Organik Nusa', 'Pera', 8600, 10600, 35),
(11, 'Beras', 'Cap Bunga', 'Pandan Wangi', 12300, 14500, 68),
(12, 'Beras', 'Rojolele', 'Merah', 10500, 12800, 40),
(13, 'Beras', 'Setra Wangi', 'Ketan', 9600, 11800, 50),
(14, 'Beras', 'Maknyus', 'C4', 8200, 10200, 30),
(15, 'Beras', 'Topi Koki', 'Mentik Wangi', 11600, 13800, 53),
(16, 'Beras', 'Sumo', 'Mentik Susu', 10700, 12800, 48),
(17, 'Beras', 'Si Pulen', 'Setra Ramos', 8900, 11000, 70),
(18, 'Beras', 'Sania Premium', 'Basmati', 13500, 16500, 42),
(19, 'Beras', 'BMW', 'Pandan Wangi', 10100, 12300, 67),
(20, 'Beras', 'Organik Nusa', 'Ketan', 9900, 11800, 20),
(21, 'Beras', 'Cap Bunga', 'Rojolele', 9300, 11200, 55),
(22, 'Beras', 'Rojolele', 'Pera', 8700, 10900, 60),
(23, 'Beras', 'Setra Wangi', 'Merah', 10800, 13000, 38),
(24, 'Beras', 'Maknyus', 'Setra Ramos', 9500, 11500, 45),
(25, 'Beras', 'Topi Koki', 'C4', 8400, 10100, 55),
(26, 'Beras', 'Sumo', 'Mentik Wangi', 11500, 13700, 54),
(27, 'Beras', 'Si Pulen', 'Mentik Susu', 10400, 12700, 58),
(28, 'Beras', 'Sania Premium', 'Rojolele', 8800, 11300, 64),
(29, 'Beras', 'BMW', 'Basmati', 13200, 16200, 40),
(30, 'Beras', 'Organik Nusa', 'Setra Ramos', 8900, 11000, 75),
(32, 'Beras', 'Rojolele', 'Ketan', 9500, 11600, 60),
(33, 'Beras', 'Setra Wangi', 'C4', 8200, 10300, 47),
(34, 'Beras', 'Maknyus', 'Mentik Susu', 10500, 12600, 52),
(35, 'Beras', 'Topi Koki', 'Merah', 10200, 12400, 44),
(36, 'Beras', 'Sumo', 'Rojolele', 8900, 11100, 65),
(37, 'Beras', 'Si Pulen', 'Pera', 8600, 10600, 50),
(38, 'Beras', 'Sania Premium', 'Mentik Wangi', 12000, 14200, 58),
(39, 'Beras', 'BMW', 'Setra Ramos', 8700, 10900, 78),
(40, 'Beras', 'Organik Nusa', 'Basmati', 13100, 16000, 63),
(41, 'Beras', 'Cap Bunga', 'Mentik Susu', 10200, 12500, 39),
(43, 'Beras', 'Setra Wangi', 'Pandan Wangi', 12100, 14300, 70),
(44, 'Beras', 'Maknyus', 'Ketan', 9400, 11500, 60),
(45, 'Beras', 'Topi Koki', 'Rojolele', 9300, 11300, 45),
(47, 'Beras', 'Si Pulen', 'C4', 8300, 10200, 48),
(49, 'Beras', 'BMW', 'Merah', 10900, 13000, 51),
(50, 'Beras', 'Organik Nusa', 'Setra Ramos', 9100, 11500, 68),
(52, 'Beras', 'Rojolele', 'Basmati', 13400, 16200, 54),
(53, 'Beras', 'Setra Wangi', 'Pera', 8600, 10700, 65),
(54, 'Beras', 'Maknyus', 'Pandan Wangi', 10000, 12300, 43),
(59, 'Beras', 'BMW', 'Mentik Susu', 10700, 12900, 60),
(61, 'Beras', 'Cap Bunga', 'Basmati', 13000, 16500, 45),
(68, 'Beras', 'Sania Premium', 'Pandan Wangi', 12400, 14600, 52),
(70, 'Beras', 'Organik Nusa', 'Merah', 10300, 12700, 55),
(71, 'Beras', 'Cap Bunga', 'Pera', 8500, 10600, 58),
(72, 'Beras', 'Rojolele', 'Mentik Wangi', 11800, 14000, 53),
(73, 'Beras', 'Setra Wangi', 'Basmati', 13200, 16500, 48),
(74, 'Beras', 'Maknyus', 'Rojolele', 9000, 11200, 70),
(75, 'Beras', 'Topi Koki', 'Setra Ramos', 8700, 10900, 75),
(76, 'Beras', 'Sumo', 'Ketan', 9700, 11700, 30),
(77, 'Beras', 'Si Pulen', 'Merah', 10400, 12500, 40),
(78, 'Beras', 'Sania Premium', 'Mentik Susu', 10900, 13200, 36),
(83, 'Minyak Goreng', 'Sania', 'Kemasan', 18000, 19000, 40);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `idgroups` int(11) NOT NULL,
  `groups_name` varchar(100) NOT NULL,
  `groups_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`idgroups`, `groups_name`, `groups_description`) VALUES
(1, 'administrator', 'Administrator User'),
(2, 'general', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `idpenjualan` int(11) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `idcustomer` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `barang_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`idpenjualan`, `tgl_penjualan`, `idcustomer`, `idbarang`, `barang_qty`) VALUES
(1, '2024-09-09', 75, 1, 3),
(3, '2024-09-18', 5, 6, 1),
(4, '2024-09-24', 82, 13, 3),
(6, '2024-09-09', 1, 1, 3),
(9, '2024-09-09', 1, 1, 4),
(10, '2024-09-09', 70, 25, 2),
(11, '2024-09-09', 1, 1, 3),
(14, '2024-09-09', 96, 1, 4),
(15, '2024-11-20', 78, 61, 2),
(16, '2024-11-20', 28, 44, 3),
(19, '2024-11-20', 52, 83, 1),
(20, '2024-11-21', 78, 83, 1),
(21, '2024-11-21', 53, 83, 1),
(22, '2024-11-21', 27, 83, 1),
(26, '2024-11-21', 28, 83, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `u_username` varchar(100) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `idgroups` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idusers`, `u_username`, `u_password`, `u_email`, `u_name`, `idgroups`) VALUES
(1, 'administrator', '$2y$10$BHh7/twk6edsfMmWrItKieSgqLiy/iGRINEVlrQzOErlpSB/a5oTu', 'ghalyfadhillah@gmail.com', 'Administrator', 1),
(4, 'userbiasa', '$2y$10$lQGaZNxj8ogbA6ToSjuKlOqOgYmSqPd9PapHyOcKjYMjQRJzUW2v6', 'userbiasa@gmail.com', 'User Biasa', 2),
(29, 'xiaomi', '$2y$10$JuROgPdTbIbXEi6GbsKCae5RoDSUDk8w4etQSTKsjEkMvZJnIaYu.', 'xiaomi@gmail.com', 'Xiaomi', 2),
(30, 'justin', '$2y$10$4S7A8AxEn8WAJr2E1nfTtu8tvs5ZHfb6vm2SSAHpStgc71p28eSty', 'justin10@gmail.com', 'Justin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idcustomer`);

--
-- Indexes for table `databarang`
--
ALTER TABLE `databarang`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`idgroups`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`idpenjualan`),
  ADD KEY `idbarang` (`idbarang`),
  ADD KEY `idcustomer` (`idcustomer`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`),
  ADD KEY `idgroups` (`idgroups`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `idcustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `databarang`
--
ALTER TABLE `databarang`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `idgroups` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `idpenjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `idbarang` FOREIGN KEY (`idbarang`) REFERENCES `databarang` (`idbarang`),
  ADD CONSTRAINT `idcustomer` FOREIGN KEY (`idcustomer`) REFERENCES `customer` (`idcustomer`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`idgroups`) REFERENCES `groups` (`idgroups`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
