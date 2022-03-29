-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 10, 2021 at 01:58 PM
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
-- Table structure for table `height`
--

CREATE TABLE `height` (
  `id` int(11) NOT NULL,
  `height` varchar(8) NOT NULL,
  `number` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `height`
--

INSERT INTO `height` (`id`, `height`, `number`) VALUES
(1, '0', 0),
(2, '1/8', 0.125),
(3, '3/16', 0.1875),
(4, '1/4', 0.25),
(39, '1 9/16', 1.5625),
(6, '11/16', 0.6875),
(7, '13/16', 0.8125),
(8, '15/16', 0.9375),
(9, '1', 1),
(10, '1 1/16', 1.0625),
(11, '1 1/8', 1.125),
(12, '1 3/16', 1.1875),
(13, '1 1/4', 1.25),
(14, '1 5/16', 1.3125),
(15, '1 3/8', 1.375),
(16, '1 7/16', 1.4375),
(17, '1 1/2', 1.5),
(18, '1 5/8', 1.625),
(19, '1 11/16', 1.6875),
(20, '1 3/4', 1.75),
(21, '1 7/8', 1.875),
(22, '2', 2),
(23, '2 1/8', 2.125),
(24, '2 1/4', 2.25),
(25, '2 5/16', 2.3125),
(26, '2 3/8', 2.375),
(27, '2 5/8', 2.625),
(28, '3', 3),
(29, '7/8', 0.875),
(30, '3/4', 0.75),
(31, '5/8', 0.625),
(32, '3 5/16', 3.3125),
(33, '3 1/8', 3.125),
(34, '5/16', 0.3125),
(35, '3/8', 0.375),
(36, '7/16', 0.4375),
(37, '1/2', 0.5),
(38, '9/16', 0.5625),
(40, '1 13/16', 1.8125),
(41, '1 15/16', 1.9375),
(42, '2 1/16', 2.0625),
(43, '2 3/16', 2.1875),
(44, '2 7/16', 2.4375),
(45, '2 1/2', 2.5),
(46, '2 9/16', 2.5625),
(47, '2 11/16', 2.6875),
(48, '2 3/4', 2.75),
(49, '2 13/16', 2.8125),
(50, '2 7/8', 2.875),
(51, '2 15/16', 2.9375),
(52, '3 1/16', 3.0625),
(53, '3 3/16', 3.1875),
(54, '3 1/4', 3.25),
(55, '3 3/8', 3.375),
(56, '3 7/16', 3.4375),
(57, '3 1/2', 3.5),
(58, '3 9/16', 3.5625),
(59, '3 5/8', 3.625),
(60, '3 11/16', 3.6875),
(61, '3 3/4', 3.75),
(62, 'N/A', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `height`
--
ALTER TABLE `height`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `height`
--
ALTER TABLE `height`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
