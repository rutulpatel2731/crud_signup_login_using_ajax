-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 10:05 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_log`
--

CREATE TABLE `email_log` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobileno` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(233) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `mobileno`, `gender`, `image`, `CreatedAt`) VALUES
(28, 'Rutul Sheladiya', '8320893080', 'male', '120978614210.jpg', '2023-05-20 18:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobileno` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(233) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hobbies` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(233) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `mobileno`, `email`, `password`, `gender`, `hobbies`, `profile`, `CreatedAt`, `status`, `token`) VALUES
(1, 'Rutul Sheladiya', '8320893080', 'rutulsheladiya2@gmail.com', '$2y$10$vDt2a5wLVJtm4xSRDRvm0uBfBLvIDvs0qeLsGrimOZ0VjQVSfMTa6', 'male', 'cricket,chess,', 'Screenshot from 2023-05-17 14-28-11.png', '2023-05-17 14:04:58', 1, ''),
(2, 'Ravi Mandani', '8963214785', 'ravimandani@gmail.com', '$2y$10$Cab4Z1O0onJTfPCwRWmVPemTJlCwbDXRMpRYWv3L/amq0Dutp3bga', 'male', 'cricket,chess,', 'Screenshot from 2023-05-16 18-55-52.png', '2023-05-17 14:05:15', 1, ''),
(3, 'Purvish ', '7412369850', 'purvishdhameliya@gmail.com', '$2y$10$JJmy3hQ99XOE6nn/jPV8oOp4QGnOTHNMSu7XA1z/WfI4oJ12GKzHO', 'male', 'cricket,chess,', 'Screenshot from 2023-05-17 14-28-11.png', '2023-05-17 14:05:34', 1, ''),
(4, 'Sumit', '9632147855', 'sumitrajput@gmail.com', '$2y$10$25uaANXR9FYvx1HrfXUucum2zzna0Lt9mYwHxQS6cO0hwnEWEdUC.', 'male', 'chess,football,', 'Screenshot from 2023-05-17 14-49-46.png', '2023-05-17 14:06:00', 1, ''),
(5, 'Rutul Sheladiya', '8320893080', 'rutulsheladiya2731@gmail.com', '$2y$10$D0hPjKntMGZ7d9XveHZ4y.HxNDjdjKuNYflKi7XXHOe73qZDl.Mnu', 'male', 'cricket,chess,football,', 'Screenshot from 2023-05-17 14-28-11.png', '2023-05-18 12:26:23', 1, ''),
(6, 'Mukund', '8320893080', 'mayur@gmail.com', '$2y$10$FlpxTlkIysyQWTDWogwrZ.y/AubkLhgLb2C4V6RDzNpAR5D8AIFKy', 'male', 'cricket,', 'Screenshot from 2023-05-16 18-55-52.png', '2023-05-19 04:56:56', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_log`
--
ALTER TABLE `email_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_log`
--
ALTER TABLE `email_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
