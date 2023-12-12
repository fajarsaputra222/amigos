-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 03:14 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `id` int(11) NOT NULL,
  `nocabang` int(11) NOT NULL,
  `namacabang` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `jumlahtransaksi` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`id`, `nocabang`, `namacabang`, `alamat`, `jumlahtransaksi`) VALUES
(7, 1, 'Sudirman', 'Sudirman', 4),
(8, 2, 'Jaksel', 'Jaksel', 4),
(9, 3, 'jakpus', 'jakpuss', 4);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `namamember` varchar(50) NOT NULL,
  `nomor` varchar(20) NOT NULL,
  `alamat` text,
  `poin` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `namamember`, `nomor`, `alamat`, `poin`) VALUES
(27, 'Surya', '083113843232', NULL, 41),
(28, 'Kanjeng', '0899019200', NULL, 22),
(29, 'itings', '082126610058', NULL, 10),
(30, 'Mansyur', '083851153239', NULL, 9),
(31, 'Hanum', '085567778811', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `kodetransaksi` varchar(30) NOT NULL,
  `tanggaltransaksi` date NOT NULL,
  `nocabang` int(11) NOT NULL,
  `idmember` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `kodetransaksi`, `tanggaltransaksi`, `nocabang`, `idmember`, `total`) VALUES
(20, 'TRX657688dcdbdda', '2023-12-01', 7, 28, 50000),
(21, 'TRX657688f565e74', '2023-12-12', 8, 27, 50000),
(22, 'TRX657693ec0f8ed', '2023-11-29', 8, 27, 50000),
(24, 'TRX657695c213266', '2023-12-01', 7, 27, 50000),
(26, 'TRX6576964351db9', '2023-12-01', 7, 27, 50000),
(27, 'TRX65769652d5e62', '2023-12-09', 8, 28, 10000),
(28, 'TRX65769a1e6fa7d', '2023-12-11', 8, 29, 99000),
(29, 'TRX6576bd56e7743', '2023-12-08', 9, 30, 90000),
(30, 'TRX6576bdd633a83', '2023-12-01', 7, 29, 9000),
(31, 'TRX6576be7770446', '2023-12-06', 9, 29, 10500),
(32, 'TRX6576bef9e8a7e', '2023-12-07', 9, 27, 15000),
(33, 'TRX6576ca23cc01a', '2023-12-01', 9, 27, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `role` enum('kasir','admin') NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `foto` text NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `no_telp`, `role`, `password`, `created_at`, `foto`, `is_active`) VALUES
(16, 'surya', 'Surya', 'surya@gmail.com', '082126610058', 'kasir', '$2y$10$fxuiWTSSN/z127.OoJnwCuEoP0ZA8fZS2UGd.bS4TiNIJCLnuRcGa', 1702266780, '8471224baf12ddaf4dc89c284620bdf5.jpg', 1),
(18, 'saya', 'saya', 'saya@gmail.com', '0863237232', 'admin', '$2y$10$qdQzKfdXwcutFrr/iqAsM.sSMHyCuga4mU73c7M0o7CZuBfal0hW2', 1702272252, 'ab0f9b7c824c1738d3c693de7a0642fb.jpg', 1),
(19, 'ika', 'ika', 'ika@gmail.com', '0863237232', 'kasir', '$2y$10$mTU6WFtbhxIioIAfEiTHnOuSLFXpaIKe6HnYJgYUKQUtpAKuY1w/q', 1702281580, '21094756f1d2d5586cdde88caea26623.jpg', 1),
(20, 'admin', 'admin', 'admin@gmail.com', '083870517591', 'admin', '$2y$10$4JopYSTQWV4Gi9FFFV5Av.VncM1/75UxAOHoLIkMEF8mVPVDI5LDm', 1702281635, '74acfc0cfba34f18fb70280389160e5b.jpg', 1),
(21, 'fajar', 'fajar', 'fajars@gmail.com', '082126610058', 'kasir', '$2y$10$xrrfDU3iVwrIXu34gyVO6OLdRauihswuqOwlXVRJU00scF8gGGNqG', 1702283336, '16d4477f59a9509b493f831c22a38fdd.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transaksi_member` (`idmember`),
  ADD KEY `fk_transaksi_cabang` (`nocabang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_transaksi_cabang` FOREIGN KEY (`nocabang`) REFERENCES `cabang` (`id`),
  ADD CONSTRAINT `fk_transaksi_member` FOREIGN KEY (`idmember`) REFERENCES `member` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
