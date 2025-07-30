-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 05:35 AM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(2, 1, 1, 'Laptop-Acer Aspire 3', 299, 3, '61gKkYQn6lL._AC_SX466_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Sushil Kumar', '4324234234', 'abc@gmail.com', 'cash on delivery', 'flat no. Tez dsadasd, dasdad, d, Maharadas, Inddsada - 411075', 'Laptop-Acer Aspire 3 (299 x 1) - ', 299, '2025-03-12', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'Laptop-Acer Aspire 3', 'A315-24P-R7VH Slim Laptop | 15.6&#34; Full HD IPS Display | AMD Ryzen 3 7320U Quad-Core Processor | AMD Radeon Graphics | 8GB LPDDR5 | 128GB NVMe SSD | Wi-Fi 6 | Windows 11 Home in S Mode', 299, '61gKkYQn6lL._AC_SX466_.jpg', '81w4nBxLSyL._AC_SX466_.jpg', '51dVqOOYe4L._AC_SX466_.jpg'),
(2, 'HP 14 Laptop', 'Intel Celeron N4020, 4 GB RAM, 64 GB Storage, 14-inch Micro-edge HD Display, Windows 11 Home, Thin & Portable, 4K Graphics, One Year of Microsoft 365 (14-dq0040nr, Snowflake White)', 400, '815uX7wkOZS.__AC_SX300_SY300_QL70_FMwebp_.webp', '81ZEuPyfKyL._AC_SX466_.jpg', '71UtGmh9k4S._AC_SX466_.jpg'),
(3, 'Lenovo V15 Business Laptop', '15.6&#34; FHD Display, Intel Dual-Core CPU, 16GB DDR4 RAM, 256GB PCIe SSD, WiFi 6, Bluetooth 5.2, RJ-45, Type-C, HDMI, Numeric Keypad, Black, Windows 11 Pro, Tichang', 300, '71Cn431oDML._AC_SX466_.jpg', '71sDrq2fpML._AC_SX466_.jpg', '71g8fRB07BL._AC_SX466_.jpg'),
(4, 'INSIGNIA 32 TV', 'Class F20 Series Smart HD 720p Fire TV with Alexa Voice Remote (NS-32F201NA23)', 500, '815E5aShTqL.__AC_SY445_SX342_QL70_FMwebp_.webp', '81w+1SWBa9L._AC_SX679_.jpg', '61Ixili5k-L._AC_SX679_.jpg'),
(5, 'VIZIO 40-inch TV', 'Smart TV with DTS Virtual: X, Alexa Compatibility, Google Cast Built-in, Bluetooth Headphone Capable, (VFD40M-08 New)', 399, '81R3dLptKcL._AC_SX466_.jpg', '71-i0T9WWBL._AC_SX466_.jpg', '81bEVZ7faLL._AC_SX466_.jpg'),
(6, 'SAMSUNG 50-Inch TV', 'Class Crystal UHD 4K DU7200 Series HDR Smart TV w/Object Tracking Sound Lite, PurColor, Motion Xcelerator, Mega Contrast, Q-Symphony (UN50DU7200, 2024 Model)', 200, '61sQhrMr4zL._AC_SX466_.jpg', '814e6d+YqxL._AC_SX466_.jpg', '71ZWySbJ+3L._AC_SX466_.jpg'),
(7, 'Blink Outdoor 4 Camera', 'Wire-free smart security camera, two-year battery life, two-way audio, HD live view, enhanced motion detection, Works with Alexa – 3 camera system', 100, '61fMC8pY0uL._SY450_.jpg', '41PtM0usvoL._SY450_.jpg', '617qmOY-L9L._SY450_.jpg'),
(8, 'Canon EOS Rebel T7 DSLR Camera ', '18-55mm Lens | Built-in Wi-Fi | 24.1 MP CMOS Sensor | DIGIC 4+ Image Processor and Full HD Videos', 300, '61BKYlNqH6L._AC_SX466_.jpg', '61BKYlNqH6L._AC_SX466_.jpg', '61BKYlNqH6L._AC_SX466_.jpg'),
(9, 'Indoor Security Camera', 'Security Camera for Baby Monitor, Dog Camera w/Motion Detection, 2-Way Audio Siren, Night Vision, Cloud & SD Card Storage, Works w/Alexa & Google Home (Tapo C100)', 322, '61gJcez9unL._AC_SY606_.jpg', '51cTsRauyhL._AC_SY606_.jpg', '71KhBTSDa-L._AC_SY606_.jpg'),
(10, 'Razer DeathAdder V3 Pro Gaming Mouse', '63g Ultra Lightweight - Focus Pro 30K Optical Sensor - Fast Optical Switches Gen-3 - HyperSpeed Wireless - 5 Programmable Buttons - 90 Hr Battery - Black', 12, '71QCHU6llFL._AC_SX466_.jpg', '71tdFq8-cML._AC_SX466_.jpg', '61miGYkfVdL._AC_SX466_.jpg'),
(11, 'Esports Gaming Mouse', 'Symmetrical - 55g Lightweight - 8K Polling - 35K DPI Optical Sensor - Gen3 Optical Switches - 8 Programmable Buttons - 95 Hr Battery - White', 32, '619xpFKAXPL._AC_SX466_.jpg', '81MYCvlXuXL._AC_SX466_.jpg', '71jdoi7qmpL._AC_SX466_.jpg'),
(12, 'Logitech M185 Wireless Mouse', '2.4GHz with USB Mini Receiver, 12-Month Battery Life, 1000 DPI Optical Tracking, Ambidextrous PC/Mac/Laptop - Swift Grey', 211, '5181UFuvoBL._AC_SX679_.jpg', '614J7icTafL._AC_SX679_.jpg', '71A2s9IoLAL._AC_SX679_.jpg'),
(13, 'Apartment Fridge', 'West Bend WBRT73B Apartment Refrigerator Freestanding Slim Design Full Fridge, 7.4 cu.ft, Black', 322, '611+ApROVpL._AC_SX679_.jpg', '71vRmWMHABL._AC_SX679_.jpg', '81HPr4e-ViL._AC_SX679_.jpg'),
(14, 'Mini Fridge', 'Frigidaire Portable 10L, 15-can Mini Fridge Brushed Stainless Rugged Refrigerator, EFMIS188-SS\r\nVisit the Frigidaire Store', 50, '81Zhc1bi90L._AC_SX679_.jpg', '8136eINekAL._AC_SX679_.jpg', '81bHIVhGbBL._AC_SX679_.jpg'),
(15, 'Quiet Mini Fridge', 'Compact Refrigerator, 1.42 cu.ft 110V Quiet Mini Fridge, Reversible Door with Lock, Energy Efficient Beverage Cooler for Bedroom Dorm RV Hotel Office, Black', 30, '71uB6XwGAoL._AC_SX679_.jpg', '71R+B1hppDL._AC_SX679_.jpg', '710oXHIA5PL._AC_SX679_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Sushil Kumar', 'abc@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
