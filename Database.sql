-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2019 at 09:22 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homework`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Class_code` char(7) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` text,
  `Date_started` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Class_code`, `Name`, `Description`, `Date_started`) VALUES
('444001', 'Math', 'Aritmetic, Calc, etc', '2019-01-08'),
('444002', 'English', 'Aritmetic, Calc, etc', '2019-01-08'),
('444003', 'Fisica', 'Fisica', '2019-01-08'),
('444004', 'History', 'History field', '2019-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `Class_code` char(7) NOT NULL,
  `Student_Id` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`Class_code`, `Student_Id`, `status`) VALUES
('444001', 555001, 1),
('444002', 555001, 1),
('444003', 555001, 1),
('444001', 555002, 1),
('444002', 555002, 2),
('444003', 555002, 1),
('444004', 555002, 1),
('444003', 555003, 2);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`) VALUES
(1, 'SCIENCE'),
(2, 'HUMANITIES'),
(3, ' MUSIC'),
(4, ' JOURNALISM,'),
(5, ' HISTORY'),
(6, 'MEDICINE');

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

CREATE TABLE `professors` (
  `Faculty_Id` int(11) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `department_id` int(3) NOT NULL,
  `Ternure` tinyint(1) DEFAULT NULL,
  `Date_started` date DEFAULT NULL,
  `professor_Id` int(11) NOT NULL,
  `Class_code` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`Faculty_Id`, `Name`, `department_id`, `Ternure`, `Date_started`, `professor_Id`, `Class_code`) VALUES
(333001, 'William Smith', 1, 1, '2019-01-08', 1, '444001'),
(333002, 'Benetta McWilliams', 1, 0, '2019-01-08', 2, '444002'),
(333003, 'Susan Lewis', 1, 1, '2019-01-08', 3, '444003');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status` tinyint(2) NOT NULL,
  `name` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status`, `name`) VALUES
(1, 'ENROLLED'),
(2, 'LEAVE'),
(3, 'GRAD'),
(4, 'DROP');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentID` int(11) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `DBO` date DEFAULT NULL,
  `Date_Registered` date DEFAULT NULL,
  `Grade` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentID`, `Name`, `DBO`, `Date_Registered`, `Grade`) VALUES
(555001, 'Steve Strait', '2000-01-06', '2019-01-07', 10),
(555002, 'Sarah Chilson', '2000-01-06', '2019-01-07', 10),
(555003, 'Ivelisse Bustos', '2000-01-11', '2019-01-07', 10),
(555004, 'America Haag', '2000-02-13', '2019-01-07', 10),
(555005, 'Lourdes Chenoweth', '2000-05-18', '2019-01-07', 10),
(555006, 'Kip Spalla', '2000-07-13', '2019-01-07', 10),
(555007, 'Esta Defoor', '2000-09-15', '2019-01-07', 10),
(555008, 'Tyree Winget\r\n', '2000-04-18', '2019-01-07', 10),
(555009, 'Loriann Champine', '2000-04-18', '2019-01-07', 10),
(555010, 'Rosemarie Crater', '2000-03-08', '2019-01-07', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Class_code`),
  ADD UNIQUE KEY `Class_code` (`Class_code`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD KEY `Class_code` (`Class_code`),
  ADD KEY `Student_Id` (`Student_Id`),
  ADD KEY `status` (`status`),
  ADD KEY `status_2` (`status`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`),
  ADD UNIQUE KEY `department_id` (`department_id`);

--
-- Indexes for table `professors`
--
ALTER TABLE `professors`
  ADD UNIQUE KEY `Faculty_Id` (`Faculty_Id`),
  ADD KEY `professor_Id` (`professor_Id`),
  ADD KEY `Class_code` (`Class_code`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `department_id_2` (`department_id`),
  ADD KEY `department_id_3` (`department_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status`),
  ADD UNIQUE KEY `status` (`status`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD UNIQUE KEY `StudentID` (`StudentID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`Class_code`) REFERENCES `class` (`Class_code`),
  ADD CONSTRAINT `classes_ibfk_2` FOREIGN KEY (`Student_Id`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `classes_ibfk_3` FOREIGN KEY (`status`) REFERENCES `status` (`status`);

--
-- Constraints for table `professors`
--
ALTER TABLE `professors`
  ADD CONSTRAINT `professors_ibfk_1` FOREIGN KEY (`Class_code`) REFERENCES `class` (`Class_code`),
  ADD CONSTRAINT `professors_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
