-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 10:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hamro_garage`
--

-- --------------------------------------------------------

--
-- Table structure for table `garage_info`
--

CREATE TABLE `garage_info` (
  `id` int(11) NOT NULL,
  `garage_name` varchar(100) DEFAULT NULL,
  `available_time` varchar(100) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `service` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `garage_info`
--

INSERT INTO `garage_info` (`id`, `garage_name`, `available_time`, `mobile`, `service`, `location`, `s_id`) VALUES
(2, 'Arijit service center', '9 am  to. 5 pm', '9874561232', 'all type', 'lalitpur', 4),
(3, 'bijay service center', '1 to 6', '986532147', 'all type', 'tokha', 4);

-- --------------------------------------------------------

--
-- Table structure for table `garage_location`
--

CREATE TABLE `garage_location` (
  `id` int(11) NOT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `garage_location`
--

INSERT INTO `garage_location` (`id`, `latitude`, `longitude`, `s_id`) VALUES
(16, 37.424875, -122.099918, 6),
(17, 37.415221, -122.096672, 8);

-- --------------------------------------------------------

--
-- Table structure for table `servicelist`
--

CREATE TABLE `servicelist` (
  `s_id` int(11) NOT NULL,
  `service` varchar(100) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicelist`
--

INSERT INTO `servicelist` (`s_id`, `service`, `u_id`) VALUES
(1, 'cleaning', 2),
(5, 'Tyre Flat', 8),
(6, 'Flat Tyre', 6),
(7, 'Cleaning', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_signup`
--

CREATE TABLE `user_signup` (
  `id` int(11) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `repassword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_signup`
--

INSERT INTO `user_signup` (`id`, `fullname`, `address`, `mobile`, `email`, `password`, `repassword`, `type`) VALUES
(6, 'Prabhas', 'Tokhaa', '9860080150', 'bijay.dulal28@gmail.com', 'Ramey123', 'Ramey123', 'mechanic'),
(7, 'Thalapaty', 'kathmandu', '9876546762', 'thalapaty@gmail.com', 'Thalapaty123', 'Thalapaty123', 'customer'),
(8, 'Arijit Singh', 'Ramechhap', '9876543456', 'arijit@gmail.com', 'Arijit123', 'Arijit123', 'mechanic'),
(9, 'Bijay Dulal', 'tokha', '9876543212', 'bijaydulal@gmail.com', 'Bijay123', 'Bijay123', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `garage_info`
--
ALTER TABLE `garage_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `garage_location`
--
ALTER TABLE `garage_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `servicelist`
--
ALTER TABLE `servicelist`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `user_signup`
--
ALTER TABLE `user_signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `garage_info`
--
ALTER TABLE `garage_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `garage_location`
--
ALTER TABLE `garage_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `servicelist`
--
ALTER TABLE `servicelist`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_signup`
--
ALTER TABLE `user_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
