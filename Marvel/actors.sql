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
-- Structure de la table `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `craetionDate` datetime NOT NULL,
  `uptadeDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`id`, `first_name`, `last_name`, `birth_date`, `craetionDate`, `uptadeDate`) VALUES
(1, 'Evans', 'Christopher', '1981-06-13', '2021-07-26 11:37:08', '2021-07-26 11:37:08'),
(2, 'Downey Junior', 'Robert', '1965-04-04', '2021-07-26 11:38:17', '2021-07-26 11:38:17'),
(3, 'Ruffalo', 'Mark', '1967-11-22', '2021-07-26 11:38:50', '2021-07-26 11:38:50'),
(4, 'Hemsworth', 'Chris', '1983-08-11', '2021-07-26 11:39:23', '2021-07-26 11:39:23'),
(5, 'Scarlett', 'Johansson', '1984-11-22', '2021-07-26 11:39:56', '2021-07-26 11:39:56'),
(6, 'Hiddleston', 'Tom', '1981-02-09', '2021-07-26 11:40:26', '2021-07-26 11:40:26');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
