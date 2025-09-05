-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2025 at 06:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(12, 14, 'sami', 'hossain', 'Male', 'sami@gmail.com', '7412225680', 'WillWilliams', 435, '2025-08-12', '10:00:00', 1, 1),
(1, 15, 'Lighting', 'Mcqueen', 'Male', 'mqueen@gmail.com', '7410000010', 'ryan', 440, '2025-08-04', '12:30:00', 0, 1),
(1, 16, 'Hello', 'World', 'Male', 'hw@gmail.com', '7410000010', 'Jemi', 500, '2025-07-29', '11:40:34', 1, 2),
(11, 17, 'Kotha', 'Hoque', 'Female', 'kotha@gmail.com', '7850002580', 'barcafan', 120, '2025-08-12', '10:00:00', 1, 4),
(13, 18, 'Abu', 'Saleh', 'Male', 'abu@gmail.com', '7012569999', 'Araf', 400, '2025-08-10', '11:00:00', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Demo', 'demo@demail.com', '7014500000', 'this is a demo test');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `doctorname` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `doctorname`, `email`, `spec`, `docFees`) VALUES
('Ryan ', 'password', 'Ryan Khan', 'ryank@gmail.com', 'Pediatrician', 440),
('Jemi', 'password', 'Jemi Hossain', 'sisterjemi@gmail.com', 'Gynecologist', 500),
('Araf', 'password', 'Abu Saleh Md Araf', 'arafbhai@gmail.com', 'Cardiologist', 400),
('barcafan', 'password', 'Hafiz Ullah Sayem', 'lowquality@gmail.com', 'Neurologist', 120),
('alsobarcafan', 'password', 'Abu Talha Khan', 'talha@gmail.com', 'Gastroenterologist', 150);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'sara', 'khan', 'Female', 'sara@gmail.com', '7410000010', 'pass', 'pass'),
(2, 'Jarin', 'Tasnim', 'Female', 'jaarin@gmail.com', '7896541222', 'pass', 'pass'),
(3, 'Robert', 'Downey', 'Male', 'rdj@gmail.com', '7014744444', 'pass', 'pass'),
(4, 'Michael', 'Jackson', 'Male', 'michael@gmail.com', '7023696969', 'pass', 'pass'),
(5, 'Victor', 'Noob', 'Male', 'victor@gmail.com', '7897895500', 'pass', 'pass'),
(6, 'Jobbar', 'Bhai', 'Male', 'jobbar@gmail.com', '7530001250', 'pass', 'pass'),
(7, 'Elsa', 'Khanom', 'Female', 'ekhanom@gmail.com', '7850001250', 'pass', 'pass'),
(8, 'Sumaiya', 'Hossain', 'Female', 'sumu@gmail.com', '7301450000', 'pass', 'pass'),
(9, 'Badhon', 'Molla', 'Male', 'badhon@gmail.com', '7026969500', 'pass', 'pass'),
(10, 'Abdullah', 'Zihad', 'Male', 'zihad@gmail.com', '7900145300', 'pass', 'pass'),
(11, 'Shams', 'Arefin', 'Male', 'shams@gmail.com', '7850002580', 'pass', 'pass'),
(12, 'Yasin', 'Lian', 'Male', 'lian@gmail.com', '7412225680', 'password', 'password'),
(13, 'Afif', 'Hossain', 'Male', 'shimanto@gmail.com', '7012569999', 'password', 'password'),
(14, 'Motaleb', 'Hossain', 'Male', 'bdmotaleb33@gmail.com', '0152333333', '123456', '');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('WillWilliams', 12, 14, 'Liam', 'Moore', '2021-07-06', '10:00:00', 'Congenital heart disease', 'rhinoconjunctivitis', 'trandolapril (Mavik)'),
('ryan', 1, 16, 'Curtis', 'Hicks', '2021-07-05', '10:00:00', 'Tuberculosis', 'lumpy rash on the legs - or lupus vulgaris which gives lumps or ulcers', 'Isoniazid, Ethambutol (Myambutol), Linezolid (Zyvox)'),
('lewis', 11, 17, 'Kathryn', 'Anderson', '2021-07-05', '10:00:00', 'Ovarian cysts', '00000000', 'Narcotic analgesics and nonsteroidal anti-inflammatory drugs'),
('Ralph', 13, 18, 'Brian', 'Rowe', '2021-07-06', '08:00:00', 'Cerebral Aneurysm', '0000000', 'Nimodipine - empty stomach, at least 1 hour before a meal or 2 hours after a meal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
