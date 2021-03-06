-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 10, 2021 at 01:57 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studirg6_sm`
--

-- --------------------------------------------------------

--
-- Table structure for table `width`
--

CREATE TABLE `width` (
  `id` int(11) NOT NULL,
  `width` varchar(8) NOT NULL,
  `number` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `width`
--

INSERT INTO `width` (`id`, `width`, `number`) VALUES
(1, '0', 0),
(2, '3/8', 0.375),
(3, '7/16', 0.4375),
(4, '1/2', 0.5),
(5, '9/16', 0.5625),
(6, '5/8', 0.625),
(7, '11/16', 0.6875),
(8, '3/4', 0.75),
(9, '13/16', 0.8125),
(10, '7/8', 0.875),
(11, '15/16', 0.9375),
(12, '1', 1),
(13, '1 1/16', 1.0625),
(14, '1 1/8', 1.125),
(15, '1 3/16', 1.1875),
(16, '1 1/4', 1.25),
(17, '1 5/16', 1.3125),
(18, '1 3/8', 1.375),
(19, '1 7/16', 1.4375),
(20, '1 1/2', 1.5),
(21, '1 9/16', 1.5625),
(22, '1 5/8', 1.625),
(23, '1 11/16', 1.6875),
(24, '1 3/4', 1.75),
(25, '1 13/16', 1.8125),
(26, '1 7/8', 1.875),
(27, '1 15/16', 1.9375),
(28, '2', 2),
(29, '2 1/16', 2.0625),
(30, '2 1/8', 2.125),
(31, '2 1/4', 2.25),
(32, '2 3/8', 2.375),
(33, '2 1/2', 2.5),
(34, '2 9/16', 2.5625),
(35, '2 5/8', 2.625),
(36, '2 3/4', 2.75),
(37, '3', 3),
(38, '3 1/8', 3.125),
(39, '3 3/16', 3.1875),
(40, '3 1/4', 3.25),
(41, '3 3/8', 3.375),
(42, '3 1/2', 3.5),
(43, '3 5/8', 3.625),
(44, '3 3/4', 3.75),
(45, '2 5/16', 2.3125),
(46, '2 11/16', 2.6875),
(47, '2 13/16', 2.8125),
(48, '2 7/8', 2.875),
(49, '2 15/16', 2.9375),
(50, '3 1/16', 3.0625),
(51, '3 5/16', 3.3125),
(52, '3 7/16', 3.4375),
(53, '3 9/16', 3.5625),
(54, '2 3/16', 2.1875),
(55, '2 7/16', 2.4375),
(56, '3 11/16', 3.6875),
(57, '1/8', 0.125),
(58, '3/16', 0.1875),
(59, '1/4', 0.25),
(60, '5/16', 0.3125),
(61, 'N/A', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `width`
--
ALTER TABLE `width`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `width`
--
ALTER TABLE `width`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
