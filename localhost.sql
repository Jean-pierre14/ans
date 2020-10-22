-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 25 juin 2020 à 16:15
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ans_db`
--
CREATE DATABASE IF NOT EXISTS `ans_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ans_db`;

-- --------------------------------------------------------

--
-- Structure de la table `abonnements`
--

CREATE TABLE `abonnements` (
  `id` int(11) NOT NULL,
  `id_visiteur` int(11) NOT NULL,
  `id_business` int(11) NOT NULL,
  `dateabonnement` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `admn`
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
-- Structure de la table `business`
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
-- Déchargement des données de la table `business`
--

INSERT INTO `business` (`id`, `business_name`, `business_type`, `business_email`, `business_telephone`, `business_location`, `id_admin`, `url_img`, `business_datec`) VALUES
(8, 'kinf', 'shop', 'king1@gmail.com', '+243972766', '0', 6, 'cover_unnamedg.png', '2020-06-11 13:32:15'),
(14, 'davk', 'shop', 'king1hhh@gmail.com', '+243972788', '0', 8, 'cover_index.png', '2020-06-12 10:56:22'),
(15, 'webmaster019', 'School', 'king1098@gmail.com', '+2439562766', '0', 9, 'cover_king.jpg', '2020-06-13 12:16:46'),
(16, 'fktech', 'Hotel', 'king123@gmail.com', '+2439755566', '0', 13, 'cover_4.JPG', '2020-06-13 18:29:06'),
(17, 'Muteissen Kap', 'shop', 'muteissen@gmail.com', '0997392797', '0', 14, 'cover_Capture de Aircrack-ng _ Tutorial_Full-HD_60fps.mp4 - 1.png', '2020-06-16 13:13:33');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id_news` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `images_single_buss`
--

CREATE TABLE `images_single_buss` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id_business` int(11) NOT NULL,
  `datec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `news`
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
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id_n`, `id_business`, `contenues`, `url_img`, `titre`, `datepost`) VALUES
(2, 15, 'king le roi du monde entier en afrique du sud ', 'g.r1-utjdpcpoproduct-1.jpg', 'king', '2020-06-13 13:05:06'),
(3, 15, 'je suis là', 'ipkng.jgking.jpg', 'david ', '2020-06-13 13:07:58'),
(6, 13, 'okey les gers', 'JG06MP.G__81_MG_0861.JPG', 'cva', '2020-06-13 13:41:52'),
(7, 13, 'igdfuouudufgyif', 'GG66M__J8P0._MG_0866.JPG', 'ok', '2020-06-13 13:44:27'),
(11, 16, 'le roi du monde ', 'j.p3g3.jpg', 'david', '2020-06-13 18:29:38'),
(13, 17, '&lt;p&gt;Happy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy KapHappy Kap&lt;/p&gt;', '3gp.j3.jpg', 'Happy Kap', '2020-06-18 12:46:34'),
(14, 17, '&lt;p&gt;Fallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo KapFallo Kap&lt;/p&gt;', '.pjg33.jpg', 'Fallo Kap', '2020-06-18 12:50:21'),
(15, 8, 'trtrt', 't_p527.910ojcASkoegb0d03AdobeStock_210503907.jpg', 'okey', '2020-06-25 15:56:09');

-- --------------------------------------------------------

--
-- Structure de la table `signle_buss`
--

CREATE TABLE `signle_buss` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `id_business` int(11) NOT NULL,
  `datepost` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
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
  `confirmation` varchar(5) NOT NULL,
  `role` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `secret`, `email`, `telephone`, `location`, `datedec`, `confirmation`, `role`, `image`) VALUES
(6, 'david', 'kinf', 'kingdav', 'a27df795777309c33af7faf7eede8c00c04bbfaf', 'kingdav@gmail.com', '+243979987643', '0', '2020-06-11 11:57:05', '0', '0', '0'),
(8, 'david', 'king', 'davidking', 'a27df795777309c33af7faf7eede8c00c04bbfaf', 'kingbestdhh030@gmail.com', '+243972773888', '0', '2020-06-12 10:55:16', '0', '0', '0'),
(9, 'david', 'dev', 'king', 'a27df795777309c33af7faf7eede8c00c04bbfaf', 'kingbestd0030@gmail.com', '+243972777865', '0', '2020-06-13 12:15:46', '0', '0', '0'),
(10, 'emedi ', 'king', 'emedi', 'a27df795777309c33af7faf7eede8c00c04bbfaf', 'emedi@gmail.com', '+2439999086', '0', '2020-06-13 18:08:43', '0', '0', '0'),
(11, 'emedi ', 'king', 'emediking', 'a27df795777309c33af7faf7eede8c00c04bbfaf', 'emedi11@gmail.com', '+2439999022', '0', '2020-06-13 18:18:24', '0', '0', '0'),
(13, 'emedi', 'king', 'kingemedi', 'a27df795777309c33af7faf7eede8c00c04bbfaf', 'king111@gmail.com', '+2439727333', '0', '2020-06-13 18:21:12', '0', '0', '0'),
(14, 'Happy', 'Kapamba', 'Happy Kap', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'happykap@gmail.com', '0997392797', '0', '2020-06-16 13:06:22', '0', '0', '0'),
(15, 'dev', 'king', 'webmaster019', 'a27df795777309c33af7faf7eede8c00c04bbfaf', 'kingbestd03@gmail.com', '+243972673616', '0', '2020-06-20 11:48:19', '0', '1', '0');

-- --------------------------------------------------------

--
-- Structure de la table `visiteurs`
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
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonnements`
--
ALTER TABLE `abonnements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_visiteur` (`id_visiteur`),
  ADD KEY `fk_business` (`id_business`);

--
-- Index pour la table `admn`
--
ALTER TABLE `admn`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_news` (`id_news`);

--
-- Index pour la table `images_single_buss`
--
ALTER TABLE `images_single_buss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_single` (`id_business`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_n`),
  ADD KEY `id_business` (`id_business`);

--
-- Index pour la table `signle_buss`
--
ALTER TABLE `signle_buss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_business` (`id_business`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visiteurs`
--
ALTER TABLE `visiteurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonnements`
--
ALTER TABLE `abonnements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `admn`
--
ALTER TABLE `admn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `images_single_buss`
--
ALTER TABLE `images_single_buss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id_n` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `signle_buss`
--
ALTER TABLE `signle_buss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `visiteurs`
--
ALTER TABLE `visiteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `abonnements`
--
ALTER TABLE `abonnements`
  ADD CONSTRAINT `fk_business` FOREIGN KEY (`id_business`) REFERENCES `business` (`id`),
  ADD CONSTRAINT `fk_visiteur` FOREIGN KEY (`id_visiteur`) REFERENCES `visiteurs` (`id`);

--
-- Contraintes pour la table `signle_buss`
--
ALTER TABLE `signle_buss`
  ADD CONSTRAINT `signle_buss_ibfk_1` FOREIGN KEY (`id_business`) REFERENCES `business` (`id`);
--
-- Base de données : `blog_samples`
--
CREATE DATABASE IF NOT EXISTS `blog_samples` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog_samples`;
--
-- Base de données : `bweteta`
--
CREATE DATABASE IF NOT EXISTS `bweteta` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bweteta`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `name` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `description` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial441` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `createdat`, `updatedat`, `trial441`) VALUES
(1, 'habillement', 'Chemises, polo, pantalons, t-shirt, chaussette, echarpes', '2020-01-21 10:45:46', '2020-01-21 10:45:46', 'T'),
(2, 'Nouriture et boisson', 'nouriture, vins, etc', '2020-03-02 15:14:30', '2020-03-02 15:14:30', 'T'),
(3, 'technologie et electronique', 'ordinqteur, montre, ecouteurs', '2020-03-02 15:14:30', '2020-03-02 15:14:30', 'T'),
(4, 'Fourniture et accessoires', 'papiers, agrafeuse, classeurs, etc', '2020-03-02 15:14:30', '2020-03-02 15:14:30', 'T'),
(5, 'Meubles et accessoire', 'chaises, tables, etc', '2020-03-02 15:14:30', '2020-03-02 15:14:30', 'T'),
(6, 'Fleurs et autres cadeaux', 'fleur, emballage cadeau, etc', '2020-03-02 15:14:30', '2020-03-02 15:14:30', 'T'),
(7, 'cartables et sacs', 'cartable et sac', '2020-03-02 15:14:30', '2020-03-02 15:14:30', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `authorid` int(11) NOT NULL COMMENT 'TRIAL',
  `receiverid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `message` varchar(255) NOT NULL COMMENT 'TRIAL',
  `orderid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `isread` tinyint(1) DEFAULT 0 COMMENT 'TRIAL',
  `trial467` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `chats`
--

INSERT INTO `chats` (`id`, `authorid`, `receiverid`, `message`, `orderid`, `createdat`, `updatedat`, `isread`, `trial467`) VALUES
(1, 2, 1, 'Je viens de passer une commande de 1 Kilogramme de Pomme de terre', 1, '2020-04-25 05:52:57', '2020-04-25 11:42:06', 1, 'T'),
(2, 3, 1, 'Je viens de passer une commande de 1 Kilogramme de Viande de boeuf', 2, '2020-04-27 00:29:53', '2020-04-27 00:29:53', 0, 'T'),
(3, 3, 1, 'Je viens de passer une commande de 1 Kilogramme de Viande de boeuf', 3, '2020-04-27 00:30:48', '2020-04-27 00:30:48', 0, 'T'),
(4, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de Viande de boeuf', 4, '2020-04-27 18:14:14', '2020-04-27 18:14:14', 0, 'T'),
(5, 4, 1, 'Je viens de passer une commande de 1 Kilogramme de Viande de boeuf', 5, '2020-04-27 18:44:55', '2020-04-27 18:44:55', 0, 'T'),
(6, 4, 1, 'Je viens de passer une commande de 1 Kilogramme de Poisson frais thomson', 6, '2020-04-27 18:48:45', '2020-04-27 18:48:45', 0, 'T'),
(7, 4, 1, 'Je viens de passer une commande de 1 Kilogramme de 1Kg Tomate', 7, '2020-04-27 19:00:06', '2020-04-27 19:00:06', 0, 'T'),
(8, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de Viande de boeuf', 8, '2020-04-27 19:05:05', '2020-04-27 19:05:05', 0, 'T'),
(9, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de Viande de boeuf', 9, '2020-04-28 05:27:02', '2020-04-28 05:27:02', 0, 'T'),
(10, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de Viande de boeuf', 10, '2020-04-28 05:28:40', '2020-04-28 05:28:40', 0, 'T'),
(11, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de Viande de boeuf', 11, '2020-04-28 05:33:20', '2020-04-28 05:33:20', 0, 'T'),
(12, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de Viande de boeuf', 12, '2020-04-28 05:48:21', '2020-04-28 05:48:21', 0, 'T'),
(13, 1, 1, 'Votre commande de  1 Kilogramme de Viande de boeuf a ete approver', NULL, '2020-04-28 05:54:28', '2020-04-28 05:54:28', 0, 'T'),
(14, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de Pomme de terre', 13, '2020-04-28 06:00:51', '2020-04-28 06:00:51', 0, 'T'),
(15, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de ognons ', 14, '2020-04-28 06:23:33', '2020-04-28 06:23:33', 0, 'T'),
(16, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de Choux de Kibumba', 15, '2020-04-28 06:24:42', '2020-04-28 06:24:42', 0, 'T'),
(17, 1, 1, 'Je viens de passer une commande de 19 Kilogramme de Pomme de terre', 16, '2020-04-28 06:26:12', '2020-04-28 06:26:12', 0, 'T'),
(18, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de Pomme de terre', 17, '2020-04-28 07:15:54', '2020-04-28 07:15:54', 0, 'T'),
(19, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de Pomme de terre', 18, '2020-04-28 08:34:56', '2020-04-28 08:34:56', 0, 'T'),
(20, 5, 1, 'Je viens de passer une commande de 1 Kilogramme de Viande de boeuf', 19, '2020-04-28 16:27:56', '2020-04-28 16:27:56', 0, 'T'),
(21, 5, 1, 'je n\'ai pas encore reçu ma commande ', 19, '2020-04-28 16:41:31', '2020-05-02 14:58:10', 1, 'T'),
(22, 1, 1, 'Je viens de passer une commande de 1 pieces de Soulier femme sandale', 20, '2020-04-28 17:12:42', '2020-04-28 17:12:42', 0, 'T'),
(23, 5, 1, 'Je viens de passer une commande de 1 pieces de Lenovo thinkpad', 21, '2020-04-28 17:53:39', '2020-04-28 17:53:39', 0, 'T'),
(24, 6, 1, 'Je viens de passer une commande de 1 pieces de Cartable', 25, '2020-04-29 07:18:27', '2020-04-29 07:18:27', 0, 'T'),
(25, 6, 1, 'Je viens de passer une commande de 3 Kilogramme de 1Kg Tomate', 26, '2020-04-29 07:19:50', '2020-04-29 07:19:50', 0, 'T'),
(26, 6, 1, 'Je viens de passer une commande de 1 pieces de Soulier femme sandale', 27, '2020-04-29 07:19:52', '2020-04-29 07:19:52', 0, 'T'),
(27, 9, 1, 'Je viens de passer une commande de 1 Kilogramme de ognons ', 28, '2020-04-30 07:39:57', '2020-04-30 07:39:57', 0, 'T'),
(28, 2, 1, 'Je viens de passer une commande de 1 Kilogramme de Choux de Kibumba', 29, '2020-05-02 14:52:34', '2020-05-14 15:58:40', 1, 'T'),
(29, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de Pomme de terre', 30, '2020-05-02 17:32:06', '2020-05-03 05:03:36', 1, 'T'),
(30, 1, 1, 'Je viens de passer une commande de 2 Kilogramme de Viande de boeuf', 31, '2020-05-03 08:40:10', '2020-05-03 16:34:05', 1, 'T'),
(31, 1, 1, 'Je viens de passer une commande de 1 pieces de Cartable', 32, '2020-05-03 16:33:22', '2020-05-04 13:39:06', 1, 'T'),
(32, 10, 1, 'Je viens de passer une commande de 1 Kilogramme de Viande de boeuf', 33, '2020-05-12 09:22:52', '2020-05-12 09:22:52', 0, 'T'),
(33, 10, 1, 'Je viens de passer une commande de 1 Kilogramme de Choux de Kibumba', 34, '2020-05-12 09:22:56', '2020-05-19 07:06:24', 1, 'T'),
(34, 10, 1, 'Je viens de passer une commande de 1 Kilogramme de ognons ', 35, '2020-05-12 09:23:00', '2020-05-12 10:27:57', 1, 'T'),
(35, 10, 1, 'salut', 35, '2020-05-12 10:28:05', '2020-05-19 07:06:06', 1, 'T'),
(36, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de 1Kg Tomate', 36, '2020-05-19 07:23:30', '2020-05-19 07:23:30', 0, 'T'),
(37, 1, 1, 'Je viens de passer une commande de 1 Kilogramme de 1Kg Tomate', 37, '2020-06-06 13:59:18', '2020-06-07 05:05:34', 1, 'T'),
(38, 1, 1, 'Je viens de passer une commande de 1 pieces de Cartable', 38, '2020-06-07 05:04:18', '2020-06-07 05:04:18', 0, 'T');

-- --------------------------------------------------------

--
-- Structure de la table `commissions`
--

CREATE TABLE `commissions` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `amount` double DEFAULT NULL COMMENT 'TRIAL',
  `orderid` int(11) NOT NULL COMMENT 'TRIAL',
  `userid` int(11) NOT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial493` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `commissions`
--

INSERT INTO `commissions` (`id`, `amount`, `orderid`, `userid`, `createdat`, `updatedat`, `trial493`) VALUES
(1, 0, 1, 2, '2020-04-25 05:52:57', '2020-04-25 05:52:57', 'T'),
(2, 0, 2, 3, '2020-04-27 00:29:53', '2020-04-27 00:29:53', 'T'),
(3, 0, 3, 3, '2020-04-27 00:30:48', '2020-04-27 00:30:48', 'T'),
(4, 0, 4, 1, '2020-04-27 18:14:14', '2020-04-27 18:14:14', 'T'),
(5, 0, 5, 4, '2020-04-27 18:44:55', '2020-04-27 18:44:55', 'T'),
(6, 0, 6, 4, '2020-04-27 18:48:45', '2020-04-27 18:48:45', 'T'),
(7, 0, 7, 4, '2020-04-27 19:00:06', '2020-04-27 19:00:06', 'T'),
(8, 0, 8, 1, '2020-04-27 19:05:05', '2020-04-27 19:05:05', 'T'),
(9, 0, 9, 1, '2020-04-28 05:27:02', '2020-04-28 05:27:02', 'T'),
(10, 0, 10, 1, '2020-04-28 05:28:40', '2020-04-28 05:28:40', 'T'),
(11, 0, 11, 1, '2020-04-28 05:33:20', '2020-04-28 05:33:20', 'T'),
(12, 0, 12, 1, '2020-04-28 05:48:21', '2020-04-28 05:48:21', 'T'),
(13, 225, 11, 1, '2020-04-28 05:54:28', '2020-04-28 05:54:28', 'T'),
(14, -2, 13, 1, '2020-04-28 06:00:51', '2020-04-28 06:00:51', 'T'),
(15, -3, 14, 1, '2020-04-28 06:23:33', '2020-04-28 06:23:33', 'T'),
(16, -3, 15, 1, '2020-04-28 06:24:42', '2020-04-28 06:24:42', 'T'),
(17, -47, 16, 1, '2020-04-28 06:26:12', '2020-04-28 06:26:12', 'T'),
(18, -2.5, 17, 1, '2020-04-28 07:15:54', '2020-04-28 07:15:54', 'T'),
(19, -2.5, 18, 1, '2020-04-28 08:34:56', '2020-04-28 08:34:56', 'T'),
(20, 0, 19, 5, '2020-04-28 16:27:56', '2020-04-28 16:27:56', 'T'),
(21, -165, 20, 1, '2020-04-28 17:12:42', '2020-04-28 17:12:42', 'T'),
(22, 0, 21, 5, '2020-04-28 17:53:39', '2020-04-28 17:53:39', 'T'),
(23, 0, 25, 6, '2020-04-29 07:18:27', '2020-04-29 07:18:27', 'T'),
(24, 0, 26, 6, '2020-04-29 07:19:50', '2020-04-29 07:19:50', 'T'),
(25, 0, 27, 6, '2020-04-29 07:19:52', '2020-04-29 07:19:52', 'T'),
(26, 0, 28, 9, '2020-04-30 07:39:57', '2020-04-30 07:39:57', 'T'),
(27, 0, 29, 2, '2020-05-02 14:52:34', '2020-05-02 14:52:34', 'T'),
(28, 0, 30, 1, '2020-05-02 17:32:06', '2020-05-02 17:32:06', 'T'),
(29, 0, 31, 1, '2020-05-03 08:40:10', '2020-05-03 08:40:10', 'T'),
(30, 0, 32, 1, '2020-05-03 16:33:22', '2020-05-03 16:33:22', 'T'),
(31, 0, 33, 10, '2020-05-12 09:22:52', '2020-05-12 09:22:52', 'T'),
(32, 0, 34, 10, '2020-05-12 09:22:56', '2020-05-12 09:22:56', 'T'),
(33, 0, 35, 10, '2020-05-12 09:23:00', '2020-05-12 09:23:00', 'T'),
(34, 0, 36, 1, '2020-05-19 07:23:30', '2020-05-19 07:23:30', 'T'),
(35, 0, 37, 1, '2020-06-06 13:59:18', '2020-06-06 13:59:18', 'T'),
(36, 0, 38, 1, '2020-06-07 05:04:18', '2020-06-07 05:04:18', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `deliverycities`
--

CREATE TABLE `deliverycities` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `name` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `countryid` int(11) NOT NULL COMMENT 'TRIAL',
  `lat` double DEFAULT NULL COMMENT 'TRIAL',
  `lon` double DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial516` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `deliverycities`
--

INSERT INTO `deliverycities` (`id`, `name`, `countryid`, `lat`, `lon`, `createdat`, `updatedat`, `trial516`) VALUES
(1, 'Goma', 1, NULL, NULL, '2020-02-09 12:34:42', '2020-02-09 12:34:42', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `deliverycountries`
--

CREATE TABLE `deliverycountries` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `name` varchar(255) NOT NULL COMMENT 'TRIAL',
  `code` varchar(255) NOT NULL COMMENT 'TRIAL',
  `lat` double DEFAULT NULL COMMENT 'TRIAL',
  `lon` double DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial539` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `deliverycountries`
--

INSERT INTO `deliverycountries` (`id`, `name`, `code`, `lat`, `lon`, `createdat`, `updatedat`, `trial539`) VALUES
(1, 'Republique Democratique du Congo', 'cd', NULL, NULL, '2020-02-09 12:34:08', '2020-02-09 12:34:08', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `deliverypoints`
--

CREATE TABLE `deliverypoints` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `name` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `description` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `cityid` int(11) NOT NULL COMMENT 'TRIAL',
  `lat` double DEFAULT NULL COMMENT 'TRIAL',
  `lon` double DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial578` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `deliverypoints`
--

INSERT INTO `deliverypoints` (`id`, `name`, `description`, `cityid`, `lat`, `lon`, `createdat`, `updatedat`, `trial578`) VALUES
(1, 'Bureau bweteta', 'derriere bralima', 1, -1.67254, 29.22922, '2020-02-09 12:35:06', '2020-02-09 12:35:06', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `firebases`
--

CREATE TABLE `firebases` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `userid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `token` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial669` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `productid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `userid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial087` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `productid`, `userid`, `createdat`, `updatedat`, `trial087`) VALUES
(36, 2, 37, '2020-02-07 12:21:36', '2020-02-07 12:21:36', 'T'),
(37, 2, 37, '2020-02-07 12:27:37', '2020-02-07 12:27:37', 'T'),
(38, 1, 37, '2020-02-07 12:30:55', '2020-02-07 12:30:55', 'T'),
(52, 3, 1, '2020-02-11 07:56:07', '2020-02-11 07:56:07', 'T'),
(60, 3, 38, '2020-02-16 04:40:17', '2020-02-16 04:40:17', 'T'),
(61, 1, 38, '2020-02-16 04:42:56', '2020-02-16 04:42:56', 'T'),
(66, 1, 1, '2020-02-17 08:35:16', '2020-02-17 08:35:16', 'T'),
(69, 2, 39, '2020-02-20 16:52:19', '2020-02-20 16:52:19', 'T'),
(72, 2, 1, '2020-03-02 19:48:42', '2020-03-02 19:48:42', 'T'),
(73, 3, 39, '2020-03-03 13:44:29', '2020-03-03 13:44:29', 'T'),
(77, 1, 39, '2020-03-03 15:47:56', '2020-03-03 15:47:56', 'T'),
(78, 1, 39, '2020-03-03 15:47:56', '2020-03-03 15:47:56', 'T'),
(79, 1, 39, '2020-03-03 15:47:56', '2020-03-03 15:47:56', 'T'),
(80, 9, 1, '2020-03-21 14:32:52', '2020-03-21 14:32:52', 'T'),
(81, 8, 1, '2020-03-21 16:14:13', '2020-03-21 16:14:13', 'T'),
(85, 8, 47, '2020-04-15 16:44:52', '2020-04-15 16:44:52', 'T'),
(86, 9, 48, '2020-04-17 06:05:38', '2020-04-17 06:05:38', 'T'),
(88, 11, 1, '2020-04-25 11:41:45', '2020-04-25 11:41:45', 'T'),
(89, 9, 3, '2020-04-27 00:26:13', '2020-04-27 00:26:13', 'T'),
(93, 10, 5, '2020-04-28 16:40:16', '2020-04-28 16:40:16', 'T'),
(94, 7, 5, '2020-05-02 14:58:39', '2020-05-02 14:58:39', 'T'),
(95, 5, 5, '2020-05-03 16:03:29', '2020-05-03 16:03:29', 'T'),
(97, 12, 10, '2020-05-12 09:15:25', '2020-05-12 09:15:25', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `productid` int(11) NOT NULL COMMENT 'TRIAL',
  `userid` int(11) NOT NULL COMMENT 'TRIAL',
  `paid` tinyint(1) DEFAULT NULL COMMENT 'TRIAL',
  `receivername` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `receiverphone` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `reductionid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `quantity` double DEFAULT NULL COMMENT 'TRIAL',
  `status` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `country` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `province` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `city` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `address` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `gift` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `giftdescription` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `deliverypointid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `color` longtext DEFAULT NULL COMMENT 'TRIAL',
  `size` longtext DEFAULT NULL COMMENT 'TRIAL',
  `totalprice` double DEFAULT NULL COMMENT 'TRIAL',
  `trial110` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `productid`, `userid`, `paid`, `receivername`, `receiverphone`, `reductionid`, `quantity`, `status`, `country`, `province`, `city`, `address`, `createdat`, `updatedat`, `gift`, `giftdescription`, `deliverypointid`, `color`, `size`, `totalprice`, `trial110`) VALUES
(1, 11, 2, NULL, 'lemoisson metre', '099098987', NULL, 1, 'partial_undefined', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-04-25 05:52:57', '2020-04-25 11:33:33', '', '', 1, 'Non defini', 'Non defini', 0.5, 'T'),
(2, 9, 3, NULL, 'kbxf', '0976349073', NULL, 1, 'paid', 'Republique Democratique du Congo', '', 'Goma', 'Kahembe  lubero :/', '2020-04-27 00:29:53', '2020-04-27 00:29:53', '', '', 0, 'Non defini', 'Non defini', 4.5, 'T'),
(3, 9, 3, NULL, 'kbxf', '0976349073', NULL, 1, 'paid', 'Republique Democratique du Congo', '', 'Goma', 'Kahembe  lubero :/', '2020-04-27 00:30:48', '2020-04-27 00:30:48', '', '', 0, 'Non defini', 'Non defini', 4.5, 'T'),
(4, 9, 1, NULL, 'Service Client', '0990445626 ', NULL, 1, 'paid', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1,67254/29,22922', '2020-04-27 18:14:14', '2020-04-27 18:14:14', '', '', 1, 'Non defini', 'Non defini', 4.5, 'T'),
(5, 9, 4, NULL, 'lemoisson metre', '099809878', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-04-27 18:44:55', '2020-04-27 18:44:55', '', '', 1, 'Non defini', 'Non defini', 4.05, 'T'),
(6, 8, 4, NULL, 'lemoisson metre', '099898444', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-04-27 18:48:45', '2020-04-27 18:48:45', '', '', 1, 'Non defini', 'Non defini', 0.9, 'T'),
(7, 7, 4, NULL, 'lemoisson metre', '0990334586', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-04-27 19:00:06', '2020-04-27 19:00:06', '', '', 1, 'Non defini', 'Non defini', 0.9, 'T'),
(8, 9, 1, NULL, 'Service Client', '0990445626 ', NULL, 1, 'paid', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1,67254/29,22922', '2020-04-27 19:05:05', '2020-04-27 19:05:05', '', '', 1, 'Non defini', 'Non defini', 4, 'T'),
(9, 9, 1, NULL, 'Service Client', '0990445626 ', NULL, 1, 'paid', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1,67254/29,22922', '2020-04-28 05:27:02', '2020-04-28 05:27:02', '', '', 1, 'Non defini', 'Non defini', 4, 'T'),
(10, 9, 1, NULL, 'Service Client', '0990445626 ', NULL, 1, 'paid', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1,67254/29,22922', '2020-04-28 05:28:40', '2020-04-28 05:28:40', '', '', 1, 'Non defini', 'Non defini', 4, 'T'),
(11, 9, 1, NULL, 'Service Client', '0990445626 ', NULL, 1, 'approved', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1,67254/29,22922', '2020-04-28 05:33:20', '2020-04-28 05:54:28', '', '', 1, 'Non defini', 'Non defini', 4, 'T'),
(12, 9, 1, NULL, 'Service Client', '0990445626 ', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1,67254/29,22922', '2020-04-28 05:48:21', '2020-04-28 05:48:21', '', '', 1, 'Non defini', 'Non defini', 4.05, 'T'),
(13, 11, 1, NULL, 'Service Client', '0990445626 ', NULL, 1, 'paid', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1,67254/29,22922', '2020-04-28 06:00:51', '2020-04-28 06:00:51', '', '', 1, 'Non defini', 'Non defini', 0.5, 'T'),
(14, 10, 1, NULL, 'Service Client', '0909993432', NULL, 1, 'paid', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-04-28 06:23:33', '2020-04-28 06:23:33', '', '', 1, 'Non defini', 'Non defini', 0.7, 'T'),
(15, 12, 1, NULL, 'Service Client', '0998763222', NULL, 1, 'paid', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-04-28 06:24:42', '2020-04-28 06:24:42', '', '', 1, 'Non defini', 'Non defini', 0.6, 'T'),
(16, 11, 1, NULL, 'Service Client', '099989888', NULL, 19, 'paid', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-04-28 06:26:12', '2020-04-28 06:26:12', '', '', 1, 'Non defini', 'Non defini', 9.5, 'T'),
(17, 11, 1, NULL, 'Service Client', '0990445626 ', NULL, 1, 'paid', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1,67254/29,22922', '2020-04-28 07:15:54', '2020-04-28 07:15:54', '', '', 1, 'Non defini', 'Non defini', 0.5, 'T'),
(18, 11, 1, NULL, 'Service Client', '099898989', NULL, 1, 'paid', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-04-28 08:34:55', '2020-04-28 08:34:55', '', '', 1, 'Non defini', 'Non defini', 0.5, 'T'),
(19, 9, 5, NULL, 'hhhj', '097665544', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'kahembe  lubero :/', '2020-04-28 16:27:56', '2020-04-28 16:27:56', '', '', 0, 'Non defini', 'Non defini', 4.5, 'T'),
(20, 4, 1, NULL, 'Service Client', '0990445626 ', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1,67254/29,22922', '2020-04-28 17:12:42', '2020-04-28 17:12:42', '', '', 1, 'rouge', '41', 200, 'T'),
(21, 1, 5, NULL, 'hhhj', '0976349073', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'kahembe  lubero :/', '2020-04-28 17:53:39', '2020-04-28 17:53:39', '', '', 0, 'noir', 'Ultra-thin', 200, 'T'),
(25, 6, 6, NULL, 'Elvis hars', '0990998987', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-04-29 07:18:27', '2020-04-29 07:18:27', '', '', 1, 'noir', ' petit format', 200, 'T'),
(26, 7, 6, NULL, 'Elvis hars', '099090988', NULL, 3, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-04-29 07:19:50', '2020-04-29 07:19:50', '', '', 1, '', '', 3, 'T'),
(27, 4, 6, NULL, 'Elvis hars', '099090988', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-04-29 07:19:52', '2020-04-29 07:19:52', '', '', 1, 'vert', '41', 200, 'T'),
(28, 10, 9, NULL, 'lem lem', '099098383', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-04-30 07:39:57', '2020-04-30 07:39:57', '', '', 1, 'Non defini', 'Non defini', 0.7, 'T'),
(29, 12, 2, NULL, 'lemoisson metre', 'llllll', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-05-02 14:52:34', '2020-05-02 14:52:34', '', '', 1, 'Non defini', 'Non defini', 0.6, 'T'),
(30, 11, 1, NULL, 'Service Client', '09909988765', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-05-02 17:32:06', '2020-05-02 17:32:06', '', '', 1, 'Non defini', 'Non defini', 0.5, 'T'),
(31, 9, 1, NULL, 'Service Client', '0990445626 ', NULL, 2, 'pending_payment', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1,67254/29,22922', '2020-05-03 08:40:10', '2020-05-03 08:45:54', '', '', 1, 'Non defini', 'Non defini', 8.1, 'T'),
(32, 6, 1, NULL, 'Service Client', '0990445626 ', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1,67254/29,22922', '2020-05-03 16:33:22', '2020-05-03 16:33:22', '', '', 1, 'noir', ' petit format', 200, 'T'),
(33, 9, 10, NULL, 'Kevin', '0976349073', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Kahembe   lubero  :/', '2020-05-12 09:22:52', '2020-05-12 09:22:52', '', '', 0, '', '', 4.5, 'T'),
(34, 12, 10, NULL, 'Kevin', '0976349073', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Kahembe   lubero  :/', '2020-05-12 09:22:56', '2020-05-12 09:22:56', '', '', 0, '', '', 0.6, 'T'),
(35, 10, 10, NULL, 'Kevin', '0976349073', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Kahembe   lubero  :/', '2020-05-12 09:23:00', '2020-05-12 09:23:00', '', '', 0, '', '', 0.7, 'T'),
(36, 7, 1, NULL, 'Service Client', '0990445626 ', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1,67254/29,22922', '2020-05-19 07:23:30', '2020-05-19 07:23:30', '', '', 1, 'Non defini', 'Non defini', 1, 'T'),
(37, 7, 1, NULL, 'Service Client', '0990445626', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1.67254/29.22922', '2020-06-06 13:59:18', '2020-06-06 13:59:18', '', '', 1, 'Non defini', 'Non defini', 1, 'T'),
(38, 6, 1, NULL, 'Service Client', '0990445626 ', NULL, 1, 'pending', 'Republique Democratique du Congo', '', 'Goma', 'Bureau bweteta  derriere bralima :-1,67254/29,22922', '2020-06-07 05:04:18', '2020-06-07 05:04:18', '', '', 1, 'rouge', ' petit format', 200, 'T');

-- --------------------------------------------------------

--
-- Structure de la table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `description` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `category` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `quantity` double DEFAULT NULL COMMENT 'TRIAL',
  `quantitymetric` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `receivername` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `receiverphone` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `pickuplocation` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `deliverylocation` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `senderphone` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `sendername` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `image` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `status` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `userid` int(11) NOT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial129` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

-- --------------------------------------------------------

--
-- Structure de la table `passwordresets`
--

CREATE TABLE `passwordresets` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `code` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `email` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial149` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `transactionid` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `originnumber` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `status` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `amount` double DEFAULT NULL COMMENT 'TRIAL',
  `clientid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `orderid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `trial165` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `payments`
--

INSERT INTO `payments` (`id`, `transactionid`, `originnumber`, `status`, `amount`, `clientid`, `createdat`, `updatedat`, `orderid`, `trial165`) VALUES
(1, 'CI200420.1028.C16111', 'none', 'seller_create', 5, NULL, '2020-04-25 07:00:03', '2020-04-25 07:00:03', NULL, 'T'),
(2, 'CI200420.1028.C16112', 'none', 'done', 5, 1, '2020-04-25 07:00:18', '2020-04-25 11:33:33', NULL, 'T'),
(3, 'CI200420.1028.C16113', 'none', 'seller_create', 5, NULL, '2020-04-25 07:00:23', '2020-04-25 07:00:23', NULL, 'T'),
(4, 'CI200420.1028.C16114', 'none', 'seller_create', 5, NULL, '2020-04-25 07:00:28', '2020-04-25 07:00:28', NULL, 'T'),
(5, 'CI200445.1028.C16114', 'none', 'seller_create', 5, NULL, '2020-04-28 11:16:39', '2020-04-28 11:16:39', NULL, 'T'),
(6, 'CI200485.1028.C16114', 'none', 'seller_create', 5, NULL, '2020-04-28 11:17:25', '2020-04-28 11:17:25', NULL, 'T'),
(7, 'CI200485.1028.C26114', 'none', 'seller_create', 5, NULL, '2020-04-28 11:30:22', '2020-04-28 11:30:22', NULL, 'T'),
(8, 'CI200485.1028.C29114', 'none', 'seller_create', 5, NULL, '2020-04-28 11:30:41', '2020-04-28 11:30:41', NULL, 'T'),
(9, 'CI200485.1028.C29194', 'none', 'seller_create', 5, NULL, '2020-04-28 11:31:10', '2020-04-28 11:31:10', NULL, 'T'),
(10, 'CI200485.1038.C29194', 'none', 'seller_create', 5, NULL, '2020-04-28 11:35:39', '2020-04-28 11:35:39', NULL, 'T'),
(12, 'PP200418.1958.A34802', 'none', 'seller_create', 40, NULL, '2020-05-02 17:19:56', '2020-05-02 17:19:56', NULL, 'T'),
(13, 'PP200430.1711.B19072', NULL, 'client_create', NULL, 1, '2020-05-03 08:45:54', '2020-05-03 08:45:54', 31, 'T');

-- --------------------------------------------------------

--
-- Structure de la table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `productid` int(11) NOT NULL COMMENT 'TRIAL',
  `url` varchar(255) NOT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial185` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `productimages`
--

INSERT INTO `productimages` (`id`, `productid`, `url`, `createdat`, `updatedat`, `trial185`) VALUES
(1, 1, 'http://res.cloudinary.com/bwetetam/image/upload/v1587732281/y6ks1zvn6gmv10712m2x.jpg', '2020-04-24 12:44:41', '2020-04-24 12:44:41', 'T'),
(2, 2, 'http://res.cloudinary.com/bwetetam/image/upload/v1587732408/egymz5u6zlxzqxadm52f.jpg', '2020-04-24 12:46:48', '2020-04-24 12:46:48', 'T'),
(3, 3, 'http://res.cloudinary.com/bwetetam/image/upload/v1587732489/c6filjiuwig7zac75xgx.jpg', '2020-04-24 12:48:10', '2020-04-24 12:48:10', 'T'),
(4, 4, 'http://res.cloudinary.com/bwetetam/image/upload/v1587732559/ceuqkymvg6ot8vrdxxay.jpg', '2020-04-24 12:49:19', '2020-04-24 12:49:19', 'T'),
(5, 5, 'http://res.cloudinary.com/bwetetam/image/upload/v1587732634/r59hlwno8ryfhbp7hcn0.jpg', '2020-04-24 12:50:34', '2020-04-24 12:50:34', 'T'),
(6, 6, 'http://res.cloudinary.com/bwetetam/image/upload/v1587732699/kyfz6n1zu3qdchcjdgmn.jpg', '2020-04-24 12:51:39', '2020-04-24 12:51:39', 'T'),
(7, 7, 'http://res.cloudinary.com/bwetetam/image/upload/v1587733250/jnaslbk8rrclwzbeykjr.jpg', '2020-04-24 13:00:51', '2020-04-24 13:00:51', 'T'),
(8, 8, 'http://res.cloudinary.com/bwetetam/image/upload/v1587733288/d6stw0f7zdhmluqi5dfj.jpg', '2020-04-24 13:01:28', '2020-04-24 13:01:28', 'T'),
(9, 9, 'http://res.cloudinary.com/bwetetam/image/upload/v1587733326/pm2g4juyuvxmvj3r7mo7.jpg', '2020-04-24 13:02:06', '2020-04-24 13:02:06', 'T'),
(10, 10, 'http://res.cloudinary.com/bwetetam/image/upload/v1587745501/hhfj22ojmrwdedhtsnds.jpg', '2020-04-24 16:25:01', '2020-04-24 16:25:01', 'T'),
(11, 11, 'http://res.cloudinary.com/bwetetam/image/upload/v1587745549/rhu7wljt2ohdotm1occe.jpg', '2020-04-24 16:25:50', '2020-04-24 16:25:50', 'T'),
(12, 12, 'http://res.cloudinary.com/bwetetam/image/upload/v1587745596/ggpoejhwwyfdlcprs6gv.jpg', '2020-04-24 16:26:36', '2020-04-24 16:26:36', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `productreductions`
--

CREATE TABLE `productreductions` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `productid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `rate` double DEFAULT NULL COMMENT 'TRIAL',
  `start` datetime DEFAULT NULL COMMENT 'TRIAL',
  `end` datetime DEFAULT NULL COMMENT 'TRIAL',
  `name` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial201` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `productreductions`
--

INSERT INTO `productreductions` (`id`, `productid`, `rate`, `start`, `end`, `name`, `createdat`, `updatedat`, `trial201`) VALUES
(1, 1, 10, '2020-03-01 00:00:00', '2020-03-14 00:00:00', 'black friday', '2020-03-02 10:34:12', '2020-03-02 10:34:12', 'T'),
(2, 3, 5, '2020-03-01 00:00:00', '2020-03-14 00:00:00', 'black friday', '2020-03-07 11:56:39', '2020-03-07 11:56:39', 'T'),
(3, 6, 50, '2020-03-01 00:00:00', '2020-03-14 00:00:00', 'black friday', '2020-03-07 11:56:53', '2020-03-07 11:56:53', 'T'),
(4, 7, 10, '2020-03-01 00:00:00', '2020-05-14 00:00:00', 'reduction', '2020-05-24 13:04:21', '2020-05-24 13:04:21', 'T'),
(5, 8, 10, '2020-03-01 00:00:00', '2020-05-14 00:00:00', 'reduction', '2020-05-24 13:04:25', '2020-05-24 13:04:25', 'T'),
(6, 9, 10, '2020-03-01 00:00:00', '2020-05-14 00:00:00', 'reduction', '2020-05-24 13:04:28', '2020-05-24 13:04:28', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `owner` int(11) NOT NULL DEFAULT 1 COMMENT 'TRIAL',
  `name` varchar(255) NOT NULL COMMENT 'TRIAL',
  `description` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `categoryid` int(11) NOT NULL DEFAULT 1 COMMENT 'TRIAL',
  `size` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `manufacturer` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `isnew` tinyint(1) DEFAULT NULL COMMENT 'TRIAL',
  `price` double NOT NULL COMMENT 'TRIAL',
  `pricewholesale` double DEFAULT NULL COMMENT 'TRIAL',
  `quantity` double NOT NULL COMMENT 'TRIAL',
  `quantitymetric` varchar(255) NOT NULL COMMENT 'TRIAL',
  `tags` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `deletedat` datetime DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `colors` longtext DEFAULT NULL COMMENT 'TRIAL',
  `trial221` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `owner`, `name`, `description`, `categoryid`, `size`, `manufacturer`, `isnew`, `price`, `pricewholesale`, `quantity`, `quantitymetric`, `tags`, `deletedat`, `createdat`, `updatedat`, `colors`, `trial221`) VALUES
(1, 1, 'Lenovo thinkpad', 'Lenovo thinkpad, 500 gb HDD, 4 gb RAM, I7-4400 avec 8 core', 5, 'Ultra-thin', 'Lenovo', 1, 200, NULL, 1, 'pieces', 'ordinateur,lenovo', NULL, '2020-04-24 12:44:40', '2020-04-24 12:44:40', 'noir', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `publicities`
--

CREATE TABLE `publicities` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `model` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `modelid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `description` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `image` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial240` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `publicities`
--

INSERT INTO `publicities` (`id`, `model`, `modelid`, `description`, `image`, `createdat`, `updatedat`, `trial240`) VALUES
(1, 'Products', 1, '1', 'http://res.cloudinary.com/bwetetam/image/upload/v1587793154/cnw99d5j2yxt6at4bb9o.jpg', '2020-04-25 05:39:10', '2020-04-25 05:39:14', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `rolevalue` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial263` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `rolevalue`, `createdat`, `updatedat`, `trial263`) VALUES
(1, 'client', '2020-01-21 10:45:46', '2020-01-21 10:45:46', 'T'),
(2, 'admin', '2020-01-21 10:45:46', '2020-01-21 10:45:46', 'T'),
(3, 'seller', '2020-01-21 10:45:46', '2020-01-21 10:45:46', 'T'),
(4, 'client', '2020-03-02 15:14:30', '2020-03-02 15:14:30', 'T'),
(5, 'admin', '2020-03-02 15:14:30', '2020-03-02 15:14:30', 'T'),
(6, 'seller', '2020-03-02 15:14:30', '2020-03-02 15:14:30', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL COMMENT 'TRIAL',
  `trial280` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`, `trial280`) VALUES
('20191106185121-create-roles.js', 'T'),
('20191106185421-create-users.js', 'T'),
('20191117070129-create-categories.js', 'T'),
('20191117070257-create-shops.js', 'T'),
('20191117070452-create-products.js', 'T'),
('20191117070709-create-product-reduction.js', 'T'),
('20191117070938-create-product-images.js', 'T'),
('20191117071136-create-tags.js', 'T'),
('20191119070257-create-shop-admin.js', 'T'),
('20191127194458-create-wallet.js', 'T'),
('20191129131938-create-orders.js', 'T'),
('20191214143644-create-firebase.js', 'T'),
('20191214153356-create-publicities.js', 'T'),
('20191214153360-create-likes.js', 'T'),
('20191214153360-create-suggestions.js', 'T'),
('20200129101616-add-phone-number.js', 'T'),
('20200202075746-add-gift.js', 'T'),
('20200202075817-add-gift-description.js', 'T'),
('20200209063927-create-delivery-countries.js', 'T'),
('20200209064005-create-delivery-cities.js', 'T'),
('20200209064042-create-delivery-points.js', 'T'),
('20200209092537-add-delivery-point.js', 'T'),
('20200212060157-create-chats.js', 'T'),
('20200225080946-create-package.js', 'T'),
('20200226093534-create-payments.js', 'T'),
('20200226093723-create-transactions.js', 'T'),
('20200306133553-create-password-resets.js', 'T'),
('20200411123542-create-commissions.js', 'T'),
('20200418061750-add-orderId.js', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `shopadmins`
--

CREATE TABLE `shopadmins` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `userid` int(11) NOT NULL COMMENT 'TRIAL',
  `shopid` int(11) NOT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial299` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `shopadmins`
--

INSERT INTO `shopadmins` (`id`, `userid`, `shopid`, `createdat`, `updatedat`, `trial299`) VALUES
(1, 1, 1, '2020-04-11 04:55:29', '2020-04-11 04:55:29', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `name` varchar(255) NOT NULL COMMENT 'TRIAL',
  `description` varchar(255) NOT NULL COMMENT 'TRIAL',
  `avatar` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `country` varchar(255) NOT NULL COMMENT 'TRIAL',
  `city` varchar(255) NOT NULL COMMENT 'TRIAL',
  `active` tinyint(1) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial319` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `shops`
--

INSERT INTO `shops` (`id`, `name`, `description`, `avatar`, `country`, `city`, `active`, `createdat`, `updatedat`, `trial319`) VALUES
(1, 'Bweteta Market', 'Votre fournisseur de proximite', NULL, 'cd', 'goma', 1, '2020-01-21 10:45:46', '2020-01-21 10:45:46', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `name` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `description` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `image` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `userid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial342` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `suggestions`
--

INSERT INTO `suggestions` (`id`, `name`, `description`, `image`, `userid`, `createdat`, `updatedat`, `trial342`) VALUES
(1, 'armoire', 'je cherche ça ', 'http://res.cloudinary.com/bwetetam/image/upload/v1589275964/ywyse0btjdwvxfl5ag7z.jpg', 10, '2020-05-12 09:32:44', '2020-05-12 09:32:45', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `name` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `description` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial365` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `modelid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `modelname` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `amount` double DEFAULT NULL COMMENT 'TRIAL',
  `userid` int(11) NOT NULL COMMENT 'TRIAL',
  `description` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial381` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `transactions`
--

INSERT INTO `transactions` (`id`, `modelid`, `modelname`, `amount`, `userid`, `description`, `createdat`, `updatedat`, `trial381`) VALUES
(1, 2, 'Payments', 5, 1, 'Payment added', '2020-04-25 11:33:33', '2020-04-25 11:33:33', 'T');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `fullname` varchar(255) NOT NULL COMMENT 'TRIAL',
  `email` varchar(255) NOT NULL COMMENT 'TRIAL',
  `password` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `country` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `state` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `city` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `birthdate` datetime DEFAULT NULL COMMENT 'TRIAL',
  `currency` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `roleid` int(11) DEFAULT 1 COMMENT 'TRIAL',
  `isverified` tinyint(1) DEFAULT 0 COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `phone` varchar(255) DEFAULT NULL COMMENT 'TRIAL',
  `sexe` longtext DEFAULT NULL COMMENT 'TRIAL',
  `profession` longtext DEFAULT NULL COMMENT 'TRIAL',
  `trial400` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `country`, `state`, `city`, `birthdate`, `currency`, `roleid`, `isverified`, `createdat`, `updatedat`, `phone`, `sexe`, `profession`, `trial400`) VALUES
(1, 'Service Client', 'murhulametre@gmail.com', '$2b$10$pIZHMRMZ5PRBcnvLhGuqq./xI2fPSUroA78y6xZ4.V0z2mmrF3PVa', NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-04-24 12:25:19', '2020-04-27 11:15:27', NULL, NULL, NULL, 'T'),
(2, 'lemoisson metre', 'lemoissonjoellfj@gmail.com', '$2b$10$pIZHMRMZ5PRBcnvLhGuqq./xI2fPSUroA78y6xZ4.V0z2mmrF3PVa', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-25 05:52:18', '2020-04-25 05:52:18', NULL, NULL, NULL, 'T'),
(3, 'kbxf', 'yhhhjjj@gmail.com', '$2b$10$ZjvCxKk5XlRH6hxggXFvQuv81kswP.UuJ1.U51MYprMVMDoXUVRUe', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-27 00:25:27', '2020-04-27 00:25:27', NULL, NULL, NULL, 'T'),
(4, 'lemoisson metre', 'lemoissonjoe@gmail.com', '$2b$10$B3wPPZwpMNYKOHaieiQ9B.5mbp7Vhgr4ID1n3n2u6gjHflyA9TznS', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-27 18:38:44', '2020-04-27 18:38:44', NULL, NULL, NULL, 'T'),
(5, 'hhhj', 'jjjjj@gmail.com', '$2b$10$TwVL8RuRtbuc8kIopjRqsONUHPeIeNLxxgRQKHB0Q1tRqGZkKgU62', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-28 16:24:10', '2020-04-28 16:32:49', NULL, 'M', 'Eleve', 'T'),
(6, 'Elvis hars', 'elvishars@gmail.com', '$2b$10$TEti7m7EcfDzBCTNZiWEb.18Tyy3E.QlFP3zHv6u3A5zL9x4WKOtO', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-29 07:17:54', '2020-04-29 07:17:54', NULL, NULL, NULL, 'T'),
(7, 'christelle', 'chrisbielamund@gmail.com', '$2b$10$BBg4YD5HqlvIjlqxD2G4zuGnEIWiAOz0ekbNt/cOtSdjL/hX0fKQm', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-29 19:45:33', '2020-04-29 19:45:33', NULL, NULL, NULL, 'T'),
(8, 'lemoisson metre', 'murhulametr@gmail.com', '$2b$10$iCsiP2dzFzKcubVJZZyrreZoI9AnTkZaU/KgJk9ndDnfYeUw84Jiy', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-30 07:31:18', '2020-04-30 07:31:18', NULL, NULL, NULL, 'T'),
(9, 'lem lem', 'murhulamet@gmail.com', '$2b$10$M.PscInAw9w9ztr7ZCYtaOpAirr6kw0k0nNPmCm07jzOZ4RhnRE9S', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-30 07:38:57', '2020-04-30 07:38:57', NULL, NULL, NULL, 'T'),
(10, 'Kevin', 'kahambakevin@gmail.com', '$2b$10$Yf/3roFzEbDLM38xWrBz5.03vTMGri4xGlBy8Bla1wj6cYxjoa6nO', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-05-12 09:11:51', '2020-05-26 12:04:21', NULL, NULL, NULL, 'T');

-- --------------------------------------------------------

--
-- Structure de la table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL COMMENT 'TRIAL',
  `productid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `userid` int(11) DEFAULT NULL COMMENT 'TRIAL',
  `createdat` datetime NOT NULL COMMENT 'TRIAL',
  `updatedat` datetime NOT NULL COMMENT 'TRIAL',
  `trial423` char(1) DEFAULT NULL COMMENT 'TRIAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Déchargement des données de la table `wallets`
--

INSERT INTO `wallets` (`id`, `productid`, `userid`, `createdat`, `updatedat`, `trial423`) VALUES
(1, 3, 1, '2020-01-28 09:21:13', '2020-01-28 09:21:13', 'T'),
(3, 2, 1, '2020-02-01 12:05:21', '2020-02-01 12:05:21', 'T'),
(4, 3, 1, '2020-02-01 12:06:23', '2020-02-01 12:06:23', 'T'),
(7, 2, 37, '2020-02-07 12:21:29', '2020-02-07 12:21:29', 'T'),
(8, 2, 1, '2020-02-11 09:19:48', '2020-02-11 09:19:48', 'T'),
(9, 2, 38, '2020-02-13 22:42:15', '2020-02-13 22:42:15', 'T'),
(10, 2, 38, '2020-02-15 22:09:33', '2020-02-15 22:09:33', 'T'),
(11, 2, 38, '2020-02-15 22:10:14', '2020-02-15 22:10:14', 'T'),
(12, 2, 38, '2020-02-15 22:10:37', '2020-02-15 22:10:37', 'T'),
(13, 3, 38, '2020-02-16 04:40:06', '2020-02-16 04:40:06', 'T'),
(14, 2, 39, '2020-02-20 16:52:29', '2020-02-20 16:52:29', 'T'),
(15, 3, 39, '2020-03-03 13:44:34', '2020-03-03 13:44:34', 'T'),
(16, 1, 39, '2020-03-03 15:44:05', '2020-03-03 15:44:05', 'T'),
(17, 1, 39, '2020-03-03 15:54:14', '2020-03-03 15:54:14', 'T'),
(19, 7, 41, '2020-03-07 20:37:59', '2020-03-07 20:37:59', 'T'),
(20, 6, 41, '2020-03-10 10:32:59', '2020-03-10 10:32:59', 'T'),
(21, 9, 1, '2020-03-21 14:32:59', '2020-03-21 14:32:59', 'T'),
(22, 9, 43, '2020-03-28 18:42:04', '2020-03-28 18:42:04', 'T'),
(23, 9, 46, '2020-04-06 10:26:50', '2020-04-06 10:26:50', 'T'),
(24, 8, 44, '2020-04-15 05:05:59', '2020-04-15 05:05:59', 'T'),
(25, 9, 48, '2020-04-17 06:05:36', '2020-04-17 06:05:36', 'T'),
(26, 9, 50, '2020-04-18 10:17:54', '2020-04-18 10:17:54', 'T'),
(27, 9, 3, '2020-04-27 00:26:05', '2020-04-27 00:26:05', 'T'),
(33, 4, 44, '2020-04-29 06:45:32', '2020-04-29 06:45:32', 'T'),
(34, 7, 6, '2020-04-29 07:18:51', '2020-04-29 07:18:51', 'T'),
(35, 4, 6, '2020-04-29 07:18:58', '2020-04-29 07:18:58', 'T'),
(39, 1, 5, '2020-05-02 15:09:55', '2020-05-02 15:09:55', 'T'),
(40, 1, 5, '2020-05-02 15:09:58', '2020-05-02 15:09:58', 'T'),
(41, 9, 10, '2020-05-12 09:14:20', '2020-05-12 09:14:20', 'T'),
(42, 12, 10, '2020-05-12 09:15:23', '2020-05-12 09:15:23', 'T'),
(43, 10, 10, '2020-05-12 09:15:40', '2020-05-12 09:15:40', 'T'),
(44, 12, 10, '2020-05-26 12:09:15', '2020-05-26 12:09:15', 'T'),
(45, 10, 10, '2020-05-26 12:14:45', '2020-05-26 12:14:45', 'T'),
(46, 8, 10, '2020-05-26 12:16:25', '2020-05-26 12:16:25', 'T');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `deliverycities`
--
ALTER TABLE `deliverycities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliverycities_countryid_fkey` (`countryid`);

--
-- Index pour la table `deliverycountries`
--
ALTER TABLE `deliverycountries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `deliverypoints`
--
ALTER TABLE `deliverypoints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliverypoints_cityid_fkey` (`cityid`);

--
-- Index pour la table `firebases`
--
ALTER TABLE `firebases`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_productid_fkey` (`productid`),
  ADD KEY `orders_userid_fkey` (`userid`),
  ADD KEY `orders_reductionid_fkey` (`reductionid`);

--
-- Index pour la table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packages_userid_fkey` (`userid`);

--
-- Index pour la table `passwordresets`
--
ALTER TABLE `passwordresets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_clientid_fkey` (`clientid`);

--
-- Index pour la table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productimages_productid_fkey` (`productid`);

--
-- Index pour la table `productreductions`
--
ALTER TABLE `productreductions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_owner_fkey` (`owner`),
  ADD KEY `products_categoryid_fkey` (`categoryid`);

--
-- Index pour la table `publicities`
--
ALTER TABLE `publicities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `shopadmins`
--
ALTER TABLE `shopadmins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shopadmins_userid_fkey` (`userid`),
  ADD KEY `shopadmins_shopid_fkey` (`shopid`);

--
-- Index pour la table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_userid_fkey` (`userid`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_key` (`email`),
  ADD KEY `users_roleid_fkey` (`roleid`);

--
-- Index pour la table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `deliverycities`
--
ALTER TABLE `deliverycities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `deliverycountries`
--
ALTER TABLE `deliverycountries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `deliverypoints`
--
ALTER TABLE `deliverypoints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `firebases`
--
ALTER TABLE `firebases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL';

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL';

--
-- AUTO_INCREMENT pour la table `passwordresets`
--
ALTER TABLE `passwordresets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL';

--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `productreductions`
--
ALTER TABLE `productreductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `publicities`
--
ALTER TABLE `publicities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `shopadmins`
--
ALTER TABLE `shopadmins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL';

--
-- AUTO_INCREMENT pour la table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'TRIAL', AUTO_INCREMENT=47;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `deliverycities`
--
ALTER TABLE `deliverycities`
  ADD CONSTRAINT `deliverycities_countryid_fkey` FOREIGN KEY (`countryid`) REFERENCES `deliverycountries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `deliverypoints`
--
ALTER TABLE `deliverypoints`
  ADD CONSTRAINT `deliverypoints_cityid_fkey` FOREIGN KEY (`cityid`) REFERENCES `deliverycities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_userid_fkey` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_clientid_fkey` FOREIGN KEY (`clientid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `shopadmins`
--
ALTER TABLE `shopadmins`
  ADD CONSTRAINT `shopadmins_shopid_fkey` FOREIGN KEY (`shopid`) REFERENCES `shops` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `shopadmins_userid_fkey` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_userid_fkey` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_roleid_fkey` FOREIGN KEY (`roleid`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de données : `co`
--
CREATE DATABASE IF NOT EXISTS `co` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `co`;

-- --------------------------------------------------------

--
-- Structure de la table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `city`
--

INSERT INTO `city` (`id`, `name`, `state_id`) VALUES
(1, 'Diadema', 1),
(2, 'Mauá', 1),
(3, 'Rio Grande da Serra', 1),
(4, 'Angra dos Reis', 2),
(5, 'Barra Mansa', 2),
(6, 'Belford Roxo', 2),
(7, 'Cabo Frio', 2),
(8, 'Aquiraz', 3),
(9, 'Canindé', 3),
(10, 'Caucaia', 3),
(11, 'Crato', 3),
(12, 'Blumenau', 4),
(13, 'Chapecó', 4),
(14, 'Criciúma', 4),
(15, 'Lages', 4),
(16, 'Aracruz', 5),
(17, 'Cariacica', 5),
(18, 'Colatina', 5),
(19, 'Linhares', 5),
(20, 'Guangzhou', 6),
(21, 'Shanghai', 6),
(22, 'Chongqing', 6),
(23, 'Beijing', 6),
(24, 'Baoding', 7),
(25, 'Qinhuangdao', 7),
(26, 'Tangshan', 8),
(27, 'Sanhe', 8),
(28, 'Paris', 11),
(29, 'Poissy', 11),
(30, 'Torbes', 12),
(31, 'Rodrez', 12),
(32, 'Auger-Saint-Vincent', 13),
(33, 'Aumatre', 13),
(34, 'Belfort', 14),
(35, 'Dole', 14),
(36, 'Colmar', 15),
(37, 'Obernai', 15),
(38, 'Gurugram', 16),
(39, 'Panipat', 16),
(40, 'Rewari', 16),
(41, 'Chandigarh', 16),
(42, 'Tirupati', 17),
(43, 'Vijayvada', 17),
(44, 'Elluru', 17),
(45, 'Nellore', 17),
(46, 'New Delhi', 18),
(47, 'Faridabad', 18),
(48, 'Chennai', 19),
(49, 'Madurai', 19),
(50, 'Coimbatore', 19),
(51, 'Salem', 19),
(52, 'Ballia', 20),
(53, 'Varanasi', 20),
(54, 'Lucknow', 20),
(55, 'Kanpur', 20),
(56, 'Los Angeles', 21),
(57, 'San Francisco', 21),
(58, 'San Diego', 21),
(59, 'Oakland', 21),
(60, 'lowa city', 22),
(61, 'Ames', 22),
(62, 'Waterloo', 22),
(63, 'Mason city', 22),
(64, 'New york city', 23),
(65, 'Buffalo', 23),
(66, 'Albany', 23),
(67, 'Yonkers', 23),
(68, 'Trenton', 24),
(69, 'Princeton', 24),
(70, 'Atlantic city', 24),
(71, 'Paterson', 24),
(72, 'Boston', 25),
(73, 'Cambridge', 25),
(74, 'Springfield', 25),
(75, 'Lowell', 25);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(30) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `subject` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `status`, `subject`) VALUES
(5, 'okey', 1, 'salut'),
(6, 'hihih', 1, 'cva');

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`id`, `country_name`) VALUES
(1, 'Brazil'),
(2, 'China'),
(3, 'France'),
(4, 'India'),
(5, 'USA');

-- --------------------------------------------------------

--
-- Structure de la table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Sao Paulo', 1),
(2, 'Rio de Janeiro', 1),
(3, 'Ceara', 1),
(4, 'Santa Catarina', 1),
(5, 'Espirito Santo', 1),
(6, 'Beijing', 2),
(7, 'Hebei', 2),
(8, 'Jiangsu', 2),
(9, 'Guangdong', 2),
(10, 'Guangdong', 2),
(11, 'Ile-de-France', 3),
(12, 'Midi-Pyrenees', 3),
(13, 'Picardie', 3),
(14, 'Franche-Comte', 3),
(15, 'Alsace', 3),
(16, 'Haryana', 4),
(17, 'Andhra Pradesh', 4),
(18, 'Delhi', 4),
(19, 'Tamil Nadu', 4),
(20, 'Uttar Pradesh', 4),
(21, 'California', 5),
(22, 'Iowa', 5),
(23, 'New York', 5),
(24, 'New Jersey', 5),
(25, 'Massachusetts', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Contraintes pour la table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);
--
-- Base de données : `correction`
--
CREATE DATABASE IF NOT EXISTS `correction` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `correction`;

-- --------------------------------------------------------

--
-- Structure de la table `correction_directeur`
--

CREATE TABLE `correction_directeur` (
  `id` int(10) NOT NULL,
  `matricule` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `postnom` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fichier` blob NOT NULL,
  `dateenvoie` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `correction_directeur`
--

INSERT INTO `correction_directeur` (`id`, `matricule`, `nom`, `postnom`, `genre`, `email`, `password`, `fichier`, `dateenvoie`) VALUES
(1, '001', 'gg', 'gg', 'f', 'jtmwasi@gmail.com', '0123', 0x54505f436f6d706c656d656e742e706466, '2019-09-07'),
(2, '003', 'mbale', 'justin', 'm', 'mbale@gmail.com', '012345678', 0x54505f436f6d706c656d656e742e706466, '2019-09-18'),
(3, '007', 'KAVUGHO', 'MUSAYI', 'f', 'kavugho@gmail.com', '&Ã©\"', 0x54505f436f6d706c656d656e742e706466, '2019-09-24');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(10) NOT NULL,
  `matricule` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `postnom` varchar(20) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `codpro` varchar(20) NOT NULL,
  `libellepro` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `matricule`, `nom`, `postnom`, `sexe`, `codpro`, `libellepro`) VALUES
(1, '001', 'eliezer', 'mbale', 'm', 'G1', 'informatique de gest'),
(2, '002', 'hhh', 'hhh', 'f', 'G1', 'informatique de gest'),
(3, '003', 'mbale', 'justin', 'm', 'G1', 'informatique de gest'),
(4, '007', 'kavugho', 'MUSAYI', 'f', 'G1', 'informatique de gest');

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` int(10) NOT NULL,
  `matricule` varchar(20) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `postnom` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fichier` blob NOT NULL,
  `dateenvoie` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `matricule`, `nom`, `postnom`, `genre`, `email`, `password`, `fichier`, `dateenvoie`) VALUES
(2, 'jjj', 'jjjj', 'jjjj', 'f', 'jtmwasi@gmail.com', '0123', 0x54505f436f6d706c656d656e742e706466, '2019-09-13'),
(3, '001', 'gg', 'gg', 'f', 'jtmwasi@gmail.com', '0123', 0x54505f436f6d706c656d656e742e706466, '2019-09-07'),
(4, '003', 'mbale', 'justin', 'm', 'mbale@gmail.com', '012345678', 0x54505f436f6d706c656d656e742e706466, '2019-09-18'),
(5, '007', 'KAVUGHO', 'ESTHER', 'f', 'kavugho@gmail.com', '&Ã©\"', 0x54505f436f6d706c656d656e742e706466, '2019-09-24');

-- --------------------------------------------------------

--
-- Structure de la table `login_directeur`
--

CREATE TABLE `login_directeur` (
  `id` int(10) NOT NULL,
  `identifiant` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `login_directeur`
--

INSERT INTO `login_directeur` (`id`, `identifiant`, `password`) VALUES
(1, 'directeur', 'uac'),
(2, 'uac', 'directeur'),
(3, 'secretaire', 'secretaire');

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(10) NOT NULL,
  `codpro` varchar(20) NOT NULL,
  `libellepro` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `promotion`
--

INSERT INTO `promotion` (`id`, `codpro`, `libellepro`) VALUES
(1, 'G1', 'informatique de gest'),
(2, 'G3', 'informatique de gest'),
(3, 'G3', 'SIC'),
(4, 'G3', 'STD'),
(5, 'G3', 'PHILOSOPHIE'),
(6, 'L2', 'informatique de gest'),
(7, 'L2', 'SIC'),
(8, 'L2', 'STD'),
(9, 'L2', 'PHILOSOPHIE');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `identifiant` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `identifiant`, `password`) VALUES
(1, 'eliezer', 'eliezer'),
(2, 'eliezer', 'uac');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `correction_directeur`
--
ALTER TABLE `correction_directeur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `login_directeur`
--
ALTER TABLE `login_directeur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `correction_directeur`
--
ALTER TABLE `correction_directeur`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `login_directeur`
--
ALTER TABLE `login_directeur`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de données : `fkdb95`
--
CREATE DATABASE IF NOT EXISTS `fkdb95` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fkdb95`;
--
-- Base de données : `palme_db`
--
CREATE DATABASE IF NOT EXISTS `palme_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `palme_db`;

-- --------------------------------------------------------

--
-- Structure de la table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitteer` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `about`
--

INSERT INTO `about` (`id`, `email`, `telephone`, `description`, `facebook`, `instagram`, `twitteer`, `adresse`) VALUES
(1, '', '', '                      \r\n', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

CREATE TABLE `annonces` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `url_img` varchar(255) NOT NULL,
  `datec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `annonces`
--

INSERT INTO `annonces` (`id`, `titre`, `contact`, `description`, `url_img`, `datec`) VALUES
(4, 'porcherie moderne à nyiragongo Nord de Goma', '+243972673616', 'porcherie moderne à nyiragongo Nord de Goma', 'porc-yetu-262x262.jpg', '2020-05-26 17:48:07'),
(5, 'un champs de pommes de terres à kabaya masisi', '+243972673616', 'un champs de pommes de terres à kabaya masisi       \r\n                    ', 'birai-de-masisi-262x262.jpg', '2020-05-27 13:08:31'),
(7, 'J;FHKFKFUK', 'J;GLGIL', '                      \r\n                    FUKFUKFUKFUK', 'category-3.jpg', '2020-06-08 06:40:05');

-- --------------------------------------------------------

--
-- Structure de la table `cliant`
--

CREATE TABLE `cliant` (
  `id` int(11) NOT NULL,
  `nom_client` varchar(255) NOT NULL,
  `post_nom` varchar(255) NOT NULL,
  `pays` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `commune` varchar(255) NOT NULL,
  `quartier` varchar(255) NOT NULL,
  `avenue` varchar(255) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `code_trans` varchar(12) NOT NULL,
  `conf` int(11) NOT NULL,
  `datet` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cliant`
--

INSERT INTO `cliant` (`id`, `nom_client`, `post_nom`, `pays`, `ville`, `commune`, `quartier`, `avenue`, `telephone`, `email`, `code_trans`, `conf`, `datet`) VALUES
(3, 'david', 'emedi', ' République démocratique du Congo', 'goma', 'karisimbi', 'virunga', 'itebero/6', '+243972673616', 'kingbestd030@gmail.com', 'd0d36c1d9609', 1, '2020-06-04 11:42:17'),
(4, 'david', 'emedi', ' République démocratique du Congo', 'goma', 'karisimbi', 'virunga', 'itebero/6', '+243972673616', 'kingbestd030@gmail.com', '00613dd996cd', 1, '2020-06-04 11:43:30'),
(5, 'david', 'emedi', ' République démocratique du Congo', 'goma', 'karisimbi', 'virunga', 'itebero/6', '+243972673616', 'kingbestd030@gmail.com', '099dd66d3c10', 1, '2020-06-04 11:44:32'),
(6, 'david', 'emedi', ' Afghanistan', 'goma', 'karisimbi', 'virunga', 'itebero/6', '+243972673616', 'kingbestd030@gmail.com', '534daee952ec', 1, '2020-06-04 14:22:22'),
(7, 'david', 'emedi', ' République démocratique du Congo', 'goma', 'karisimbi', 'virunga', 'itebero/6', '+243972673616', 'kingbestd030@gmail.com', 'dd99001dc636', 1, '2020-06-04 21:05:55'),
(8, 'webmaster019', 'emedi', ' République démocratique du Congo', 'goma', 'karisimbi', 'virunga', 'itebero/6', '+243972673616', 'kingbestd030@gmail.com', 'de03221826a6', 1, '2020-06-06 12:23:52'),
(9, 'david', 'kitenge', ' Argentine', 'goma', 'k', 'fg', 'vjgft', '23243', '34@gmail', 'cdc2b7871068', 1, '2020-06-06 13:04:50');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `produit` varchar(255) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix` float NOT NULL,
  `id_client` int(11) NOT NULL,
  `code_trans` varchar(12) NOT NULL,
  `datec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `produit`, `quantite`, `prix`, `id_client`, `code_trans`, `datec`) VALUES
(29, 'poulait prêt à consommer ', 1, 8, 5, '099dd66d3c10', '2020-06-04 11:44:32'),
(30, 'plaquette ouef', 2, 6, 5, '099dd66d3c10', '2020-06-04 11:44:32'),
(31, 'sac pomme de terre', 1, 55, 5, '099dd66d3c10', '2020-06-04 11:44:32'),
(32, 'viande boeuf', 1, 5, 6, '534daee952ec', '2020-06-04 14:22:22'),
(33, 'poulait prêt à consommer ', 1, 8, 6, '534daee952ec', '2020-06-04 14:22:22'),
(34, 'petit poids vert', 1, 1.5, 7, 'dd99001dc636', '2020-06-04 21:05:56'),
(35, 'viande boeuf', 1, 5, 7, 'dd99001dc636', '2020-06-04 21:05:56'),
(36, 'petit poids vert', 1, 1.5, 8, 'de03221826a6', '2020-06-06 12:23:52'),
(37, 'ognos ', 6, 15, 8, 'de03221826a6', '2020-06-06 12:23:52'),
(38, 'petit poids vert', 1, 1.5, 9, 'cdc2b7871068', '2020-06-06 13:04:50'),
(39, 'viande boeuf', 2, 10, 9, 'cdc2b7871068', '2020-06-06 13:04:50'),
(40, 'poulait prêt à consommer ', 45, 360, 9, 'cdc2b7871068', '2020-06-06 13:04:50'),
(41, 'sac pomme de terre', 1, 55, 9, 'cdc2b7871068', '2020-06-06 13:04:50');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom_produit` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `promo` int(11) NOT NULL,
  `prix_promo` float NOT NULL,
  `description` text NOT NULL,
  `stock` varchar(11) NOT NULL,
  `url_img` varchar(255) NOT NULL,
  `datec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom_produit`, `prix`, `promo`, `prix_promo`, `description`, `stock`, `url_img`, `datec`) VALUES
(14, 'petit poids vert', 1.5, 11, 2, '                      petit poids vert                      \r\n                    ', '1kg', '1511XX91.png', '2020-06-02 17:39:37'),
(15, 'ognos ', 2.5, 0, 0, '                      \r\n             ognos       ', '3kg', 'product-9.jpg', '2020-06-02 17:40:33'),
(16, 'viande boeuf', 3.5, 11, 5, '                               viande             \r\n                                          \r\n                    ', '1kg', 'Upproduct-1.jpg', '2020-06-02 17:41:52'),
(17, 'poulait prêt à consommer ', 7.5, 11, 8, '                      \r\n                poulait    ', 'poulait', 'POULET-DE-CHAIR210.png', '2020-06-02 17:43:11'),
(18, 'plaquette ouef', 3, 0, 0, '                      oeuf\r\n                    ', 'plaquette', 'f1127lod.jpg', '2020-06-02 17:43:54'),
(19, 'sac pomme de terre', 60, 0, 60, '                                                            pomme de terre      \r\n                                          \r\n                                          \r\n                    ', '160kg', 'Uppomme de T.png', '2020-06-02 18:27:50');

-- --------------------------------------------------------

--
-- Structure de la table `slider2`
--

CREATE TABLE `slider2` (
  `id` int(11) NOT NULL,
  `url_img` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `datec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `slider2`
--

INSERT INTO `slider2` (`id`, `url_img`, `contenu`, `datec`) VALUES
(3, 'Upproduct-1.jpg', '                                                                                                 \r\n                    dav\r\n                                                        ', '2020-06-04 11:26:33'),
(4, 'POULET DE CHAIRE.jpg', '                      \r\n                    gxcusixfqYISFXYQSFY', '2020-06-04 11:30:52'),
(5, 'king.jpg', '                      \r\n                    king', '2020-06-16 09:31:05');

-- --------------------------------------------------------

--
-- Structure de la table `usra`
--

CREATE TABLE `usra` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `fungulo` varchar(255) NOT NULL,
  `pv` varchar(255) NOT NULL,
  `datec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `usra`
--

INSERT INTO `usra` (`id`, `username`, `fungulo`, `pv`, `datec`) VALUES
(1, 'palmegal', 'a7ab8381e2374fdce6920e08dbd9c82e61b6ae4c', '9b8f4f64cbc529de65fb383f29156f1c9a3371cb', '2020-05-31 11:12:30'),
(2, 'webmaster019', 'f4737d1e65054403534d5b7a2054ba9c4d88efc2', '9b8f4f64cbc529de65fb383f29156f1c9a3371cb', '2020-05-31 11:12:30');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cliant`
--
ALTER TABLE `cliant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_client` (`id_client`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `slider2`
--
ALTER TABLE `slider2`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `usra`
--
ALTER TABLE `usra`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `annonces`
--
ALTER TABLE `annonces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `cliant`
--
ALTER TABLE `cliant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `slider2`
--
ALTER TABLE `slider2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `usra`
--
ALTER TABLE `usra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de données : `phpchart`
--
CREATE DATABASE IF NOT EXISTS `phpchart` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phpchart`;

-- --------------------------------------------------------

--
-- Structure de la table `Chart`
--

CREATE TABLE `Chart` (
  `id` int(11) NOT NULL,
  `Userid` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Message` text NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Time` time DEFAULT NULL,
  `Group_Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Groups`
--

CREATE TABLE `Groups` (
  `id` int(11) NOT NULL,
  `Userid` varchar(30) NOT NULL,
  `GName` varchar(30) NOT NULL,
  `Members` text NOT NULL,
  `Date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Profilepictures`
--

CREATE TABLE `Profilepictures` (
  `id` int(11) NOT NULL,
  `ids` varchar(30) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `type` varchar(30) NOT NULL,
  `Size` decimal(10,0) NOT NULL,
  `content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Profilepictures`
--

INSERT INTO `Profilepictures` (`id`, `ids`, `Category`, `name`, `type`, `Size`, `content`) VALUES
(1, '1', 'User', 'IMG_0458.JPG', 'image/jpeg', '194348', 0x494d475f303435382e4a5047);

-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(300) NOT NULL,
  `Sirname` varchar(300) NOT NULL,
  `Mtitle` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Institution` varchar(300) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `Password` varchar(300) NOT NULL,
  `Online` varchar(300) NOT NULL,
  `Time` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Chart`
--
ALTER TABLE `Chart`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Groups`
--
ALTER TABLE `Groups`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Profilepictures`
--
ALTER TABLE `Profilepictures`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Chart`
--
ALTER TABLE `Chart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Groups`
--
ALTER TABLE `Groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Profilepictures`
--
ALTER TABLE `Profilepictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bweteta\",\"table\":\"users\"},{\"db\":\"ans_db\",\"table\":\"users\"},{\"db\":\"ans_db\",\"table\":\"business\"},{\"db\":\"ans_db\",\"table\":\"news\"},{\"db\":\"ans_db\",\"table\":\"admn\"},{\"db\":\"bweteta\",\"table\":\"orders\"},{\"db\":\"bweteta\",\"table\":\"products\"},{\"db\":\"bweteta\",\"table\":\"productimages\"},{\"db\":\"bweteta\",\"table\":\"firebases\"},{\"db\":\"bweteta\",\"table\":\"roles\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-06-25 14:15:29', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"fr\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
