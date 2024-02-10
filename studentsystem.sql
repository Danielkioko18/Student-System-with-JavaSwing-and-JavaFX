-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 02:28 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `id` int(10) NOT NULL,
  `regno` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `program` varchar(250) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`id`, `regno`, `name`, `program`, `title`, `date`) VALUES
(1, 'eb1/46536/20', 'DANIEL KIOKO', 'Computer Science', 'Java', '17/7/2022'),
(2, 'eb1/46536/20', 'DANIEL KIOKO', 'Computer Science', 'Java', '17/7/2022'),
(3, 'eb1/46364/20', 'MAURINE', 'COMPUTER SCIENCE', 'BLOSSOMS', '18/7/2022');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `code` char(255) DEFAULT NULL,
  `course` char(255) DEFAULT NULL,
  `lecturer` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `code`, `course`, `lecturer`) VALUES
(1, 'cosc 224', 'Java', 'Muthengi'),
(2, '', '', ''),
(3, 'COSC 224', 'JAVA', 'Fred Muthengi');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `program` varchar(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `date` varchar(20) NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `regno`, `name`, `program`, `title`, `date`, `phone`) VALUES
(1, 'eb1/46536/20', 'DANIEL KIOKO', 'Computer Science', 'Java', '17 July,2022', 769894714);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(10) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `cat` int(2) NOT NULL,
  `exam` int(2) NOT NULL,
  `total` int(3) NOT NULL,
  `grade` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `regno`, `course`, `cat`, `exam`, `total`, `grade`) VALUES
(1, 'eb1/46536/20', 'Cosc 223', 23, 60, 83, 'A'),
(2, 'eb1/46537/20', 'Cosc 270', 27, 60, 87, 'A'),
(3, 'EB1/46597/20', 'Cosc 224', 20, 40, 60, 'B'),
(4, 'eb1/3634/20', 'Cosc 270', 20, 20, 40, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `regNo` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `phone` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_no` int(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `program` varchar(100) NOT NULL,
  `ys` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `regNo`, `fname`, `sname`, `phone`, `email`, `id_no`, `address`, `program`, `ys`) VALUES
(1, 'eb1/46536/20', 'DANIEL', 'KIOKO', 7694363, 'daniel@gmail.com', 465476, 'nairobi', 'computer science', 2),
(2, 'eb1/46537/20', 'Mary', 'Nyambura', 7694363, 'mary@gmail.com', 465477, 'nairobi', 'computer science', 2),
(3, 'eb1/46537/20', 'Mary', 'Nyambura', 7694363, 'mary@gmail.com', 465477, 'nairobi', 'computer science', 2),
(4, 'eb1/46538/20', 'John', 'kiptanui', 475475, 'john@gmail.com', 34674, 'chula', 'computerScience', 2),
(5, 'eb1/46539/20', 'Vincent', 'Kipkemoi', 453635, 'vin@gmail.com', 125363, 'chuka', 'computer science', 2),
(6, 'EB1/263633/20', 'Emmanuel', 'wanyonyi', 333263, 'emmanuel@gmail.com', 235363, 'CHUKA', 'COMPUTER', 2),
(7, 'eb1/46527/20', 'collins', 'kiptoo', 23736362, 'colloo@gmail.com', 26374363, 'chuka', 'medicine', 2),
(8, 'eb1/46220/20', 'Fredrick', 'muthengi', 43736633, 'fmuthegi@gmail.com', 363632, 'chuka', 'medicine', 4),
(9, '23727', 'MARY', 'NYAMBURA', 700473737, 'marynyambu@gmail.com', 4836728, 'ddgjsg', 'computer science', 2021),
(10, 'eb1/3653/20', 'Maggy', 'mwangi', 367487363, 'maggy@gmail.com', 354, 'chuka', 'computer Science', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
