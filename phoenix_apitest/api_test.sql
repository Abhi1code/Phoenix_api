-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2019 at 12:44 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `sensor1`
--

CREATE TABLE `sensor1` (
  `id` int(11) NOT NULL,
  `temp_value` double NOT NULL,
  `sensor_timestamp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sensor1`
--

INSERT INTO `sensor1` (`id`, `temp_value`, `sensor_timestamp`) VALUES
(1, 45.2, '1551600930'),
(2, 45.2, '1551600968'),
(3, 45, '1551609149');

-- --------------------------------------------------------

--
-- Table structure for table `sensor2`
--

CREATE TABLE `sensor2` (
  `id` int(11) NOT NULL,
  `temp_value` double NOT NULL,
  `sensor_timestamp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sensor2`
--

INSERT INTO `sensor2` (`id`, `temp_value`, `sensor_timestamp`) VALUES
(1, 52.2, '1551601195'),
(2, 52.5, '1551601206'),
(3, 57.3, '1551604714'),
(4, 57.3, '1551605349');

-- --------------------------------------------------------

--
-- Table structure for table `sensor3`
--

CREATE TABLE `sensor3` (
  `id` int(11) NOT NULL,
  `temp_value` double NOT NULL,
  `sensor_timestamp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sensor3`
--

INSERT INTO `sensor3` (`id`, `temp_value`, `sensor_timestamp`) VALUES
(1, 42.2, '1551601001'),
(2, 42.2, '1551601084'),
(3, 42.2, '1551601104');

-- --------------------------------------------------------

--
-- Table structure for table `sensor4`
--

CREATE TABLE `sensor4` (
  `id` int(11) NOT NULL,
  `temp_value` double NOT NULL,
  `sensor_timestamp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sensor4`
--

INSERT INTO `sensor4` (`id`, `temp_value`, `sensor_timestamp`) VALUES
(1, 32.5, '1551601219'),
(2, 37.5, '1551601233'),
(3, 45, '1551609175');

-- --------------------------------------------------------

--
-- Table structure for table `sensor5`
--

CREATE TABLE `sensor5` (
  `id` int(11) NOT NULL,
  `temp_value` double NOT NULL,
  `sensor_timestamp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sensor5`
--

INSERT INTO `sensor5` (`id`, `temp_value`, `sensor_timestamp`) VALUES
(1, 37.5, '1551601242'),
(2, 47.5, '1551601255'),
(3, 45, '1551609800');

-- --------------------------------------------------------

--
-- Table structure for table `sensors_mime`
--

CREATE TABLE `sensors_mime` (
  `id` int(11) NOT NULL,
  `sensor_id` int(20) NOT NULL,
  `sensor_location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sensors_mime`
--

INSERT INTO `sensors_mime` (`id`, `sensor_id`, `sensor_location`) VALUES
(1, 1, 'Railway station'),
(2, 2, 'Big Bazzar'),
(3, 3, 'NIT Rourkela'),
(4, 4, 'Ambagan'),
(5, 5, 'Uditnagar');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `token` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `token`) VALUES
(1, 'csdcsdvdwav56s3v3shsjdc654svq8davksv456svdhkahak'),
(2, 'vds5646szdfsdv53df4s54sd5v4s65vssv53s4sdvs55sd4'),
(3, 'vds5646szdfsdvda7sc4846dsc13scfdcfwdrggawfs5d7fs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sensor1`
--
ALTER TABLE `sensor1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sensor2`
--
ALTER TABLE `sensor2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sensor3`
--
ALTER TABLE `sensor3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sensor4`
--
ALTER TABLE `sensor4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sensor5`
--
ALTER TABLE `sensor5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sensors_mime`
--
ALTER TABLE `sensors_mime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sensor1`
--
ALTER TABLE `sensor1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sensor2`
--
ALTER TABLE `sensor2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sensor3`
--
ALTER TABLE `sensor3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sensor4`
--
ALTER TABLE `sensor4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sensor5`
--
ALTER TABLE `sensor5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sensors_mime`
--
ALTER TABLE `sensors_mime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
