-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 04:55 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tes_de`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_kurs_klikbca`
--

CREATE TABLE `data_kurs_klikbca` (
  `id` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `USD_beli` double DEFAULT NULL,
  `USD_jual` double DEFAULT NULL,
  `SGD_beli` double DEFAULT NULL,
  `SGD_jual` double DEFAULT NULL,
  `EUR_beli` double DEFAULT NULL,
  `EUR_jual` double DEFAULT NULL,
  `AUD_beli` double DEFAULT NULL,
  `AUD_jual` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kurs_klikbca`
--

INSERT INTO `data_kurs_klikbca` (`id`, `waktu`, `USD_beli`, `USD_jual`, `SGD_beli`, `SGD_jual`, `EUR_beli`, `EUR_jual`, `AUD_beli`, `AUD_jual`) VALUES
(1, '2021-04-06 20:41:56', 14495, 14525, 10811.26, 10841.42, 17122.65, 17176.09, 11053.95, 11094.12),
(2, '2021-04-06 20:57:09', 14495, 14525, 10811.26, 10841.42, 17122.65, 17176.09, 11053.95, 11094.12),
(3, '2021-04-06 20:57:43', 14495, 14525, 10811.26, 10841.42, 17122.65, 17176.09, 11053.95, 11094.12),
(4, '2021-04-06 20:58:14', 14495, 14525, 10811.26, 10841.42, 17122.65, 17176.09, 11053.95, 11094.12),
(5, '2021-04-06 20:58:44', 14495, 14525, 10811.26, 10841.42, 17122.65, 17176.09, 11053.95, 11094.12),
(6, '2021-04-06 21:34:36', 14495, 14525, 10811.26, 10841.42, 17122.65, 17176.09, 11053.95, 11094.12),
(7, '2021-04-06 21:35:06', 14495, 14525, 10811.26, 10841.42, 17122.65, 17176.09, 11053.95, 11094.12),
(8, '2021-04-06 21:39:46', 14495, 14525, 10811.26, 10841.42, 17122.65, 17176.09, 11053.95, 11094.12),
(9, '2021-04-06 21:42:41', 14495, 14525, 10811.26, 10841.42, 17122.65, 17176.09, 11053.95, 11094.12),
(10, '2021-04-06 21:48:39', 14495, 14525, 10811.26, 10841.42, 17122.65, 17176.09, 11053.95, 11094.12);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_kurs_klikbca`
--
ALTER TABLE `data_kurs_klikbca`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_kurs_klikbca`
--
ALTER TABLE `data_kurs_klikbca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
