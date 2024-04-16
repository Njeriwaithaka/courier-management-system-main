-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2024 at 03:30 PM
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
-- Database: `royal_express_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `is_deleted` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_name`, `is_deleted`) VALUES
(7, 'Nairobi', 0),
(22, 'Nakuru', 0),
(23, 'Eldoret', 0),
(24, 'Kitale', 0),
(25, 'Kericho', 0),
(26, 'Naivasha', 0),
(27, 'Mombasa', 0),
(28, 'Embu', 0),
(29, 'Kisumu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `is_deleted` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `is_deleted`) VALUES
(6, 'Nairobi', 0),
(7, 'Nakuru', 0),
(8, 'Eldoret', 0),
(9, 'Kitale', 0),
(10, 'Kericho', 0),
(11, 'Naivasha', 0),
(12, 'Mombasa', 0),
(13, 'Embu', 0),
(14, 'Kisumu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `subject`, `message`, `date_updated`) VALUES
(16, 'Pathum Wijesekara', 'pathumwijesekara@gmail.com', 'Testing Purpose', 'Hi There!', '2022-11-28 10:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `nic` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` int(2) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_deleted` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `email`, `phone`, `nic`, `address`, `gender`, `password`, `is_deleted`) VALUES
(12, 'Test User 1', 'testuser1@gmail.com', '0700000000', '971212125V', '1212 ', 1, 'testuser1', 0),
(13, 'Test USer 2', 'testuser2@gmail.com', '0701111111', '971212123V', ' 780', 1, 'testuser2', 0),
(14, 'waithaka', 'waithaka116@gmail.com', '0726120232', '971212123V', '1234 kasarani, Nairobi Kenya', 0, '1234567', 0),
(15, 'James', 'james1@gmail.com', '0722598165', '7654321432', '2562', 1, '6789', 0),
(16, 'Tare', 'tare@gmail.com', '0720304050', '38776345', '123 Mombasa', 0, '2050', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `nic` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` int(2) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_deleted` int(2) NOT NULL,
  `branch_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `name`, `email`, `phone`, `nic`, `address`, `gender`, `password`, `is_deleted`, `branch_id`) VALUES
(1, '', 'admin', '', '', '', 0, '12345', 0, 0),
(12, 'EMP1', 'emp1@royalexpress.com', '0770000000', '975001820V', '123 mfangano street', 1, 'emp1', 0, 6),
(13, 'EMP2', 'emp2@royalexpress.com', '0771111111', '977854562V', '1553 kitale', 1, 'emp2', 0, 9),
(14, 'EMP3', 'emp3@royalexpress.com', '0704374175', '98766543', '678 Nakuru', 2, '1234', 0, 7),
(15, 'EMP4', 'emp4@royalexpress.com', '0715040730', '45789321', '456 Eldoret', 0, '2412', 0, 8),
(16, 'EMP5', 'emp5@royalexpress.com', '0712345679', '23456789', '2024 Kericho', 1, '2024', 0, 10),
(17, 'EMP6', 'emp6@royalexpress.com', '0722000000', '38991871', '881 Naivasha', 1, '8811', 0, 11),
(18, 'EMP7', 'emp7@royalexpress.com', '0751776389', '11145678', '2030 Mombasa', 1, '2030', 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_image`) VALUES
(28, 'Gallery_01.jpg'),
(29, 'Gallery_02.jpg'),
(30, 'Gallery_03.jpg'),
(32, 'Gallery_05.jpg'),
(33, 'Gallery_06.jpg'),
(34, 'Gallery_04.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `price_table`
--

CREATE TABLE `price_table` (
  `price_id` int(11) NOT NULL,
  `start_area` varchar(255) NOT NULL,
  `end_area` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `is_deleted` int(255) NOT NULL,
  `date_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `price_table`
--

INSERT INTO `price_table` (`price_id`, `start_area`, `end_area`, `price`, `is_deleted`, `date_updated`) VALUES
(8, '28', '22', 100, 0, '2022-12-04 12:16:56'),
(9, '25', '26', 120, 0, '2022-12-04 12:17:15'),
(10, '22', '7', 50, 0, '2022-12-04 12:17:42'),
(11, '26', '24', 200, 0, '2022-12-04 12:18:06'),
(12, '23', '25', 170, 0, '2022-12-04 12:22:42'),
(14, '7', '7', 200, 0, '2024-03-29 02:12:52'),
(15, '7', '22', 150, 0, '2024-03-29 16:59:21'),
(16, '24', '23', 120, 0, '2024-03-29 17:00:06'),
(17, '24', '7', 110, 0, '2024-03-29 15:11:02'),
(18, '23', '24', 70, 0, '2024-03-29 15:11:02'),
(19, '23', '22', 70, 0, '2024-03-29 17:14:24');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL,
  `customer_id` int(255) NOT NULL,
  `sender_phone` int(255) NOT NULL,
  `weight` int(255) NOT NULL,
  `send_location` int(255) NOT NULL,
  `end_location` int(255) NOT NULL,
  `total_fee` int(255) NOT NULL,
  `res_phone` int(255) NOT NULL,
  `red_address` varchar(255) NOT NULL,
  `is_deleted` int(2) NOT NULL,
  `date_updated` datetime NOT NULL,
  `tracking_status` int(10) NOT NULL,
  `res_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `customer_id`, `sender_phone`, `weight`, `send_location`, `end_location`, `total_fee`, `res_phone`, `red_address`, `is_deleted`, `date_updated`, `tracking_status`, `res_name`) VALUES
(18, 12, 770000000, 1, 22, 7, 50, 771111111, 'Receiver 1, \r\nNo 235,\r\n', 0, '2023-01-15 11:14:09', 1, 'Receiver 1'),
(19, 14, 726120232, 10, 7, 7, 2000, 715244155, '1234', 0, '2024-03-29 02:20:09', 4, 'waithaka'),
(20, 14, 726120232, 10, 7, 7, 2000, 715244155, '1234', 0, '2024-03-29 02:32:02', 2, 'waithaka');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `header_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `header_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `header_desc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `about_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `about_desc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `company_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `sub_image` varchar(255) NOT NULL,
  `about_image` varchar(255) NOT NULL,
  `link_facebook` varchar(255) NOT NULL,
  `link_twiiter` varchar(255) NOT NULL,
  `link_instragram` varchar(255) NOT NULL,
  `background_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`header_image`, `header_title`, `header_desc`, `about_title`, `about_desc`, `company_phone`, `company_email`, `company_address`, `sub_image`, `about_image`, `link_facebook`, `link_twiiter`, `link_instragram`, `background_image`) VALUES
('Header.jpg', 'Welcome to Royal Express', 'Your Premier Domestic Courier Service Provider', 'About Us', 'Royal Express is a Kenyan premier domestic courier service provider. With the strength of an experienced and talented team, Royal Express functions with the utmost confidence in the broadest coverage, security, and timely delivery of your important documents and packages. Royal Express also has a strong background in logistics management. As a result of the trust we have built with our corporate clients, Royal Express is now the official courier for a number of entities in Sri Lanka. Royal Express upholds high service standards and quality levels to ensure that your packages and documents are handled by professionals.', '+25477-1233254', 'connect@royalexpress.com', 'No 224, Matara Road, Tangalle, Kenya', 'Sub_Header.jpg', 'About.jpg', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.instagram.com/', 'Background.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `price_table`
--
ALTER TABLE `price_table`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `price_table`
--
ALTER TABLE `price_table`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
