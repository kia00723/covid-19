-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 09:38 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid_19_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `id` int(3) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `sur_name` varchar(30) NOT NULL,
  `id_card` varchar(20) NOT NULL,
  `sex` varchar(15) NOT NULL,
  `birthdate` datetime(6) NOT NULL,
  `telephone_number` int(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `sub_district` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `create_at` varchar(30) NOT NULL,
  `modify_date` datetime(6) NOT NULL,
  `modify_at` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`id`, `first_name`, `sur_name`, `id_card`, `sex`, `birthdate`, `telephone_number`, `address`, `sub_district`, `district`, `province`, `create_date`, `create_at`, `modify_date`, `modify_at`) VALUES
(2, 'Natthiti4', 'Saengmani4', '1500500085458', 'Man', '1997-01-13 20:21:38.000000', 123456789, '208', 'asdasd', 'asdas', 'dasdasd', '2022-05-15 13:39:45.802000', 'Admin', '2022-05-15 13:39:45.802000', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
