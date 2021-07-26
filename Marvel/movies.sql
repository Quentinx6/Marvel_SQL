-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 26 juil. 2021 à 13:38
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `marvel`
--

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `director` varchar(50) NOT NULL,
  `release_date` year(4) NOT NULL,
  `duration` time NOT NULL,
  `creationDate` timestamp NULL DEFAULT NULL,
  `uptadeDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `title`, `director`, `release_date`, `duration`, `creationDate`, `uptadeDate`) VALUES
(1, 'Avengers', 'Joss Whedon', 2012, '02:23:00', '2021-07-26 09:09:45', '2021-07-26 09:09:45'),
(2, 'Captaine america : First avengers', 'Joe Johnston', 2011, '02:04:00', '2021-07-26 09:09:05', '2021-07-26 09:09:05'),
(3, 'Iron Man', 'Jon Faveau', 2008, '02:06:00', '2021-07-26 09:04:40', '2021-07-26 09:04:40'),
(4, 'Iron Man 2', 'Jon Faveau', 2010, '02:05:00', '2021-07-26 09:03:49', '2021-07-26 09:03:49'),
(5, 'Iron Man 3', 'Shane Black', 2013, '02:10:00', '2021-07-26 09:10:24', '2021-07-26 09:10:24'),
(6, 'L\'incroybale', 'Louis Leterrier', 2008, '01:52:00', '2021-07-26 09:05:30', '2021-07-26 09:05:30');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
