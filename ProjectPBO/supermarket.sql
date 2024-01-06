-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 06, 2024 at 04:58 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_produk` enum('makanan','minuman','obat-obatan','') NOT NULL,
  `harga` int(20) NOT NULL,
  `kuantitas` int(50) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_produk`, `nama`, `jenis_produk`, `harga`, `kuantitas`, `deskripsi`) VALUES
(1, 'mie ayam bawang', 'makanan', 5000, 50, 'mie rebus'),
(2, 'mie rendang', 'makanan', 7000, 28, 'mie goreng'),
(3, 'biskuit coklat', 'makanan', 15000, 40, 'cemilan'),
(4, 'coca -  cola', 'minuman', 14000, 39, 'minuman bersoda'),
(5, 'susu coklat', 'minuman', 7000, 25, 'susu sapi'),
(6, 'kopi hitam', 'minuman', 5000, 48, 'kopi'),
(7, 'paracetamol', 'obat-obatan', 10000, 55, 'obat sakit demam'),
(8, 'panadol', 'obat-obatan', 16000, 70, 'obat sakit kepala'),
(9, 'obh combi', 'obat-obatan', 21000, 28, 'obat batuk'),
(10, 'ponstan', 'obat-obatan', 12000, 19, 'obat sakit gigi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_produk`);
ALTER TABLE `product` ADD FULLTEXT KEY `nama` (`nama`,`deskripsi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
