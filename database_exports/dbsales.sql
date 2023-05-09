-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 12:33 AM
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
-- Database: `dbsales`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbooth`
--

CREATE TABLE `tblbooth` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `STRAND` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `ADDED BY` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `CATEGORY` varchar(255) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `STOCK` int(11) NOT NULL,
  `UNIT` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `ADDED BY` varchar(255) NOT NULL,
  `STATUS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpurchase`
--

CREATE TABLE `tblpurchase` (
  `ID` int(11) NOT NULL,
  `DATE/TIME` datetime NOT NULL,
  `REFERENCE NO.` varchar(255) NOT NULL,
  `CUSTOMER NAME` varchar(255) NOT NULL,
  `PRODUCT NAME` varchar(255) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL,
  `STATUS` varchar(255) NOT NULL,
  `ADDED BY` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltransaction`
--

CREATE TABLE `tbltransaction` (
  `ID` int(11) NOT NULL,
  `REFERENCE NO.` varchar(255) NOT NULL,
  `DATE/TIME` datetime NOT NULL,
  `CUSTOMER NAME` varchar(255) NOT NULL,
  `PAYMENT` varchar(255) NOT NULL,
  `PAID` int(11) NOT NULL,
  `TOTAL` int(11) NOT NULL,
  `CHANGE` int(11) NOT NULL,
  `STATUS` varchar(255) NOT NULL,
  `BILLER` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `ID` int(11) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `FIRST NAME` varchar(100) NOT NULL,
  `LAST NAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `CODE` mediumint(50) NOT NULL,
  `STATUS` varchar(10) NOT NULL,
  `ROLE` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`ID`, `EMAIL`, `FIRST NAME`, `LAST NAME`, `PASSWORD`, `CODE`, `STATUS`, `ROLE`) VALUES
(1, 'raphaelandreiglatoy@gmail.com', 'Raphael Andrei', 'Latoy', '$2y$10$EQqKNc5s5aUQS/wEE5qknejxbEWCtspf/PaKJpXEEjQsDKayUM752', 0, 'Verified', 'Admin'),
(2, 'andreigerico64@gmail.com', 'Andrei Gerico', 'Sacay', '$2y$10$8cGu8JeCDOj4FwVBY..IauG1hUm7fX00VhwG9Ug3W9x6Ft16c.uri', 0, 'Verified', ' User'),
(3, 'edsonphillipsorbito123@gmail.com', 'Edson Phillip', 'Sorbito', '$2y$10$KTVnMGo9ICPxnwSfdLaTeu1GDp/hISGnKEGFNYJbEaW6Jg3T3ATe6', 0, 'Verified', ' User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbooth`
--
ALTER TABLE `tblbooth`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpurchase`
--
ALTER TABLE `tblpurchase`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltransaction`
--
ALTER TABLE `tbltransaction`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbooth`
--
ALTER TABLE `tblbooth`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpurchase`
--
ALTER TABLE `tblpurchase`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltransaction`
--
ALTER TABLE `tbltransaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
