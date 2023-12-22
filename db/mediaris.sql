-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2023 at 08:20 AM
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
-- Database: `mediaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'rizky', 'rizky'),
(3, 'nazrul', 'nazrul'),
(4, 'rico', 'rico');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `fname`, `email`, `username`, `password`, `phone`, `location`) VALUES
(2, 'felix kiamba', 'kiambafelix@yahoo.com', 'felix', '', 705053484, 'nairobi'),
(3, 'concepter', 'concybogita@gmail.com', 'concepter', '', 707403614, 'kisii'),
(8, 'nazrul', 'nazrul@gmial.com', '', '$2y$10$C64VoQ8rUxS.COeyKSlpQOnpfqABegyriRLH0gIwmVxTW/nJb.6ry', 812345678, ''),
(11, 'rizky', 'rizky@gmail.com', '', '$2y$10$7KAqEw1jBKswBGgt7b3urO6eq2/V9GkYxcJ5cgsEkaRdMnpAACdxq', 98766, 'sdjfahasd'),
(13, 'nazrul', 'nazrul1@gmail.com', '', '123', 8132423, 'sdfgser'),
(14, 'rico', 'rico@gmail.com', 'rico', '$2y$10$41V5hyidSBPH91yFX7RdfeVwn3dWD5Mp7vp3MXrMX798BIdE8zbE.', 32746234, 'dfgdrg');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `type` enum('camera','lens','tripod') NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `img` text NOT NULL,
  `rental_fee` decimal(10,2) NOT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT 1,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `type`, `brand`, `model`, `img`, `rental_fee`, `availability`, `description`) VALUES
(2, '', 'Fujifilm', 'Fujifilm-X100V', 'https://drive.google.com/file/d/1J7k_BwQJyT_sQmmgjebhm_BUDeG0qemv/view', 500000.00, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sapiente omnis ex optio earum inventore aut nobis ipsa rerum quaerat esse cumque, ducimus reprehenderit eius dolor ut iusto ipsam quo itaque.'),
(3, 'lens', 'Sony', 'SEL300F28GM', 'data:image/jpeg;base64,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', 100000.00, 1, 'sadsahkawdfjkawjkdfhl'),
(4, '', 'Canon', 'testst', 'eawdwfge', 24324242.00, 1, 'vdbfdbfd'),
(5, 'tripod', 'sfwefwf', 'fdgdfg', 'fgeberb', 32432423.00, 1, 'dfjgrjekgberg'),
(6, '', 'jwefjkebwkfefw', 'khrgherg', 'jfdnbjfdnbd', 99999999.99, 1, 'sfkgnrekgle');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msg_id`, `client_id`, `message`, `status`, `time`) VALUES
(2, 0, 'Am happy its working?', 'Unread', '0000-00-00 00:00:00'),
(3, 0, 'Thanks for that..OK?', 'Unread', '0000-00-00 00:00:00'),
(5, 0, 'I love this. It worked the way i want...', 'Unread', '2015-08-04 21:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `rental_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `rental_date` date NOT NULL,
  `return_date` date NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `item_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rentals`
--

INSERT INTO `rentals` (`rental_id`, `customer_id`, `rental_date`, `return_date`, `total_cost`, `status`, `item_id`) VALUES
(1, 14, '2023-12-23', '2023-12-24', 500000.00, 'Pendding', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `brand` (`brand`,`model`,`type`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`rental_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `rental_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`),
  ADD CONSTRAINT `rentals_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
