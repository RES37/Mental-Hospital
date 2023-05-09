-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 12:32 AM
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
-- Database: `dbinfositezycms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(70) NOT NULL,
  `category_posts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_posts`) VALUES
(3, 'Stories', 6),
(4, 'News', 13),
(5, 'Guides', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_name` varchar(255) NOT NULL,
  `post_desc` varchar(5000) NOT NULL,
  `category` int(11) NOT NULL,
  `author` int(100) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `post_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_name`, `post_desc`, `category`, `author`, `post_date`, `post_img`) VALUES
(14, 'The History of STI College Marikina SHS Expo', 'STI Colleges is known for organizing various events and activities that promote academic excellence and showcase the skills and talents of its students. One of the events that STI colleges typically host is the senior high school expo.\n\nThe Senior High School Expo is a showcase of the achievements and capabilities of senior high school students enrolled in STI Colleges. During the expo, students present their research projects, thesis papers, and other academic outputs to the public. The expo is also an opportunity for senior high school students to showcase their talents and skills in various areas, such as music, dance, theater, and the visual arts. This allows students to develop their confidence, creativity, and leadership abilities while also providing them with an opportunity to engage with their peers and the wider community.\n\nIn the year 2015, STI College of Marikina launched its first senior high school expo at the Marikina Convention Center. The event was filled with grade 10 students from different schools around Marikina City, including Sto. Nio National High School, Barangka National High School, Fortune High School, etc., as well as parents, non-teaching and teaching personnel, and senior high school students of STI College Marikina. It was also filled with the amusement, knowledge, skills, and talents of every student that was there.\n\nAs years pass in the STI College Marikina, the senior high school expo is always the most anticipated big event, prepared by the grade 12 students every year. In the year 2018, they launched the STI EXPO with the theme “We are Future Ready: Knowledge to Application, Different Strands in Action,” which took place in the River Banks Center. The grade 12 students prepared different booths connected to their research products. The students who have shown their research products are the ones from HUMMS, ICT, CULART, RESBO, ABM, and TOPER strands.\n\nMoreover, the Senior High School Expo is an occasion for STI Colleges to promote its senior high school programs and attract potential students. The expo provides an opportunity for parents and guardians to learn more about the curriculum, facilities, and student activities offered by STI Colleges.\n\nOverall, the Senior High School Expo at STI Colleges is an excellent platform for senior high school students to showcase their academic and artistic skills, develop their confidence and leadership abilities, and promote the benefits of pursuing senior high school education at STI Colleges.', 3, 6, '2023-05-06 12:14:29', '644e16bca96f9History (1).png'),
(15, 'The SHS Expo 2023 Guide', 'a', 5, 1, '2023-04-30 08:24:07', '644e25a794249History.png'),
(16, 'Sample News 1', 'Sample', 4, 5, '2023-05-01 03:42:36', '644f352c5d7a2placeholder-image.png'),
(17, 'Sample News 2', 'Sample News 2', 4, 1, '2023-05-01 03:46:26', '644f361226790placeholder-image.png'),
(18, 'Sample News 3', 'Sample News 3', 4, 1, '2023-05-01 03:46:37', '644f361d17158placeholder-image.png'),
(19, 'Sample News 4', 'Sample News 4', 4, 1, '2023-05-01 03:46:47', '644f362778b53644f361226790placeholder-image.png'),
(20, 'Sample News 5', 'Sample News 5', 4, 1, '2023-05-01 03:46:56', '644f3630ec2c8644f362778b53644f361226790placeholder-image.png'),
(21, 'Sample News 6', 'Sample News 6', 4, 1, '2023-05-01 03:47:18', '644f364616f01644f361d17158placeholder-image.png'),
(22, 'Sample News 7', 'Sample News 7', 4, 1, '2023-05-01 03:47:25', '644f364dd8585644f361d17158placeholder-image.png'),
(23, 'Sample News 8', 'Sample News 8', 4, 1, '2023-05-01 03:47:35', '644f3657e9c39644f361d17158placeholder-image.png'),
(24, 'Sample News 9', 'Sample News 9', 4, 1, '2023-05-01 03:47:44', '644f366014792644f361d17158placeholder-image.png'),
(25, 'Sample News 10', 'Sample News 10', 4, 1, '2023-05-01 03:47:50', '644f3666ec256644f361d17158placeholder-image.png'),
(26, 'Sample News 10', 'Sample News 10', 4, 1, '2023-05-01 04:04:06', '644f3a3630297644f361d17158placeholder-image.png'),
(27, 'Sample News 10', 'Sample News 10', 4, 1, '2023-05-01 04:05:04', '644f3a701a0cd644f361d17158placeholder-image.png'),
(28, 'dsadasda', 'adsadad', 3, 5, '2023-05-06 13:19:48', '645653f4e15e2placeholder.jpg'),
(29, 'dsadasda', 'adsadad', 3, 5, '2023-05-06 13:19:50', '645653f6b82b7placeholder.jpg'),
(30, 'bdghdghdgf', 'fsfsdfsf', 5, 5, '2023-05-06 13:20:34', '6456542226a8ecircle-scatter-haikei.png'),
(34, 'Web-based Tabulation System: Providing a Reliable System for You', 'The IT-MAWD strand has been working on their research papers to highlight their potential in their selected strand. A group from the IT strand has been working on a web-based tabulation system solely for this year’s Senior High School Expo. But what is a tabulation system and what is its purpose? How did they also produce this research? Are there also advantages and disadvantages to this system?\r\n\r\nBased on the group of researchers, a tabulation system is designed to submit a score to store the data that will be input on a program. A tabulation system is a computer program used for making calculations or controlling operations expressible in numerical or logical terms. Also, A tabulation system is also used to present data in the form of a table. Their purpose in working on a tabulation system is to grade the final works of Grade 12 students per strand during the SHS Expo. They produced this system because they distinguished that scoring a booth using the manual process will consume a lot of time and may also cause inaccurate submission of scores which may affect a booth\'s score.\r\n\r\nA tabulation system has the advantage of producing a set of presentation data that is straightforward and easy to read; emphasizing significant characteristics of data; making numerical data comparison easier; and, finally, assisting in statistical analysis. Meanwhile, one of the drawbacks of adopting a Web-Based Tabulation System is that it requires an internet connection and uses electricity. \r\n\r\nSounds interesting, right? Catch the complete system and its details in the upcoming Senior High School Expo 2023!  ', 3, 5, '2023-05-06 15:37:50', '645673d4bd196338449798_2502137129949933_7507267203967101646_n.jpg'),
(35, 'ftddt', 'mini expo', 5, 5, '2023-05-08 05:10:52', '6458845c3d3c0demoQratic_logo(+Name).png'),
(37, 'Demo', 'sample article', 4, 5, '2023-05-08 07:31:47', '6458a563e790ddemo.jpg'),
(38, 'hello world', 'hello world', 3, 5, '2023-05-09 01:22:54', '6459a06e6eecbWIN_20230509_09_22_15_Pro.jpg'),
(40, 'SHS Expo 2023', 'THE EXPO IS AMAZING!', 3, 5, '2023-05-09 06:38:25', '6459ea61054cfWIN_20230509_13_41_03_Pro.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(70) NOT NULL,
  `upass` varchar(70) NOT NULL,
  `urole` int(11) NOT NULL,
  `u_posts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `upass`, `urole`, `u_posts`) VALUES
(1, 'Rhandie', '$2y$10$V8GfkzvwryTg0qfFbsz0B..s/KowlETTHjKvBNLP11nRfhejVUVoK', 0, 17),
(5, 'Ernestine', '$2y$10$sPSzp8T7knhtCXT57tjjWuZhAaDdMcz0ra2Bor8vsB/sS/HtR8Fd.', 0, 9),
(6, 'Michelle', '$2y$10$xUFksW8ynpf85JfBW1xuNODBvLK8zKP9VXxXxh1SufdLcA5Wj4S02', 0, 1),
(8, 'Allyssa', '$2y$10$ITcHS/ZqDD94b08uRUPPseR4EADXgm4/hhDtL7H6q7Mvvi5niy2Y.', 0, 0),
(9, 'Aleiya', '$2y$10$h7mVW6lHj/E7DhP.5nehy.JptAMAHR5nMkivqLBiKt0qUEMcQ96Qi', 0, 0),
(10, 'Test', '$2y$10$o04RzOuKiL/mJCcjawG9JOcYRz17St1eJHLNUtpyq1Ye7Fhv4Ypia', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
