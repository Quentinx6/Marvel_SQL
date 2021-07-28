-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 28 juil. 2021 à 09:03
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
-- Structure de la table `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `creationDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`id`, `last_name`, `first_name`, `birth_date`, `creationDate`, `updateDate`) VALUES
(1, 'Evans', 'Christopher', '1981-06-13', '2021-07-26 11:37:08', '2021-07-26 11:37:08'),
(2, 'Downey Junior', 'Robert', '1965-04-04', '2021-07-26 11:38:17', '2021-07-26 11:38:17'),
(3, 'Ruffalo', 'Mark', '1967-11-22', '2021-07-26 11:38:50', '2021-07-26 11:38:50'),
(4, 'Hemsworth', 'Chris', '1983-08-11', '2021-07-26 11:39:23', '2021-07-26 11:39:23'),
(5, 'Scarlett', 'Johansson', '1984-11-22', '2021-07-26 11:39:56', '2021-07-26 11:39:56'),
(6, 'Hiddleston', 'Tom', '1981-02-09', '2021-07-26 11:40:26', '2021-07-26 11:40:26'),
(7, 'Holland', 'Tom', '1996-06-01', '2021-07-27 13:36:27', '2021-07-27 13:36:27');

-- --------------------------------------------------------

--
-- Structure de la table `linked`
--

CREATE TABLE `linked` (
  `id_actor` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `linked`
--

INSERT INTO `linked` (`id_actor`, `id_movie`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(1, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 6);

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
  `updateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `title`, `director`, `release_date`, `duration`, `creationDate`, `updateDate`) VALUES
(1, 'Avengers', 'Joss Whedon', 2012, '02:23:00', '2021-07-26 09:09:45', '2021-07-26 09:09:45'),
(2, 'Captaine america : First avengers', 'Joe Johnston', 2011, '02:04:00', '2021-07-26 09:09:05', '2021-07-26 09:09:05'),
(3, 'Iron Man', 'Jon Faveau', 2008, '02:06:00', '2021-07-26 09:04:40', '2021-07-26 09:04:40'),
(4, 'Iron Man 2', 'Jon Faveau', 2010, '02:05:00', '2021-07-26 09:03:49', '2021-07-26 09:03:49'),
(5, 'Iron Man 3', 'Shane Black', 2013, '02:10:00', '2021-07-26 09:10:24', '2021-07-26 09:10:24'),
(6, 'L\'incroybale HULK', 'Louis Leterrier', 2008, '01:52:00', '2021-07-26 09:05:30', '2021-07-26 09:05:30'),
(7, 'Avengers : ENDGAME', 'Anthony et Joe Russo', 2019, '03:01:00', '2021-07-27 11:32:49', '2021-07-27 11:32:49');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `linked`
--
ALTER TABLE `linked`
  ADD KEY `FOREIGN` (`id_movie`,`id_actor`) USING BTREE,
  ADD KEY `id_actor` (`id_actor`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `linked`
--
ALTER TABLE `linked`
  ADD CONSTRAINT `linked_ibfk_1` FOREIGN KEY (`id_actor`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `linked_ibfk_2` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
