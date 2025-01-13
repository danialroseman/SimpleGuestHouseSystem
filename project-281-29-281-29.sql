-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 07:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `password`) VALUES
(1, 'ImanSan', 'Imansan30');

-- --------------------------------------------------------

--
-- Table structure for table `customerregister`
--

CREATE TABLE `customerregister` (
  `id` int(11) DEFAULT 1,
  `name` varchar(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `phonenumber` varchar(222) NOT NULL,
  `securityQ` varchar(222) NOT NULL,
  `answer` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerregister`
--

INSERT INTO `customerregister` (`id`, `name`, `username`, `email`, `password`, `phonenumber`, `securityQ`, `answer`) VALUES
(1, 'a', 'a', 'a', 'a', 'a', 'What is your nick name?', 'a'),
(1, 'aa', 'aa', 'aa', 'aa', 'aa', 'What is your nick name?', 'aa'),
(1, 'aaa', 'aaa', '', 'aaa', '', 'What is your nick name?', ''),
(1, 'Iman', 'Imansan', 'aaaaa', 'aaaa', 'aaaa', 'What is your nick name?', 'aaaa'),
(1, 'qq', 'qq', 'qq', 'qqq', 'q', 'What is your nick name?', 'q');

-- --------------------------------------------------------

--
-- Table structure for table `guestbook`
--

CREATE TABLE `guestbook` (
  `id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone_number` varchar(222) NOT NULL,
  `checkin` varchar(222) NOT NULL,
  `checkout` varchar(222) NOT NULL,
  `room` varchar(222) NOT NULL,
  `address` varchar(222) NOT NULL,
  `status` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guestbook`
--

INSERT INTO `guestbook` (`id`, `username`, `name`, `email`, `phone_number`, `checkin`, `checkout`, `room`, `address`, `status`) VALUES
(46, 'Imansan', 'Iman', 'aaaaa', 'aaaa', '22-01-2023', '29-01-2023', 'D Jelutong Homestay', '25, Lorong Jelutong, Parit Jelutong', 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `properties_listings`
--

CREATE TABLE `properties_listings` (
  `House_Name` text DEFAULT NULL,
  `House_Address` varchar(64) NOT NULL,
  `Availability` varchar(64) NOT NULL,
  `Status` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties_listings`
--

INSERT INTO `properties_listings` (`House_Name`, `House_Address`, `Availability`, `Status`) VALUES
('Homestay Tman U', '114, Lorong Universiti 20, Taman Universiti', 'Yes', 'Not Booked'),
('Damai Inn Homestay', '1B, Lorong Damai, Taman Inn', 'No', 'Not Booked'),
('D Jelutong Homestay', '25, Lorong Jelutong, Parit Jelutong', 'Yes', 'Not Booked');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerregister`
--
ALTER TABLE `customerregister`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties_listings`
--
ALTER TABLE `properties_listings`
  ADD PRIMARY KEY (`House_Address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
