-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2021 at 09:47 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(200) NOT NULL,
  `cartid` text NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  `datetime` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `cartid`, `items`, `datetime`, `status`) VALUES
(44, '162616633560ed543fe8c8c', '[{\"id\":\"13\",\"color\":\"Green@1x\",\"size\":\"xxs\",\"qty\":\"3\"}]', '2021-07-13 11:52:15.953563', 0),
(45, '162627043660eeeae4cc37d', '[{\"id\":\"13\",\"color\":\"Green@1x\",\"size\":\"xs\",\"qty\":\"1\"}]', '2021-07-14 16:47:16.836562', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`) VALUES
(1, 'Men', 'categori-man.png'),
(2, 'Women', 'categori-man.png'),
(3, 'Gifts', 'categori-man.png'),
(4, 'Girls', 'categori-man.png'),
(5, 'Boys', 'categori-man.png');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(200) NOT NULL,
  `filter_name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `filter_name`, `image`) VALUES
(5, 'Beige@1x', 'Beige@1x.png'),
(6, 'Black@1x', 'Black@1x.png'),
(7, 'Brown@1x', 'Brown@1x.png'),
(8, 'Denim_Blue@1x', 'Denim_Blue@1x.png'),
(9, 'Green@1x', 'Green@1x.png'),
(10, 'Grey@1x', 'Grey@1x.png');

-- --------------------------------------------------------

--
-- Table structure for table `cut`
--

CREATE TABLE `cut` (
  `id` int(200) NOT NULL,
  `filter_name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cut`
--

INSERT INTO `cut` (`id`, `filter_name`, `image`) VALUES
(1, 'Fitted@1x', 'Fitted@1x.png'),
(2, 'Flared@1x', 'Flared@1x.png'),
(3, 'Mermaid@1x', 'Mermaid@1x.png'),
(4, 'Straight@1x', 'Straight@1x.png');

-- --------------------------------------------------------

--
-- Table structure for table `length`
--

CREATE TABLE `length` (
  `id` int(200) NOT NULL,
  `filter_name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `length`
--

INSERT INTO `length` (`id`, `filter_name`, `image`) VALUES
(1, 'Asymmetric@1x', 'Asymmetric@1x.png'),
(2, 'High_Low@1x', 'High_Low@1x.png'),
(3, 'Maxi@1x', 'Maxi@1x.png'),
(4, 'Midi@1x', 'Midi@1x.png'),
(5, 'Short@1x', 'Short@1x.png');

-- --------------------------------------------------------

--
-- Table structure for table `neckline`
--

CREATE TABLE `neckline` (
  `id` int(200) NOT NULL,
  `filter_name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `neckline`
--

INSERT INTO `neckline` (`id`, `filter_name`, `image`) VALUES
(1, 'Asymmetric_Neck@1x', 'Asymmetric_Neck@1x.png'),
(2, 'Bardot_Neck@1x', 'Bardot_Neck@1x.png'),
(3, 'Collar@1x', 'Collar@1x.png'),
(4, 'Cowl_Neck@1x', 'Cowl_Neck@1x.png');

-- --------------------------------------------------------

--
-- Table structure for table `pattern`
--

CREATE TABLE `pattern` (
  `id` int(200) NOT NULL,
  `filter_name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pattern`
--

INSERT INTO `pattern` (`id`, `filter_name`, `image`) VALUES
(1, 'Animal@1x', 'Animal@1x.png'),
(2, 'Color_Block@1x', 'Color_Block@1x.png'),
(3, 'Dot@1x', 'Dot@1x.png'),
(4, 'Floral@1x', 'Floral@1x.png'),
(5, 'Geometric@1x', 'Geometric@1x.png');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(200) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `transactionid` text NOT NULL,
  `amout` varchar(200) NOT NULL,
  `datetm` datetime(6) DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(200) NOT NULL,
  `category_id` int(200) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `price` varchar(12) NOT NULL,
  `color` varchar(50) NOT NULL,
  `length` varchar(50) NOT NULL,
  `sleeve` varchar(50) NOT NULL,
  `neckline` varchar(50) NOT NULL,
  `pattern` varchar(50) NOT NULL,
  `cut` varchar(50) NOT NULL,
  `sleeve_style` varchar(50) NOT NULL,
  `body` varchar(200) NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `p_name`, `price`, `color`, `length`, `sleeve`, `neckline`, `pattern`, `cut`, `sleeve_style`, `body`, `image`, `status`) VALUES
(12, 1, 'Dress', '30', 'red', '34', 'short', 'roud', 'checked', 'straight', 'long', 'hourglass', 'cart-img1.jpeg', 0),
(13, 1, 'Jacket', '70', 'Black@1x', '34', 'short', 'roud', 'checked', 'straight', 'long', 'triangular', 'cart-img3.jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_detalis`
--

CREATE TABLE `shipping_detalis` (
  `id` int(200) NOT NULL,
  `userid` varchar(200) NOT NULL,
  `orderid` varchar(255) NOT NULL,
  `country` varchar(200) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `adress1` text NOT NULL,
  `adress2` varchar(200) NOT NULL,
  `postcode` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sleeve`
--

CREATE TABLE `sleeve` (
  `id` int(200) NOT NULL,
  `filter_name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sleeve`
--

INSERT INTO `sleeve` (`id`, `filter_name`, `image`) VALUES
(1, '3_4@1x', '3_4@1x.png'),
(2, 'Cap@1x', 'Cap@1x.png'),
(3, 'Long@1x', 'Long@1x.png'),
(4, 'Short@1x', 'Short@1x.png'),
(5, 'Sleeveless@1x', 'Sleeveless@1x.png'),
(6, 'Spaghetti_Strap@1x', 'Spaghetti_Strap@1x.png'),
(7, 'Strapless@1x', 'Strapless@1x.png');

-- --------------------------------------------------------

--
-- Table structure for table `sleevestyle`
--

CREATE TABLE `sleevestyle` (
  `id` int(200) NOT NULL,
  `filter_name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sleevestyle`
--

INSERT INTO `sleevestyle` (`id`, `filter_name`, `image`) VALUES
(1, 'Balloon_Sleeve@1x', 'Balloon_Sleeve@1x.png'),
(2, 'Bell_Sleeve@1x', 'Bell_Sleeve@1x.png'),
(3, 'Cold_Shoulder@1x', 'Cold_Shoulder@1x.png'),
(4, 'Dolman_Sleeve@1x', 'Dolman_Sleeve@1x.png'),
(5, 'Kimono_Sleeve@1x', 'Kimono_Sleeve@1x.png'),
(6, 'Off_The_Shoulder@1x', 'Off_The_Shoulder@1x.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(200) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `age` varchar(200) NOT NULL,
  `token` text NOT NULL,
  `joinat` datetime NOT NULL DEFAULT current_timestamp(),
  `type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `phone`, `password`, `age`, `token`, `joinat`, `type`) VALUES
(1, 'Nash Dev', 'nashdev750@gmail.com', '0987578688', '$2y$10$QRZkPpggTXFDdTBMSDqIyev.i8DI7ZzPPHTvtljI0sGQrryXCxEcm', '2125', '$2y$10$2mrDj7FDV6yEVeryN9l70.pGR.vX7jdlTGMuElgd7FMpR.pYDq7ti', '2021-07-14 16:28:54', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filter_name` (`filter_name`);

--
-- Indexes for table `cut`
--
ALTER TABLE `cut`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filter_name` (`filter_name`);

--
-- Indexes for table `length`
--
ALTER TABLE `length`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filter_name` (`filter_name`);

--
-- Indexes for table `neckline`
--
ALTER TABLE `neckline`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filter_name` (`filter_name`);

--
-- Indexes for table `pattern`
--
ALTER TABLE `pattern`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filter_name` (`filter_name`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_detalis`
--
ALTER TABLE `shipping_detalis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderid` (`orderid`);

--
-- Indexes for table `sleeve`
--
ALTER TABLE `sleeve`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filter_name` (`filter_name`);

--
-- Indexes for table `sleevestyle`
--
ALTER TABLE `sleevestyle`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filter_name` (`filter_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cut`
--
ALTER TABLE `cut`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `length`
--
ALTER TABLE `length`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `neckline`
--
ALTER TABLE `neckline`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pattern`
--
ALTER TABLE `pattern`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `shipping_detalis`
--
ALTER TABLE `shipping_detalis`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sleeve`
--
ALTER TABLE `sleeve`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sleevestyle`
--
ALTER TABLE `sleevestyle`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
