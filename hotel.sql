-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 19, 2018 at 12:47 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `email` text,
  `cdate` date DEFAULT NULL,
  `approval` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `phoneno`, `email`, `cdate`, `approval`) VALUES
(1, 'Nash Vaz', 2147483647, 'rods.sanil30@gmail.com', '2018-01-19', 'Not Allowed'),
(3, 'Nash', 2147483647, 'rods.sanil30@gmail.com', '2018-02-03', 'Not Allowed'),
(4, 'Nash Vaz', 0, '', '2018-02-19', 'Not Allowed'),
(5, 'Nash Vaz', 0, '', '2018-02-19', 'Not Allowed');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(20) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `title` varchar(50) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `rating`, `title`, `feedback`, `country`) VALUES
('Sanil Rodrigues', '4', 'Worth Visiting it again', 'This hotel is very nice. Worth Visiting it again', 'India'),
('Nash Vaz', '4.5', 'Nice Hotel', 'This hotel service is very friendly. ', 'Germany'),
('Alrich Kudel', '5', 'Awesome Hotel', 'This hotel service is very friendly. Worth Visiting it', 'India'),
('Nash Vaz', '4.4', 'Worth Visiting Again', 'Room Service was good.', 'Germany'),
('Nash Vaz', '4.5', 'Good Service', 'Friendly', 'Germany'),
('Nash Vaz', '4.5', 'Exciting Offers', 'Room Service was good.', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(1, 'Admin', '1234'),
(2, 'Prasath', '12345'),
(3, 'Sanil Rodrigues', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `newsletterlog`
--

CREATE TABLE IF NOT EXISTS `newsletterlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(52) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `news` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `tbed` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `meal` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `tbed`, `nroom`, `cin`, `cout`, `ttot`, `fintot`, `mepr`, `meal`, `btot`, `noofdays`) VALUES
(12, 'Mr.', 'Sanil', 'Rodrigues', 'Guest House', 'Single', 2, '2018-02-04', '2018-02-12', 2880.00, 2894.40, 0.00, 'Room only', 14.40, 8),
(14, '', '', '', 'Deluxe Room', 'Single', 2, '2018-02-28', '2018-03-04', 1760.00, 1795.20, 26.40, 'Half Board', 8.80, 4),
(13, '', '', '', 'Guest House', 'Single', 2, '2018-02-21', '2018-02-25', 1440.00, 1447.20, 0.00, 'Room only', 7.20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) DEFAULT NULL,
  `bedding` varchar(10) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `bedding`, `place`, `cusid`) VALUES
(3, 'Superior Room', 'Triple', 'Free', NULL),
(4, 'Single Room', 'Quad', 'Free', NULL),
(5, 'Superior Room', 'Quad', 'Free', NULL),
(6, 'Deluxe Room', 'Single', 'NotFree', 14),
(8, 'Deluxe Room', 'Triple', 'Free', NULL),
(9, 'Deluxe Room', 'Quad', 'Free', NULL),
(10, 'Guest House', 'Single', 'NotFree', 13),
(11, 'Guest House', 'Double', 'Free', NULL),
(12, 'Guest House', 'Quad', 'NotFree', 5),
(13, 'Single Room', 'Single', 'Free', NULL),
(14, 'Single Room', 'Double', 'NotFree', 6),
(15, 'Single Room', 'Triple', 'Free', NULL),
(17, 'Superior Room', 'Double', 'Free', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE IF NOT EXISTS `roombook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Email` varchar(50) DEFAULT NULL,
  `TRoom` varchar(20) DEFAULT NULL,
  `Bed` varchar(10) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`id`, `Email`, `TRoom`, `Bed`, `NRoom`, `Meal`, `cin`, `cout`, `stat`, `nodays`) VALUES
(13, 'rods.sanil30@gmail.com', 'Guest House', 'Single', '2', 'Room only', '2018-02-21', '2018-02-25', 'Conform', 4),
(14, 'nashvaz@gmail.com', 'Deluxe Room', 'Single', '2', 'Half Board', '2018-02-28', '2018-03-04', 'Conform', 4),
(16, 'web21cen@gmail.com', 'Superior Room', 'Single', '2', 'Room only', '2018-02-04', '2018-02-06', 'Not Conform', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `pass_country` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `uname`, `password`, `name`, `email`, `phone_no`, `nationality`, `pass_country`) VALUES
(1, 'Sanil', 'sanilrods123', 'Sanil Rodrigues', 'rods.sanil30@gmail.com', '7507847096', 'Indian', 'India'),
(2, 'Nash', 'nash123', 'Nash Vaz', 'nashvaz@gmail.com', '7507847096', 'Indian', 'India'),
(3, 'rods.san', 'sanilrods123 ', 'Sanil Rodrigues', 'web21cen@gmail.com', '7507847096', 'Indian', 'India'),
(4, 'Savio', 'savio123 ', 'savio dsouza', 'saviods@gmail.com', '7507847096', 'Indian', 'India');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
