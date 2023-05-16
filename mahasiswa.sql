-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 02:45 AM
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
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `datam`
--

CREATE TABLE `datam` (
  `npm` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `major` varchar(50) NOT NULL,
  `batch` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datam`
--

INSERT INTO `datam` (`npm`, `name`, `major`, `batch`) VALUES
(670120101, 'Putri Adillah', 'D3 Sistem Informasi', 'Angkatan 2020'),
(670120123, 'Rosa Fuji ', 'D3 Sistem Informasi Akuntansi', 'Angkatan 2020'),
(670120135, 'Nur Andini', 'D3 Ahli Gizi', 'Angkatan 2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datam`
--
ALTER TABLE `datam`
  ADD PRIMARY KEY (`npm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datam`
--
ALTER TABLE `datam`
  MODIFY `npm` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670120136;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
