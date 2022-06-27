-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2021 at 12:36 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

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
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `UserID` int(11) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`UserID`, `FirstName`, `LastName`, `Email`, `Password`) VALUES
(12, 'Nader', 'Khalil', '201910548@aau.ac.ae', 'Password123'),
(13, 'Tarik', 'Elamsy', 'Tarik.Elamsy@aau.ac.ae', 'Tarik123'),
(17, 'Mohamed', 'Ahmed', 'mohamed@yahoo.com', 'Mohamed123'),
(21, 'Khalil', 'Khalid', 'Khalid@hotmail.com', 'Khalid123'),
(28, 'Ibrahim', 'Khalil', 'ibrahim@gmail.com', 'Ibrahim123'),
(29, 'John', 'Cena', 'John@outlook.com', 'John1234'),
(30, 'Chris', 'Evans', 'Evans@hotmail.com', 'Evans123');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `UserID` int(11) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `checkIn` date NOT NULL,
  `checkOut` date NOT NULL,
  `peopleNo` int(11) NOT NULL,
  `ResID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`UserID`, `destination`, `checkIn`, `checkOut`, `peopleNo`, `ResID`) VALUES
(13, 'Louvre', '2021-04-01', '2021-04-02', 3, 4),
(17, 'WarnerBros', '2021-04-08', '2021-04-15', 9, 5),
(28, 'Ferrari', '2021-04-06', '2021-04-13', 7, 6),
(21, 'WarnerBros', '2021-04-01', '2021-04-03', 1, 7),
(21, 'Yas', '2021-04-06', '2021-04-08', 4, 8),
(29, 'Louvre', '2021-04-05', '2021-04-15', 12, 9),
(30, 'Louvre', '2021-04-06', '2021-04-07', 1, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`ResID`),
  ADD KEY `UserID` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `ResID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reserve`
--
ALTER TABLE `reserve`
  ADD CONSTRAINT `reserve_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `register` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
