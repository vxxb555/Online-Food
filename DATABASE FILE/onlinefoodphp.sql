-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306:4306
-- Generation Time: Dec 16, 2022 at 10:07 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(3, 'JAAT', 'jaatraaj', 'jaatraaj@mail.com', '', '2022-05-27 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 6, 'South-indian Dosa', 'A dosa, also called dosai, dosey, or dosha, is a thin pancake in South Indian cuisine made from a fermented batter ', '194.00', '63981e84ed11d.jpg'),
(2, 1, 'Traditional Poha', 'Poha is an Indian breakfast and snack prepared in the cuisines of Indian states of Maharashtra, Odisha, West Bengal', '136.00', '639820204929f.jpg'),
(3, 6, 'Chiken Hakka Noodles', 'Hakka noodles are Indian-Chinese style noodles made with unleavened refined wheat flour.', '223.00', '63982387e4591.jpg'),
(4, 1, 'Stuffed Potatoes', 'Deep fry whole potatoes in oil for 8-10 minutes or coat each potato with little oil. Mix the onions, garlic, tomatoes and mushrooms. ', '239.00', '636f3fe9ebcb2.jpg'),
(5, 2, 'Pink Spaghetti Gamberoni', 'Spaghetti with prawns in a fresh tomato sauce. This dish originates from Southern Italy and with the combination of prawns, garlic, chilli and pasta. ', '221.00', '639824ef8e4a7.jpg'),
(6, 2, 'Cheesy Mashed Potato', 'Deliciously Cheesy Mashed Potato. The ultimate mash for your Thanksgiving table or the perfect accompaniment to vegan sausage casserole. ', '115.00', '606d74c416da5.jpg'),
(7, 2, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', '8.00', '606d74f6ecbbb.jpg'),
(8, 2, 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', '11.00', '606d752a209c3.jpg'),
(9, 3, 'Vegetable Fried Rice', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', '5.00', '606d7575798fb.jpg'),
(10, 3, 'Prawn Crackers', '12 pieces deep-fried prawn crackers', '7.00', '606d75a7e21ec.jpg'),
(11, 4, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', '96.00', '636f464fb1a85.jpg'),
(12, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', '11.00', '606d7600dc54c.jpg'),
(13, 4, ' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', '311.00', '63983695544df.jpg'),
(14, 4, 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', '9.00', '606d768a1b2a1.jpg'),
(15, 6, ' Potato Twisters', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', '186.00', '636f44bd298b5.jpg'),
(16, 4, ' Pasta', ' unleavened dough of wheat flour mixed with water or eggs, and formed into sheets or other shapes, then cooked by boiling or baking.', '90.00', '636f447d28486.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` varchar(15) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`name`, `email`, `mob`, `msg`) VALUES
('aryan singh', 'aryansinghjaat9606@gmail.com', '09193949606', 'sacdsffaff'),
('aryan singh', 'aryansinghjaat9606@gmail.com', '09193949606', 'aaila');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2022-05-01 05:17:49'),
(2, 3, 'in process', 'none', '2022-05-27 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2022-05-27 11:11:41'),
(4, 3, 'closed', 'none', '2022-05-27 11:42:35'),
(5, 4, 'in process', 'none', '2022-05-27 11:42:55'),
(6, 1, 'rejected', 'none', '2022-05-27 11:43:26'),
(7, 7, 'in process', 'none', '2022-05-27 13:03:24'),
(8, 8, 'in process', 'none', '2022-05-27 13:03:38'),
(9, 9, 'rejected', 'thank you', '2022-05-27 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2022-05-27 13:04:33'),
(11, 8, 'closed', 'thanks ', '2022-05-27 13:05:24'),
(12, 5, 'closed', 'none', '2022-05-27 13:18:03'),
(13, 10, 'closed', 'delivered', '2022-10-28 15:31:20'),
(14, 11, 'rejected', 'cancel\r\n', '2022-10-28 15:34:17'),
(15, 12, 'closed', 'diliver', '2022-10-28 15:45:07'),
(16, 14, 'closed', 'done', '2022-11-12 07:11:02'),
(17, 13, 'in process', 'd', '2022-11-16 16:53:17'),
(18, 18, 'closed', 'vgc', '2022-11-17 06:12:11'),
(19, 20, 'closed', 'dt', '2022-11-17 06:22:06'),
(20, 14, 'in process', 'ad', '2022-11-17 17:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) DEFAULT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Madison Cafe', 'nthavern@mail.com', '3547854700', '8am', '7pm', 'mon-sat', 'Wazirabad,Delhi', '636f3f24cc427.jpg', '2022-11-12 06:37:24'),
(2, 2, 'Veganism', 'Veganism@gmail.com', '0557426406', '9am', '6pm', 'mon-wed', 'Connaught place, New Delhi', '636f3e3ed0583.png', '2022-11-12 06:33:34'),
(3, 2, 'Smoky Vegan', 'nanxiangbao45@mail.com', '1458745855', '6am', '7pm', '24hr-x7', 'Tilak Nagar,New Delhi', '636f3c5359c67.jpg', '2022-11-12 06:25:23'),
(4, 4, 'Cafe Highlands', 'Highlands@mail.com', '6545687458', '6am', '8pm', 'mon-sat', ' Janakpuri West,Delhi  ', '636f3ba1db025.jpg', '2022-11-12 06:22:25'),
(5, 3, 'The Maharaja', 'themaharaja@gmail.com', '46364374343', '7am', '8pm', 'mon-fri', 'Sagarpur, New Delhi', '636f761fe9012.png', '2022-11-17 11:56:01'),
(6, 5, 'Ganesha', 'ganesha@mail.com', '454566565656', '6am', '8pm', '24hr-x7', 'Ahsok Nagar, New Delhi', '636f75e957926.png', '2022-11-12 10:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Continental', '2022-05-27 08:07:35'),
(2, 'Vegan', '2022-10-28 11:10:25'),
(3, 'North_Indian', '2022-10-28 15:09:47'),
(4, 'Chinese', '2022-10-28 11:32:29'),
(5, 'South_Indian', '2022-10-28 15:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` int(10) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `date`) VALUES
(13, 'akash', 'akash', 'mittal', 'aka@gmail.com', 1234567890, 'aka@ake', 'delhi', '2022-12-13 06:15:40'),
(14, 'aryan singh', 'aryan', 'singh', 'aryansinghjaat9606@gmail.com', 2147483647, 'jaat9606@', 'shamli', '2022-12-13 06:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(14, 7, 'Stuffed Potatoes', 1, '239.00', 'in process', '2022-11-17 17:11:34'),
(15, 7, 'Pink Spaghetti Gamberoni', 1, '21.00', NULL, '2022-11-16 13:26:53'),
(16, 7, 'Lobster Thermidor', 1, '36.00', NULL, '2022-11-17 06:09:20'),
(17, 7, 'Yorkshire Lamb Patties', 1, '14.00', NULL, '2022-11-17 06:09:20'),
(18, 7, 'Stuffed Potatoes', 2, '239.00', 'closed', '2022-11-17 06:12:11'),
(19, 9, 'Lobster Thermidor', 1, '36.00', NULL, '2022-11-17 06:20:43'),
(20, 9, 'Stuffed Potatoes', 2, '239.00', 'closed', '2022-11-17 06:22:06'),
(21, 9, 'Lobster Thermidor', 1, '36.00', NULL, '2022-11-17 12:03:25'),
(22, 14, 'Lobster Thermidor', 1, '36.00', NULL, '2022-12-13 06:26:18'),
(23, 14, 'Manchurian Chicken', 1, '11.00', NULL, '2022-12-16 09:02:07'),
(24, 14, 'Stuffed Potatoes', 1, '239.00', NULL, '2022-12-16 09:02:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
