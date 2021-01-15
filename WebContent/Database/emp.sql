-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2016 at 09:17 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--
CREATE DATABASE IF NOT EXISTS `employee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employee`;

-- --------------------------------------------------------

--
-- Table structure for table `emp_depts`
--

CREATE TABLE `emp_depts` (
  `DeptNo` int(11) NOT NULL,
  `Dept` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_det`
--

CREATE TABLE `emp_det` (
  `EID` int(10) NOT NULL,
  `Efname` varchar(20) NOT NULL,
  `Emname` varchar(20) NOT NULL,
  `Elname` varchar(20) NOT NULL,
  `Age` int(10) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `Marital_Status` varchar(12) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Native` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `PinCode` int(10) NOT NULL,
  `Qual` varchar(30) NOT NULL,
  `Languages` varchar(30) NOT NULL,
  `Experience` varchar(10) NOT NULL,
  `OldCo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_det`
--

INSERT INTO `emp_det` (`EID`, `Efname`, `Emname`, `Elname`, `Age`, `Gender`, `Marital_Status`, `Phone`, `Email`, `Native`, `City`, `State`, `Country`, `PinCode`, `Qual`, `Languages`, `Experience`, `OldCo`) VALUES
(101, 'Chethan', 'S', 'Hugar', 22, 'Male', 'Unmarried', '9035263435', 'chethanshugar@gmail.com', 'Hubli', 'Bengaluru', 'Karnataka', 'India', 572140, 'B.E(CS&E)', 'Kannada, English,Hindi,Telugu', '1 Year', 'Fresher');

-- --------------------------------------------------------

--
-- Table structure for table `emp_ex`
--

CREATE TABLE `emp_ex` (
  `EID` int(11) NOT NULL,
  `Efname` varchar(20) NOT NULL,
  `Role` varchar(20) NOT NULL,
  `HireDate` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_expend`
--

CREATE TABLE `emp_expend` (
  `DeptNo` varchar(20) NOT NULL,
  `Y1995` int(11) NOT NULL,
  `Y2000` int(11) NOT NULL,
  `Y2005` int(11) NOT NULL,
  `Y2010` int(11) NOT NULL,
  `Y2015` int(11) NOT NULL,
  `Y2020` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_hof`
--

CREATE TABLE `emp_hof` (
  `EID` int(11) NOT NULL,
  `Efname` varchar(20) NOT NULL,
  `Appreciation` varchar(20) NOT NULL,
  `Role` int(20) NOT NULL,
  `Benefits` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_login`
--

CREATE TABLE `emp_login` (
  `uname` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_login`
--

INSERT INTO `emp_login` (`uname`, `pass`) VALUES
('emp1', 'empcs01'),
('emp2', 'empcs02'),
('emp3', 'empcs03'),
('emp4', 'empcs04');

-- --------------------------------------------------------

--
-- Table structure for table `emp_pro`
--

CREATE TABLE `emp_pro` (
  `EID` int(10) NOT NULL,
  `Efname` varchar(20) NOT NULL,
  `DeptNo` int(10) NOT NULL,
  `Dept` varchar(20) NOT NULL,
  `Role` varchar(20) NOT NULL,
  `Salary` int(20) NOT NULL,
  `HireDate` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_pro`
--

INSERT INTO `emp_pro` (`EID`, `Efname`, `DeptNo`, `Dept`, `Role`, `Salary`, `HireDate`) VALUES
(101, 'Chethan', 10, 'HR', 'HR Manager', 200000, '03-02-1995'),
(102, 'Darshan P Swamy', 10, 'HR', 'HR Manager', 200000, '03-03-1995'),
(103, 'G N Sriranga', 11, 'Design', 'Designer', 300000, '03-02-1995'),
(104, 'Suraj H R', 12, 'Development', 'Java Developer', 200000, '03-02-1998'),
(105, 'Narasimhan B L', 12, 'Development', 'Java Developer', 200000, '01-11-2000'),
(106, 'Likhith C', 13, 'Testing', 'Software Tester', 205000, '04-04-2001'),
(107, 'Deepak M', 14, 'Production', 'Production Manager', 400000, '28-09-2002'),
(108, 'Akshay V M', 12, 'Development', 'Team Lead', 300000, '10-10-2001');

-- --------------------------------------------------------

--
-- Table structure for table `profit`
--

CREATE TABLE `profit` (
  `DeptNo` int(11) NOT NULL,
  `Y1995` int(11) NOT NULL,
  `Y2000` int(11) NOT NULL,
  `Y2005` int(11) NOT NULL,
  `Y2010` int(11) NOT NULL,
  `Y2015` int(11) NOT NULL,
  `Y2020` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `DeptNo` int(11) NOT NULL,
  `Y1995` int(11) NOT NULL,
  `Y2000` int(11) NOT NULL,
  `Y2005` int(11) NOT NULL,
  `Y2010` int(11) NOT NULL,
  `Y2015` int(11) NOT NULL,
  `Y2020` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
