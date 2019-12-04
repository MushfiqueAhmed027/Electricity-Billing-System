-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2019 at 01:21 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project10`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `meter_number` int(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `units` int(255) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`meter_number`, `month`, `units`, `amount`) VALUES
(1001, 'January', 90, 864),
(1001, 'January', 78, 780),
(1003, 'January', 100, 934),
(1004, 'January', 117, 1053),
(1002, 'January', 214, 1732),
(1001, 'January', 203, 1655);

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `name` varchar(255) NOT NULL,
  `meter_number` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`name`, `meter_number`, `address`, `state`, `city`, `email`, `phone`) VALUES
('Miraz', 1001, 'farmgate', 'dhanmondi', 'dhaka', 'miraz@gmail.com', 12345678),
('sumon', 1002, 'kalabagan', 'dhanmondi', 'dhaka', 'sumon@gmail.com', 1456789901),
('mumu', 1003, 'kotkipara', 'dhap', 'rangpur', 'mumu@gmail.com', 1567890123),
('rani', 1004, 'college road', 'lalbag', 'rajshahi', 'rani@gmail.com', 156759012);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `password` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `meter_location` varchar(255) NOT NULL,
  `meter_type` varchar(255) NOT NULL,
  `phase_code` int(255) NOT NULL,
  `bill_type` varchar(255) NOT NULL,
  `days` int(255) NOT NULL,
  `meter_rent` int(255) NOT NULL,
  `mcb_rent` int(255) NOT NULL,
  `service_rent` int(255) NOT NULL,
  `gst` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`meter_location`, `meter_type`, `phase_code`, `bill_type`, `days`, `meter_rent`, `mcb_rent`, `service_rent`, `gst`) VALUES
('INSIDE', 'ELECTRONIC', 1, 'NORMAL', 30, 98, 42, 112, 48);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
