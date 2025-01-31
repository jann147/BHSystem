-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2025 at 02:46 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `admin_user` varchar(50) DEFAULT NULL,
  `admin_pass` varchar(50) DEFAULT NULL,
  `curfew` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_user`, `admin_pass`, `curfew`) VALUES
(1, 'admin', 'admin', '22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `inbox_id` int NOT NULL,
  `admin_id` int DEFAULT NULL,
  `tenants_id` int DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `inbox_status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`inbox_id`, `admin_id`, `tenants_id`, `content`, `attachment`, `date`, `inbox_status`) VALUES
(4, 1, 4, 'Hello po', '', '2024-11-01 08:55:26 PM', 1),
(5, 1, 6, 'good day po', '', '2024-11-01 08:57:24 PM', 1),
(6, 1, 5, 'evening po', '', '2024-11-01 08:58:54 PM', 1),
(7, 1, 8, 'good morning po', '', '2024-11-01 08:59:56 PM', 1),
(8, 1, 9, 'afternoon po', '', '2024-11-01 09:04:07 PM', 1),
(9, 1, 9, 'Yes sir, what can I do for you sir?', '', '2024-11-01 11:44:34 PM', 0),
(10, 1, 15, 'fhgdgf', '', '2024-11-17 04:32:59 PM', 1),
(11, 1, 15, 'fhgdgf', '', '2024-11-17 04:33:02 PM', 1),
(12, 1, 15, 'ghmgjm', '', '2024-11-17 04:33:37 PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `maintenance_id` int NOT NULL,
  `room_id` int DEFAULT NULL,
  `issue` varchar(200) DEFAULT NULL,
  `amount` float(40,2) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`maintenance_id`, `room_id`, `issue`, `amount`, `date`) VALUES
(1, 12, 'Bulb damages', 150.00, '2024-11-01'),
(2, 4, 'Aircon Damages', 1000.00, '2024-11-01'),
(3, 5, 'door nub damages', 50.00, '2024-11-01'),
(4, 13, 'dgghyh', 50.00, '2024-11-17');

-- --------------------------------------------------------

--
-- Table structure for table `payment_income`
--

CREATE TABLE `payment_income` (
  `payment_income_id` int NOT NULL,
  `rent_id` int DEFAULT NULL,
  `amount` float(40,2) NOT NULL,
  `withdraw` float(40,2) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment_income`
--

INSERT INTO `payment_income` (`payment_income_id`, `rent_id`, `amount`, `withdraw`, `status`) VALUES
(4, NULL, 500.00, 0.00, 1),
(5, NULL, 500.00, 0.00, 1),
(6, NULL, 1000.00, 0.00, 1),
(7, NULL, 1000.00, 550.00, 1),
(8, NULL, 1000.00, 1000.00, 1),
(9, NULL, 5000.00, 5000.00, 1),
(10, NULL, 5000.00, 5000.00, 1),
(11, NULL, 1000.00, 1000.00, 1),
(12, NULL, 1500.00, 1500.00, 1),
(13, NULL, 1500.00, 1500.00, 1),
(14, NULL, 1500.00, 1500.00, 1),
(15, NULL, 1000.00, 1000.00, 1),
(16, NULL, 1000.00, 1000.00, 1),
(17, NULL, 1000.00, 1000.00, 1),
(18, NULL, 1000.00, 1000.00, 1),
(19, NULL, 1000.00, 1000.00, 1),
(20, NULL, 1500.00, 1500.00, 1),
(21, NULL, 1500.00, 1500.00, 1),
(22, NULL, 1500.00, 1500.00, 0),
(23, NULL, 1000.00, 1000.00, 0),
(24, NULL, 1000.00, 1000.00, 1),
(25, NULL, 1000.00, 1000.00, 1),
(26, NULL, 1000.00, 1000.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `rent_id` int NOT NULL,
  `tenants_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `roomsmonthly` float(40,2) DEFAULT NULL,
  `term` int DEFAULT NULL,
  `payment` float(40,2) DEFAULT NULL,
  `deposit` float(40,2) DEFAULT NULL,
  `started` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepayment` date DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `receipt` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `confirmation` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`rent_id`, `tenants_id`, `room_id`, `roomsmonthly`, `term`, `payment`, `deposit`, `started`, `duedate`, `datepayment`, `type`, `receipt`, `status`, `confirmation`) VALUES
(19, 4, 3, 1000.00, 10, 0.00, 1000.00, '2024-11-01', '2025-02-01', '2024-11-01', 'Cash', NULL, 'Paid', 1),
(20, 4, 3, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-03-01', NULL, NULL, NULL, 'Unpaid', NULL),
(21, 4, 3, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-04-01', NULL, NULL, NULL, 'Unpaid', NULL),
(22, 4, 3, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-05-01', NULL, NULL, NULL, 'Unpaid', NULL),
(23, 4, 3, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-06-01', NULL, NULL, NULL, 'Unpaid', NULL),
(24, 4, 3, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-07-01', NULL, NULL, NULL, 'Unpaid', NULL),
(25, 4, 3, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-08-01', NULL, NULL, NULL, 'Unpaid', NULL),
(26, 4, 3, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-09-01', NULL, NULL, NULL, 'Unpaid', NULL),
(27, 5, 3, 1000.00, 6, 1000.00, 0.00, '2024-11-01', '2024-12-01', '2024-11-01', 'Cash', NULL, 'Paid', 1),
(28, 5, 3, 1000.00, 6, 0.00, 0.00, '2024-11-01', '2025-01-01', NULL, NULL, NULL, 'Unpaid', NULL),
(29, 5, 3, 1000.00, 6, 0.00, 0.00, '2024-11-01', '2025-02-01', NULL, NULL, NULL, 'Unpaid', NULL),
(30, 5, 3, 1000.00, 6, 0.00, 0.00, '2024-11-01', '2025-03-01', NULL, NULL, NULL, 'Unpaid', NULL),
(31, 5, 3, 1000.00, 6, 0.00, 0.00, '2024-11-01', '2025-04-01', NULL, NULL, NULL, 'Unpaid', NULL),
(32, 5, 3, 1000.00, 6, 0.00, 0.00, '2024-11-01', '2025-05-01', NULL, NULL, NULL, 'Unpaid', NULL),
(33, 6, 6, 5000.00, 8, 5000.00, 0.00, '2024-11-01', '2024-12-01', '2024-12-01', 'Cash', NULL, 'Paid', 1),
(34, 6, 6, 5000.00, 8, 0.00, 5000.00, '2024-11-01', '2024-10-01', '2024-10-01', 'Cash', NULL, 'Paid', 1),
(35, 6, 6, 5000.00, 8, 0.00, 5000.00, '2024-11-01', '2024-11-01', '2024-11-01', 'Cash', NULL, 'Paid', 1),
(36, 6, 6, 5000.00, 8, 0.00, 0.00, '2024-11-01', '2025-03-01', NULL, NULL, NULL, 'Unpaid', NULL),
(37, 6, 6, 5000.00, 8, 0.00, 0.00, '2024-11-01', '2025-04-01', NULL, NULL, NULL, 'Unpaid', NULL),
(38, 6, 6, 5000.00, 8, 0.00, 0.00, '2024-11-01', '2025-05-01', NULL, NULL, NULL, 'Unpaid', NULL),
(39, 6, 6, 5000.00, 8, 0.00, 0.00, '2024-11-01', '2025-06-01', NULL, NULL, NULL, 'Unpaid', NULL),
(40, 6, 6, 5000.00, 8, 0.00, 0.00, '2024-11-01', '2025-07-01', NULL, NULL, NULL, 'Unpaid', NULL),
(41, 7, 9, 1000.00, 12, 1000.00, 0.00, '2024-11-01', '2024-12-01', '2024-11-01', 'Cash', NULL, 'Paid', 1),
(42, 7, 9, 1000.00, 12, 0.00, 0.00, '2024-11-01', '2025-01-01', NULL, NULL, NULL, 'Unpaid', NULL),
(43, 7, 9, 1000.00, 12, 0.00, 0.00, '2024-11-01', '2025-02-01', NULL, NULL, NULL, 'Unpaid', NULL),
(44, 7, 9, 1000.00, 12, 0.00, 0.00, '2024-11-01', '2025-03-01', NULL, NULL, NULL, 'Unpaid', NULL),
(45, 7, 9, 1000.00, 12, 0.00, 0.00, '2024-11-01', '2025-04-01', NULL, NULL, NULL, 'Unpaid', NULL),
(46, 7, 9, 1000.00, 12, 0.00, 0.00, '2024-11-01', '2025-05-01', NULL, NULL, NULL, 'Unpaid', NULL),
(47, 7, 9, 1000.00, 12, 0.00, 0.00, '2024-11-01', '2025-06-01', NULL, NULL, NULL, 'Unpaid', NULL),
(48, 7, 9, 1000.00, 12, 0.00, 0.00, '2024-11-01', '2025-07-01', NULL, NULL, NULL, 'Unpaid', NULL),
(49, 7, 9, 1000.00, 12, 0.00, 0.00, '2024-11-01', '2025-08-01', NULL, NULL, NULL, 'Unpaid', NULL),
(50, 7, 9, 1000.00, 12, 0.00, 0.00, '2024-11-01', '2025-09-01', NULL, NULL, NULL, 'Unpaid', NULL),
(51, 7, 9, 1000.00, 12, 0.00, 0.00, '2024-11-01', '2025-10-01', NULL, NULL, NULL, 'Unpaid', NULL),
(52, 7, 9, 1000.00, 12, 0.00, 0.00, '2024-11-01', '2025-11-01', NULL, NULL, NULL, 'Unpaid', NULL),
(53, 8, 4, 1500.00, 10, 1500.00, 0.00, '2024-11-01', '2024-12-01', '2024-11-01', 'Cash', NULL, 'Paid', 1),
(54, 8, 4, 1500.00, 10, 0.00, 1500.00, '2024-11-01', '2025-01-01', '2024-11-01', 'Cash', NULL, 'Paid', 1),
(55, 8, 4, 1500.00, 10, 0.00, 1500.00, '2024-11-01', '2025-02-01', '2024-11-01', 'Cash', NULL, 'Paid', 1),
(56, 8, 4, 1500.00, 10, 0.00, 0.00, '2024-11-01', '2025-03-01', NULL, NULL, NULL, 'Unpaid', NULL),
(57, 8, 4, 1500.00, 10, 0.00, 0.00, '2024-11-01', '2025-04-01', NULL, NULL, NULL, 'Unpaid', NULL),
(58, 8, 4, 1500.00, 10, 0.00, 0.00, '2024-11-01', '2025-05-01', NULL, NULL, NULL, 'Unpaid', NULL),
(59, 8, 4, 1500.00, 10, 0.00, 0.00, '2024-11-01', '2025-06-01', NULL, NULL, NULL, 'Unpaid', NULL),
(60, 8, 4, 1500.00, 10, 0.00, 0.00, '2024-11-01', '2025-07-01', NULL, NULL, NULL, 'Unpaid', NULL),
(61, 8, 4, 1500.00, 10, 0.00, 0.00, '2024-11-01', '2025-08-01', NULL, NULL, NULL, 'Unpaid', NULL),
(62, 8, 4, 1500.00, 10, 0.00, 0.00, '2024-11-01', '2025-09-01', NULL, NULL, NULL, 'Unpaid', NULL),
(63, 9, 4, 1500.00, 5, 1500.00, 0.00, '2024-11-01', '2024-12-01', '2024-12-01', 'Cash', NULL, 'Paid', 1),
(66, 9, 4, 1500.00, 5, 1500.00, 0.00, '2024-11-01', '2024-11-01', '2024-11-01', 'Gcash', '1730471822.png', 'Paid', 1),
(67, 9, 4, 1500.00, 5, 0.00, 0.00, '2024-11-01', '2025-04-01', NULL, NULL, NULL, 'Unpaid', NULL),
(68, 10, 11, 1000.00, 10, 1000.00, 0.00, '2024-11-01', '2024-12-01', '2024-11-01', 'Cash', NULL, 'Paid', 1),
(69, 10, 11, 1000.00, 10, 0.00, 1000.00, '2024-11-01', '2025-01-01', '2024-11-01', 'Cash', NULL, 'Paid', 1),
(70, 10, 11, 1000.00, 10, 0.00, 1000.00, '2024-11-01', '2025-02-01', '2024-11-01', 'Cash', NULL, 'Paid', 1),
(71, 10, 11, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-03-01', NULL, NULL, NULL, 'Unpaid', NULL),
(72, 10, 11, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-04-01', NULL, NULL, NULL, 'Unpaid', NULL),
(73, 10, 11, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-05-01', NULL, NULL, NULL, 'Unpaid', NULL),
(74, 10, 11, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-06-01', NULL, NULL, NULL, 'Unpaid', NULL),
(75, 10, 11, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-07-01', NULL, NULL, NULL, 'Unpaid', NULL),
(76, 10, 11, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-08-01', NULL, NULL, NULL, 'Unpaid', NULL),
(77, 10, 11, 1000.00, 10, 0.00, 0.00, '2024-11-01', '2025-09-01', NULL, NULL, NULL, 'Unpaid', NULL),
(78, 11, 11, 1000.00, 6, 1000.00, 0.00, '2024-11-01', '2024-12-01', '2024-11-01', 'Cash', NULL, 'Paid', 1),
(79, 11, 11, 1000.00, 6, 1000.00, 0.00, '2024-11-02', '2024-11-05', '2024-11-01', 'Gcash', '1730477665.png', 'Paid', 0),
(80, 11, 11, 1000.00, 6, 0.00, 0.00, '2024-11-01', '2024-11-01', NULL, NULL, NULL, 'Unpaid', NULL),
(81, 11, 11, 1000.00, 6, 0.00, 0.00, '2024-11-01', '2024-10-29', NULL, NULL, NULL, 'Unpaid', NULL),
(82, 11, 11, 1000.00, 6, 0.00, 0.00, '2024-11-01', '2025-04-01', NULL, NULL, NULL, 'Unpaid', NULL),
(83, 11, 11, 1000.00, 6, 0.00, 0.00, '2024-11-01', '2025-05-01', NULL, NULL, NULL, 'Unpaid', NULL),
(84, 12, 12, 1000.00, 9, 1000.00, 0.00, '2024-11-01', '2024-12-01', '2024-11-01', 'Cash', NULL, 'Paid', 1),
(85, 12, 12, 1000.00, 9, 0.00, 0.00, '2024-11-01', '2025-01-01', NULL, NULL, NULL, 'Unpaid', NULL),
(86, 12, 12, 1000.00, 9, 0.00, 0.00, '2024-11-01', '2025-02-01', NULL, NULL, NULL, 'Unpaid', NULL),
(87, 12, 12, 1000.00, 9, 0.00, 0.00, '2024-11-01', '2025-03-01', NULL, NULL, NULL, 'Unpaid', NULL),
(88, 12, 12, 1000.00, 9, 0.00, 0.00, '2024-11-01', '2025-04-01', NULL, NULL, NULL, 'Unpaid', NULL),
(89, 12, 12, 1000.00, 9, 0.00, 0.00, '2024-11-01', '2025-05-01', NULL, NULL, NULL, 'Unpaid', NULL),
(90, 12, 12, 1000.00, 9, 0.00, 0.00, '2024-11-01', '2025-06-01', NULL, NULL, NULL, 'Unpaid', NULL),
(91, 12, 12, 1000.00, 9, 0.00, 0.00, '2024-11-01', '2025-07-01', NULL, NULL, NULL, 'Unpaid', NULL),
(92, 12, 12, 1000.00, 9, 0.00, 0.00, '2024-11-01', '2025-08-01', NULL, NULL, NULL, 'Unpaid', NULL),
(93, 13, 12, 1000.00, 5, 1000.00, 0.00, '2024-11-01', '2024-12-01', '2024-11-01', 'Cash', NULL, 'Paid', 1),
(94, 13, 12, 1000.00, 5, 0.00, 0.00, '2024-11-01', '2025-01-01', NULL, NULL, NULL, 'Unpaid', NULL),
(95, 13, 12, 1000.00, 5, 0.00, 0.00, '2024-11-01', '2025-02-01', NULL, NULL, NULL, 'Unpaid', NULL),
(96, 13, 12, 1000.00, 5, 0.00, 0.00, '2024-11-01', '2025-03-01', NULL, NULL, NULL, 'Unpaid', NULL),
(97, 13, 12, 1000.00, 5, 0.00, 0.00, '2024-11-01', '2025-04-01', NULL, NULL, NULL, 'Unpaid', NULL),
(98, 15, 13, 1000.00, 12, 1000.00, 0.00, '2024-11-17', '2024-12-17', '2024-11-17', 'Cash', NULL, 'Paid', 1),
(99, 15, 13, 1000.00, 12, 0.00, 1000.00, '2024-11-17', '2024-11-17', '2024-11-17', 'Cash', NULL, 'Paid', 1),
(100, 15, 13, 1000.00, 12, 0.00, 1000.00, '2024-11-17', '2025-02-17', '2024-11-17', 'Cash', NULL, 'Paid', 1),
(101, 15, 13, 1000.00, 12, 1000.00, 0.00, '2024-11-17', '2024-11-17', '2024-11-17', 'Gcash', '1731832168.jpg', 'Paid', 1),
(102, 15, 13, 1000.00, 12, 0.00, 0.00, '2024-11-17', '2025-04-17', NULL, NULL, NULL, 'Unpaid', NULL),
(103, 15, 13, 1000.00, 12, 0.00, 0.00, '2024-11-17', '2025-05-17', NULL, NULL, NULL, 'Unpaid', NULL),
(104, 15, 13, 1000.00, 12, 0.00, 0.00, '2024-11-17', '2025-06-17', NULL, NULL, NULL, 'Unpaid', NULL),
(105, 15, 13, 1000.00, 12, 0.00, 0.00, '2024-11-17', '2025-07-17', NULL, NULL, NULL, 'Unpaid', NULL),
(106, 15, 13, 1000.00, 12, 0.00, 0.00, '2024-11-17', '2025-08-17', NULL, NULL, NULL, 'Unpaid', NULL),
(107, 15, 13, 1000.00, 12, 0.00, 0.00, '2024-11-17', '2025-09-17', NULL, NULL, NULL, 'Unpaid', NULL),
(108, 15, 13, 1000.00, 12, 0.00, 0.00, '2024-11-17', '2025-10-17', NULL, NULL, NULL, 'Unpaid', NULL),
(109, 15, 13, 1000.00, 12, 0.00, 0.00, '2024-11-17', '2025-11-17', NULL, NULL, NULL, 'Unpaid', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int NOT NULL,
  `roomnumber` int DEFAULT NULL,
  `roomdesciption` varchar(200) DEFAULT NULL,
  `roomtype` varchar(100) DEFAULT NULL,
  `maximum` int DEFAULT NULL,
  `roomimage` varchar(200) DEFAULT NULL,
  `roomsmonthly` float(40,2) DEFAULT NULL,
  `room_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `roomnumber`, `roomdesciption`, `roomtype`, `maximum`, `roomimage`, `roomsmonthly`, `room_status`) VALUES
(13, 150, 'good for 4 person', 'no aircon', 4, '1731831290.jpeg', 1000.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_bill`
--

CREATE TABLE `room_bill` (
  `room_bill_id` int NOT NULL,
  `room_id` int DEFAULT NULL,
  `billtype` varchar(50) DEFAULT NULL,
  `amount` float(40,2) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room_bill`
--

INSERT INTO `room_bill` (`room_bill_id`, `room_id`, `billtype`, `amount`, `date`) VALUES
(1, 11, 'Electricity', 50.00, '2024-11-01'),
(2, 11, 'Water', 20.00, '2024-11-01'),
(3, 12, 'Electricity', 100.00, '2024-12-02'),
(4, 12, 'Water', 30.00, '2024-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `sms_log`
--

CREATE TABLE `sms_log` (
  `log_id` int NOT NULL,
  `tenants_id` int DEFAULT NULL,
  `sent_date` date DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sms_log`
--

INSERT INTO `sms_log` (`log_id`, `tenants_id`, `sent_date`, `status`) VALUES
(7, 9, '2024-11-01', 2),
(8, 11, '2024-11-02', 2),
(9, 11, '2024-11-05', 2),
(10, 15, '2024-11-17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `tenants_id` int NOT NULL,
  `room_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `contact` varchar(12) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `parentname` varchar(100) DEFAULT NULL,
  `parentcontact` varchar(12) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`tenants_id`, `room_id`, `name`, `gender`, `contact`, `address`, `occupation`, `email`, `password`, `profile`, `parentname`, `parentcontact`, `status`, `action`) VALUES
(15, 13, 'Reymark', 'Male', '09639741770', 'loreto', 'Student', 'longino@gmail.com', 'longino@gmail.com', '1731831437.jpg', 'daniel', '09317509834', 1, 'IN');

-- --------------------------------------------------------

--
-- Table structure for table `tenants_logs`
--

CREATE TABLE `tenants_logs` (
  `tenants_logs_id` int NOT NULL,
  `tenants_id` int DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tenants_logs`
--

INSERT INTO `tenants_logs` (`tenants_logs_id`, `tenants_id`, `action`, `timestamp`) VALUES
(1, 2, 'OUT', '2024-10-31 14:07:32'),
(2, 2, 'IN', '2024-10-31 15:00:44'),
(3, 9, 'OUT', '2024-11-01 15:11:29'),
(4, 9, 'IN', '2024-11-01 15:11:51'),
(5, 9, 'OUT', '2024-11-01 15:12:08'),
(6, 9, 'IN', '2024-11-01 15:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `withdraw_id` int NOT NULL,
  `maintenance_id` int DEFAULT NULL,
  `room_bill_id` int DEFAULT NULL,
  `admin` varchar(10) DEFAULT NULL,
  `amount` float(40,2) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`withdraw_id`, `maintenance_id`, `room_bill_id`, `admin`, `amount`, `type`, `date`) VALUES
(1, 1, NULL, NULL, 150.00, 'Room Maintenance', '2024-11-01'),
(2, 2, NULL, NULL, 1000.00, 'Room Maintenance', '2024-11-01'),
(3, 3, NULL, NULL, 50.00, 'Room Maintenance', '2024-11-01'),
(4, NULL, 1, NULL, 50.00, 'Electricity', '2024-11-01'),
(5, NULL, 2, NULL, 20.00, 'Water', '2024-11-01'),
(6, NULL, 3, NULL, 100.00, 'Electricity', '2024-11-01'),
(7, NULL, 4, NULL, 30.00, 'Water', '2024-11-01'),
(8, NULL, NULL, 'admin', 1000.00, 'bayad sa panday', '2024-11-02'),
(9, 4, NULL, NULL, 50.00, 'Room Maintenance', '2024-11-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`maintenance_id`);

--
-- Indexes for table `payment_income`
--
ALTER TABLE `payment_income`
  ADD PRIMARY KEY (`payment_income_id`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rent_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_bill`
--
ALTER TABLE `room_bill`
  ADD PRIMARY KEY (`room_bill_id`);

--
-- Indexes for table `sms_log`
--
ALTER TABLE `sms_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`tenants_id`);

--
-- Indexes for table `tenants_logs`
--
ALTER TABLE `tenants_logs`
  ADD PRIMARY KEY (`tenants_logs_id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`withdraw_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `inbox_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `maintenance_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_income`
--
ALTER TABLE `payment_income`
  MODIFY `payment_income_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `rent_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `room_bill`
--
ALTER TABLE `room_bill`
  MODIFY `room_bill_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sms_log`
--
ALTER TABLE `sms_log`
  MODIFY `log_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `tenants_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tenants_logs`
--
ALTER TABLE `tenants_logs`
  MODIFY `tenants_logs_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `withdraw_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
