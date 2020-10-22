-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 19, 2020 at 09:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ans_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `abonnements`
--

CREATE TABLE `abonnements` (
  `id` int(11) NOT NULL,
  `id_visiteur` int(11) NOT NULL,
  `id_business` int(11) NOT NULL,
  `dateabonnement` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admn`
--

CREATE TABLE `admn` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `email` varchar(55) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `datec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `business_name` varchar(55) NOT NULL,
  `business_type` varchar(55) NOT NULL,
  `business_email` varchar(55) NOT NULL,
  `business_telephone` varchar(25) NOT NULL,
  `business_location` varchar(55) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `url_img` varchar(255) NOT NULL,
  `business_datec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `business_name`, `business_type`, `business_email`, `business_telephone`, `business_location`, `id_admin`, `url_img`, `business_datec`) VALUES
(21, 'La charite', 'shop', 'kingbestd030@gmail.com', '+243997392797', '0', 21, 'cover_Capture d’écran du 2020-08-01 12-25-40.png', '2020-08-15 11:38:57'),
(22, 'vessi', 'Hotel', 'vessi@gmail.com', '099099099', '0', 23, 'cover_reconnaissance-faciale.jpeg', '2020-10-19 20:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id_news` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `images_single_buss`
--

CREATE TABLE `images_single_buss` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id_business` int(11) NOT NULL,
  `datec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id_n` int(11) NOT NULL,
  `id_business` int(11) NOT NULL,
  `contenues` text NOT NULL,
  `url_img` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `datepost` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_n`, `id_business`, `contenues`, `url_img`, `titre`, `datepost`) VALUES
(17, 19, 'ihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeuneihusi de jeune', 'h2cb--n-7k9it2anibgia.jsgorF4ccF-sencAt8p4Io6-O-tnt1bigstock-Fintech-Icon-On-Abstract-Fina-226174948.jpg', 'ihusi de jeune', '2020-07-08 22:11:14'),
(18, 19, 'ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2ihusi 2', '.84n503j6g-lo926-a1ierpr2t-s26483-65-intersolar-2019.jpg', 'ihusi 2', '2020-07-08 22:12:38'),
(19, 21, 'promotionpromotionpromotionpromotionpromotionpromotionpromotionpromotionpromotionpromotionpromotionpromotion', 'rs.npgi3isr3.png', 'promotion', '2020-08-15 11:41:09'),
(20, 22, 'my beauty room for visitors', 'xphgnjc0p-sy0rci0nkblaisro-a.4io0ctet7g-ehacker-bitcoin-gnosticplayers-700x400.jpg', 'promotion', '2020-10-19 20:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `signle_buss`
--

CREATE TABLE `signle_buss` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `id_business` int(11) NOT NULL,
  `datepost` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(55) NOT NULL,
  `lname` varchar(55) NOT NULL,
  `username` varchar(55) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `location` varchar(55) NOT NULL,
  `datedec` datetime NOT NULL,
  `confirmation` int(5) NOT NULL,
  `role` int(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `secret`, `email`, `telephone`, `location`, `datedec`, `confirmation`, `role`, `image`) VALUES
(20, 'exause', 'kap', 'exaus kap', '7c222fb2927d828af22f592134e8932480637c0d', 'exaus@gmail.com', '0997392797', '0', '2020-07-09 16:46:35', 1, 1, '0'),
(21, 'Admin', ' ', 'admin', 'e7f102e509c99b56120e8acfb0edb00aee9dbe10', 'kapambamuteule433@gmail.com', '+243997392797', '0', '2020-07-09 17:34:07', 1, 3, '0'),
(22, 'mari', 'kap', 'mari kap', '7c222fb2927d828af22f592134e8932480637c0d', 'marikap@gmail.com', '0998372787', '0', '2020-10-19 14:11:14', 1, 1, '0'),
(23, 'vessi', 'kap', 'vessi kap', '7c222fb2927d828af22f592134e8932480637c0d', 'vessi@gmail.com', '09090909797', '0', '2020-10-19 20:23:15', 1, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `visiteurs`
--

CREATE TABLE `visiteurs` (
  `id` int(11) NOT NULL,
  `visiteur_fname` varchar(55) NOT NULL,
  `visiteur_lname` varchar(55) NOT NULL,
  `visiteur_username` varchar(55) NOT NULL,
  `visiteur_email` varchar(55) NOT NULL,
  `visiteur_location` varchar(55) NOT NULL,
  `visiteur_datec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abonnements`
--
ALTER TABLE `abonnements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_visiteur` (`id_visiteur`),
  ADD KEY `fk_business` (`id_business`);

--
-- Indexes for table `admn`
--
ALTER TABLE `admn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_news` (`id_news`);

--
-- Indexes for table `images_single_buss`
--
ALTER TABLE `images_single_buss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_single` (`id_business`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_n`),
  ADD KEY `id_business` (`id_business`);

--
-- Indexes for table `signle_buss`
--
ALTER TABLE `signle_buss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_business` (`id_business`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visiteurs`
--
ALTER TABLE `visiteurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abonnements`
--
ALTER TABLE `abonnements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admn`
--
ALTER TABLE `admn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images_single_buss`
--
ALTER TABLE `images_single_buss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id_n` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `signle_buss`
--
ALTER TABLE `signle_buss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `visiteurs`
--
ALTER TABLE `visiteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abonnements`
--
ALTER TABLE `abonnements`
  ADD CONSTRAINT `fk_business` FOREIGN KEY (`id_business`) REFERENCES `business` (`id`),
  ADD CONSTRAINT `fk_visiteur` FOREIGN KEY (`id_visiteur`) REFERENCES `visiteurs` (`id`);

--
-- Constraints for table `signle_buss`
--
ALTER TABLE `signle_buss`
  ADD CONSTRAINT `signle_buss_ibfk_1` FOREIGN KEY (`id_business`) REFERENCES `business` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
