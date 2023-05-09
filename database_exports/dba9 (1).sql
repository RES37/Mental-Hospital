-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 12:31 AM
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
-- Database: `dba9`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `attendanceId` int(50) NOT NULL,
  `Id` varchar(50) NOT NULL,
  `timeIn` datetime NOT NULL,
  `timeOut` datetime DEFAULT NULL,
  `status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`attendanceId`, `Id`, `timeIn`, `timeOut`, `status`) VALUES
(81, 'dGFuLnVuYWJpYUBnbWFpbC5jb20=', '2023-05-09 11:25:39', NULL, 0),
(82, 'a2Vpc2hhbG91aXNzZWJvaG9sQGdtYWlsLmNvbQ==', '2023-05-09 11:33:31', '2023-05-09 11:47:49', 1),
(83, 'c2NoZW5haWFhYWExOUBnbWFpbC5jb20=', '2023-05-09 11:35:17', '2023-05-09 12:25:03', 1),
(84, 'a2Vpc2hhbG91aXNzZWJvaG9sQGdtYWlsLmNvbQ==', '2023-05-09 11:49:31', '2023-05-09 12:24:54', 1),
(85, 'ZGcuY2hyaXN0aWFubGVvbmFyZEBnbWFpbC5jb20=', '2023-05-09 11:55:07', '2023-05-09 12:37:39', 1),
(86, 'dGhvbWFzZ2FyY2lhMDQxMjA2QGdtYWlsLmNvbQ==', '2023-05-09 11:56:54', '2023-05-09 12:37:32', 1),
(87, 'eWFlbHJhem9uNTMxQGdtYWlsLmNvbQ==', '2023-05-09 11:58:40', '2023-05-09 12:37:11', 1),
(88, 'a3VydHJ1c3NlbGJheWJheUBnbWFpbC5jb20=', '2023-05-09 12:01:22', '2023-05-09 12:37:30', 1),
(89, 'cnlhbmNvbnNpZ25hNjlAZ21haWwuY29t', '2023-05-09 12:02:50', '2023-05-09 12:37:36', 1),
(90, 'Y21pa2V0b3JyYWxiYUBnbWFpbC5jb20=', '2023-05-09 12:04:19', '2023-05-09 12:37:25', 1),
(91, 'anVuaW9ydmlsbGFudWV2YTE1NkBnbWFpbC5jb20=', '2023-05-09 12:09:25', '2023-05-09 12:37:43', 1),
(92, 'YWlyYW1vbnRsYm5AZ21haWwuY29t', '2023-05-09 13:06:57', NULL, 0),
(93, 'YnVlbmF2aXN0YWpvaG5hbmRyZWlAZ21haWwuY29t', '2023-05-09 13:11:40', '2023-05-09 14:39:54', 1),
(94, 'UnVzdHVzeWlkeW9AZ21haWwuY29t', '2023-05-09 13:14:09', '2023-05-09 14:36:22', 1),
(95, 'am9obmtldmluZC5sdXN1ZWdyb0BnbWFpbC5jb20=', '2023-05-09 13:16:17', '2023-05-09 13:45:34', 1),
(96, 'cGhlcmZlZ2FsYW5AZ21haWwuY29t', '2023-05-09 13:17:51', '2023-05-09 13:46:30', 1),
(97, 'ZGVsZ2Fkb2FyZ2llMDRAZ21haWwuY29t', '2023-05-09 13:22:06', '2023-05-09 13:58:30', 1),
(98, 'bWFjYXNpbGhpZ2t5bGVAZ21haWwuY29t', '2023-05-09 13:23:03', '2023-05-09 13:58:17', 1),
(99, 'YXppb2ZyYW56QGdtYWlsLmNvbQ==', '2023-05-09 13:27:47', '2023-05-09 13:58:59', 1),
(100, 'a2Vua3lsYWtyaW5nQGdtYWlsLmNvbQ==', '2023-05-09 13:28:23', '2023-05-09 13:58:46', 1),
(101, 'YXJjaWdhcmF6aWVsMjRAZ21haWwuY29t', '2023-05-09 13:30:47', '2023-05-09 14:00:28', 1),
(102, 'bWFpYW1pbGFncm9zYTUyNkBnbWFpbC5jb20=', '2023-05-09 13:44:36', '2023-05-09 14:00:50', 1),
(103, 'https://192.168.0.13/RS/main_page/client_side/clie', '2023-05-09 13:51:44', NULL, 0),
(104, 'bGFtYmlub3RvZmZpZUBnbWFpbC5jb20=', '2023-05-09 13:56:52', '2023-05-09 13:56:57', 1),
(105, 'bWFjYXNpbGhpZ2t5bGVAZ21haWwuY29t', '2023-05-09 13:58:17', '2023-05-09 13:59:09', 1),
(106, 'ZGVsZ2Fkb2FyZ2llMDRAZ21haWwuY29t', '2023-05-09 13:58:37', NULL, 0),
(107, 'bWFjYXNpbGhpZ2t5bGVAZ21haWwuY29t', '2023-05-09 13:59:19', NULL, 0),
(108, 'YXJjaWdhcmF6aWVsMjRAZ21haWwuY29t', '2023-05-09 14:00:36', '2023-05-09 14:01:05', 1),
(109, 'bWFpYW1pbGFncm9zYTUyNkBnbWFpbC5jb20=', '2023-05-09 14:00:53', '2023-05-09 14:00:59', 1),
(110, 'enlpZW1hcGxlc0BnbWFpbC5jb20=', '2023-05-09 14:04:58', '2023-05-09 14:05:04', 1),
(111, 'c2FuZGFyYWRpem9uMzBAZ21haWwuY29t', '2023-05-09 14:06:47', '2023-05-09 14:06:49', 1),
(112, 'Z2VvZGVsZW9uMzAxQGdtYWlsLmNvbQ==', '2023-05-09 14:08:40', NULL, 0),
(113, 'a3Jmb3J0aW4xNUBnbWFpbC5jb20=', '2023-05-09 14:10:40', NULL, 0),
(114, 'ZGFybGVuZWpveW1jdHlAZ21haWwuY29t', '2023-05-09 14:12:08', '2023-05-09 14:35:01', 1),
(115, 'bW1pZ2d5MzdAZ21haWwuY29t', '2023-05-09 14:20:24', NULL, 0),
(116, 'c29sb21vbmplbmVhdmExMjNAZ21haWwuY29t', '2023-05-09 14:23:20', '2023-05-09 14:33:23', 1),
(117, 'YW5kcmVhZGVubmlzZW1lbmRvemFAZ21haWwuY29t', '2023-05-09 14:25:52', NULL, 0),
(118, 'am9obmtldmluZC5sdXN1ZWdyb0BnbWFpbC5jb20=', '2023-05-09 14:29:33', '2023-05-09 15:01:51', 1),
(119, 'cGhlcmZlZ2FsYW5AZ21haWwuY29t', '2023-05-09 14:29:39', '2023-05-09 15:01:57', 1),
(120, 'c2FuZGFyYWRpem9uMzBAZ21haWwuY29t', '2023-05-09 14:34:45', NULL, 0),
(121, 'bWVyY2Fkb3Jvbm5lbDU5QGdtYWlsLmNvbQ==', '2023-05-09 14:34:48', '2023-05-09 15:05:46', 1),
(122, 'enlpZW1hcGxlc0BnbWFpbC5jb20=', '2023-05-09 14:36:14', '2023-05-09 14:36:14', 1),
(123, 'Y29haXJhbWFlQGdtYWlsLmNvbQ==', '2023-05-09 14:43:10', '2023-05-09 15:57:32', 1),
(124, 'c2FudG9zY2hyeXp0ZWxAZ21haWwuY29t', '2023-05-09 14:44:09', '2023-05-09 15:57:25', 1),
(125, 'YmFxdWlhbC5rcmlzdGluZWpveUBnbWFpbC5jb20=', '2023-05-09 14:48:01', '2023-05-09 15:57:45', 1),
(126, 'c29sb21vbmplbmVhdmExMjNAZ21haWwuY29t', '2023-05-09 14:50:31', NULL, 0),
(127, 'YW5nZWxhLmNsYXJpc3NlMkBnbWFpbC5jb20=', '2023-05-09 14:50:56', '2023-05-09 15:57:40', 1),
(128, 'am96aGppbWVuZXoyNkBnbWFpbC5jb20=', '2023-05-09 14:52:31', '2023-05-09 15:57:58', 1),
(129, 'Y2FzYW5kcmFkb2N0b2xlcm85QGdtYWlsLmNvbQ==', '2023-05-09 15:01:32', '2023-05-09 15:52:18', 1),
(130, 'bGFyaWVqYW5lMTRAZ21haWwuY29t', '2023-05-09 15:05:12', NULL, 0),
(131, 'ZWkueGlydDk2QGdtYWlsLmNvbQ==', '2023-05-09 15:05:15', '2023-05-09 15:08:16', 1),
(132, 'https://192.168.0.13/RS/main_page/client_side/clie', '2023-05-09 15:06:27', NULL, 0),
(133, 'https://192.168.0.13/RS/main_page/client_side/clie', '2023-05-09 15:06:30', NULL, 0),
(134, 'https://192.168.0.13/RS/main_page/client_side/clie', '2023-05-09 15:06:32', NULL, 0),
(135, 'am96aGppbWVuZXoyNkBnbWFpbC5jb20=', '2023-05-09 15:58:01', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `Id` int(50) NOT NULL,
  `qrId` varchar(255) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `affiliation` varchar(50) NOT NULL,
  `verificationCode` int(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`Id`, `qrId`, `firstName`, `lastName`, `email`, `affiliation`, `verificationCode`, `status`) VALUES
(1040, 'cGVyc29uYWwubWFyY3VzN0BnbWFpbC5jb20=', 'Marcus', 'Vibar', 'personal.marcus7@gmail.com', 'guest', 0, 'Verified'),
(1045, 'ZnJlZGVyaWMueXVsb0BtYXJpa2luYS5zdGkuZWR1LnBo', 'Frederic', 'Yulo', 'frederic.yulo@marikina.sti.edu.ph', 'guest', 507284, ''),
(1046, 'dGFuLnVuYWJpYUBnbWFpbC5jb20=', 'Tristan', 'Unabia', 'tan.unabia@gmail.com', 'guest', 0, 'Verified'),
(1047, 'a2Vpc2hhbG91aXNzZWJvaG9sQGdtYWlsLmNvbQ==', 'Keisha', 'Bohol', 'keishalouissebohol@gmail.com', 'student', 0, 'Verified'),
(1048, 'c2NoZW5haWFhYWExOUBnbWFpbC5jb20=', 'Schenaia', 'Meracap', 'schenaiaaaa19@gmail.com', 'student', 0, 'Verified'),
(1049, 'ZGcuY2hyaXN0aWFubGVvbmFyZEBnbWFpbC5jb20=', 'Ian', 'DeGuzman', 'dg.christianleonard@gmail.com', 'student', 0, 'Verified'),
(1050, 'dGhvbWFzZ2FyY2lhMDQxMjA2QGdtYWlsLmNvbQ==', 'Thomas', 'Garcia', 'thomasgarcia041206@gmail.com', 'student', 0, 'Verified'),
(1051, 'eWFlbHJhem9uNTMxQGdtYWlsLmNvbQ==', 'Yael', 'Razon', 'yaelrazon531@gmail.com', 'student', 0, 'Verified'),
(1052, 'a3VydHJ1c3NlbGJheWJheUBnbWFpbC5jb20=', 'Kurt', 'Baybay', 'kurtrusselbaybay@gmail.com', 'student', 0, 'Verified'),
(1053, 'cnlhbmNvbnNpZ25hNjlAZ21haWwuY29t', 'Ryan', 'Consigna', 'ryanconsigna69@gmail.com', 'student', 0, 'Verified'),
(1054, 'Y21pa2V0b3JyYWxiYUBnbWFpbC5jb20=', 'chris', 'torralba', 'cmiketorralba@gmail.com', 'student', 0, 'Verified'),
(1055, 'anVuaW9ydmlsbGFudWV2YTE1NkBnbWFpbC5jb20=', 'Fernando', 'Villanueva', 'juniorvillanueva156@gmail.com', 'student', 0, 'Verified'),
(1056, 'Y3J1emt1cnRzeW1vbkBnbWFpbC5jb20=', 'Kurt', 'Cruz', 'cruzkurtsymon@gmail.com', 'guest', 0, 'Verified'),
(1057, 'YWlyYW1vbnRsYm5AZ21haWwuY29t', 'aira', 'Montalban', 'airamontlbn@gmail.com', 'student', 0, 'Verified'),
(1058, 'YnVlbmF2aXN0YWpvaG5hbmRyaWVAZ21haWwuY29t', 'Johnandrei', 'Buenavista', 'buenavistajohnandrie@gmail.com', 'student', 197976, ''),
(1059, 'YnVlbmF2aXN0YWpvaG5hbmRyZWlAZ21haWwuY29t', 'Johnandrei', 'Buenavista', 'buenavistajohnandrei@gmail.com', 'student', 0, 'Verified'),
(1060, 'UnVzdHVzeWlkeW9AZ21haWwuY29t', 'JorizPauloMari', 'Lopez', 'Rustusyidyo@gmail.com', 'student', 0, 'Verified'),
(1061, 'am9obmtldmluZC5sdXN1ZWdyb0BnbWFpbC5jb20=', 'JohnKevin', 'Lusuegro', 'johnkevind.lusuegro@gmail.com', 'student', 0, 'Verified'),
(1062, 'cGhlcmZlZ2FsYW5AZ21haWwuY29t', 'Christopher', 'Fegalan', 'pherfegalan@gmail.com', 'student', 0, 'Verified'),
(1063, 'ZGVsZ2Fkb2FyZ2llMDRAZ21haWwuY29t', 'Argie', 'Delgado', 'delgadoargie04@gmail.com', 'student', 0, 'Verified'),
(1064, 'bWFjYXNpbGhpZ2t5bGVAZ21haWwuY29t', 'Khyle', 'Macasilhig', 'macasilhigkyle@gmail.com', 'student', 0, 'Verified'),
(1065, 'YXppb2ZyYW56QGdtYWlsLmNvbQ==', 'Franz', 'Bastistiana', 'aziofranz@gmail.com', 'student', 0, 'Verified'),
(1066, 'a2Vua3lsYWtyaW5nQGdtYWlsLmNvbQ==', 'KenIvan', 'Fontiveros', 'kenkylakring@gmail.com', 'student', 0, 'Verified'),
(1067, 'YXJjaWdhcmF6aWVsMjRAZ21haWwuY29t', 'Raziel', 'Arciga', 'arcigaraziel24@gmail.com', 'student', 0, 'Verified'),
(1068, 'bWFpYW1pbGFncm9zYTUyNkBnbWFpbC5jb20=', 'Maia', 'Milagrosa', 'maiamilagrosa526@gmail.com', 'student', 0, 'Verified'),
(1069, 'bGFtYmlub3RvZmZpZUBnbWFpbC5jb20=', 'Kristofferson', 'Lambino', 'lambinotoffie@gmail.com', 'student', 0, 'Verified'),
(1070, 'enlpZW1hcGxlc0BnbWFpbC5jb20=', 'Lanz', 'Erjas', 'zyiemaples@gmail.com', 'student', 0, 'Verified'),
(1071, 'c2FuZGFyYWRpem9uMzBAZ21haWwuY29t', 'Sandara', 'Dizon', 'sandaradizon30@gmail.com', 'student', 0, 'Verified'),
(1072, 'Z2VvZGVsZW9uMzAxQGdtYWlsLmNvbQ==', 'Geo', 'DeLeon', 'geodeleon301@gmail.com', 'student', 0, 'Verified'),
(1073, 'a3Jmb3J0aW4xNUBnbWFpbC5jb20=', 'Kelvin', 'Fortin', 'krfortin15@gmail.com', 'student', 0, 'Verified'),
(1074, 'ZGFybGVuZWpveW1jdHlAZ21haWwuY29t', 'Darlene', 'Macatangay', 'darlenejoymcty@gmail.com', 'student', 0, 'Verified'),
(1075, 'bW1pZ2d5MzdAZ21haWwuY29t', 'Ludolfo', 'Muos', 'mmiggy37@gmail.com', 'student', 0, 'Verified'),
(1076, 'c29sb21vbmplbmVhdmExMjNAZ21haWwuY29t', 'Jeneava', 'Solomon', 'solomonjeneava123@gmail.com', 'student', 0, 'Verified'),
(1077, 'YW5kcmVhZGVubmlzZW1lbmRvemFAZ21haWwuY29t', 'Andrea', 'Mendoza', 'andreadennisemendoza@gmail.com', 'student', 0, 'Verified'),
(1078, 'Z2VzdG9zb2phbWVzNkBnbWFpbC5jb20=', 'JamesAndrei', 'Gestoso', 'gestosojames6@gmail.com', 'student', 508994, ''),
(1079, 'bWVyY2Fkb3Jvbm5lbDU5QGdtYWlsLmNvbQ==', 'Ronnel', 'Mercado', 'mercadoronnel59@gmail.com', 'student', 0, 'Verified'),
(1080, 'Y29haXJhbWFlQGdtYWlsLmNvbQ==', 'AiraMae', 'Co', 'coairamae@gmail.com', 'student', 0, 'Verified'),
(1081, 'c2FudG9zY2hyeXp0ZWxAZ21haWwuY29t', 'Chryztel', 'Santos', 'santoschryztel@gmail.com', 'student', 0, 'Verified'),
(1082, 'YmFxdWlhbC5rcmlzdGluZWpveUBnbWFpbC5jb20=', 'Kristine', 'Baquial', 'baquial.kristinejoy@gmail.com', 'student', 0, 'Verified'),
(1083, 'YW5nZWxhLmNsYXJpc3NlMkBnbWFpbC5jb20=', 'AngelaClarisse', 'Mendoza', 'angela.clarisse2@gmail.com', 'student', 0, 'Verified'),
(1084, 'am96aGppbWVuZXoyNkBnbWFpbC5jb20=', 'Jozh', 'Jimenez', 'jozhjimenez26@gmail.com', 'student', 0, 'Verified'),
(1085, 'c3Vuc2hpbmUudmcyMDA0QGdtYWlsLmNvbQ==', 'Sunshine', 'Golez', 'sunshine.vg2004@gmail.com', 'student', 428603, ''),
(1086, 'c3Vuc2hpbmVnb2xlejA4QGdtYWlsLmNvbQ==', 'Sunshine', 'Golez', 'sunshinegolez08@gmail.com', 'student', 172953, ''),
(1087, 'Y2FzYW5kcmFkb2N0b2xlcm85QGdtYWlsLmNvbQ==', 'Casandra', 'Doctolero', 'casandradoctolero9@gmail.com', 'student', 0, 'Verified'),
(1088, 'bGFyaWVqYW5lMTRAZ21haWwuY29t', 'LarieJane', 'Cabunagan', 'lariejane14@gmail.com', 'student', 0, 'Verified'),
(1089, 'ZWkueGlydDk2QGdtYWlsLmNvbQ==', 'Trixie', 'Salcedo', 'ei.xirt96@gmail.com', 'student', 0, 'Verified');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_special_users`
--

CREATE TABLE `tbl_special_users` (
  `special_users_id` int(11) NOT NULL,
  `special_users_username` varchar(255) NOT NULL,
  `special_users_password` varchar(255) NOT NULL,
  `special_users_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_special_users`
--

INSERT INTO `tbl_special_users` (`special_users_id`, `special_users_username`, `special_users_password`, `special_users_role`) VALUES
(1, 'it_mawd', 'it_mawdadmin@12345', 'admin'),
(2, 'David', '123', 'judge'),
(3, 'Van', '123', 'judge');

--
-- Indexes for dumped tables
--

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
  ADD UNIQUE KEY `qrId` (`qrId`);

--
-- Indexes for table `tbl_special_users`
--
ALTER TABLE `tbl_special_users`
  ADD PRIMARY KEY (`special_users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `attendanceId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1090;

--
-- AUTO_INCREMENT for table `tbl_special_users`
--
ALTER TABLE `tbl_special_users`
  MODIFY `special_users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
