-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 29 juil. 2021 à 23:29
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cma`
--

-- --------------------------------------------------------

--
-- Structure de la table `approvisionnement`
--

CREATE TABLE `approvisionnement` (
  `id` int(11) NOT NULL,
  `id_commande` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `categorie` varchar(100) NOT NULL DEFAULT 'non défini',
  `pu_vente` int(11) NOT NULL,
  `pu_achat` int(11) NOT NULL,
  `conditionnement` text NOT NULL,
  `stock_commande` int(11) NOT NULL,
  `min_rec` int(11) NOT NULL,
  `date_peremption` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `approvisionnement`
--

INSERT INTO `approvisionnement` (`id`, `id_commande`, `code`, `designation`, `categorie`, `pu_vente`, `pu_achat`, `conditionnement`, `stock_commande`, `min_rec`, `date_peremption`) VALUES
(4, 'dd0e5422', 'MKAS', 'panadol', 'comprimé', 450, 150, 'plaquette de 10', 550, 50, '07/24'),
(5, 'dd0e5422', 'KNXA', 'tegretol 250mg', 'comprimé', 4200, 3000, 'plaquette de 10', 300, 80, '05/22'),
(6, 'dd0e5422', 'AMAK', 'eferalgan', 'comprimé efervescent', 100, 50, 'plaquette de 10', 650, 130, '02/23'),
(16, 'e01d485300', 'KAAA', 'paracétamol', 'comprimé', 100, 45, 'plaquette de 10', 752, 50, '10/24'),
(17, 'e01d485300', 'ZMOS', 'arthemeter', 'comprimé', 1700, 900, 'plaquette de 6', 450, 80, '02/22'),
(18, '5bb945825', 'KAAA', 'paracétamol', 'comprimé', 100, 45, 'plaquette de 10', 400, 50, '10/25'),
(19, '1274', 'ZMOS', 'arthemeter', 'comprimé', 1700, 900, 'plaquette de 6', 200, 80, '02/22'),
(20, '0827275000', 'MAAS', 'minoxidil 300ml', '', 7500, 5000, 'paquet de 10 tubes', 200, 80, '02/23');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

CREATE TABLE `fournisseurs` (
  `id` int(11) NOT NULL,
  `nom_fournisseur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fournisseurs`
--

INSERT INTO `fournisseurs` (`id`, `nom_fournisseur`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `id` int(11) NOT NULL,
  `date_vente` datetime NOT NULL,
  `code` varchar(255) NOT NULL,
  `designation` text NOT NULL,
  `quantite` varchar(255) NOT NULL,
  `prix_total` int(11) NOT NULL,
  `nom_vendeur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`id`, `date_vente`, `code`, `designation`, `quantite`, `prix_total`, `nom_vendeur`) VALUES
(37, '2021-07-12 15:38:56', '', 'paracétamol', '1', 100, '1'),
(38, '2021-07-12 15:46:47', '', 'quinine', '2', 300, '1'),
(39, '2021-07-12 15:47:11', '', 'quinine', '5', 750, '1'),
(40, '2021-07-12 23:30:45', '', 'albendazol', '2', 200, 'chrisppo kamdem'),
(41, '2021-07-12 23:36:17', '', 'albendazol', '5', 500, 'chrisppo kamdem'),
(42, '2021-07-13 10:29:13', '', 'paracétamol', '2', 200, 'chrisppo kamdem'),
(43, '2021-07-16 04:19:26', 'MKAS', 'arthemeter', '5', 750, ''),
(44, '2021-07-16 13:34:39', 'MKAS', 'arthemeter', '5', 750, 'chrisppo kamdem'),
(45, '2021-07-20 01:52:34', 'MKAS', 'panadol', '1', 450, 'chrisppo kamdem'),
(46, '2021-07-20 01:52:34', 'ZMOS', 'arthemeter', '1', 1700, 'chrisppo kamdem'),
(47, '2021-07-25 16:39:11', 'ZMOS', 'arthemeter', '9', 15300, 'KAMDEM'),
(48, '2021-07-25 16:39:11', 'KAAA', 'paracétamol', '45', 4500, 'KAMDEM'),
(49, '2021-07-26 08:42:07', 'ZMOS', 'arthemeter', '5', 8500, 'KAMDEM'),
(50, '2021-07-26 08:42:39', 'KNXA', 'tegretol 250mg', '1', 4200, 'KAMDEM'),
(51, '2021-07-26 08:44:43', 'AMAK', 'eferalgan', '2', 200, 'ABC'),
(52, '2021-07-26 08:45:03', 'KAAA', 'paracétamol', '5', 500, 'ABC'),
(53, '2021-07-26 22:37:40', 'KAAA', 'paracétamol', '5', 500, 'ABC'),
(54, '2021-07-26 22:37:55', 'AMAK', 'eferalgan', '2', 200, 'ABC'),
(55, '2021-07-26 22:38:59', 'MKAS', 'panadol', '4', 1800, 'ABC'),
(56, '2021-07-27 04:20:23', 'KNXA', 'tegretol 250mg', '1', 4200, 'ABC'),
(57, '2021-07-27 11:11:24', 'KAAA', 'paracétamol', '10', 1000, 'KAMDEM'),
(58, '2021-07-27 11:11:24', 'KNXA', 'tegretol 250mg', '1', 4200, 'KAMDEM'),
(59, '2021-07-27 11:12:41', 'MKAS', 'arthemeter', '5', 750, 'KAMDEM'),
(60, '2021-07-27 11:12:52', 'AMAK', 'eferalgan', '3', 300, 'KAMDEM'),
(61, '2021-07-27 11:13:34', 'MKAS', 'panadol', '2', 900, 'KAMDEM'),
(62, '2021-07-28 00:21:04', 'KAAA', 'paracétamol', '4', 400, 'ABC'),
(63, '2021-07-28 21:50:41', 'ZMOS', 'arthemeter', '5', 8500, 'Kamdem'),
(64, '2021-07-28 21:54:39', 'MKAS', 'panadol', '4', 1800, 'Kamdem'),
(65, '2021-07-28 21:55:28', 'ZMOS', 'arthemeter', '4', 6800, 'Kamdem'),
(66, '2021-07-28 21:56:13', 'AMAK', 'eferalgan', '2', 200, 'Kamdem');

-- --------------------------------------------------------

--
-- Structure de la table `infos_approvisionnement`
--

CREATE TABLE `infos_approvisionnement` (
  `id` int(11) NOT NULL,
  `id_commande` varchar(255) NOT NULL,
  `fournisseur` varchar(255) NOT NULL,
  `vendeur` varchar(255) NOT NULL,
  `montant` int(11) NOT NULL,
  `date_commande` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `infos_approvisionnement`
--

INSERT INTO `infos_approvisionnement` (`id`, `id_commande`, `fournisseur`, `vendeur`, `montant`, `date_commande`) VALUES
(2, 'dd0e5422', 'B', 'chrisppo kamdem', 5422, '2021-07-19 09:01:44'),
(9, 'e01d485300', 'C', 'chrisppo kamdem', 485300, '2021-07-20 01:41:05'),
(10, '5bb945825', 'A', 'chrisppo kamdem', 45825, '2021-07-24 12:39:40'),
(11, '1274', 'A', 'ABC', 0, '2021-07-28 21:51:33'),
(12, '0827275000', 'C', 'ABC', 275000, '2021-07-29 21:47:34');

-- --------------------------------------------------------

--
-- Structure de la table `medicaments`
--

CREATE TABLE `medicaments` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `categorie` varchar(100) NOT NULL DEFAULT 'non défini',
  `pu_vente` int(11) NOT NULL,
  `pu_achat` int(11) NOT NULL,
  `conditionnement` text NOT NULL,
  `en_stock` int(11) NOT NULL,
  `min_rec` int(11) NOT NULL,
  `date_peremption` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medicaments`
--

INSERT INTO `medicaments` (`id`, `code`, `designation`, `categorie`, `pu_vente`, `pu_achat`, `conditionnement`, `en_stock`, `min_rec`, `date_peremption`) VALUES
(1, '', 'paracétamol', 'comprimé', 100, 0, '', 637, 20, '2021-07-12'),
(4, '', 'albendazol', 'injectable', 100, 0, '', 255, 100, '2021-07-12'),
(11, 'MKAS', 'arthemeter', 'comprimé', 150, 100, 'plaquette de 10', 435, 50, '12/23'),
(15, 'KNXA', 'tegretol 250mg', 'comprimé', 4200, 3000, 'plaquette de 10', 297, 80, '05/22'),
(16, 'AMAK', 'eferalgan', 'comprimé efervescent', 100, 50, 'plaquette de 10', 641, 130, '02/23'),
(17, 'MKAS', 'panadol', 'comprimé', 450, 150, 'plaquette de 10', 539, 50, '07/24'),
(27, 'ZMOS', 'arthemeter', 'comprimé', 1700, 900, 'plaquette de 6', 426, 80, '02/22'),
(28, 'KAAA', 'paracétamol', 'comprimé', 100, 45, 'plaquette de 10', 732, 50, '10/24'),
(29, 'KAAA', 'paracétamol', 'comprimé', 100, 45, 'plaquette de 10', 351, 50, '10/25'),
(30, 'ZMOS', 'arthemeter', 'comprimé', 1700, 900, 'plaquette de 6', 200, 80, '02/22'),
(31, 'MAAS', 'minoxidil 300ml', '', 7500, 5000, 'paquet de 10 tubes', 200, 80, '02/23');

-- --------------------------------------------------------

--
-- Structure de la table `recettes`
--

CREATE TABLE `recettes` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `montant` int(11) NOT NULL,
  `date_versement` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recettes`
--

INSERT INTO `recettes` (`id`, `nom`, `montant`, `date_versement`) VALUES
(2, 'ABC', 6700, '2021-07-27 09:50:06'),
(3, 'KAMDEM', 7150, '2021-07-27 21:38:53'),
(5, 'ABC', 400, '2021-07-28 09:40:27');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom_user` varchar(255) NOT NULL,
  `mdpasse` text NOT NULL,
  `rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom_user`, `mdpasse`, `rol`) VALUES
(6, 'Dr Obam', '$2y$10$kuNGmByWaOoVLjtMKYWYsOoCUsvpfAa.7ZMcWR60df6nIH1hLj9sy', 'admin'),
(7, 'Kamdem', '$2y$10$GaDasqSbXum28xqC/dIai.MMHfFVeyTEaaPei3NSPG0al8V4LpMPu', 'vendeur'),
(10, 'ABC', '$2y$10$80b9pMiEGt9IS0xO2wmVRep1alICbRh8rBhPDVUwL2.5dlK270we.', 'major');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `approvisionnement`
--
ALTER TABLE `approvisionnement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `infos_approvisionnement`
--
ALTER TABLE `infos_approvisionnement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `medicaments`
--
ALTER TABLE `medicaments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recettes`
--
ALTER TABLE `recettes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `approvisionnement`
--
ALTER TABLE `approvisionnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `infos_approvisionnement`
--
ALTER TABLE `infos_approvisionnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `medicaments`
--
ALTER TABLE `medicaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
