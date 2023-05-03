-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 04:56 AM
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
-- Database: `dbscanner`
--

-- --------------------------------------------------------

--
-- Table structure for table `bvs_booths`
--

CREATE TABLE `bvs_booths` (
  `booth_id` int(11) NOT NULL,
  `booth_strand` varchar(255) NOT NULL,
  `booth_username` varchar(255) NOT NULL,
  `booth_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bvs_booths`
--

INSERT INTO `bvs_booths` (`booth_id`, `booth_strand`, `booth_username`, `booth_password`) VALUES
(1, 'it mawd', 'demoQratic', '$2y$10$13LbIc03oAq2SbWY5s6WK.g5hiwZzTdG2jN3mOGxvM05.lkfWAmoq'),
(3, 'it mawd', 'Atlas', '$2y$10$l72LHI7Q/0o8t5vE91eVJuzXDstOWSvK1K/WOTLD8LbZ5rHcfefz6');

-- --------------------------------------------------------

--
-- Table structure for table `bvs_scanned_users`
--

CREATE TABLE `bvs_scanned_users` (
  `vote_id` int(11) NOT NULL,
  `fk_booth_id` int(11) NOT NULL,
  `fk_user_id` varchar(255) NOT NULL,
  `vote_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `attendanceId` int(50) NOT NULL,
  `Id` varchar(50) NOT NULL,
  `timeIn` datetime NOT NULL,
  `timeOut` datetime NOT NULL,
  `status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`attendanceId`, `Id`, `timeIn`, `timeOut`, `status`) VALUES
(34, 'MTIzNDU3', '2023-05-01 22:35:52', '2023-05-01 22:36:00', 1),
(35, 'MTIzNDU3', '2023-05-01 22:36:09', '2023-05-01 22:36:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `Id` int(255) NOT NULL,
  `qrId` varchar(255) DEFAULT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `affiliation` varchar(50) NOT NULL,
  `verificationCode` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`Id`, `qrId`, `firstName`, `lastName`, `email`, `gender`, `password`, `affiliation`, `verificationCode`, `status`, `Role`) VALUES
(123457, 'MTIzNDU3', 'John', 'Doe', 'testdoe1975@gmail.com', 'Rather not Say', '$2y$10$Yorv2zA5wjWCV.qrGuUzIuYf2Ra9ydOXO8uW9HK/jMrzQnZnFmEei', 'STICollegeMarikinaStudent', 0, 'Verified', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `user_role`) VALUES
(1, 'Marcus', 'Marcus', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bvs_booths`
--
ALTER TABLE `bvs_booths`
  ADD PRIMARY KEY (`booth_id`);

--
-- Indexes for table `bvs_scanned_users`
--
ALTER TABLE `bvs_scanned_users`
  ADD PRIMARY KEY (`vote_id`),
  ADD UNIQUE KEY `user_id` (`fk_user_id`),
  ADD KEY `booth_id` (`fk_booth_id`) USING BTREE;

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`attendanceId`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `qrId` (`qrId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bvs_booths`
--
ALTER TABLE `bvs_booths`
  MODIFY `booth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bvs_scanned_users`
--
ALTER TABLE `bvs_scanned_users`
  MODIFY `vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `attendanceId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123458;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bvs_scanned_users`
--
ALTER TABLE `bvs_scanned_users`
  ADD CONSTRAINT `fk_booth_id` FOREIGN KEY (`fk_booth_id`) REFERENCES `bvs_booths` (`booth_id`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`fk_user_id`) REFERENCES `tbluser` (`qrId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
