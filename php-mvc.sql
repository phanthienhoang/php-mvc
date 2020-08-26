-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 09:46 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `model_fashion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `images`, `model_fashion_id`) VALUES
(1, 'image2_1.jpg', 2),
(2, 'image2_2.jpg', 2),
(3, 'image2_3.jpg', 2),
(4, 'image2_4.jpg', 2),
(5, 'image1_1.jpg', 1),
(6, 'image1_2.jpg', 1),
(7, 'image1_3.jpg', 1),
(8, 'image1_4.jpg', 1),
(9, 'image1_5.jpg', 1),
(10, 'image2_5.jpg', 2),
(11, 'image3_1.jpg', 3),
(12, 'image3_2.jpg', 3),
(13, 'image3_3.jpg', 3),
(14, 'image3_4.jpg', 3),
(15, 'image3_5.jpg', 3),
(16, 'image4_1.jpg', 4),
(17, 'image4_2.jpg', 4),
(18, 'image4_3.jpg', 4),
(19, 'image4_4.jpg', 4),
(20, 'image4_5.jpg', 4),
(21, 'image5_1.jpg', 5),
(22, 'image5_2.jpg', 5),
(23, 'image5_3.jpg', 5),
(24, 'image5_4.jpg', 5),
(25, 'image5_5.jpg', 5),
(26, 'image6_1.jpg', 6),
(27, 'image6_2.jpg', 6),
(28, 'image6_3.jpg', 6),
(29, 'image6_4.jpg', 6),
(30, 'image6_5.jpg', 6),
(31, 'image7_1.jpg', 7),
(32, 'image7_2.jpg', 7),
(33, 'image7_3.jpg', 7),
(34, 'image7_4.jpg', 7),
(35, 'image7_5.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `category_models`
--

CREATE TABLE `category_models` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_models`
--

INSERT INTO `category_models` (`id`, `name`) VALUES
(1, 'MODEL NỮ'),
(2, 'MODEL NAM'),
(3, 'MODEL NHÍ'),
(4, 'MODEL ĐỘC QUYỀN');

-- --------------------------------------------------------

--
-- Table structure for table `model_fashions`
--

CREATE TABLE `model_fashions` (
  `id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `height` int(3) DEFAULT NULL,
  `bust` int(3) DEFAULT NULL,
  `waist` int(3) DEFAULT NULL,
  `hips` int(3) DEFAULT NULL,
  `shoe` int(3) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model_fashions`
--

INSERT INTO `model_fashions` (`id`, `image`, `name`, `height`, `bust`, `waist`, `hips`, `shoe`, `category_id`, `views`) VALUES
(1, 'image1_1.jpg', 'Renie Rosdas ', 170, 79, 40, 87, 40, 1, 3333),
(2, 'image2_1.jpg', 'Renie Roser ', 172, 79, 40, 87, 40, 1, 13),
(3, 'image3_4.jpg', 'Renie jame', 180, 79, 40, 87, 40, 1, 31321),
(4, 'image4_1.jpg', 'Renie Roser ', 180, 79, 40, 87, 40, 1, 13431),
(5, 'image5_1.jpg', 'Renie Roser ', 168, 79, 40, 87, 40, 1, 321321),
(6, 'image6_1.jpg', 'Renie Roser ', 185, 79, 40, 87, 40, 1, 121),
(7, 'image7_1.jpg', 'Renie Roser ', 180, 79, 40, 87, 40, 1, 122);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`) VALUES
(1, 'phanthienhoang95@gmail.com', '123456789', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_fashion_id` (`model_fashion_id`);

--
-- Indexes for table `category_models`
--
ALTER TABLE `category_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_fashions`
--
ALTER TABLE `model_fashions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `category_models`
--
ALTER TABLE `category_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `model_fashions`
--
ALTER TABLE `model_fashions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`model_fashion_id`) REFERENCES `model_fashions` (`id`);

--
-- Constraints for table `model_fashions`
--
ALTER TABLE `model_fashions`
  ADD CONSTRAINT `model_fashions_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_models` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
