-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 01:38 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_erp`
--
CREATE DATABASE IF NOT EXISTS `school_erp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school_erp`;

-- --------------------------------------------------------

--
-- Table structure for table `school_master`
--

CREATE TABLE `school_master` (
  `ID` int(5) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Branch_code` varchar(10) NOT NULL,
  `Location` varchar(250) NOT NULL,
  `Board` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_master`
--

INSERT INTO `school_master` (`ID`, `Name`, `Branch_code`, `Location`, `Board`) VALUES
(1, 'Delhi Public School GomtiNagar Ext.', 'DPSGNE', ' 4/26, Opp Rapti Apt, Sector 4, Gomti Nagar, Lucknow, Uttar Pradesh 226021', 'CBSE'),
(2, 'Delhi Public School Indira Nagar', 'DPSIN', 'Sector 19, Indira Nagar, Lucknow, Uttar Pradesh 226016', 'CBSE'),
(3, 'Delhi Public school Jankipuram', 'DPSJP', 'Sector-6, Jankipuram Extension, Lucknow, Uttar Pradesh,226016', 'CBSE'),
(5, 'City Montessori School Gomti Nagar campus-1', 'CMSGN1', 'Global Understanding Building Phase 1, Vishal Khand 2, Gomti Nagar, Lucknow, Uttar Pradesh 226010', 'ICSE'),
(6, 'Radiant Public Higher Secandary School', 'RPHSS', '112 ,Patel Nagar,Near-Terhi Puliya,Alambagh, Lucknow, Uttar Pradesh 226005', 'UP'),
(7, 'Dr.L P Lal Memorial Public School', 'DLPLMPS', '10-11,Madhupuram, Lucknow-226020, Sitapur Rd, Lucknow, Uttar Pradesh 226020', 'UP');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tbl`
--

CREATE TABLE `teacher_tbl` (
  `ID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Qualification` varchar(150) NOT NULL,
  `School_ID` int(5) NOT NULL,
  `Subjects` varchar(100) NOT NULL,
  `Mobile_Number` varchar(10) NOT NULL,
  `Salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_tbl`
--

INSERT INTO `teacher_tbl` (`ID`, `Name`, `Qualification`, `School_ID`, `Subjects`, `Mobile_Number`, `Salary`) VALUES
(1, 'Mohd. Yusuf Siddiqui', 'B.Sc.,M.Sc.', 2, 'Physics,Maths', '9876543124', 30000.2),
(2, 'Dev shankar awasthi', 'B.Sc,M.Sc.(Maths)', 1, 'Maths', '9875765465', 18000.3),
(3, 'MR.Sankalp Arya Maheshwari', 'B.sc.', 1, 'Chemestry', '985421786', 15000.6),
(4, 'Mr.Pradeep Diwedi', 'B.sc.& M.sc', 3, 'Physics', '985621786', 20001),
(5, 'MR.Ashwani Kumar Yadav', 'B.sc.', 5, 'Maths', '975421786', 33000),
(6, 'MR.Gyanendra Kumar', 'diploma in P.Ed. and B.Ed.', 5, 'PhysicalEdu.', '985421743', 11000.8),
(7, 'MR.Ritik Gautam', 'B.sc.(CS)&M.sc.(CS)', 6, 'Computer Science', '985429986', 13000.6),
(8, 'Mrs.Roomi', 'B.A(English)&M.A(English)', 7, 'English', '985876786', 17000.3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `school_master`
--
ALTER TABLE `school_master`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Branch_code` (`Branch_code`);

--
-- Indexes for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Mobile number` (`Mobile_Number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `school_master`
--
ALTER TABLE `school_master`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
