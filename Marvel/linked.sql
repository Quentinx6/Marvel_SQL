-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 26 juil. 2021 à 14:11
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

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `linked`
--
ALTER TABLE `linked`
  ADD KEY `FOREIGN` (`id_movie`,`id_actor`) USING BTREE,
  ADD KEY `id_actor` (`id_actor`);

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
