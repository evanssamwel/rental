-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 03:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `house_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(9, 'Single-Family Home'),
(10, 'Apartment'),
(11, 'Townhouse'),
(12, 'Condominium'),
(13, 'Duplex'),
(14, 'Mobile Home'),
(17, 'Tiny House');

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(30) NOT NULL,
  `house_no` varchar(50) NOT NULL,
  `category_id` int(30) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `house_no`, `category_id`, `description`, `price`) VALUES
(1, '123 Kwame Nkrumah Ave', 9, 'Beautiful single-family home with spacious yard and garden', 35000),
(2, '456 Nelson Mandela Rd', 10, 'Modern apartment in the heart of the city', 1500),
(3, '789 Obafemi Awolowo St', 11, 'Cozy townhouse with attached garage and small backyard', 45000),
(4, '101 Haile Selassie Rd', 12, 'Luxurious condominium with great views of the city', 100000),
(5, '222 Accra Rd', 13, 'Well-maintained duplex with rental income potential in a busy area', 22000),
(6, '333 Nkrumah St', 14, 'Affordable mobile home in a quiet residential community', 15000),
(7, '444 Victoria Island Rd', 17, 'Charming tiny house with efficient use of space', 18000),
(8, '555 Lekki Rd', 9, 'Spacious single-family home with modern amenities in a gated community', 55000),
(9, '666 Mombasa Rd', 10, 'Cozy apartment with a view in a historic building', 1200),
(10, '777 Nairobi Rd', 11, 'Townhouse with a backyard patio perfect for entertaining guests', 60000),
(11, '888 Lusaka Ave', 12, 'Luxury condominium with 24/7 security and concierge service', 120000),
(12, '999 Masai Rd', 13, 'Duplex with updated kitchen and separate entrances for each unit', 25000),
(13, '111 Zambezi Ave', 14, 'Mobile home with large deck and family-friendly atmosphere', 17000),
(14, '222 Elephant Rd', 17, 'Tiny house with a loft bedroom and eco-friendly design', 19000),
(15, '333 Ubuntu St', 9, 'Classic single-family home with open living space and garden', 60000),
(16, '444 Soweto St', 10, 'Bright apartment with city views, great location', 1800),
(17, '555 Mandela Rd', 11, 'Townhouse with a spacious living area and backyard garden', 70000),
(18, '666 Table Mountain Rd', 12, 'Condominium in a high-rise building with full amenities', 110000),
(19, '777 Serengeti St', 13, 'Duplex with modern kitchen and bathrooms, located near shopping centers', 27000),
(20, '888 Lake Victoria Rd', 14, 'Mobile home with updated interior and large garden', 16000);


-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(30) NOT NULL,
  `tenant_id` int(30) NOT NULL,
  `amount` float NOT NULL,
  `invoice` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `tenant_id`, `amount`, `invoice`, `date_created`) VALUES
(1, 1, 1500, 'INV001', '2024-05-02 00:00:00'),
(2, 2, 1200, 'INV002', '2024-05-04 00:00:00'),
(3, 3, 1600, 'INV003', '2024-05-06 00:00:00'),
(4, 4, 1800, 'INV004', '2024-05-08 00:00:00'),
(5, 5, 1400, 'INV005', '2024-05-10 00:00:00'),
(6, 6, 1700, 'INV006', '2024-05-12 00:00:00'),
(7, 7, 1300, 'INV007', '2024-05-14 00:00:00'),
(8, 8, 1900, 'INV008', '2024-05-16 00:00:00'),
(9, 9, 1550, 'INV009', '2024-05-18 00:00:00'),
(10, 10, 1250, 'INV010', '2024-05-20 00:00:00'),
(11, 11, 1650, 'INV011', '2024-05-22 00:00:00'),
(12, 12, 1350, 'INV012', '2024-05-24 00:00:00'),
(13, 13, 1450, 'INV013', '2024-05-26 00:00:00'),
(14, 14, 1700, 'INV014', '2024-05-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'House Rental Management System', 'info@sample.comm', '+6948 8542 623', '1603344720_1602738120_pngtree-purple-hd-business-banner-image_5493.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` int(30) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `house_id` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 0= inactive',
  `date_in` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `firstname`, `middlename`, `lastname`, `email`, `contact`, `house_id`, `status`, `date_in`) VALUES
(1, 'Kwame', 'Kofi', 'Asante', 'kwame.asante@example.com', '+233-249876543', 1, 1, '2024-05-01'),
(2, 'Amina', 'Zainab', 'Abdullah', 'amina.abdullah@example.com', '+233-249876544', 2, 1, '2024-05-03'),
(3, 'Thabo', 'Bongani', 'Nkosi', 'thabo.nkosi@example.com', '+233-249876545', 3, 1, '2024-05-05'),
(4, 'Nia', 'Sade', 'Adebayo', 'nia.adebayo@example.com', '+233-249876546', 4, 1, '2024-05-07'),
(5, 'Zuberi', 'Oluwaseun', 'Adams', 'zuberi.adams@example.com', '+233-249876547', 5, 1, '2024-05-09'),
(6, 'Kofi', 'Kwame', 'Mensah', 'kofi.mensah@example.com', '+233-249876548', 6, 1, '2024-05-11'),
(7, 'Adama', 'Binta', 'Diallo', 'adama.diallo@example.com', '+233-249876549', 7, 1, '2024-05-13'),
(8, 'Chijioke', 'Ngozi', 'Okafor', 'chijioke.okafor@example.com', '+233-249876550', 8, 1, '2024-05-15'),
(9, 'Kwabena', 'Yaw', 'Boateng', 'kwabena.boateng@example.com', '+233-249876551', 9, 1, '2024-05-17'),
(10, 'Sade', 'Temidayo', 'Alabi', 'sade.alabi@example.com', '+233-249876552', 10, 1, '2024-05-19'),
(11, 'Musa', 'Fatimah', 'Jalloh', 'musa.jalloh@example.com', '+233-249876553', 11, 1, '2024-05-21'),
(12, 'Akilah', 'Zuri', 'Kante', 'akilah.kante@example.com', '+233-249876554', 12, 1, '2024-05-23'),
(13, 'Ayodele', 'Lola', 'Ogunleye', 'ayodele.ogunleye@example.com', '+233-249876555', 13, 1, '2024-05-25'),
(14, 'Tariq', 'Amara', 'Sow', 'tariq.sow@example.com', '+233-249876556', 14, 1, '2024-05-27');


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'test@gmail.com', 'cd92a26534dba48cd785cdcc0b3e6bd1', 1);

--password is rootadmin and username is test@gmail.com
--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
