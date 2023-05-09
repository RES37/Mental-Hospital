-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 12:41 AM
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
-- Database: `wbts_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wbts_scores`
--

CREATE TABLE `wbts_scores` (
  `scoreID` int(50) NOT NULL,
  `userID` int(50) NOT NULL,
  `boothNumber` int(11) NOT NULL,
  `boothName` varchar(255) NOT NULL,
  `crit1` int(11) NOT NULL,
  `crit2` int(11) NOT NULL,
  `crit3` int(11) NOT NULL,
  `crit4` int(11) NOT NULL,
  `score` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wbts_scores`
--
ALTER TABLE `wbts_scores`
  ADD PRIMARY KEY (`scoreID`),
  ADD KEY `boothNumber` (`boothNumber`),
  ADD KEY `userID` (`userID`),
  ADD KEY `fk_boothName` (`boothName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wbts_scores`
--
ALTER TABLE `wbts_scores`
  MODIFY `scoreID` int(50) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wbts_scores`
--
ALTER TABLE `wbts_scores`
  ADD CONSTRAINT `fk_boothID` FOREIGN KEY (`boothNumber`) REFERENCES `dbscanner`.`bvs_booths` (`booth_id`),
  ADD CONSTRAINT `fk_boothName` FOREIGN KEY (`boothName`) REFERENCES `dbscanner`.`bvs_booths` (`booth_username`),
  ADD CONSTRAINT `fk_userID` FOREIGN KEY (`userID`) REFERENCES `dba9`.`tbluser` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
