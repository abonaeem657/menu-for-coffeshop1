-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2025 at 07:46 PM
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
-- Database: `coffee_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `choco_cake`
--

CREATE TABLE `choco_cake` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `choco_cake`
--

INSERT INTO `choco_cake` (`id`, `name`, `price`) VALUES
(1, 'Dark Chocolate Cake', 4.00),
(2, 'Chocolate Fudge', 4.50),
(3, 'Chocolate Mousse', 4.80);

-- --------------------------------------------------------

--
-- Table structure for table `choco_cookie`
--

CREATE TABLE `choco_cookie` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `choco_cookie`
--

INSERT INTO `choco_cookie` (`id`, `name`, `price`) VALUES
(1, 'Chocolate Chip', 3.00),
(2, 'Double Chocolate', 3.50),
(3, 'Chocolate Walnut', 3.80);

-- --------------------------------------------------------

--
-- Table structure for table `classic_cookie`
--

CREATE TABLE `classic_cookie` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `classic_cookie`
--

INSERT INTO `classic_cookie` (`id`, `name`, `price`) VALUES
(1, 'Oatmeal Raisin', 2.50),
(2, 'Peanut Butter', 2.50),
(3, 'Sugar Cookie', 2.20);

-- --------------------------------------------------------

--
-- Table structure for table `cold_drinks`
--

CREATE TABLE `cold_drinks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cold_drinks`
--

INSERT INTO `cold_drinks` (`id`, `name`, `price`) VALUES
(1, 'Iced Coffee', 3.00),
(2, 'Lemon Iced Tea', 2.50),
(3, 'Mango Smoothie', 3.80),
(4, 'Cold Brew', 3.20);

-- --------------------------------------------------------

--
-- Table structure for table `fruit_cake`
--

CREATE TABLE `fruit_cake` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fruit_cake`
--

INSERT INTO `fruit_cake` (`id`, `name`, `price`) VALUES
(1, 'Strawberry Cake', 4.20),
(2, 'Mango Cake', 4.30),
(3, 'Mixed Fruit Tart', 4.50);

-- --------------------------------------------------------

--
-- Table structure for table `hot_drinks`
--

CREATE TABLE `hot_drinks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hot_drinks`
--

INSERT INTO `hot_drinks` (`id`, `name`, `price`) VALUES
(1, 'Espresso', 2.50),
(2, 'Cappuccino', 3.00),
(3, 'Latte', 3.50),
(4, 'Hot Chocolate', 2.80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choco_cake`
--
ALTER TABLE `choco_cake`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choco_cookie`
--
ALTER TABLE `choco_cookie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classic_cookie`
--
ALTER TABLE `classic_cookie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cold_drinks`
--
ALTER TABLE `cold_drinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fruit_cake`
--
ALTER TABLE `fruit_cake`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hot_drinks`
--
ALTER TABLE `hot_drinks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choco_cake`
--
ALTER TABLE `choco_cake`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `choco_cookie`
--
ALTER TABLE `choco_cookie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `classic_cookie`
--
ALTER TABLE `classic_cookie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cold_drinks`
--
ALTER TABLE `cold_drinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fruit_cake`
--
ALTER TABLE `fruit_cake`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hot_drinks`
--
ALTER TABLE `hot_drinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
