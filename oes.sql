-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 07:48 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindata`
--

CREATE TABLE `admindata` (
  `id` int(10) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passw` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admindata`
--

INSERT INTO `admindata` (`id`, `name`, `email`, `passw`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$93R/cSRvs3QxY6c4Ux3tzOCjWgFVXP6/.4foSjUI5zuj4J3bEm5iW'),
(2, 'diwash', 'diwash@gmail.com', '$2y$10$bcL0d66ndZxSYA4exryXO.rznaqJem6utfr0mCxO1oRmg9huu.nWq'),
(8, 'ram bahaadur khdka', 'ain@gmail.com', '$2y$10$wA6qXZ5nyytJoMe9gNTc0.VjGydueBOlgTLUIDruE4f0XYRtr7vCy');

-- --------------------------------------------------------

--
-- Table structure for table `studentdata`
--

CREATE TABLE `studentdata` (
  `s_id` int(10) NOT NULL,
  `s_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_passw` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentdata`
--

INSERT INTO `studentdata` (`s_id`, `s_name`, `s_email`, `s_passw`) VALUES
(1, 'diwash', 'admin@gmail.com', '$2y$10$n2GIwtK7rO/rhO1qWPDwoO1hH6I/CWIKIO5VHMfGSBa7YLbkXdVwe'),
(15, 'Deepa Pokharel', 'deepa@gmail.com', '$2y$10$Cr../jsBbP.NpBlELwGrcu.bjQwVMLBlUD6qnsTosNWzmtelhEPr.');

-- --------------------------------------------------------

--
-- Table structure for table `teacherdata`
--

CREATE TABLE `teacherdata` (
  `t_id` int(10) NOT NULL,
  `t_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_passw` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacherdata`
--

INSERT INTO `teacherdata` (`t_id`, `t_name`, `t_email`, `t_passw`) VALUES
(1, 'diwashteacher', 'admin@gmail.com', '$2y$10$n2GIwtK7rO/rhO1qWPDwoO1hH6I/CWIKIO5VHMfGSBa7YLbkXdVwe'),
(5, 'Deepa Pokharel', 'adin@gmail.com', '$2y$10$cUj81Kl6N/T1wcNjltXCOe8Vj8dS9ZVeheNURKgwA1FVgN/YrKGZ6'),
(8, 'gauravv', 'deepa@gmail.com', '$2y$10$DiRH.Lfm8BMIpp9njQgfcef8/G3fVX7ZV17PNRhMKzNJvIYVRtLWq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindata`
--
ALTER TABLE `admindata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentdata`
--
ALTER TABLE `studentdata`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `teacherdata`
--
ALTER TABLE `teacherdata`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admindata`
--
ALTER TABLE `admindata`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `studentdata`
--
ALTER TABLE `studentdata`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `teacherdata`
--
ALTER TABLE `teacherdata`
  MODIFY `t_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
