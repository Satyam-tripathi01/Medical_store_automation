-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 17, 2022 at 11:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(20) NOT NULL,
  `id` int(20) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(111) NOT NULL,
  `details` varchar(333) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `pic`, `details`, `date`) VALUES
(11, 'Ayurvedic Health', 'Ayurvedic.jpeg', '', '2022-05-14 10:55:21'),
(14, 'Face-Mask', 'mask.webp', '', '2022-05-14 10:57:06'),
(15, 'Covid-19 Vaccine ', 'coronavirus-vaccine.jpg', '', '2022-05-14 10:57:27'),
(16, 'Hand-Sanitizer ', 'sanitizer.jpg', '', '2022-05-14 10:57:44'),
(20, 'Injection', 'injection.jpeg', '', '2022-05-14 11:01:24'),
(21, 'Tablet', 'tablet.jpg', '', '2022-05-14 11:01:43'),
(22, 'Capsule', 'capsule.webp', '', '2022-05-14 11:01:57'),
(23, 'Syrup', 'syrup.jpg', '', '2022-05-14 11:02:15'),
(24, 'Lotion', 'lotion.webp', '', '2022-05-14 11:02:42'),
(25, 'Mens-Skincare', 'male-Skincare.webp', '', '2022-05-14 11:03:03'),
(26, 'Women Skincare ', 'ladies-skin.jpg', '', '2022-05-14 11:03:22'),
(27, 'Healthcare Devices ', 'Healthcare.jpg', '', '2022-05-14 11:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `inventeries`
--

CREATE TABLE `inventeries` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `supplier` varchar(222) NOT NULL,
  `name` text NOT NULL,
  `unit` text NOT NULL,
  `price` text NOT NULL,
  `stocks` int(20) NOT NULL,
  `pic` text NOT NULL,
  `description` text NOT NULL,
  `company` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventeries`
--

INSERT INTO `inventeries` (`id`, `catId`, `supplier`, `name`, `unit`, `price`, `stocks`, `pic`, `description`, `company`, `date`) VALUES
(25, 25, 'Big Basket', 'Garnier Men Tubro Bright Face Wash - Removes Impurities, 100 g', 'Face Wash', '555', 0, '', '', 'Garnier', '2022-05-14 11:05:50'),
(26, 24, 'Amazon ', 'Neutrogena Hydro Boost Water Gel.', 'water-based', '452', 0, '', '', 'Neutrogena Pharma', '2022-05-14 11:06:42'),
(27, 24, 'Indimart', 'Pharmaceutical Lotionl', 'Gel', '746', 0, '', '', 'Permart', '2022-05-14 11:08:00'),
(28, 23, 'Apollo', 'Ambroxol HCL, Guaiphenesin & Menthol Syrup', 'Ambroxol', '54', 0, '', '', 'COUGHRYL SYRUP', '2022-05-14 11:09:02'),
(29, 23, 'Apollo', 'Bromhexine Elixir 120 ml', 'Oral', '166', 0, '', '', 'IPCA LABORATORIES LTD', '2022-05-14 11:10:25'),
(30, 23, 'Apollo', 'Cefpodoxime Proxetil', 'cefpodoxime ', '222', 0, '', '', 'vantin', '2022-05-14 11:12:18'),
(31, 23, 'Dhampure Speciality sugars ltd', 'Dhampur Green Molasses 1kg', 'molasses ', '522', 0, '', '', 'Dhampur Molasses', '2022-05-14 11:13:05'),
(32, 22, 'satyam', 'Ethoxsalen  Capsules', 'Hard-Gelatin', '85', 0, '', '', 'Hard-Gelatin', '2022-05-14 11:14:11'),
(33, 22, 'Satyam', 'VEG EMPTY CAPSULES', 'HPMC capsules', '45', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:14:52'),
(34, 22, 'Nana Pathekar', 'Solgar Gelatin 250 Capsules', 'Fish gelatin capsules', '55', 0, '', '', 'Fish Gelatin Pharma Industry ', '2022-05-14 11:15:35'),
(35, 22, 'Nana Pathekar', 'Solgar Gelatin 250 Capsules', 'Fish gelatin capsules', '55', 0, '', '', 'Fish Gelatin Pharma Industry ', '2022-05-14 11:18:28'),
(36, 20, 'Satyam Tripathi', 'vincristine', 'intravenous injection', '555', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:26:11'),
(37, 20, 'Teetu Drug Dealer', 'Antibiotics-penicillin', 'Intramuscular Injection ', '54', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:27:00'),
(38, 20, 'Big Basket', 'G benzasthine Penicillin ', 'Intramuscular Injection ', '96', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:27:39'),
(39, 20, 'Apollo', 'Insulin ', 'subcutaneous injection', '522', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:28:34'),
(40, 20, 'Apollo', 'opioids', 'subcutaneous injection', '550', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:29:20'),
(41, 20, 'Shubham Gupta', 'Epinephrine', 'subcutaneous injection', '522', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:30:03'),
(42, 20, 'Apollo', 'opioids', 'subcutaneous injection', '550', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:30:49'),
(43, 20, 'Satyam', 'doxorubicin', 'intravenous injection', '3443', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:31:34'),
(44, 21, 'Apollo', 'Dolo 650', 'Compressd Tablet', '10', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:33:46'),
(45, 21, 'Apollo', 'A2Z Multivitamin', 'Sugar Coated', '45', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:34:53'),
(46, 21, 'Apollo', 'Vitamin C tablet', 'Buccal Tablet', '52', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:35:55'),
(47, 21, 'Apollo', 'Clotrimazole tab', 'Vaginal Tablet', '74', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:36:45'),
(48, 21, 'Shubham Gupta', 'Dispirin Tab', 'Effervescent Tablet', '12', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:37:25'),
(49, 21, 'Shubham Gupta', 'Enzyme Tablet', 'Dispensing Tablet', '112', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:38:08'),
(50, 21, 'Apollo', 'Metronidazolo tablet', 'Film coated Tab', '555', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 11:38:47'),
(51, 16, 'Amazon', 'Dettol Instant Hand Sanitizor', 'Spray', '55', 0, '', '', 'Dettol', '2022-05-14 11:40:18'),
(52, 16, 'Apollo', 'Apollo Life Hand Sanitizor ', 'Cap/ liquid ', '77', 0, '', '', 'Apollo  Industry ', '2022-05-14 11:41:07'),
(53, 16, 'Lalu Yadav', 'Lifeboy  Total Clean', '50 ml Spray ', '41', 0, '', '', 'Lala Lajpat Roy Medical Industry ', '2022-05-14 11:42:20'),
(54, 16, 'Amazon ', 'Ramson  Instant Solution', 'Spray', '85', 0, '', '', 'Ramsons', '2022-05-14 11:43:12'),
(55, 15, 'Government of India ', 'Covanix ', 'Liquid ', '1999', 0, '', '', 'Covanix Medical Industry ', '2022-05-14 11:45:39'),
(56, 15, 'Government of India ', 'Covishield', 'Liquid ', '1999', 0, '', '', 'Covishield Research Industry', '2022-05-14 11:46:36'),
(57, 15, 'Government of India ', 'Sputnik V', 'Liquid ', '1999', 0, '', '', 'Sputnik V', '2022-05-14 11:47:17'),
(58, 11, 'Apollo', 'Ayurvedic Natural Vitamin Supplement ', 'For Men ', '250', 0, '', '', 'Dabar', '2022-05-14 15:58:32'),
(59, 11, 'Shubham Gupta', 'Hard & Up Natural Vitality Vitamin Supplement', 'For Men', '250', 0, '', '', 'Mojocare', '2022-05-14 15:59:16'),
(60, 11, 'Arun Kumar', 'Mojocare - Pre Probiotic 50 Billion CFU Multi- Strains-30 Veg.', 'Capsules For Men &woman', '800', 0, '', '', 'Mojocare', '2022-05-14 16:00:14'),
(61, 11, 'Satyam Tripathi', 'Mojocare Keto Burn -Weight loss with garcinia', 'Capsules For Men &woman', '800', 0, '', '', 'Mojocare', '2022-05-14 16:00:49'),
(62, 11, 'Shubham Gupta', 'Healthy Heart-60 Tablets', 'Tablets For Men & woman', '499', 0, '', '', 'Mojocare', '2022-05-14 16:01:40'),
(63, 14, 'Apollo', 'Ramson Face Mask', '3d face Mask', '400', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-14 16:02:32'),
(64, 14, 'Mukesh Ambani', 'Smart Breathable Mask', 'flexible ', '499', 0, '', '', 'Flexnest', '2022-05-14 16:03:18'),
(65, 14, 'satyam', 'Eume official ', 'Navy Mask', '500', 0, '', '', 'Pankajakasthuri', '2022-05-14 16:03:43'),
(66, 14, 'Satyam', 'Transparent Face mask ', 'Transparent ', '520', 0, '', '', 'Pankajakasthuri', '2022-05-17 04:30:16'),
(67, 11, 'Big Basket', 'Power Plus', 'Health tab', '522', 0, '', '', 'Dabar', '2022-05-17 04:41:27'),
(68, 21, 'Satyam Tripathi', 'Paracetamol ', 'Tablets For Men & woman', '40', 0, '', '', 'Satyam Pharma & Research Industry ', '2022-05-17 04:46:08'),
(69, 11, 'Big Basket', 'Satyam Tripathi', 'Liquid ', '100', 0, '', '', 'Paracetamol ', '2022-05-17 04:54:34'),
(73, 11, 'gffsfs', 'gdggw', 'jdfgge', '100', 2000, '', '', 'gsfsff', '2022-05-17 05:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `title`, `name`) VALUES
(1, 'Medical Stores', 'Medical Stores');

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `contact` varchar(222) NOT NULL,
  `discount` varchar(222) NOT NULL,
  `item` varchar(222) NOT NULL,
  `amount` varchar(222) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`id`, `name`, `contact`, `discount`, `item`, `amount`, `userId`, `date`) VALUES
(5, 'SATYAM TRIPATHI', '8299849284', '10', '2', '9', 1, '2022-05-14 16:04:24'),
(6, 'SATYAM TRIPATHI', '8299849284', '0', '2', '657', 1, '2022-05-16 10:48:41'),
(7, 'SATYAM TRIPATHI', '8299849284', '0', '0', '0', 1, '2022-05-16 10:53:54'),
(8, 'SATYAM TRIPATHI', '8299849284', '0', '0', '0', 1, '2022-05-16 10:55:24'),
(9, 'SATYAM TRIPATHI', '8299849284', '0', '0', '0', 1, '2022-05-16 10:57:48'),
(10, 'SATYAM TRIPATHI', '8299849284', '0', '0', '0', 1, '2022-05-16 10:58:21'),
(11, 'SATYAM TRIPATHI', '8299849284', '0', '0', '0', 1, '2022-05-16 11:00:56'),
(12, 'SATYAM TRIPATHI', '8299849284', '0', '0', '0', 1, '2022-05-16 11:01:52'),
(13, 'SATYAM TRIPATHI', '8299849284', '0', '0', '0', 1, '2022-05-16 11:11:11'),
(14, 'Arun kumar', '786589424', '10', '2', '647', 1, '2022-05-16 11:11:38'),
(15, 'Arun kumar', '8652145632', '10', '2', '647', 1, '2022-05-16 11:13:18'),
(16, 'Arun kumar', '8652145632', '10', '0', '-10', 1, '2022-05-16 11:13:48'),
(17, 'Arun Kumar', '7896547896', '10', '5', '2400', 1, '2022-05-16 11:17:50'),
(18, 'Arun ', '123654788', '5', '2', '652', 1, '2022-05-16 11:19:00'),
(19, 'arun ', '8299849284', '10', '2', '647', 1, '2022-05-17 04:06:14'),
(20, 'arun ', '8299849284', '10', '0', '-10', 1, '2022-05-17 04:09:25'),
(21, 'Arun ', '8299849284', '10', '1', '545', 1, '2022-05-17 04:10:07'),
(22, 'Alok', '8299494576', '100', '1', '300', 1, '2022-05-17 04:13:10'),
(23, 'Alok', '2345678987', '10', '2', '647', 1, '2022-05-17 04:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `pic` text NOT NULL,
  `number` text NOT NULL,
  `address` text NOT NULL,
  `cnic` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `pic`, `number`, `address`, `cnic`, `date`) VALUES
(5, 'Satyam Tripathi', 'satyam.jpg', '8299849284', 'Kanpur Nagar', 'Saurabh gupt Rog clinic ', '2022-05-14 07:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(222) NOT NULL,
  `number` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `pic`, `number`, `date`) VALUES
(1, 'admin@gmail.com', 'admin', 'SATYAM TRIPATHI', 'satyam.jpg', '8299849284', '2022-04-22 12:34:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventeries`
--
ALTER TABLE `inventeries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
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
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `inventeries`
--
ALTER TABLE `inventeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
