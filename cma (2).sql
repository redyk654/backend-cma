-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 31 août 2021 à 17:47
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
(36, '05aa850000', 'AMAK', 'eferalgan', 'comprimé efervescent', 100, 50, 'plaquette de 10', 800, 130, '02-23'),
(37, '05aa850000', 'MKAS', 'panadol', 'comprimé', 450, 150, 'plaquette de 10', 500, 50, '07-24'),
(38, '05aa850000', 'MASL', 'metronidazol', ' ', 150, 100, ' ', 350, 150, '08-25'),
(39, '05aa850000', 'KAAA', 'paracétamol', 'comprimé', 100, 45, 'plaquette de 10', 1000, 50, '10-25'),
(40, '05aa850000', 'KASL', 'amoxiline', 'comprimé', 100, 50, 'plaquette 20', 750, 100, '12-24'),
(41, '05aa850000', 'MAAS', 'minoxidil 300ml', '', 7500, 5000, 'paquet de 10 tubes', 400, 80, '02-23'),
(42, '05aa850000', 'ZMOS', 'arthemeter', 'comprimé', 1700, 900, 'plaquette de 6', 560, 80, '02-22'),
(43, '061a452611', 'ZMOS', 'arthemeter', 'comprimé', 1700, 900, 'plaquette de 6', 500, 80, '05-22');

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

--
-- Déchargement des données de la table `facture_caisse`
--

INSERT INTO `facture_caisse` (`id_fac`, `id`, `caissier`, `patient`, `prix_total`, `reduction`, `a_payer`, `montant_verse`, `relicat`, `reste_a_payer`, `date_heure`) VALUES
(1, '2772021013157297369722283561740', 'Kamdem', 'Alan Kamga', 19000, 0, 19000, 19000, 500, 0, '2021-08-27 17:40:56'),
(2, '277202101924375024334125612228', 'Kamdem', 'Bob Manga', 22700, 50, 11350, 25000, 2300, 0, '2021-08-27 22:08:12'),
(3, '27720210192913911417408546416', 'Kamdem', 'Chris Kamdem', 22700, 0, 22700, 23000, 300, 0, '2021-08-27 04:16:46'),
(4, '2772021019688351610956039201718', 'Kamdem', 'Richard Fogue', 20000, 0, 20000, 20000, 0, 0, '2021-08-27 17:18:21'),
(5, '277202101989668886005978645414', 'Kamdem', 'Alan Kamga', 54400, 0, 54400, 54400, 300, 0, '2021-08-27 04:14:45'),
(6, '2872021015223530717544449231243', 'Kamdem', 'Bob Manga', 20000, 0, 20000, 20000, 0, 0, '2021-08-28 12:43:23'),
(7, '287202101772056765949621601319', 'Kamdem', 'Richard Kenfack', 8700, 0, 8700, 10000, 1300, 0, '2021-08-28 13:19:01');

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

--
-- Déchargement des données de la table `facture_pharmacie`
--

INSERT INTO `facture_pharmacie` (`id_fac`, `id`, `caissier`, `patient`, `prix_total`, `a_payer`, `montant_verse`, `relicat`, `reste_a_payer`, `date_heure`) VALUES
(1, '2872021010998525637899445671647', 'Kamdem', '', 450, 450, 500, 50, 0, '2021-08-28 16:47:07'),
(2, '2872021015459959621604487521640', 'Kamdem', '', 3400, 3400, 5000, 1600, 0, '2021-08-28 16:40:52'),
(3, '287202101569255699684792101645', 'Kamdem', '', 500, 500, 1000, 500, 0, '2021-08-28 16:45:10'),
(4, '2872021016009976619956636411637', 'Kamdem', '', 2000, 2000, 5000, 3000, 0, '2021-08-28 16:37:42'),
(5, '2872021017462082656066003551545', 'Dr Obam', '', 1900, 1900, 2000, 100, 0, '2021-08-28 15:45:55'),
(6, '28720210192679440163529171615', 'Kamdem', '', 200, 200, 200, 300, 0, '2021-08-28 16:15:18'),
(7, '2872021015929675251130813211658', 'Kamdem', '', 1700, 1700, 2000, 300, 0, '2021-08-28 16:58:21'),
(8, '31720210147152400585266974101445', 'Kamdem', '', 7500, 7500, 8000, 500, 0, '2021-08-31 14:45:11');

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

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`id`, `id_facture`, `date_vente`, `code`, `designation`, `categorie`, `date_peremption`, `quantite`, `prix_total`, `nom_vendeur`) VALUES
(115, '2872021017462082656066003551545', '2021-08-28 15:45:55', 'ZMOS', 'arthemeter', 'comprimé', '02-22', '1', 1700, 'Dr Obam'),
(116, '2872021017462082656066003551545', '2021-08-28 15:45:55', 'KAAA', 'paracétamol', 'comprimé', '10-25', '2', 200, 'Dr Obam'),
(117, '28720210192679440163529171615', '2021-08-28 16:15:17', 'AMAK', 'eferalgan', 'comprimé efervescent', '02-23', '2', 200, 'Kamdem'),
(118, '2872021016009976619956636411637', '2021-08-28 16:37:41', 'KASL', 'amoxiline', 'comprimé', '12-24', '2', 200, 'Kamdem'),
(119, '2872021016009976619956636411637', '2021-08-28 16:37:41', 'ZMOS', 'arthemeter', 'comprimé', '02-22', '1', 1700, 'Kamdem'),
(120, '2872021016009976619956636411637', '2021-08-28 16:37:41', 'AMAK', 'eferalgan', 'comprimé efervescent', '02-23', '1', 100, 'Kamdem'),
(121, '2872021015459959621604487521640', '2021-08-28 16:40:52', 'ZMOS', 'arthemeter', 'comprimé', '02-22', '2', 3400, 'Kamdem'),
(122, '287202101569255699684792101645', '2021-08-28 16:45:10', 'AMAK', 'eferalgan', 'comprimé efervescent', '02-23', '5', 500, 'Kamdem'),
(123, '2872021010998525637899445671647', '2021-08-28 16:47:07', 'MASL', 'metronidazol', ' ', '08-25', '3', 450, 'Kamdem'),
(124, '2872021015929675251130813211658', '2021-08-28 16:58:21', 'ZMOS', 'arthemeter', 'comprimé', '02-22', '1', 1700, 'Kamdem'),
(125, '31720210147152400585266974101445', '2021-08-31 14:45:10', 'MAAS', 'minoxidil 300ml', '', '02-23', '1', 7500, 'Kamdem');

-- --------------------------------------------------------

--
-- Structure de la table `historique_services`
--

CREATE TABLE `historique_services` (
  `id` int(11) NOT NULL,
  `id_facture` varchar(255) NOT NULL,
  `designation` text NOT NULL,
  `prix` int(11) NOT NULL,
  `caissier` varchar(200) NOT NULL,
  `date_fait` date NOT NULL,
  `heure_fait` time NOT NULL,
  `patient` varchar(150) NOT NULL,
  `date_heure` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `historique_services`
--

INSERT INTO `historique_services` (`id`, `id_facture`, `designation`, `prix`, `caissier`, `date_fait`, `heure_fait`, `patient`, `date_heure`) VALUES
(73, '277202101989668886005978645414', 'G6PD', 10800, 'Kamdem', '2021-08-27', '04:14:45', 'Alan Kamga', '2021-08-27 04:14:45'),
(74, '277202101989668886005978645414', 'Genou (F/P + 30° . 60°)', 20000, 'Kamdem', '2021-08-27', '04:14:45', 'Alan Kamga', '2021-08-27 04:14:45'),
(75, '277202101989668886005978645414', 'Prolactine', 20000, 'Kamdem', '2021-08-27', '04:14:45', 'Alan Kamga', '2021-08-27 04:14:45'),
(76, '27720210192913911417408546416', 'Age osseux (main et poignet)', 20000, 'Kamdem', '2021-08-27', '04:16:46', 'Chris Kamdem', '2021-08-27 04:16:46'),
(77, '27720210192913911417408546416', 'Acide urique', 2700, 'Kamdem', '2021-08-27', '04:16:46', 'Chris Kamdem', '2021-08-27 04:16:46'),
(78, '2772021019688351610956039201718', 'ACE', 20000, 'Kamdem', '2021-08-27', '17:18:20', 'Richard Fogue', '2021-08-27 17:18:20'),
(79, '2772021013157297369722283561740', 'AC HVC', 4500, 'Kamdem', '2021-08-27', '17:40:56', 'Alan Kamga', '2021-08-27 17:40:56'),
(80, '2772021013157297369722283561740', 'Articulation antalo-axoidienne', 10000, 'Kamdem', '2021-08-27', '17:40:56', 'Alan Kamga', '2021-08-27 17:40:56'),
(81, '2772021013157297369722283561740', 'ASLO', 4500, 'Kamdem', '2021-08-27', '17:40:56', 'Alan Kamga', '2021-08-27 17:40:56'),
(82, '277202101924375024334125612228', 'ACE', 20000, 'Kamdem', '2021-08-27', '22:08:12', 'Bob Manga', '2021-08-27 22:08:12'),
(83, '277202101924375024334125612228', 'Albumine', 2700, 'Kamdem', '2021-08-27', '22:08:12', 'Bob Manga', '2021-08-27 22:08:12'),
(91, '2872021015223530717544449231243', 'ACE', 20000, 'Kamdem', '2021-08-28', '12:43:23', 'Bob Manga', '2021-08-28 12:43:23'),
(92, '287202101772056765949621601319', 'Acide urique', 2700, 'Kamdem', '2021-08-28', '13:19:00', 'Richard Kenfack', '2021-08-28 13:19:00'),
(93, '287202101772056765949621601319', 'Béta HCG sérique', 6000, 'Kamdem', '2021-08-28', '13:19:00', 'Richard Kenfack', '2021-08-28 13:19:00');

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
(15, '05aa850000', 'B', 'Dr Obam', 850000, '2021-08-28 14:26:54'),
(16, '061a452611', 'A', 'Dr Obam', 452611, '2021-08-31 13:50:48');

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
(344, 'MASL', 'metronidazol', ' ', 150, 100, ' ', 347, 150, '08-25'),
(345, 'MKAS', 'panadol', 'comprimé', 450, 150, 'plaquette de 10', 500, 50, '07-24'),
(346, 'AMAK', 'eferalgan', 'comprimé efervescent', 100, 50, 'plaquette de 10', 792, 130, '02-23'),
(347, 'ZMOS', 'arthemeter', 'comprimé', 1700, 900, 'plaquette de 6', 555, 80, '02-22'),
(348, 'KASL', 'amoxiline', 'comprimé', 100, 50, 'plaquette 20', 748, 100, '12-24'),
(349, 'KAAA', 'paracétamol', 'comprimé', 100, 45, 'plaquette de 10', 998, 50, '10-25'),
(350, 'MAAS', 'minoxidil 300ml', '', 7500, 5000, 'paquet de 10 tubes', 399, 80, '02-23'),
(351, 'ZMOS', 'arthemeter', 'comprimé', 1700, 900, 'plaquette de 6', 500, 80, '05-22');

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id`, `nom`) VALUES
(1, 'Alan Kamga'),
(2, 'Richard Kenfack'),
(3, 'Bob Manga');

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
(5, 'ABC', 400, '2021-07-28 09:40:27'),
(7, 'Kamdem', 7500, '2021-08-31 14:47:46');

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

--
-- Déchargement des données de la table `recettes_caisse`
--

INSERT INTO `recettes_caisse` (`id`, `nom`, `montant`, `date_versement`) VALUES
(1, 'Dr Obam', 192785, '2021-08-19 10:31:45');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `designation` text NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `designation`, `prix`) VALUES
(1, 'Articulation antalo-axoidienne', 10000),
(2, 'Articulation Temporo-Mandibulaire', 10000),
(3, 'Blondeau/Hirtz/Worms/Shuller', 10000),
(4, 'Cavum (Profil)', 10000),
(5, 'Crane (F/P)', 15000),
(6, 'Défilé maxiliaire', 10000),
(7, 'Os propre du nez (OPN)', 10000),
(8, 'Selle turcique', 10000),
(9, 'Sinus complet', 20000),
(10, 'Avant-bras (F/P)', 12000),
(11, 'Bras (F/P)', 12000),
(12, 'Coude (F/P)', 12000),
(13, 'Epaule (F/P)', 12000),
(14, 'Epaule 3 incidences', 20000),
(15, 'Main (F/P)', 10000),
(16, 'Poignet (F/P)', 10000),
(17, 'Doigt (F/P)', 10000),
(18, 'Age osseux (main et poignet)', 20000),
(19, 'Bassin (F/P)', 15000),
(20, 'Calcanéum (F/P)', 10000),
(21, 'Cheville (F/P)', 10000),
(22, 'Fémur (F/P)', 12000),
(23, 'Genou (F/P)', 12000),
(24, 'Genou (F/P + 30° . 60°)', 20000),
(25, 'Hanche (F/P)', 15000),
(26, 'Jambe (F/P)', 12000),
(27, 'Orteil (F/P)', 10000),
(28, 'Pied (F/P)', 10000),
(29, 'Gril costal (F)', 15000),
(30, 'Gril costal (F/P)', 15000),
(31, 'Sternum, clavicule (F/P)', 10000),
(32, 'Thorax (F)', 9000),
(33, 'Thorax (F/P)', 15000),
(34, 'Rachis cervical (F/P + %)', 20000),
(35, 'Rachis cervical (F/P)', 15000),
(36, 'Rachis complet', 45000),
(37, 'Rachis dorsal (F/P)', 15000),
(38, 'Rachis dorso-lombaire (F/P)', 25000),
(39, 'Rashis lombaire (F/P + %)', 20000),
(40, 'Rashis lombaire (F/P)', 15000),
(41, 'Rashis lombo-sacré (F/P)', 15000),
(42, 'Kit d\'accouchement', 6000),
(43, 'Forfait maternité', 10000),
(44, 'Surveillance syntocinon', 5000),
(45, 'Induction', 5000),
(46, 'Suture vaginale', 7500),
(47, 'Suture périnée', 5000),
(48, 'Suture col', 10000),
(49, 'Ami', 1500),
(50, 'Aspiration (du nouveau né)', 2000),
(51, 'Dossier médical', 1000),
(52, 'Réanimation', 5000),
(53, 'Curetage', 25000),
(54, 'Depo-Provera', 500),
(55, 'Pilules', 500),
(56, 'Jadel', 5000),
(57, 'Implanon', 5000),
(58, 'DIU', 5000),
(59, 'Albumine', 2700),
(60, 'Bilirubine totale', 2700),
(61, 'Bilirubine conjuguée', 4500),
(62, 'Calcium', 3600),
(63, 'Cholestérol total', 1800),
(64, 'Cholestérol HDL', 3600),
(65, 'Cholestérol LDL', 3600),
(66, 'Chlore', 2700),
(67, 'Créatinine', 2700),
(68, 'CRP', 3600),
(69, 'Fer sérique', 5400),
(70, 'Glycémie à jeun', 1000),
(71, 'Hémoglobine glycossylée', 10800),
(72, 'Ionogramme (Na, K, Cl)', 9000),
(73, 'Lipides', 6300),
(74, 'Magnesium', 3600),
(75, 'Na + k+', 3600),
(76, 'Phosphore', 2700),
(77, 'Protides', 1800),
(78, 'Triglycérides', 3600),
(79, 'Urée', 2700),
(80, 'Acide urique', 2700),
(81, 'Ferritine', 18000),
(82, 'Glycémie PP', 1800),
(83, 'Lipase', 10800),
(84, 'Amylase', 5400),
(85, 'CPK', 5400),
(86, 'CPK%B', 5400),
(87, 'LDH', 5400),
(88, 'G6PD', 10800),
(89, 'Gamma GT', 4500),
(90, 'Phosphatase Alcalines', 4500),
(91, 'Transaminases (SGOT/SGPT)', 8000),
(92, 'NFS + plaquettes', 6300),
(93, 'VS', 1800),
(94, 'CD4', 0),
(95, 'Groupe sanguin rhésus', 2000),
(96, 'TP', 3600),
(97, 'TCK', 3600),
(98, 'Albumine/Glucose/Cétone', 2000),
(99, 'Lone urinaire', 6300),
(100, 'Créatinurie', 1800),
(101, 'Phosphaturie', 2700),
(102, 'Amylase', 3600),
(103, 'BAAR (3 plvt)', 9000),
(104, 'ECBU (+ ATB', 12000),
(105, 'Chlamydia direct', 14000),
(106, 'Coproculture + ATB', 14000),
(107, 'Hémoculture + ATB', 14000),
(108, 'PLVT ORL + ATB', 14000),
(109, 'Mycoplasme direct', 14000),
(110, 'Plvt cutanné + ATB', 14000),
(111, 'Liq ponction + ATB', 14000),
(112, 'Spermogramme', 14000),
(113, 'Plvt urétal + ATB', 14000),
(114, 'Plvt vaginal + ATB', 14000),
(115, 'Culot urinaire', 2000),
(116, 'Frottis vaginal', 12000),
(117, 'PCV /PU', 2000),
(118, 'Chimie (Alb/Gluc)', 1800),
(119, 'Examen complet', 15300),
(120, 'Antigènes solubles', 12600),
(121, 'Cytobactérioilogie', 9000),
(122, 'Cytologie simple', 3600),
(123, 'Béta HCG sérique', 6000),
(124, 'Béta HCG dosage', 20000),
(125, 'Cortisolémie', 40000),
(126, 'Testotérone', 24000),
(127, 'Oestradiol', 20000),
(128, 'LH', 20000),
(129, 'FSH', 20000),
(130, 'Progestérone', 20000),
(131, 'Prolactine', 20000),
(132, 'T3', 20000),
(133, 'T4', 20000),
(134, 'TSH', 20000),
(135, 'AFP', 20000),
(136, 'ACE', 20000),
(137, 'PSA libre', 25000),
(138, 'PSA totale', 20000),
(139, 'CA 15.3', 30000),
(140, 'Pro BNP', 30000),
(141, 'Troponine', 20000),
(142, 'CA 125', 30000),
(143, 'D-dimeres', 20000),
(144, 'BCE-SKIN SNP', 1800),
(145, 'Coprologie/selles/KOAP', 500),
(146, 'Hémoparasites/GE/HP', 1000),
(147, 'TDR', 200),
(148, 'ASLO', 4500),
(149, 'CRP', 3600),
(150, 'FR', 6300),
(151, 'BW (IPHA/VDRL)', 4500),
(152, 'WIDAL', 3600),
(153, 'TOXO IgM et IgG', 8000),
(154, 'Dosage TOXO IgG et IgM', 12600),
(155, 'RUBEOLE IgM ET IgG', 8000),
(156, 'Dosage RUBEOLE IgM ET IgG', 12600),
(157, 'Chlamydiae indirect', 12600),
(158, 'Chlamydia direct', 8000),
(159, 'Herpes simple 1 et 2', 18000),
(160, 'Rétrovirus dosage Elisa', 12600),
(161, 'RETROVIROSE (SM)', 0),
(162, 'IgE totales', 16200),
(163, 'Dosages Ag HbS', 12600),
(164, 'Ag HBS', 3600),
(165, 'AC HVC', 4500),
(166, 'Ag Hbe', 13500),
(167, 'Ac anti Hbs', 13500),
(168, 'Ac anti Hbc', 13500),
(169, 'Dosage Hépatite (HCV)', 18000),
(170, 'H.PYLORI', 8000),
(171, 'Echographie Abdominale (foie, rate, vésicule biliaire, pancréas…)', 10000),
(172, 'Echographie Abdominopelvienne', 15000),
(173, 'Echographie Pelvienne', 7500),
(174, 'Echographie Pelvienne Endovaginale', 10000),
(175, 'Echographie Mammaire (ou sein)', 10000),
(176, 'Echographie Rénale (ou voies urinaires ou arbres urinaires)', 10000),
(177, 'Echographie Obstétricale (1er, 2e, 3e, trimestre)', 8000),
(178, 'Echographie Reno-Vesico-Prostatique', 20000),
(179, 'Echographie Testiculaire (ou scrotale ou bourses)', 12500),
(180, 'Echographie Thyroidienne, Echographie Cervicale (parotide…)', 20000),
(181, 'Echographie Occulaire', 12000),
(182, 'Echographie parties molles', 10000),
(183, 'Echographie Transfontanellaire', 15000),
(184, 'Echo Doppler Veneux des membres inférieur', 25000),
(185, 'Echo Dopper Artériel des membres', 30000),
(186, 'Echo Dopper Testiculaire', 20000),
(187, 'Echo Dopper des troncs supraortiques', 25000),
(188, 'Echographie Osteo Articulaire (genou, coude, épaule…)', 15000);

-- --------------------------------------------------------

--
-- Structure de la table `services_urgences`
--

CREATE TABLE `services_urgences` (
  `id` int(11) NOT NULL,
  `designation` text NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `services_urgences`
--

INSERT INTO `services_urgences` (`id`, `designation`, `prix`) VALUES
(1, 'Articulation antalo-axoidienne', 10000),
(2, 'Articulation Temporo-Mandibulaire', 10000),
(3, 'Blondeau/Hirtz/Worms/Shuller', 10000),
(4, 'Cavum (Profil)', 10000),
(5, 'Crane (F/P)', 15000),
(6, 'Défilé maxiliaire', 10000),
(7, 'Os propre du nez (OPN)', 10000),
(8, 'Selle turcique', 10000),
(9, 'Sinus complet', 20000),
(10, 'Avant-bras (F/P)', 12000),
(11, 'Bras (F/P)', 12000),
(12, 'Coude (F/P)', 12000),
(13, 'Epaule (F/P)', 12000),
(14, 'Epaule 3 incidences', 20000),
(15, 'Main (F/P)', 10000),
(16, 'Poignet (F/P)', 10000),
(17, 'Doigt (F/P)', 10000),
(18, 'Age osseux (main et poignet)', 20000),
(19, 'Bassin (F/P)', 15000),
(20, 'Calcanéum (F/P)', 10000),
(21, 'Cheville (F/P)', 10000),
(22, 'Fémur (F/P)', 12000),
(23, 'Genou (F/P)', 12000),
(24, 'Genou (F/P + 30° . 60°)', 20000),
(25, 'Hanche (F/P)', 15000),
(26, 'Jambe (F/P)', 12000),
(27, 'Orteil (F/P)', 10000),
(28, 'Pied (F/P)', 10000),
(29, 'Gril costal (F)', 15000),
(30, 'Gril costal (F/P)', 15000),
(31, 'Sternum, clavicule (F/P)', 10000),
(32, 'Thorax (F)', 9000),
(33, 'Thorax (F/P)', 15000),
(34, 'Rachis cervical (F/P + %)', 20000),
(35, 'Rachis cervical (F/P)', 15000),
(36, 'Rachis complet', 45000),
(37, 'Rachis dorsal (F/P)', 15000),
(38, 'Rachis dorso-lombaire (F/P)', 25000),
(39, 'Rashis lombaire (F/P + %)', 20000),
(40, 'Rashis lombaire (F/P)', 15000),
(41, 'Rashis lombo-sacré (F/P)', 15000),
(42, 'Kit d\'accouchement', 6000),
(43, 'Forfait maternité', 10000),
(44, 'Surveillance syntocinon', 5000),
(45, 'Induction', 5000),
(46, 'Suture vaginale', 7500),
(47, 'Suture périnée', 5000),
(48, 'Suture col', 10000),
(49, 'Ami', 1500),
(50, 'Aspiration (du nouveau né)', 2000),
(51, 'Dossier médical', 1000),
(52, 'Réanimation', 5000),
(53, 'Curetage', 25000),
(54, 'Depo-Provera', 500),
(55, 'Pilules', 500),
(56, 'Jadel', 5000),
(57, 'Implanon', 5000),
(58, 'DIU', 5000),
(59, 'Albumine', 2700),
(60, 'Bilirubine totale', 2700),
(61, 'Bilirubine conjuguée', 4500),
(62, 'Calcium', 3600),
(63, 'Cholestérol total', 1800),
(64, 'Cholestérol HDL', 3600),
(65, 'Cholestérol LDL', 3600),
(66, 'Chlore', 2700),
(67, 'Créatinine', 2700),
(68, 'CRP', 3600),
(69, 'Fer sérique', 5400),
(70, 'Glycémie à jeun', 1000),
(71, 'Hémoglobine glycossylée', 10800),
(72, 'Ionogramme (Na, K, Cl)', 9000),
(73, 'Lipides', 6300),
(74, 'Magnesium', 3600),
(75, 'Na + k+', 3600),
(76, 'Phosphore', 2700),
(77, 'Protides', 1800),
(78, 'Triglycérides', 3600),
(79, 'Urée', 2700),
(80, 'Acide urique', 2700),
(81, 'Ferritine', 18000),
(82, 'Glycémie PP', 1800),
(83, 'Lipase', 10800),
(84, 'Amylase', 5400),
(85, 'CPK', 5400),
(86, 'CPK%B', 5400),
(87, 'LDH', 5400),
(88, 'G6PD', 10800),
(89, 'Gamma GT', 4500),
(90, 'Phosphatase Alcalines', 4500),
(91, 'Transaminases (SGOT/SGPT)', 8000),
(92, 'NFS + plaquettes', 6300),
(93, 'VS', 1800),
(94, 'CD4', 0),
(95, 'Groupe sanguin rhésus', 2000),
(96, 'TP', 3600),
(97, 'TCK', 3600),
(98, 'Albumine/Glucose/Cétone', 2000),
(99, 'Lone urinaire', 6300),
(100, 'Créatinurie', 1800),
(101, 'Phosphaturie', 2700),
(102, 'Amylase', 3600),
(103, 'BAAR (3 plvt)', 9000),
(104, 'ECBU (+ ATB', 12000),
(105, 'Chlamydia direct', 14000),
(106, 'Coproculture + ATB', 14000),
(107, 'Hémoculture + ATB', 14000),
(108, 'PLVT ORL + ATB', 14000),
(109, 'Mycoplasme direct', 14000),
(110, 'Plvt cutanné + ATB', 14000),
(111, 'Liq ponction + ATB', 14000),
(112, 'Spermogramme', 14000),
(113, 'Plvt urétal + ATB', 14000),
(114, 'Plvt vaginal + ATB', 14000),
(115, 'Culot urinaire', 2000),
(116, 'Frottis vaginal', 12000),
(117, 'PCV /PU', 2000),
(118, 'Chimie (Alb/Gluc)', 1800),
(119, 'Examen complet', 15300),
(120, 'Antigènes solubles', 12600),
(121, 'Cytobactérioilogie', 9000),
(122, 'Cytologie simple', 3600),
(123, 'Béta HCG sérique', 6000),
(124, 'Béta HCG dosage', 20000),
(125, 'Cortisolémie', 40000),
(126, 'Testotérone', 24000),
(127, 'Oestradiol', 20000),
(128, 'LH', 20000),
(129, 'FSH', 20000),
(130, 'Progestérone', 20000),
(131, 'Prolactine', 20000),
(132, 'T3', 20000),
(133, 'T4', 20000),
(134, 'TSH', 20000),
(135, 'AFP', 20000),
(136, 'ACE', 20000),
(137, 'PSA libre', 25000),
(138, 'PSA totale', 20000),
(139, 'CA 15.3', 30000),
(140, 'Pro BNP', 30000),
(141, 'Troponine', 20000),
(142, 'CA 125', 30000),
(143, 'D-dimeres', 20000),
(144, 'BCE-SKIN SNP', 1800),
(145, 'Coprologie/selles/KOAP', 500),
(146, 'Hémoparasites/GE/HP', 1000),
(147, 'TDR', 200),
(148, 'ASLO', 4500),
(149, 'CRP', 3600),
(150, 'FR', 6300),
(151, 'BW (IPHA/VDRL)', 4500),
(152, 'WIDAL', 3600),
(153, 'TOXO IgM et IgG', 8000),
(154, 'Dosage TOXO IgG et IgM', 12600),
(155, 'RUBEOLE IgM ET IgG', 8000),
(156, 'Dosage RUBEOLE IgM ET IgG', 12600),
(157, 'Chlamydiae indirect', 12600),
(158, 'Chlamydia direct', 8000),
(159, 'Herpes simple 1 et 2', 18000),
(160, 'Rétrovirus dosage Elisa', 12600),
(161, 'RETROVIROSE (SM)', 0),
(162, 'IgE totales', 16200),
(163, 'Dosages Ag HbS', 12600),
(164, 'Ag HBS', 3600),
(165, 'AC HVC', 4500),
(166, 'Ag Hbe', 13500),
(167, 'Ac anti Hbs', 13500),
(168, 'Ac anti Hbc', 13500),
(169, 'Dosage Hépatite (HCV)', 18000),
(170, 'H.PYLORI', 8000),
(171, 'Echographie Abdominale (foie, rate, vésicule biliaire, pancréas…)', 12000),
(172, 'Echographie Abdominopelvienne', 15000),
(173, 'Echographie Pelvienne', 10000),
(174, 'Echographie Pelvienne Endovaginale', 12000),
(175, 'Echographie Mammaire (ou sein)', 12000),
(176, 'Echographie Rénale (ou voies urinaires ou arbres urinaires)', 12000),
(177, 'Echographie Obstétricale (1er, 2e, 3e, trimestre)', 10000),
(178, 'Echographie Reno-Vesico-Prostatique', 20000),
(179, 'Echographie Testiculaire (ou scrotale ou bourses)', 15000),
(180, 'Echographie Thyroidienne, Echographie Cervicale (parotide…)', 20000),
(181, 'Echographie Occulaire', 12000),
(182, 'Echographie parties molles', 10000),
(183, 'Echographie Transfontanellaire', 17500),
(184, 'Echo Doppler Veneux des membres inférieur', 30000),
(185, 'Echo Dopper Artériel des membres', 35000),
(186, 'Echo Dopper Testiculaire', 25000),
(187, 'Echo Dopper des troncs supraortiques', 30000),
(188, 'Echographie Osteo Articulaire (genou, coude, épaule…)', 17000);

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
-- Déchargement des données de la table `utilisateurs_caisse`
--

INSERT INTO `utilisateurs_caisse` (`id`, `nom_user`, `mdpasse`, `rol`) VALUES
(6, 'Dr Obam', '$2y$10$kuNGmByWaOoVLjtMKYWYsOoCUsvpfAa.7ZMcWR60df6nIH1hLj9sy', 'admin'),
(12, 'Kamdem', '$2y$10$0iBNMM7AddyD517NaKK3je31z/7OJXqYET/Cr4r/PbGf9dJfPWxO.', 'caissier');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `approvisionnement`
--
ALTER TABLE `approvisionnement`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `facture_caisse`
--
ALTER TABLE `facture_caisse`
  MODIFY `id_fac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `facture_pharmacie`
--
ALTER TABLE `facture_pharmacie`
  MODIFY `id_fac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT pour la table `historique_services`
--
ALTER TABLE `historique_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `infos_approvisionnement`
--
ALTER TABLE `infos_approvisionnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `medicaments`
--
ALTER TABLE `medicaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT pour la table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `recettes_caisse`
--
ALTER TABLE `recettes_caisse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT pour la table `services_urgences`
--
ALTER TABLE `services_urgences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `utilisateurs_caisse`
--
ALTER TABLE `utilisateurs_caisse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
