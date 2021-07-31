-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 07, 2019 at 06:43 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmit`
--
CREATE DATABASE IF NOT EXISTS `pmit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pmit`;

-- --------------------------------------------------------

--
-- Table structure for table `basic_info`
--

DROP TABLE IF EXISTS `basic_info`;
CREATE TABLE IF NOT EXISTS `basic_info` (
  `Name` varchar(33) NOT NULL,
  `Father's Name` varchar(33) NOT NULL,
  `Mother's Name` varchar(33) NOT NULL,
  `Student_Type` varchar(33) NOT NULL,
  `Admission_Roll` int(33) NOT NULL,
  `Pin_Number` int(33) NOT NULL,
  `birth_date` date NOT NULL,
  `Mobile` varchar(11) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `Religion` varchar(11) NOT NULL,
  `Blood` varchar(9) NOT NULL,
  `NID` varchar(17) NOT NULL,
  `Nationality` varchar(33) NOT NULL,
  `Email` varchar(33) NOT NULL,
  `Address` varchar(33) NOT NULL,
  `Permanent Adrs` varchar(45) NOT NULL,
  PRIMARY KEY (`Mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basic_info`
--

INSERT INTO `basic_info` (`Name`, `Father's Name`, `Mother's Name`, `Student_Type`, `Admission_Roll`, `Pin_Number`, `birth_date`, `Mobile`, `Gender`, `Religion`, `Blood`, `NID`, `Nationality`, `Email`, `Address`, `Permanent Adrs`) VALUES
('Rashed', 'A', 'L', 'Regular', 19110001, 100001, '2019-03-29', '01521494443', 'MALE', 'ISLAM', 'O+', '123456789123456', 'BANGLADESHI', 'riad.rashed95@gmail.com', 'Mirpur', 'Madaripur'),
('Rashed', 'A', 'L', 'Regular', 19110002, 100002, '2019-03-29', '01521494449', 'MALE', 'ISLAM', 'O+', '123456789123456', 'BANGLADESHI', 'riad.rashed95@gmail.com', 'Mirpur', 'Madaripur');

-- --------------------------------------------------------

--
-- Table structure for table `graduation`
--

DROP TABLE IF EXISTS `graduation`;
CREATE TABLE IF NOT EXISTS `graduation` (
  `Examination` varchar(33) NOT NULL,
  `Varsity` varchar(33) NOT NULL,
  `Course` varchar(55) NOT NULL,
  `Roll` varchar(33) NOT NULL,
  `Result` varchar(22) NOT NULL,
  `Year` varchar(22) NOT NULL,
  `Duration` varchar(33) NOT NULL,
  `Mobile` varchar(33) NOT NULL,
  PRIMARY KEY (`Roll`),
  KEY `Mobile` (`Mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `graduation`
--

INSERT INTO `graduation` (`Examination`, `Varsity`, `Course`, `Roll`, `Result`, `Year`, `Duration`, `Mobile`) VALUES
('B.SC (ENGINEERING/ARCHITECTURE)', 'JU', 'INFORMATION TECHNOLOGY (IT)', '20151961', '1', '2017', '2', '01521494443'),
('B.SC (ENGINEERING/ARCHITECTURE)', 'JU', 'INFORMATION TECHNOLOGY (IT)', '20151969', '1', '2017', '2', '01521494449');

-- --------------------------------------------------------

--
-- Table structure for table `hsc`
--

DROP TABLE IF EXISTS `hsc`;
CREATE TABLE IF NOT EXISTS `hsc` (
  `Examination` varchar(33) NOT NULL,
  `Board` varchar(33) NOT NULL,
  `Roll` varchar(22) NOT NULL,
  `Result` varchar(22) NOT NULL,
  `Groupp` varchar(22) NOT NULL,
  `Year` varchar(22) NOT NULL,
  `Mobile` varchar(11) NOT NULL,
  PRIMARY KEY (`Roll`),
  KEY `Mobile` (`Mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hsc`
--

INSERT INTO `hsc` (`Examination`, `Board`, `Roll`, `Result`, `Groupp`, `Year`, `Mobile`) VALUES
('HSC', 'Dhaka', '12345678', '1', 'SCIENCE', '2014', '01521494443'),
('HSC', 'Dhaka', '1234569', '1st Division', 'SCIENCE', '2014', '01521494449');

-- --------------------------------------------------------

--
-- Table structure for table `masters`
--

DROP TABLE IF EXISTS `masters`;
CREATE TABLE IF NOT EXISTS `masters` (
  `Examination` varchar(33) NOT NULL,
  `Versity` varchar(33) NOT NULL,
  `Course` varchar(33) NOT NULL,
  `Roll` varchar(33) NOT NULL,
  `Result` varchar(33) NOT NULL,
  `Year` varchar(33) NOT NULL,
  `Duration` varchar(33) NOT NULL,
  `Mobile` varchar(11) NOT NULL,
  PRIMARY KEY (`Roll`),
  KEY `Mobile` (`Mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ssc`
--

DROP TABLE IF EXISTS `ssc`;
CREATE TABLE IF NOT EXISTS `ssc` (
  `Examination` varchar(22) NOT NULL,
  `Board` varchar(22) NOT NULL,
  `Roll` varchar(22) NOT NULL,
  `Result` varchar(22) NOT NULL,
  `Groupp` varchar(22) NOT NULL,
  `Year` varchar(22) NOT NULL,
  `Mobile` varchar(11) NOT NULL,
  PRIMARY KEY (`Roll`),
  KEY `Mobile` (`Mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ssc`
--

INSERT INTO `ssc` (`Examination`, `Board`, `Roll`, `Result`, `Groupp`, `Year`, `Mobile`) VALUES
('SSC', 'DHAKA', '123456', '1', 'SCIENCE', '2012', '01521494443'),
('SSC', 'DHAKA', '123459', '4.9', 'SCIENCE', '2012', '01521494449');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `graduation`
--
ALTER TABLE `graduation`
  ADD CONSTRAINT `graduation_ibfk_1` FOREIGN KEY (`Mobile`) REFERENCES `basic_info` (`Mobile`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hsc`
--
ALTER TABLE `hsc`
  ADD CONSTRAINT `hsc_ibfk_1` FOREIGN KEY (`Mobile`) REFERENCES `basic_info` (`Mobile`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `masters`
--
ALTER TABLE `masters`
  ADD CONSTRAINT `masters_ibfk_1` FOREIGN KEY (`Mobile`) REFERENCES `basic_info` (`Mobile`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ssc`
--
ALTER TABLE `ssc`
  ADD CONSTRAINT `ssc_ibfk_1` FOREIGN KEY (`Mobile`) REFERENCES `basic_info` (`Mobile`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
