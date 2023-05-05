-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 06:01 PM
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
(4, 'it mawd', 'demoQratic', '$2y$10$rTQdJGTnDkAxSsRNcMpfZe9FRolIstIax87gSoxmEzqnA2ejUCMEe');

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

--
-- Dumping data for table `bvs_scanned_users`
--

INSERT INTO `bvs_scanned_users` (`vote_id`, `fk_booth_id`, `fk_user_id`, `vote_time`) VALUES
(6, 4, 'MTAwNw==', '2023-05-05 13:16:32');

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
  MODIFY `booth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bvs_scanned_users`
--
ALTER TABLE `bvs_scanned_users`
  MODIFY `vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`fk_user_id`) REFERENCES `dba9`.`tbluser` (`qrId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
