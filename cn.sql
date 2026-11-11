-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 11 nov. 2026 à 02:39
-- Version du serveur : 11.4.9-MariaDB
-- Version de PHP : 8.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cn`
--

-- --------------------------------------------------------

--
-- Structure de la table `cntable`
--

DROP TABLE IF EXISTS `cntable`;
CREATE TABLE IF NOT EXISTS `cntable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cntable`
--

INSERT INTO `cntable` (`id`, `name`, `email`, `password`, `status`, `createdAt`) VALUES
(33, 'diji', 'diji@gmail.com', '$2y$12$1yvxtLYGfelOZ4O7uctd6uQJJ8UV3ckuMt3dxeX6piikzlmOugFEO', 'active', '2026-11-06 16:51:07'),
(53, 'mimi', 'mini@gmail.com', '$2y$12$wF98h6KPuhrOZsfMY2SrVuzlBuD9Dorjho45XoUAXla2I.t3oMNtG', 'active', '2026-11-10 11:45:52'),
(43, 'mimi', 'mini@gmail.com', '$2y$12$fVjF8/mgP.mhO48DULc9huT0LL3KXBgjbauEY4pcWCUo0c0AsOtNa', 'active', '2026-11-06 18:30:29'),
(48, 'LULU', 'LULU@gmail.com', '$2y$12$G1DaFiQ8hHgyOXIeaM7AkuUPBi9VeMEvzxGPk1tyrN22l3W/fqfwW', 'active', '2026-11-06 18:46:07'),
(49, 'didi', 'didi@gmail.com', '$2y$12$WG8ieXaStQz5E.q.g0Ooa.4jBeRtsOEouL9gIZmQFWTNMlWS5ZbvK', 'active', '2026-11-06 18:50:01'),
(50, 'didi', 'didi@gmail.com', '$2y$12$xDBsT4oZ43IaZz97yGE3EOn/PJjNF.AL0KQd8Rrmb3k1OAnJjA4AK', 'active', '2026-11-06 23:49:03'),
(51, 'samy', 'sam@gmail.com', '$2y$12$1VWnq7BTwt5iXG4GWhI.8.XpbK0ieKgCilqxIkEZiWVSkOWFUEf.K', 'active', '2026-11-07 15:11:44'),
(52, 'sam', 'sam@gmail.com', '$2y$12$tCHn532APcPdQHWRnL4/zuAtVxwRuqMpbOgHxexPLxXe8L67FtnVK', 'active', '2026-11-07 15:50:22');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
