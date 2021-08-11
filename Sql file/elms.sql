-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 08:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2019-09-11 17:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(4, 'Marketing', 'MKT', 'MKT01', '2019-09-05 08:21:26'),
(5, 'Human resource', 'HR', 'HR01', '2019-09-05 08:22:28'),
(6, 'Information Technology', 'IT', 'IT01', '2019-09-05 08:23:18'),
(7, 'Development', 'DEV', 'DEV01', '2019-09-05 08:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(3, 'EMP001', 'Fazla', 'Rabbi', 'rabbi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '', 'Human resource', 'Malibagh', 'Dhaka', 'Bangladesh', '9001', 1, '2019-09-11 07:12:25'),
(4, 'EMP002', 'Arup', 'Das', 'arup@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '', 'Development', 'Shahjadpur', 'Dhaka', 'Bangladesh', '5001', 1, '2019-09-11 17:43:07'),
(5, 'EMO003', 'Miad', 'Khan', 'miad@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '', 'Information Technology', 'Kolabagan', 'Dhaka', 'Bangladesh', '4001', 1, '2019-09-11 17:46:07'),
(6, 'EMP004', 'Oliur', 'Sun', 'sun@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '', 'Marketing', 'Savar', 'Dhaka', 'Bangladesh', '9001', 1, '2019-09-11 17:47:08'),
(7, 'EMP005', 'Zinat', 'Khan', 'zinat@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Female', '', 'Marketing', 'Indira road', 'Dhaka', 'Bangladesh', '8001', 1, '2019-09-11 17:48:09'),
(8, 'EMP006', 'Durjoy', 'Dey', 'durjoy@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', '', 'Information Technology', 'Shantinagar', 'Dhaka', 'Bangladesh', '6001', 0, '2019-09-11 17:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(7, 'Casual Leave', '30/11/2017', '29/10/2017', 'test description test descriptiontest descriptiontest descriptiontest descriptiontest descriptiontest descriptiontest description', '2017-11-19 13:11:21', 'Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.\r\n', '2017-12-02 23:26:27 ', 2, 1, 1),
(8, 'Medical Leave test', '21/10/2017', '25/10/2017', 'test description test descriptiontest descriptiontest descriptiontest descriptiontest descriptiontest descriptiontest description', '2017-11-20 11:14:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-12-02 23:24:39 ', 1, 1, 1),
(9, 'Medical Leave test', '08/12/2017', '12/12/2017', 'Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.\r\n', '2017-12-02 18:26:01', NULL, NULL, 0, 1, 2),
(10, 'Restricted Holiday(RH)', '25/12/2017', '25/12/2017', 'Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', '2017-12-03 08:29:07', 'Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', '2017-12-03 14:06:12 ', 1, 1, 1),
(11, 'Casual Leave', '13/09/2019', '12/09/2019', 'Have some personal works', '2019-09-11 18:00:56', 'Called personally', '2019-09-11 23:36:23 ', 1, 1, 4),
(12, 'Casual Leave', '13/09/2019', '12/09/2019', 'Have some personal works', '2019-09-11 18:03:32', 'Duplicate apply', '2019-09-11 23:36:40 ', 2, 1, 4),
(13, 'Earned Leave', '13/09/2019', '13/09/2019', 'I need some rest.', '2019-09-11 18:05:34', 'Good to go', '2019-09-11 23:37:00 ', 1, 1, 3),
(14, 'Medical Leave', '30/08/2019', '20/08/2019', 'Dengue fever', '2019-09-11 18:08:50', 'Health risk', '2019-09-11 23:43:43 ', 1, 1, 5),
(15, 'Earned Leave', '02/09/2019', '01/09/2019', 'I have a tour.', '2019-09-11 18:09:36', NULL, NULL, 0, 1, 6),
(16, 'Earned Leave', '07/08/2019', '25/08/2019', 'Family Function', '2019-09-11 18:10:42', NULL, NULL, 0, 1, 7),
(17, 'Earned Leave', '27/08/2019', '25/08/2019', 'Family Function', '2019-09-11 18:11:12', 'Pain for company', '2019-09-11 23:43:20 ', 1, 1, 7),
(18, 'Casual Leave', '01/10/2019', '01/08/2019', 'I want my freedom. ', '2019-09-11 18:12:39', 'Never for this one.', '2019-09-11 23:44:35 ', 2, 1, 8),
(19, 'Medical Leave', '10/09/2019', '08/10/2019', 'I am very sick.', '2019-09-11 18:32:26', NULL, NULL, 0, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(4, 'Casual Leave', 'Casual Leave ', '2019-09-05 08:28:04'),
(5, 'Medical Leave', 'Medical Leave', '2019-09-05 08:28:30'),
(6, 'Earned Leave', 'Earned Leave', '2019-09-05 08:29:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
