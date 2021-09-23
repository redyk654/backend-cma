-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 18 sep. 2021 à 18:35
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

-- --------------------------------------------------------

--
-- Structure de la table `details_recette`
--

CREATE TABLE `details_recette` (
  `id` int(11) NOT NULL,
  `id_recette` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `recette` int(11) NOT NULL,
  `pourcentage` int(11) NOT NULL,
  `recette_restante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `facture_caisse`
--

CREATE TABLE `facture_caisse` (
  `id_fac` int(11) NOT NULL,
  `id` varchar(255) NOT NULL,
  `caissier` varchar(255) NOT NULL,
  `patient` varchar(255) NOT NULL,
  `prix_total` int(11) NOT NULL,
  `reduction` int(11) NOT NULL,
  `a_payer` int(11) NOT NULL,
  `montant_verse` int(11) NOT NULL,
  `relicat` int(11) NOT NULL,
  `reste_a_payer` int(11) NOT NULL,
  `date_heure` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `facture_pharmacie`
--

CREATE TABLE `facture_pharmacie` (
  `id_fac` int(11) NOT NULL,
  `id` varchar(255) NOT NULL,
  `caissier` varchar(255) NOT NULL,
  `patient` varchar(255) NOT NULL,
  `prix_total` int(11) NOT NULL,
  `a_payer` int(11) NOT NULL,
  `montant_verse` int(11) NOT NULL,
  `relicat` int(11) NOT NULL,
  `reste_a_payer` int(11) NOT NULL,
  `date_heure` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

CREATE TABLE `fournisseurs` (
  `id` int(11) NOT NULL,
  `nom_fournisseur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `id` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `id_facture` varchar(255) NOT NULL,
  `date_vente` datetime NOT NULL,
  `code` varchar(255) NOT NULL,
  `designation` text NOT NULL,
  `categorie` text NOT NULL,
  `date_peremption` varchar(50) NOT NULL,
  `quantite` varchar(255) NOT NULL,
  `prix_total` int(11) NOT NULL,
  `nom_vendeur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `historique_services`
--

CREATE TABLE `historique_services` (
  `id` int(11) NOT NULL,
  `id_facture` varchar(255) NOT NULL,
  `designation` text NOT NULL,
  `prix` int(11) NOT NULL,
  `reduction` int(11) NOT NULL,
  `caissier` varchar(200) NOT NULL,
  `date_fait` date NOT NULL,
  `heure_fait` time NOT NULL,
  `patient` varchar(150) NOT NULL,
  `date_heure` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `date_peremption` varchar(50) NOT NULL,
  `date_approv` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Structure de la table `recettes_caisse`
--

CREATE TABLE `recettes_caisse` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `montant` int(11) NOT NULL,
  `date_versement` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `recettes_enregistres`
--

CREATE TABLE `recettes_enregistres` (
  `id` int(11) NOT NULL,
  `id_recette` varchar(255) NOT NULL,
  `recette_total` int(11) NOT NULL,
  `generalite` int(11) NOT NULL,
  `montant_retire` int(11) NOT NULL,
  `recette_restante` int(11) NOT NULL,
  `caissier` varchar(255) NOT NULL,
  `regisseur` varchar(255) NOT NULL,
  `date_heure` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `designation` text NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `services_urgences`
--

CREATE TABLE `services_urgences` (
  `id` int(11) NOT NULL,
  `designation` text NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs_caisse`
--

CREATE TABLE `utilisateurs_caisse` (
  `id` int(11) NOT NULL,
  `nom_user` varchar(255) NOT NULL,
  `mdpasse` text NOT NULL,
  `rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `approvisionnement`
--
ALTER TABLE `approvisionnement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `details_recette`
--
ALTER TABLE `details_recette`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `facture_caisse`
--
ALTER TABLE `facture_caisse`
  ADD PRIMARY KEY (`id_fac`);

--
-- Index pour la table `facture_pharmacie`
--
ALTER TABLE `facture_pharmacie`
  ADD PRIMARY KEY (`id_fac`);

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
-- Index pour la table `historique_services`
--
ALTER TABLE `historique_services`
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
-- Index pour la table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recettes`
--
ALTER TABLE `recettes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recettes_caisse`
--
ALTER TABLE `recettes_caisse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recettes_enregistres`
--
ALTER TABLE `recettes_enregistres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `services_urgences`
--
ALTER TABLE `services_urgences`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs_caisse`
--
ALTER TABLE `utilisateurs_caisse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `approvisionnement`
--
ALTER TABLE `approvisionnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `details_recette`
--
ALTER TABLE `details_recette`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture_caisse`
--
ALTER TABLE `facture_caisse`
  MODIFY `id_fac` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `facture_pharmacie`
--
ALTER TABLE `facture_pharmacie`
  MODIFY `id_fac` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historique_services`
--
ALTER TABLE `historique_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `infos_approvisionnement`
--
ALTER TABLE `infos_approvisionnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `medicaments`
--
ALTER TABLE `medicaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recettes_caisse`
--
ALTER TABLE `recettes_caisse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recettes_enregistres`
--
ALTER TABLE `recettes_enregistres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `services_urgences`
--
ALTER TABLE `services_urgences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateurs_caisse`
--
ALTER TABLE `utilisateurs_caisse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
