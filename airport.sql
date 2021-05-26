-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2021 at 02:39 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airport`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `departureD` varchar(45) NOT NULL,
  `arrivalD` varchar(45) NOT NULL,
  `departure` varchar(45) NOT NULL,
  `arrival` varchar(45) NOT NULL,
  `passengers` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `departureD`, `arrivalD`, `departure`, `arrival`, `passengers`, `class`) VALUES
(1, '2021-05-13', '2021-05-15', 'America', 'London', '5', 'Business'),
(2, '18 May, 2021', '12 May, 2021', 'Colombo', 'abcd', '2', 'Economy/Premium Economy');

-- --------------------------------------------------------

--
-- Table structure for table `book2`
--

CREATE TABLE `book2` (
  `departure_date` date NOT NULL,
  `arrival_date` date NOT NULL,
  `departure` varchar(45) NOT NULL,
  `arrival` varchar(45) NOT NULL,
  `passengers` int(11) NOT NULL,
  `fclass` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flight1`
--

CREATE TABLE `flight1` (
  `flight_id` varchar(45) NOT NULL,
  `departure_location` varchar(45) NOT NULL,
  `arrival_location` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `dtime` time NOT NULL,
  `atime` time NOT NULL,
  `operatedBy` varchar(45) NOT NULL,
  `services` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight1`
--

INSERT INTO `flight1` (`flight_id`, `departure_location`, `arrival_location`, `model`, `price`, `dtime`, `atime`, `operatedBy`, `services`) VALUES
('STR', 'Colombo', 'London', 'Economy', '$700', '00:56:00', '01:57:00', 'Phoenix', '\r\n\r\n                            nothing'),
('UL 501', 'Colombo', 'Paris', 'Business', '$1250', '02:35:00', '02:41:00', 'phoenix', '\r\n\r\n                     not       ');

-- --------------------------------------------------------

--
-- Table structure for table `staff1`
--

CREATE TABLE `staff1` (
  `id` int(11) NOT NULL,
  `grade` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `telephone` int(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff1`
--

INSERT INTO `staff1` (`id`, `grade`, `first_name`, `last_name`, `email`, `address`, `dob`, `telephone`, `username`, `password`) VALUES
(3, 'Grade1', 'abcd', 'efgh', 'abc@abc.com', 'colombo', '2021-05-18', 11524656, 'abc', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ref_no` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `class` enum('economy','premium','business','') NOT NULL,
  `seat_no` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` int(10) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `telephone`, `dob`, `address`, `first_name`, `last_name`, `password`) VALUES
(5, 'saman', 'skumara@gmail.com', 775513366, '2021-04-26', 'colombo', 'Saman', 'ghi', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `flight1`
--
ALTER TABLE `flight1`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `staff1`
--
ALTER TABLE `staff1`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ref_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff1`
--
ALTER TABLE `staff1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
