-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 09 nov. 2021 à 21:46
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
(43, '061a452611', 'ZMOS', 'arthemeter', 'comprimé', 1700, 900, 'plaquette de 6', 500, 80, '05-22'),
(44, '0cdd25000', 'MASL', 'ibuprofene', ' cp', 150, 100, ' ', 400, 150, '03-24'),
(45, 'fff350000', 'ZMOS', 'arthemeter', 'comprimé', 1700, 900, 'plaquette de 6', 700, 80, '02-25'),
(46, 'fff350000', 'MASL', 'metronidazol', ' ', 200, 100, ' ', 250, 150, '08-25'),
(47, 'c1aa50000', 'MASL', 'ibuprofene', ' cp', 150, 100, ' ', 250, 150, '03-24'),
(48, 'c1aa50000', 'HUIH', 'metronidazol', ' ', 200, 120, ' ', 450, 150, '08-25'),
(49, '7f7250000', 'KASL', 'amoxiline', 'comprimé', 200, 50, 'plaquette 20', 450, 100, '12-24'),
(50, '7f7250000', 'MASL', 'metronidazol', ' ', 200, 100, ' ', 450, 150, '08-25');

-- --------------------------------------------------------

--
-- Structure de la table `data_assurance`
--

CREATE TABLE `data_assurance` (
  `id` int(11) NOT NULL,
  `id_facture` varchar(255) NOT NULL,
  `patient` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `qte` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `categorie` varchar(200) NOT NULL,
  `date_heure` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `data_assurance`
--

INSERT INTO `data_assurance` (`id`, `id_facture`, `patient`, `designation`, `qte`, `prix`, `categorie`, `date_heure`) VALUES
(1, 'd2b4', 'Richard Kenfack', 'CHR K1', 1, 1000, 'service', '2021-10-25 17:28:37'),
(2, '714d', 'ali mohammed', 'CHR Circoncision', 1, 5000, 'service', '2021-10-25 17:29:38'),
(3, 'b58d', 'Alan Kamga', 'paracétamol', 0, 200, 'pharmacie', '2021-10-26 17:26:00'),
(4, 'b58d', 'Alan Kamga', 'arthemeter', 0, 1800, 'pharmacie', '2021-10-26 17:26:00'),
(5, '4eef', 'Alan Kamga', 'arthemeter', 1, 1800, 'pharmacie', '2021-10-26 17:36:42'),
(6, '4e0f', 'Alan Kamga', 'metronidazol', 3, 600, 'pharmacie', '2021-10-27 10:07:26'),
(7, 'bf3e', 'Alan Kamga', 'CHR Incision', 1, 2000, 'service', '2021-10-27 10:45:12'),
(8, 'a96a', 'Alan Kamga', 'LAB Widal et Felix', 1, 3600, 'service', '2021-10-27 16:28:31'),
(9, '3cb9', 'Alan Kamga', 'LAB Widal et Felix', 1, 3600, 'service', '2021-10-27 18:40:00'),
(10, '3cb9', 'Alan Kamga', 'LAB Triglycérides', 1, 3600, 'service', '2021-10-27 18:40:00'),
(11, '59e1', 'Alan Kamga', 'LAB ASLO', 1, 4000, 'service', '2021-10-27 18:45:13'),
(12, 'c2c4', 'Alan Kamga', 'paracétamol', 2, 200, 'pharmacie', '2021-10-27 18:50:02'),
(13, 'c2c4', 'Alan Kamga', 'arthemeter', 1, 1800, 'pharmacie', '2021-10-27 18:50:02'),
(14, '76ab', 'Alan Kamga', 'amoxiline', 2, 500, 'pharmacie', '2021-10-27 18:50:31'),
(15, 'bf01', 'Alan Kamga', 'metronidazol', 1, 200, 'pharmacie', '2021-10-27 18:51:19'),
(16, 'bf01', 'Alan Kamga', 'paracétamol', 2, 200, 'pharmacie', '2021-10-27 18:51:19'),
(17, 'bf01', 'Alan Kamga', 'ibuprofene', 5, 750, 'pharmacie', '2021-10-27 18:51:19'),
(18, 'c2c1', 'Alan Kamga', 'LAB Acide urique', 1, 2700, 'service', '2021-10-27 19:04:49'),
(19, '1c53', 'Alan Kamga', 'LAB Dosage HCV', 1, 18000, 'service', '2021-10-27 21:04:46'),
(20, 'c804', 'Alan Kamga', 'RX Rachis cervical (F/P + %)', 1, 20000, 'service', '2021-10-27 21:05:21'),
(21, 'c804', 'Alan Kamga', 'LAB ACHVC', 1, 4500, 'service', '2021-10-27 21:05:21'),
(22, '3db2', 'Alan Kamga', 'arthemeter', 1, 1800, 'pharmacie', '2021-10-27 21:06:55'),
(23, '3db2', 'Alan Kamga', 'paracétamol', 2, 200, 'pharmacie', '2021-10-27 21:06:55'),
(24, '3db2', 'Alan Kamga', 'ibuprofene', 1, 150, 'pharmacie', '2021-10-27 21:06:55'),
(25, '4c4b', 'Alan Kamga', 'amoxiline', 4, 1000, 'pharmacie', '2021-10-27 21:07:27'),
(26, '4c4b', 'Alan Kamga', 'metronidazol', 1, 200, 'pharmacie', '2021-10-27 21:07:27'),
(27, 'c0db', 'Alan Kamga', 'eferalgan', 2, 200, 'pharmacie', '2021-10-28 15:28:44'),
(28, 'c0db', 'Alan Kamga', 'arthemeter', 1, 1800, 'pharmacie', '2021-10-28 15:28:44'),
(29, '20c7', 'Alan Kamga', 'paracétamol', 2, 200, 'pharmacie', '2021-10-28 15:29:43'),
(30, '20c7', 'Alan Kamga', 'eferalgan', 4, 400, 'pharmacie', '2021-10-28 15:29:43'),
(31, '20c7', 'Alan Kamga', 'ibuprofene', 2, 300, 'pharmacie', '2021-10-28 15:29:43'),
(32, 'e2c0', 'Alan Kamga', 'ibuprofene', 5, 750, 'pharmacie', '2021-10-28 15:30:09'),
(33, '1468', 'abel', 'amoxiline', 4, 1000, 'pharmacie', '2021-10-28 15:31:10'),
(34, '1468', 'abel', 'ibuprofene', 1, 150, 'pharmacie', '2021-10-28 15:31:10'),
(35, 'c4ff', 'ekedi', 'metronidazol', 2, 400, 'pharmacie', '2021-10-28 15:31:50'),
(36, 'c4ff', 'ekedi', 'amoxiline', 1, 250, 'pharmacie', '2021-10-28 15:31:50'),
(37, 'f6d6', 'Alan Kamga', 'LAB Widal et Felix', 1, 3600, 'service', '2021-10-28 15:34:22'),
(38, 'f6d6', 'Alan Kamga', 'LAB Glycémie à jeun', 1, 1000, 'service', '2021-10-28 15:34:22'),
(39, '0de6', 'Alan Kamga', 'LAB Chlamydia', 1, 8000, 'service', '2021-10-28 15:35:01'),
(40, '0de6', 'Alan Kamga', 'LAB Créatine', 1, 2700, 'service', '2021-10-28 15:35:01'),
(41, '0de6', 'Alan Kamga', 'LAB Calcium', 1, 3600, 'service', '2021-10-28 15:35:01'),
(42, '1841', 'abel', 'LAB D.dimeres', 1, 20000, 'service', '2021-10-28 15:35:35'),
(43, '1841', 'abel', 'LAB CRP', 1, 3600, 'service', '2021-10-28 15:35:35'),
(44, 'd9e3', 'ekedi', 'LAB GE', 1, 1000, 'service', '2021-10-28 15:36:08'),
(45, 'd9e3', 'ekedi', 'LAB Fer serique', 1, 5400, 'service', '2021-10-28 15:36:08');

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

--
-- Déchargement des données de la table `details_recette`
--

INSERT INTO `details_recette` (`id`, `id_recette`, `categorie`, `recette`, `pourcentage`, `recette_restante`) VALUES
(1, '867638900', 'Pharmacie', 2800, 0, 2800),
(2, '867638900', 'Maternité', 7600, 0, 7600),
(3, '867638900', 'Laboratoire', 0, 0, 0),
(4, '867638900', 'Radiologie', 20000, 45, 11000),
(5, '867638900', 'Petite chirurgie', 2000, 0, 2000),
(6, '867638900', 'Médécine', 1500, 0, 1500),
(7, '867638900', 'Echographie', 0, 0, 0),
(8, '867638900', 'Consultation', 5000, 0, 5000),
(9, '867638900', 'Upec', 0, 0, 0),
(28, '5b5645000', 'Pharmacie', 0, 0, 0),
(29, '5b5645000', 'Radiologie', 0, 0, 0),
(30, '5b5645000', 'Laboratoire', 35000, 45, 19250),
(31, '5b5645000', 'Maternité', 0, 0, 0),
(32, '5b5645000', 'Echographie', 0, 0, 0),
(33, '5b5645000', 'Médécine', 0, 0, 0),
(34, '5b5645000', 'Petite chirurgie', 10000, 0, 10000),
(35, '5b5645000', 'Consultation', 0, 0, 0),
(36, '5b5645000', 'Upec', 0, 0, 0),
(37, 'd7de33000', 'Pharmacie', 0, 0, 0),
(38, 'd7de33000', 'Radiologie', 15000, 0, 15000),
(39, 'd7de33000', 'Echographie', 0, 0, 0),
(40, 'd7de33000', 'Maternité', 5000, 45, 2750),
(41, 'd7de33000', 'Médécine', 0, 0, 0),
(42, 'd7de33000', 'Petite chirurgie', 12000, 0, 12000),
(43, 'd7de33000', 'Laboratoire', 0, 0, 0),
(44, 'd7de33000', 'Upec', 0, 0, 0),
(45, 'd7de33000', 'Consultation', 1000, 0, 1000),
(46, '1b40144000', 'Pharmacie', 0, 0, 0),
(47, '1b40144000', 'Maternité', 0, 0, 0),
(48, '1b40144000', 'Médécine', 4000, 50, 500),
(49, '1b40144000', 'Laboratoire', 70000, 45, 38500),
(50, '1b40144000', 'Echographie', 12000, 0, 12000),
(51, '1b40144000', 'Petite chirurgie', 26000, 0, 26000),
(52, '1b40144000', 'Radiologie', 32000, 45, 11000),
(53, '1b40144000', 'Upec', 0, 0, 0),
(54, '1b40144000', 'Consultation', 0, 0, 0),
(55, '5402128000', 'Pharmacie', 0, 0, 0),
(56, '5402128000', 'Radiologie', 20000, 0, 0),
(57, '5402128000', 'Maternité', 0, 0, 0),
(58, '5402128000', 'Médécine', 9000, 0, 4500),
(59, '5402128000', 'Laboratoire', 48000, 45, 26400),
(60, '5402128000', 'Echographie', 48000, 0, 48000),
(61, '5402128000', 'Petite chirurgie', 3000, 0, 3000),
(62, '5402128000', 'Upec', 0, 0, 0),
(63, '5402128000', 'Consultation', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `facture_assurance`
--

CREATE TABLE `facture_assurance` (
  `id` int(11) NOT NULL,
  `id_facture` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `assurance` varchar(200) NOT NULL,
  `assurance_type` int(11) NOT NULL,
  `periode` text NOT NULL,
  `total` int(11) NOT NULL,
  `reste` int(11) NOT NULL,
  `date_heure` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `facture_assurance`
--

INSERT INTO `facture_assurance` (`id`, `id_facture`, `nom`, `assurance`, `assurance_type`, `periode`, `total`, `reste`, `date_heure`) VALUES
(1, 'fkf', 'Alan Kamga', 'assuretous', 80, 'du 2021-10-27 au 2021-10-27', 14850, 11880, '2021-10-27 18:53:50'),
(16, 'f6s', 'Alan Kamga', 'assuretous', 80, 'du 2021-10-27 au 2021-10-27', 2700, 2160, '2021-10-27 19:10:05'),
(17, 'mep', 'Bob Manga', 'ascoma', 90, 'du 2021-10-25 au 2021-10-27', 1000, 900, '2021-10-27 19:14:11'),
(18, 'ps1', 'Richard Kenfack', 'ascoma', 80, 'du 2021-10-25 au 2021-10-27', 1000, 800, '2021-10-27 19:19:12'),
(19, '9ne', 'Alan Kamga', 'assuretous', 80, 'du 2021-10-27 au 2021-10-27', 45850, 36680, '2021-10-27 21:10:18'),
(20, 'gqods2v', 'Alan Kamga', 'assuretous', 80, 'du 2021-10-28 au 2021-10-28', 22550, 18040, '2021-10-28 15:49:48'),
(21, 'ohe5voi', 'abel', 'assuretous', 80, 'du 2021-10-28 au 2021-10-28', 24750, 19800, '2021-10-28 15:50:42'),
(22, 'r77ka32', 'ekedi', 'ascoma', 100, 'du 2021-10-25 au 2021-11-02', 7050, 7050, '2021-11-02 11:17:09');

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
  `date_heure` datetime NOT NULL,
  `assurance` varchar(255) NOT NULL,
  `type_assurance` int(11) NOT NULL,
  `statu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `facture_caisse`
--

INSERT INTO `facture_caisse` (`id_fac`, `id`, `caissier`, `patient`, `prix_total`, `reduction`, `a_payer`, `montant_verse`, `relicat`, `reste_a_payer`, `date_heure`, `assurance`, `type_assurance`, `statu`) VALUES
(27, '18820210119979272348512067101124', 'Kamdem', 'Bob Manga', 3000, 0, 3000, 5000, 2000, 0, '2021-09-18 11:24:10', '', 0, ''),
(28, '188202101224209999835409441129', 'Kamdem', 'Bob Manga', 1000, 0, 1000, 1000, 0, 0, '2021-09-18 11:29:44', '', 0, ''),
(29, '18820210104110086000194069151132', 'Kamdem', 'Richard Kenfack', 1000, 0, 1000, 1000, 0, 0, '2021-09-18 11:32:15', '', 0, ''),
(30, '1882021016216561415268023231211', 'Kamdem', 'Alan Kamga', 10000, 0, 10000, 10000, 0, 0, '2021-09-18 12:11:23', '', 0, ''),
(31, '228202101337958321233437481523', 'Kamdem', 'ali mohammed', 37000, 0, 37000, 40000, 3000, 0, '2021-09-22 15:23:08', '', 0, ''),
(32, '2282021015789711085626144291528', 'Dr Obam', 'Richard Kenfack', 100000, 50, 50000, 50000, 0, 0, '2021-09-22 15:28:29', '', 0, ''),
(33, '22820210131175246131643286302252', 'Kamdem', 'Bob Manga', 1000, 0, 1000, 2000, 1000, 0, '2021-09-22 22:52:30', '', 0, ''),
(34, '2282021017403196316881238542252', 'Kamdem', 'Richard Kenfack', 5000, 0, 5000, 5000, 0, 0, '2021-09-22 22:52:54', '', 0, ''),
(35, '238202101198704787165056241954', 'Kamdem', 'Richard Kenfack', 20000, 0, 20000, 20000, 0, 0, '2021-09-23 09:54:01', '', 0, ''),
(36, '238202101177063916033074486957', 'Kamdem', 'Nolla', 6000, 50, 3000, 10000, 7000, 0, '2021-09-23 09:57:06', '', 0, ''),
(37, '19202101623393367672800716055', 'Kamdem', 'Richard Kenfack', 2000, 0, 2000, 2000, 0, 0, '2021-10-01 00:55:17', '', 0, ''),
(38, '19202101950887884150173116114', 'Kamdem', 'Alan Kamga', 10000, 0, 10000, 10000, 0, 0, '2021-10-01 01:14:16', '', 0, ''),
(39, '192021010638884030351858424119', 'Kamdem', 'Bob Manga', 10000, 0, 10000, 10000, 0, 0, '2021-10-01 01:19:24', '', 0, ''),
(40, '192021011134685269710935512142', 'Kamdem', 'Richard Kenfack', 2000, 0, 2000, 2000, 0, 0, '2021-10-01 01:42:12', '', 0, ''),
(41, '19202101226977731707909580144', 'Kamdem', 'ali mohammed', 1000, 0, 1000, 1000, 0, 0, '2021-10-01 01:44:00', '', 0, ''),
(42, '1920210166302306143280356146', 'Kamdem', 'Bob Manga', 14000, 0, 14000, 14000, 0, 0, '2021-10-01 01:46:56', '', 0, ''),
(43, '19202101140995588024167343629', 'Kamdem', 'Bob Manga', 10000, 0, 10000, 10000, 0, 0, '2021-10-01 02:09:36', '', 0, ''),
(44, '19202101386926404517832950210', 'Kamdem', 'ali mohammed', 1000, 0, 1000, 1000, 0, 0, '2021-10-01 02:10:50', '', 0, ''),
(45, '19202101857582479818230838256', 'Kamdem', 'Richard Kenfack', 500, 0, 500, 500, 0, 0, '2021-10-01 02:56:38', '', 0, ''),
(46, '192021010473955552067641955730', 'Kamdem', 'Nolla', 500, 0, 500, 500, 0, 0, '2021-10-01 03:00:57', '', 0, ''),
(47, '392021019275605961920956481922', 'Kamdem', 'Nolla', 112500, 0, 112500, 115000, 2500, 0, '2021-10-03 19:22:48', '', 0, ''),
(48, '392021016269490718940572343', 'Kamdem', 'Richard Kenfack', 28500, 0, 28500, 28500, 0, 0, '2021-10-03 23:43:07', '', 0, ''),
(49, '49202101030359975529935083207', 'Kamdem', 'Nolla', 3000, 0, 3000, 3000, 0, 0, '2021-10-04 00:07:32', '', 0, ''),
(50, '59202101663952295399742150197', 'Kamdem', 'Bob Manga', 55000, 0, 55000, 60000, 5000, 0, '2021-10-05 19:07:50', '', 0, ''),
(51, '69202101665831606096897625836', 'Kamdem', 'Alan Kamga', 13500, 0, 13500, 15000, 1500, 0, '2021-10-06 08:36:25', '', 0, ''),
(52, '69202101858513092452877931838', 'Kamdem', 'ali mohammed', 4500, 0, 4500, 5000, 500, 0, '2021-10-06 08:38:31', '', 0, ''),
(53, '692021019303816969979544291234', 'Kamdem', 'Bob Manga', 1000, 0, 1000, 1000, 0, 0, '2021-10-06 12:34:29', '', 0, ''),
(54, '692021010732292521303827830131', 'Kamdem', 'abel', 10000, 0, 10000, 10000, 0, 0, '2021-10-06 13:01:30', '', 0, ''),
(55, '692021012325474606859818728135', 'Kamdem', 'masse', 50300, 0, 50300, 50300, 0, 0, '2021-10-06 13:05:28', '', 0, ''),
(56, '692021018870879161099268351310', 'Kamdem', 'ekedi', 3500, 0, 3500, 4000, 500, 0, '2021-10-06 13:10:35', '', 0, ''),
(57, '69202101371016474820312491341', 'Kamdem', 'ali mohammed', 1000, 0, 1000, 1000, 0, 0, '2021-10-06 13:41:09', '', 0, ''),
(58, '692021014140097386492354421342', 'Kamdem', 'mbezele', 1000, 0, 1000, 1000, 0, 0, '2021-10-06 13:42:42', '', 0, ''),
(59, '69202101765434379205538501348', 'Kamdem', 'kengne marie', 33100, 0, 33100, 35000, 1900, 0, '2021-10-06 13:48:00', '', 0, ''),
(60, '69202101568828491293746461349', 'Kamdem', 'Nolla', 15000, 0, 15000, 20000, 5000, 0, '2021-10-06 13:49:46', '', 0, ''),
(61, '692021018745001022219552561353', 'Kamdem', 'BABILLON Christian', 5500, 0, 5500, 6000, 500, 0, '2021-10-06 13:53:56', '', 0, ''),
(62, '692021012137960758899633571355', 'Kamdem', 'NOLLA Jules Roland', 15400, 0, 15400, 15500, 100, 0, '2021-10-06 13:55:57', '', 0, ''),
(63, '69202101015887847848990555131357', 'Kamdem', 'BABILLON Christian', 1000, 0, 1000, 1000, 0, 0, '2021-10-06 13:57:13', '', 0, ''),
(64, '11920210132491774748837292294', 'Kamdem', 'ekedi', 7500, 0, 7500, 10000, 2500, 0, '2021-10-11 09:04:22', '', 0, ''),
(66, '1492021010389943647516624171441', 'Kamdem', 'kengne marie', 79400, 0, 79400, 80000, 600, 0, '2021-10-14 14:41:18', '', 0, ''),
(68, '149202101639862157864042181522', 'Kamdem', 'masse', 2000, 0, 2000, 2000, 0, 0, '2021-10-14 15:22:18', '', 0, ''),
(69, '1492021015812375733171891511523', 'Kamdem', 'ali mohammed', 29100, 0, 29100, 30000, 900, 0, '2021-10-14 15:23:51', '', 0, ''),
(70, 'a5cc', 'Kamdem', 'abel', 2000, 0, 2000, 2000, 0, 0, '2021-10-15 11:23:58', '', 0, ''),
(71, '997c', 'Kamdem', 'Omah ley', 5000, 0, 5000, 5000, 0, 0, '2021-10-17 14:54:25', '', 0, ''),
(72, '37b4', 'Kamdem', 'Bob Manga', 62500, 0, 62500, 62500, 0, 0, '2021-10-18 14:10:42', '', 0, ''),
(73, 'cc3a', 'Kamdem', 'mbezele', 35000, 0, 35000, 35000, 0, 0, '2021-10-18 20:43:18', '', 0, ''),
(74, '956f', 'Kamdem', 'Bob Manga', 12000, 0, 2400, 2500, 100, 0, '2021-10-18 22:17:58', '', 0, ''),
(75, 'ffa3', 'Kamdem', 'masse', 11000, 0, 11000, 11000, 0, 0, '2021-10-18 22:22:58', '', 0, ''),
(76, '419d', 'Kamdem', 'bernard nanga', 2000, 0, 2000, 2000, 0, 0, '2021-10-19 10:37:37', 'aucune', 0, 'done'),
(77, '401c', 'Kamdem', 'masse', 4100, 0, 820, 1000, 180, 0, '2021-10-19 10:39:30', 'assure tous', 80, 'pending'),
(78, '620a', 'Kamdem', 'Bob Manga', 1000, 0, 1000, 1000, 0, 0, '2021-10-20 10:35:20', 'aucune', 0, 'done'),
(79, '56a7', 'Kamdem', 'Bob Manga', 1000, 0, 1000, 1000, 0, 0, '2021-10-20 12:03:05', 'aucune', 0, 'done'),
(80, '60c7', 'Kamdem', 'Richard Kenfack', 2000, 0, 2000, 2000, 0, 0, '2021-10-20 12:04:10', 'aucune', 0, 'done'),
(82, '8493', 'Kamdem', 'abel', 7800, 30, 5460, 5460, 0, 0, '2021-10-23 10:47:45', 'aucune', 0, 'done'),
(83, '3afa', 'Kamdem', 'Nolla', 1000, 50, 500, 500, 0, 0, '2021-10-23 10:52:09', 'aucune', 0, 'done'),
(84, 'e868', 'Kamdem', 'Bob Manga', 1000, 30, 700, 700, 0, 0, '2021-10-23 10:55:31', 'aucune', 0, 'done'),
(85, 'c390', 'Kamdem', 'abel', 1000, 0, 1000, 1000, 0, 0, '2021-10-25 16:42:45', 'aucune', 0, 'done'),
(86, '10cb', 'Kamdem', 'Nolla', 3000, 0, 3000, 3000, 0, 0, '2021-10-25 16:44:36', 'aucune', 0, 'done'),
(87, 'be7a', 'Kamdem', 'ali mohammed', 3000, 0, 3000, 3000, 0, 0, '2021-10-25 16:49:09', 'aucune', 0, 'done'),
(88, 'e334', 'Kamdem', 'Nolla', 3000, 30, 2100, 2100, 0, 0, '2021-10-25 16:50:53', 'aucune', 0, 'done'),
(89, '2cc0', 'Kamdem', 'ariane', 1000, 0, 1000, 1000, 0, 0, '2021-10-25 16:58:47', 'aucune', 0, 'done'),
(92, 'ccee', 'Kamdem', 'Bob Manga', 1000, 0, 100, 100, 0, 0, '2021-10-25 17:20:09', 'ascoma', 90, 'done'),
(93, '4696', 'Kamdem', 'Richard Kenfack', 2000, 0, 400, 400, 0, 0, '2021-10-25 17:20:51', 'assuretous', 80, 'pending'),
(94, 'd2b4', 'Kamdem', 'Richard Kenfack', 1000, 0, 200, 200, 0, 0, '2021-10-25 17:28:37', 'ascoma', 80, 'done'),
(95, '714d', 'Kamdem', 'ali mohammed', 5000, 0, 500, 500, 0, 0, '2021-10-25 17:29:39', 'assuretous', 90, 'done'),
(96, 'bf3e', 'Kamdem', 'Alan Kamga', 2000, 0, 400, 400, 0, 0, '2021-10-27 10:45:12', 'assuretous', 80, 'done'),
(97, 'a96a', 'Kamdem', 'Alan Kamga', 3600, 0, 720, 720, 0, 0, '2021-10-27 16:28:31', 'assuretous', 80, 'done'),
(98, '3cb9', 'Kamdem', 'Alan Kamga', 7200, 0, 1440, 1440, 0, 0, '2021-10-27 18:40:00', 'assuretous', 80, 'done'),
(99, '59e1', 'Kamdem', 'Alan Kamga', 4000, 0, 800, 800, 0, 0, '2021-10-27 18:45:13', 'assuretous', 80, 'done'),
(100, 'c2c1', 'Kamdem', 'Alan Kamga', 2700, 0, 540, 540, 0, 0, '2021-10-27 19:04:49', 'assuretous', 80, 'done'),
(101, '1c53', 'Kamdem', 'Alan Kamga', 18000, 0, 3600, 3600, 0, 0, '2021-10-27 21:04:46', 'assuretous', 80, 'done'),
(102, 'c804', 'Kamdem', 'Alan Kamga', 24500, 0, 4900, 4900, 0, 0, '2021-10-27 21:05:21', 'assuretous', 80, 'done'),
(103, 'f6d6', 'Kamdem', 'Alan Kamga', 4600, 0, 920, 920, 0, 0, '2021-10-28 15:34:22', 'assuretous', 80, 'done'),
(104, '0de6', 'Kamdem', 'Alan Kamga', 14300, 0, 2860, 2860, 0, 0, '2021-10-28 15:35:01', 'assuretous', 80, 'done'),
(105, '1841', 'Kamdem', 'abel', 23600, 0, 4720, 4720, 0, 0, '2021-10-28 15:35:35', 'assuretous', 80, 'done'),
(106, 'd9e3', 'Kamdem', 'ekedi', 6400, 0, 0, 0, 0, 6400, '2021-10-28 15:36:08', 'ascoma', 100, 'done');

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
  `date_heure` datetime NOT NULL,
  `assurance` varchar(255) NOT NULL,
  `type_assurance` int(11) NOT NULL,
  `statu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `facture_pharmacie`
--

INSERT INTO `facture_pharmacie` (`id_fac`, `id`, `caissier`, `patient`, `prix_total`, `a_payer`, `montant_verse`, `relicat`, `reste_a_payer`, `date_heure`, `assurance`, `type_assurance`, `statu`) VALUES
(1, '2872021010998525637899445671647', 'Kamdem', '', 450, 450, 500, 50, 0, '2021-08-28 16:47:07', 'aucune', 0, 'done'),
(2, '2872021015459959621604487521640', 'Kamdem', '', 3400, 3400, 5000, 1600, 0, '2021-08-28 16:40:52', 'aucune', 0, 'done'),
(3, '287202101569255699684792101645', 'Kamdem', '', 500, 500, 1000, 500, 0, '2021-08-28 16:45:10', 'aucune', 0, 'done'),
(4, '2872021016009976619956636411637', 'Kamdem', '', 2000, 2000, 5000, 3000, 0, '2021-08-28 16:37:42', 'aucune', 0, 'done'),
(5, '2872021017462082656066003551545', 'Dr Obam', '', 1900, 1900, 2000, 100, 0, '2021-08-28 15:45:55', 'aucune', 0, 'done'),
(6, '28720210192679440163529171615', 'Kamdem', '', 200, 200, 200, 300, 0, '2021-08-28 16:15:18', 'aucune', 0, 'done'),
(7, '2872021015929675251130813211658', 'Kamdem', '', 1700, 1700, 2000, 300, 0, '2021-08-28 16:58:21', 'aucune', 0, 'done'),
(8, '31720210147152400585266974101445', 'Kamdem', '', 7500, 7500, 8000, 500, 0, '2021-08-31 14:45:11', 'aucune', 0, 'done'),
(9, '982021015163569319339008502053', 'Kamdem', '', 1900, 1900, 2000, 100, 0, '2021-09-09 20:53:51', 'aucune', 0, 'done'),
(10, '982021016054554794063649442057', 'Kamdem', '', 900, 900, 2000, 1100, 0, '2021-09-09 20:57:44', 'aucune', 0, 'done'),
(11, '128202101797896356648240911844', 'Kamdem', '', 200, 200, 500, 300, 0, '2021-09-12 08:44:11', 'aucune', 0, 'done'),
(12, '128202101863047056477405848855', 'Kamdem', '', 1000, 1000, 1000, 0, 0, '2021-09-12 08:55:49', 'aucune', 0, 'done'),
(13, '128202101383050614381971233100', 'bob al', '', 200, 200, 200, 0, 0, '2021-09-12 10:00:34', 'aucune', 0, 'done'),
(14, '128202101817046336754300244100', 'Kamdem', '', 500, 500, 500, 0, 0, '2021-09-12 10:00:44', 'aucune', 0, 'done'),
(15, '128202101786752876968559219103', 'Kamdem', '', 100, 100, 100, 0, 0, '2021-09-12 10:03:19', 'aucune', 0, 'done'),
(16, '13820210135565498545334573321429', 'Kamdem', '', 1900, 1900, 2000, 100, 0, '2021-09-13 14:29:33', 'aucune', 0, 'done'),
(17, '1382021014416048914123254451439', 'Kamdem', '', 300, 300, 500, 200, 0, '2021-09-13 14:39:46', 'aucune', 0, 'done'),
(18, '168202101326863571884102381517', 'Kamdem', '', 2925000, 2925000, 2925000, 0, 0, '2021-09-16 15:17:38', 'aucune', 0, 'done'),
(22, '1682021018735009839605452381729', 'Kamdem', '', 7500, 7500, 10000, 2500, 0, '2021-09-16 17:29:38', 'aucune', 0, 'done'),
(25, '188202101280809213982551347133', 'Kamdem', '', 150, 150, 200, 50, 0, '2021-09-18 01:33:47', 'aucune', 0, 'done'),
(26, '188202101372289316529468517159', 'Kamdem', '', 351450, 351450, 355000, 3550, 0, '2021-09-18 01:59:17', 'aucune', 0, 'done'),
(27, '1882021011135815871497352157253', 'Dr Obam', '', 70000, 70000, 70000, 0, 0, '2021-09-18 02:53:57', 'aucune', 0, 'done'),
(28, '18820210152018553719966182932', 'Kamdem', '', 100, 100, 100, 0, 0, '2021-09-18 03:02:29', 'aucune', 0, 'done'),
(29, '1882021014675534760423203428323', 'Kamdem', '', 400, 400, 500, 100, 0, '2021-09-18 03:23:28', 'aucune', 0, 'done'),
(30, '1882021012178017291817815301041', 'Kamdem', '', 2350, 2350, 3000, 650, 0, '2021-09-18 10:41:00', 'aucune', 0, 'done'),
(31, '792021014866090084821688351552', 'Kamdem', 'ross', 200, 200, 500, 300, 0, '2021-10-07 15:52:35', 'aucune', 0, 'done'),
(32, '792021018228985629146843411556', 'Kamdem', 'ariane', 1700, 1700, 2000, 300, 0, '2021-10-07 15:56:41', 'aucune', 0, 'done'),
(33, '79202101600974228178926145162', 'Kamdem', 'ekedi', 200, 200, 500, 300, 0, '2021-10-07 16:02:45', 'aucune', 0, 'done'),
(34, '7920210128566028470537774461649', 'Dr Obam', 'ali mohammed', 100, 100, 0, 0, 100, '2021-10-07 16:49:46', 'aucune', 0, 'done'),
(36, '1092021019236225698463736321847', 'Dr Obam', 'Nolla', 400, 400, 500, 100, 0, '2021-10-10 18:47:32', 'aucune', 0, 'done'),
(38, '119202101440571230639903246839', 'Kamdem', 'NOLLA Jules Roland', 1700, 1700, 2000, 300, 0, '2021-10-11 08:39:47', 'aucune', 0, 'done'),
(39, '119202101614247173344512356848', 'Kamdem', 'kengne marie', 150, 150, 150, 0, 0, '2021-10-11 08:48:57', 'aucune', 0, 'done'),
(41, '11920210111497887400363949291244', 'Kamdem', 'Alan Kamga', 400, 400, 500, 100, 0, '2021-10-11 12:44:29', 'aucune', 0, 'done'),
(42, '7b61', 'Kamdem', 'ross', 200, 200, 0, 0, 200, '2021-10-18 19:30:09', 'aucune', 0, 'done'),
(44, '2433', 'Kamdem', 'Nolla', 200, 200, 0, 0, 200, '2021-10-26 17:33:32', 'aucune', 0, 'done'),
(45, '4eef', 'Kamdem', 'Alan Kamga', 1800, 360, 0, 0, 1800, '2021-10-26 17:36:42', 'assuretous', 80, 'done'),
(46, '4e0f', 'Kamdem', 'Alan Kamga', 600, 120, 0, 0, 600, '2021-10-27 10:07:26', 'assuretous', 80, 'done'),
(47, 'c2c4', 'Kamdem', 'Alan Kamga', 2000, 400, 0, 0, 2000, '2021-10-27 18:50:02', 'assuretous', 80, 'done'),
(48, '76ab', 'Kamdem', 'Alan Kamga', 500, 100, 0, 0, 500, '2021-10-27 18:50:31', 'assuretous', 80, 'done'),
(49, 'bf01', 'Kamdem', 'Alan Kamga', 1150, 230, 0, 0, 1150, '2021-10-27 18:51:20', 'assuretous', 80, 'done'),
(50, '3db2', 'Kamdem', 'Alan Kamga', 2150, 430, 0, 0, 2150, '2021-10-27 21:06:56', 'assuretous', 80, 'done'),
(51, '4c4b', 'Kamdem', 'Alan Kamga', 1200, 240, 0, 0, 1200, '2021-10-27 21:07:28', 'assuretous', 80, 'done'),
(52, 'c0db', 'Kamdem', 'Alan Kamga', 2000, 400, 0, 0, 2000, '2021-10-28 15:28:44', 'assuretous', 80, 'done'),
(53, '20c7', 'Kamdem', 'Alan Kamga', 900, 180, 0, 0, 900, '2021-10-28 15:29:43', 'assuretous', 80, 'done'),
(54, 'e2c0', 'Kamdem', 'Alan Kamga', 750, 150, 0, 0, 750, '2021-10-28 15:30:09', 'assuretous', 80, 'done'),
(55, '1468', 'Kamdem', 'abel', 1150, 230, 0, 0, 230, '2021-10-28 15:31:10', 'assuretous', 80, 'done'),
(56, 'c4ff', 'Kamdem', 'ekedi', 650, 0, 0, 0, 0, '2021-10-28 15:31:50', 'ascoma', 100, 'done'),
(57, 'd0bd', 'Dr Obam', 'abel', 100, 100, 0, 0, 100, '2021-11-02 10:20:12', 'aucune', 0, 'done');

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
  `id_prod` int(11) NOT NULL,
  `id_facture` varchar(255) NOT NULL,
  `date_vente` datetime NOT NULL,
  `code` varchar(255) NOT NULL,
  `designation` text NOT NULL,
  `categorie` text NOT NULL,
  `date_peremption` varchar(50) NOT NULL,
  `quantite` varchar(255) NOT NULL,
  `prix_total` int(11) NOT NULL,
  `nom_vendeur` varchar(255) NOT NULL,
  `status_vente` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`id`, `id_prod`, `id_facture`, `date_vente`, `code`, `designation`, `categorie`, `date_peremption`, `quantite`, `prix_total`, `nom_vendeur`, `status_vente`) VALUES
(145, 352, '188202101280809213982551347133', '2021-09-18 01:33:47', 'MASL', 'ibuprofene', ' cp', '03-24', '1', 150, 'Dr Obam', 'payé'),
(148, 346, '18820210152018553719966182932', '2021-09-18 03:02:29', 'AMAK', 'eferalgan', 'comprimé efervescent', '02-23', '1', 100, 'Dr Obam', 'payé'),
(149, 348, '1882021014675534760423203428323', '2021-09-18 03:23:28', 'KASL', 'amoxiline', 'comprimé', '12-24', '1', 200, 'Dr Obam', 'payé'),
(150, 346, '1882021014675534760423203428323', '2021-09-18 03:23:28', 'AMAK', 'eferalgan', 'comprimé efervescent', '02-23', '2', 200, 'Dr Obam', 'payé'),
(151, 349, '1882021012178017291817815301041', '2021-09-18 10:41:00', 'KAAA', 'paracétamol', 'comprimé', '10-25', '2', 200, 'Kamdem', 'payé'),
(152, 351, '1882021012178017291817815301041', '2021-09-18 10:41:00', 'ZMOS', 'arthemeter', 'comprimé', '05-22', '1', 1700, 'Kamdem', 'payé'),
(153, 352, '1882021012178017291817815301041', '2021-09-18 10:41:00', 'MASL', 'ibuprofene', ' cp', '03-24', '3', 450, 'Kamdem', 'payé'),
(154, 348, '792021018512142716597291431545', '2021-10-07 15:45:43', 'KASL', 'amoxiline', 'comprimé', '12-24', '1', 200, 'Kamdem', 'payé'),
(155, 351, '792021018512142716597291431545', '2021-10-07 15:45:43', 'ZMOS', 'arthemeter', 'comprimé', '05-22', '2', 3400, 'Kamdem', 'payé'),
(156, 348, '792021014866090084821688351552', '2021-10-07 15:52:35', 'KASL', 'amoxiline', 'comprimé', '12-24', '1', 200, 'Kamdem', 'payé'),
(157, 347, '792021018228985629146843411556', '2021-10-07 15:56:41', 'ZMOS', 'arthemeter', 'comprimé', '02-22', '1', 1700, 'Kamdem', 'payé'),
(158, 344, '79202101600974228178926145162', '2021-10-07 16:02:45', 'MASL', 'metronidazol', ' ', '08-25', '1', 200, 'Kamdem', 'payé'),
(159, 349, '7920210128566028470537774461649', '2021-10-07 16:49:46', 'KAAA', 'paracétamol', 'comprimé', '10-25', '1', 100, 'Dr Obam', 'non payé'),
(161, 348, '1092021019236225698463736321847', '2021-10-10 18:47:32', 'KASL', 'amoxiline', 'comprimé', '12-24', '1', 200, 'Dr Obam', 'payé'),
(162, 349, '1092021019236225698463736321847', '2021-10-10 18:47:32', 'KAAA', 'paracétamol', 'comprimé', '10-25', '2', 200, 'Dr Obam', 'payé'),
(164, 347, '119202101440571230639903246839', '2021-10-11 08:39:46', 'ZMOS', 'arthemeter', 'comprimé', '02-22', '1', 1700, 'Kamdem', 'payé'),
(165, 352, '119202101614247173344512356848', '2021-10-11 08:48:57', 'MASL', 'ibuprofene', ' cp', '03-24', '1', 150, 'ABC', 'payé'),
(168, 344, '11920210111497887400363949291244', '2021-10-11 12:44:29', 'MASL', 'metronidazol', ' ', '08-25', '2', 400, 'Kamdem', 'payé'),
(169, 344, '7b61', '2021-10-18 19:30:08', 'MASL', 'metronidazol', ' ', '08-25', '1', 200, 'Kamdem', 'non payé'),
(170, 347, 'b58d', '2021-10-26 17:26:00', 'ZMOS', 'arthemeter', 'pharmacie', '02-22', '1', 1800, 'Kamdem', 'non payé'),
(171, 349, 'b58d', '2021-10-26 17:26:01', 'KAAA', 'paracétamol', 'pharmacie', '10-25', '2', 200, 'Kamdem', 'non payé'),
(172, 349, '2433', '2021-10-26 17:33:32', 'KAAA', 'paracétamol', 'comprimé', '10-25', '2', 200, 'Kamdem', 'non payé'),
(173, 347, '4eef', '2021-10-26 17:36:42', 'ZMOS', 'arthemeter', 'pharmacie', '02-22', '1', 1800, 'Kamdem', 'non payé'),
(174, 344, '4e0f', '2021-10-27 10:07:26', 'MASL', 'metronidazol', 'pharmacie', '08-25', '3', 600, 'Kamdem', 'non payé'),
(175, 347, 'c2c4', '2021-10-27 18:50:02', 'ZMOS', 'arthemeter', 'pharmacie', '02-22', '1', 1800, 'Kamdem', 'non payé'),
(176, 349, 'c2c4', '2021-10-27 18:50:02', 'KAAA', 'paracétamol', 'pharmacie', '10-25', '2', 200, 'Kamdem', 'non payé'),
(177, 348, '76ab', '2021-10-27 18:50:31', 'KASL', 'amoxiline', 'pharmacie', '12-24', '2', 500, 'Kamdem', 'non payé'),
(178, 416, 'bf01', '2021-10-27 18:51:19', 'MASL', 'metronidazol', 'pharmacie', '08-25', '1', 200, 'Kamdem', 'non payé'),
(179, 349, 'bf01', '2021-10-27 18:51:19', 'KAAA', 'paracétamol', 'pharmacie', '10-25', '2', 200, 'Kamdem', 'non payé'),
(180, 418, 'bf01', '2021-10-27 18:51:19', 'MASL', 'ibuprofene', 'pharmacie', '03-24', '5', 750, 'Kamdem', 'non payé'),
(181, 347, '3db2', '2021-10-27 21:06:55', 'ZMOS', 'arthemeter', 'pharmacie', '02-22', '1', 1800, 'Kamdem', 'non payé'),
(182, 349, '3db2', '2021-10-27 21:06:55', 'KAAA', 'paracétamol', 'pharmacie', '10-25', '2', 200, 'Kamdem', 'non payé'),
(183, 352, '3db2', '2021-10-27 21:06:55', 'MASL', 'ibuprofene', 'pharmacie', '03-24', '1', 150, 'Kamdem', 'non payé'),
(184, 348, '4c4b', '2021-10-27 21:07:27', 'KASL', 'amoxiline', 'pharmacie', '12-24', '4', 1000, 'Kamdem', 'non payé'),
(185, 416, '4c4b', '2021-10-27 21:07:27', 'MASL', 'metronidazol', 'pharmacie', '08-25', '1', 200, 'Kamdem', 'non payé'),
(186, 346, 'c0db', '2021-10-28 15:28:44', 'AMAK', 'eferalgan', 'pharmacie', '02-23', '2', 200, 'Kamdem', 'non payé'),
(187, 415, 'c0db', '2021-10-28 15:28:44', 'ZMOS', 'arthemeter', 'pharmacie', '02-25', '1', 1800, 'Kamdem', 'non payé'),
(188, 418, '20c7', '2021-10-28 15:29:43', 'MASL', 'ibuprofene', 'pharmacie', '03-24', '2', 300, 'Kamdem', 'non payé'),
(189, 349, '20c7', '2021-10-28 15:29:43', 'KAAA', 'paracétamol', 'pharmacie', '10-25', '2', 200, 'Kamdem', 'non payé'),
(190, 346, '20c7', '2021-10-28 15:29:43', 'AMAK', 'eferalgan', 'pharmacie', '02-23', '4', 400, 'Kamdem', 'non payé'),
(191, 352, 'e2c0', '2021-10-28 15:30:09', 'MASL', 'ibuprofene', 'pharmacie', '03-24', '5', 750, 'Kamdem', 'non payé'),
(192, 348, '1468', '2021-10-28 15:31:10', 'KASL', 'amoxiline', 'pharmacie', '12-24', '4', 1000, 'Kamdem', 'non payé'),
(193, 418, '1468', '2021-10-28 15:31:10', 'MASL', 'ibuprofene', 'pharmacie', '03-24', '1', 150, 'Kamdem', 'non payé'),
(194, 419, 'c0db', '2021-10-28 15:31:50', 'MASL', 'metronidazol', 'pharmacie', '08-25', '2', 400, 'Kamdem', 'non payé'),
(195, 420, 'c0db', '2021-10-28 15:31:50', 'KASL', 'amoxiline', 'pharmacie', '12-24', '1', 250, 'Kamdem', 'non payé'),
(196, 349, 'd0bd', '2021-11-02 10:20:12', 'KAAA', 'paracétamol', 'comprimé', '10-25', '1', 100, 'Dr Obam', 'non payé');

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

--
-- Déchargement des données de la table `historique_services`
--

INSERT INTO `historique_services` (`id`, `id_facture`, `designation`, `prix`, `reduction`, `caissier`, `date_fait`, `heure_fait`, `patient`, `date_heure`) VALUES
(96, '28202101238525838550711281438', 'Echo Dopper Artériel des membres', 30000, 0, 'Kamdem', '2021-09-02', '14:38:08', 'Alan Kamga', '2021-09-02 14:38:08'),
(97, '28202101238525838550711281438', 'Echo Dopper Testiculaire', 20000, 0, 'Kamdem', '2021-09-02', '14:38:08', 'Alan Kamga', '2021-09-02 14:38:08'),
(103, '1182021017596495358606052161329', 'CHR K10', 10000, 0, 'Kamdem', '2021-09-11', '13:29:16', 'Alan Kamga', '2021-09-11 13:29:16'),
(104, '1182021017596495358606052161329', 'LAB Chlamydia PCR', 35000, 0, 'Kamdem', '2021-09-11', '13:29:16', 'Alan Kamga', '2021-09-11 13:29:16'),
(113, '1682021018408735957414133282217', 'CHR K12', 12000, 0, 'Dr Obam', '2021-09-16', '22:17:28', 'Alan Kamga', '2021-09-16 22:17:28'),
(114, '1682021018408735957414133282217', 'RX Blondeau/Hirtz/Worms/Shuller', 10000, 0, 'Dr Obam', '2021-09-16', '22:17:28', 'Alan Kamga', '2021-09-16 22:17:28'),
(115, '1682021012195193128100234682258', 'CHR K1', 1000, 0, 'Dr Obam', '2021-09-16', '22:58:08', 'Alan Kamga', '2021-09-16 22:58:08'),
(116, '1682021012195193128100234682258', 'RX Articulation Temporo-Mandibulaire', 10000, 0, 'Dr Obam', '2021-09-16', '22:58:08', 'Alan Kamga', '2021-09-16 22:58:08'),
(117, '1882021013271593307467855341057', 'LAB Acide urique', 2700, 0, 'Kamdem', '2021-09-18', '10:57:34', 'Richard Kenfack', '2021-09-18 10:57:34'),
(118, '1882021012876534094165370512116', 'CHR K10', 10000, 0, 'Kamdem', '2021-09-18', '11:06:12', 'ali mohammed', '2021-09-18 11:06:12'),
(119, '1882021011389919789360685254117', 'CHR Circoncision', 5000, 0, 'Kamdem', '2021-09-18', '11:07:54', 'ali mohammed', '2021-09-18 11:07:54'),
(120, '188202101773885926308220157118', 'CHR K1', 1000, 0, 'Kamdem', '2021-09-18', '11:08:57', 'Richard Kenfack', '2021-09-18 11:08:57'),
(121, '188202101773885926308220157118', 'MDN Ami', 1500, 0, 'Kamdem', '2021-09-18', '11:08:57', 'Richard Kenfack', '2021-09-18 11:08:57'),
(122, '18820210119979272348512067101124', 'CTN Consultation pédiatre', 3000, 0, 'Kamdem', '2021-09-18', '11:24:10', 'Bob Manga', '2021-09-18 11:24:10'),
(123, '188202101224209999835409441129', 'MDN Pose cathether', 1000, 0, 'Kamdem', '2021-09-18', '11:29:44', 'Bob Manga', '2021-09-18 11:29:44'),
(124, '18820210104110086000194069151132', 'CHR K1', 1000, 0, 'Kamdem', '2021-09-18', '11:32:15', 'Richard Kenfack', '2021-09-18 11:32:15'),
(125, '1882021016216561415268023231211', 'Echographie parties molles', 10000, 0, 'Kamdem', '2021-09-18', '12:11:23', 'Alan Kamga', '2021-09-18 12:11:23'),
(126, '228202101337958321233437481523', 'MTNT Suture col', 10000, 0, 'Kamdem', '2021-09-22', '15:23:08', 'ali mohammed', '2021-09-22 15:23:08'),
(127, '228202101337958321233437481523', 'CHR K12', 12000, 0, 'Kamdem', '2021-09-22', '15:23:08', 'ali mohammed', '2021-09-22 15:23:08'),
(128, '228202101337958321233437481523', 'RX Bassin (F/P)', 15000, 0, 'Kamdem', '2021-09-22', '15:23:08', 'ali mohammed', '2021-09-22 15:23:08'),
(129, '2282021015789711085626144291528', 'CHR K100', 50000, 50, 'Dr Obam', '2021-09-22', '15:28:29', 'Richard Kenfack', '2021-09-22 15:28:29'),
(130, '22820210131175246131643286302252', 'CO Carnet pédiatrie', 1000, 0, 'Kamdem', '2021-09-22', '22:52:30', 'Bob Manga', '2021-09-22 22:52:30'),
(131, '2282021017403196316881238542252', 'MA Induction', 5000, 0, 'Kamdem', '2021-09-22', '22:52:54', 'Richard Kenfack', '2021-09-22 22:52:54'),
(132, '238202101198704787165056241954', 'RX Age osseux (main et poignet)', 20000, 0, 'Kamdem', '2021-09-23', '09:54:01', 'Richard Kenfack', '2021-09-23 09:54:01'),
(133, '238202101177063916033074486957', 'CHR K1', 500, 50, 'Kamdem', '2021-09-23', '09:57:06', 'Nolla', '2021-09-23 09:57:06'),
(134, '238202101177063916033074486957', 'CHR K5', 2500, 50, 'Kamdem', '2021-09-23', '09:57:06', 'Nolla', '2021-09-23 09:57:06'),
(135, '19202101623393367672800716055', 'CHR Incision', 2000, 0, 'Kamdem', '2021-10-01', '00:55:16', 'Richard Kenfack', '2021-10-01 00:55:16'),
(136, '19202101950887884150173116114', 'CHR K10', 10000, 0, 'Kamdem', '2021-10-01', '01:14:16', 'Alan Kamga', '2021-10-01 01:14:16'),
(137, '192021010638884030351858424119', 'CHR K10', 10000, 0, 'Kamdem', '2021-10-01', '01:19:24', 'Bob Manga', '2021-10-01 01:19:24'),
(138, '192021011134685269710935512142', 'CHR Incision', 2000, 0, 'Kamdem', '2021-10-01', '01:42:12', 'Richard Kenfack', '2021-10-01 01:42:12'),
(139, '19202101226977731707909580144', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-01', '01:44:00', 'ali mohammed', '2021-10-01 01:44:00'),
(140, '1920210166302306143280356146', 'CHR K14', 14000, 0, 'Kamdem', '2021-10-01', '01:46:56', 'Bob Manga', '2021-10-01 01:46:56'),
(141, '19202101140995588024167343629', 'CHR K10', 10000, 0, 'Kamdem', '2021-10-01', '02:09:36', 'Bob Manga', '2021-10-01 02:09:36'),
(142, '19202101386926404517832950210', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-01', '02:10:50', 'ali mohammed', '2021-10-01 02:10:50'),
(145, '392021019275605961920956481922', 'CHR K10', 10000, 0, 'Kamdem', '2021-10-03', '19:22:48', 'Nolla', '2021-10-03 19:22:48'),
(146, '392021019275605961920956481922', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-03', '19:22:48', 'Nolla', '2021-10-03 19:22:48'),
(147, '392021019275605961920956481922', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-03', '19:22:48', 'Nolla', '2021-10-03 19:22:48'),
(148, '392021019275605961920956481922', 'LAB ACHVC', 4500, 0, 'Kamdem', '2021-10-03', '19:22:48', 'Nolla', '2021-10-03 19:22:48'),
(149, '392021019275605961920956481922', 'LAB AMH', 48000, 0, 'Kamdem', '2021-10-03', '19:22:48', 'Nolla', '2021-10-03 19:22:48'),
(150, '392021019275605961920956481922', 'MED Ami', 1500, 0, 'Kamdem', '2021-10-03', '19:22:48', 'Nolla', '2021-10-03 19:22:48'),
(151, '392021019275605961920956481922', 'MED Ami', 1500, 0, 'Kamdem', '2021-10-03', '19:22:48', 'Nolla', '2021-10-03 19:22:48'),
(152, '392021019275605961920956481922', 'MED Dossier médical', 1000, 0, 'Kamdem', '2021-10-03', '19:22:48', 'Nolla', '2021-10-03 19:22:48'),
(153, '392021019275605961920956481922', 'Echographie Pelvienne Endovaginale', 12000, 0, 'Kamdem', '2021-10-03', '19:22:48', 'Nolla', '2021-10-03 19:22:48'),
(154, '392021019275605961920956481922', 'RX Age osseux (main et poignet)', 20000, 0, 'Kamdem', '2021-10-03', '19:22:48', 'Nolla', '2021-10-03 19:22:48'),
(155, '392021019275605961920956481922', 'RX Bras (F/P)', 12000, 0, 'Kamdem', '2021-10-03', '19:22:48', 'Nolla', '2021-10-03 19:22:48'),
(156, '392021016269490718940572343', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-03', '23:43:07', 'Richard Kenfack', '2021-10-03 23:43:07'),
(157, '392021016269490718940572343', 'CHR K10', 10000, 0, 'Kamdem', '2021-10-03', '23:43:07', 'Richard Kenfack', '2021-10-03 23:43:07'),
(158, '392021016269490718940572343', 'LAB AC anti Hbs', 13500, 0, 'Kamdem', '2021-10-03', '23:43:07', 'Richard Kenfack', '2021-10-03 23:43:07'),
(159, '392021016269490718940572343', 'LAB ASLO', 4000, 0, 'Kamdem', '2021-10-03', '23:43:07', 'Richard Kenfack', '2021-10-03 23:43:07'),
(160, '49202101030359975529935083207', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-04', '00:07:32', 'Nolla', '2021-10-04 00:07:32'),
(161, '49202101030359975529935083207', 'CHR K2', 2000, 0, 'Kamdem', '2021-10-04', '00:07:32', 'Nolla', '2021-10-04 00:07:32'),
(162, '5920210101911466067047529219196', 'LAB ACE', 20000, 0, 'Kamdem', '2021-10-05', '19:06:19', 'Bob Manga', '2021-10-05 19:06:19'),
(163, '5920210101911466067047529219196', 'Echographie Occulaire', 12000, 0, 'Kamdem', '2021-10-05', '19:06:19', 'Bob Manga', '2021-10-05 19:06:19'),
(164, '5920210101911466067047529219196', 'RX Sternum, clavicule (F/P)', 10000, 0, 'Kamdem', '2021-10-05', '19:06:19', 'Bob Manga', '2021-10-05 19:06:19'),
(165, '5920210101911466067047529219196', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-05', '19:06:19', 'Bob Manga', '2021-10-05 19:06:19'),
(166, '5920210101911466067047529219196', 'Echographie Occulaire', 12000, 0, 'Kamdem', '2021-10-05', '19:06:19', 'Bob Manga', '2021-10-05 19:06:19'),
(167, '59202101663952295399742150197', 'Echographie Occulaire', 12000, 0, 'Kamdem', '2021-10-05', '19:07:50', 'Bob Manga', '2021-10-05 19:07:50'),
(168, '59202101663952295399742150197', 'Echographie Occulaire', 12000, 0, 'Kamdem', '2021-10-05', '19:07:50', 'Bob Manga', '2021-10-05 19:07:50'),
(169, '59202101663952295399742150197', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-05', '19:07:50', 'Bob Manga', '2021-10-05 19:07:50'),
(170, '59202101663952295399742150197', 'LAB ACE', 20000, 0, 'Kamdem', '2021-10-05', '19:07:50', 'Bob Manga', '2021-10-05 19:07:50'),
(171, '59202101663952295399742150197', 'RX Sternum, clavicule (F/P)', 10000, 0, 'Kamdem', '2021-10-05', '19:07:50', 'Bob Manga', '2021-10-05 19:07:50'),
(172, '69202101665831606096897625836', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-06', '08:36:25', 'Alan Kamga', '2021-10-06 08:36:25'),
(173, '69202101665831606096897625836', 'MED Ami', 1500, 0, 'Kamdem', '2021-10-06', '08:36:25', 'Alan Kamga', '2021-10-06 08:36:25'),
(174, '69202101665831606096897625836', 'MED Ami', 1500, 0, 'Kamdem', '2021-10-06', '08:36:25', 'Alan Kamga', '2021-10-06 08:36:25'),
(175, '69202101665831606096897625836', 'LAB Transaminases (SGOT/SGPT)', 8000, 0, 'Kamdem', '2021-10-06', '08:36:25', 'Alan Kamga', '2021-10-06 08:36:25'),
(176, '69202101665831606096897625836', 'MED Ami', 1500, 0, 'Kamdem', '2021-10-06', '08:36:25', 'Alan Kamga', '2021-10-06 08:36:25'),
(177, '69202101858513092452877931838', 'MED Soins infirmiers', 1000, 0, 'Kamdem', '2021-10-06', '08:38:31', 'ali mohammed', '2021-10-06 08:38:31'),
(178, '69202101858513092452877931838', 'MED Dossier médical', 1000, 0, 'Kamdem', '2021-10-06', '08:38:31', 'ali mohammed', '2021-10-06 08:38:31'),
(179, '69202101858513092452877931838', 'MED Pose cathether', 1000, 0, 'Kamdem', '2021-10-06', '08:38:31', 'ali mohammed', '2021-10-06 08:38:31'),
(180, '69202101858513092452877931838', 'MED Hospitalisation simple', 1500, 0, 'Kamdem', '2021-10-06', '08:38:31', 'ali mohammed', '2021-10-06 08:38:31'),
(181, '692021019303816969979544291234', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-06', '12:34:29', 'Bob Manga', '2021-10-06 12:34:29'),
(182, '692021010732292521303827830131', 'CHR K10', 10000, 0, 'Kamdem', '2021-10-06', '13:01:30', 'abel', '2021-10-06 13:01:30'),
(183, '692021012325474606859818728135', 'LAB Chlamydia', 8000, 0, 'Kamdem', '2021-10-06', '13:05:28', 'masse', '2021-10-06 13:05:28'),
(184, '692021012325474606859818728135', 'LAB ACHVC', 4500, 0, 'Kamdem', '2021-10-06', '13:05:28', 'masse', '2021-10-06 13:05:28'),
(185, '692021012325474606859818728135', 'LAB AC anti Hbe', 13500, 0, 'Kamdem', '2021-10-06', '13:05:28', 'masse', '2021-10-06 13:05:28'),
(186, '692021012325474606859818728135', 'LAB Calcium', 3600, 0, 'Kamdem', '2021-10-06', '13:05:28', 'masse', '2021-10-06 13:05:28'),
(187, '692021012325474606859818728135', 'LAB Calcium', 3600, 0, 'Kamdem', '2021-10-06', '13:05:28', 'masse', '2021-10-06 13:05:28'),
(188, '692021012325474606859818728135', 'LAB Calcium', 3600, 0, 'Kamdem', '2021-10-06', '13:05:28', 'masse', '2021-10-06 13:05:28'),
(189, '692021012325474606859818728135', 'LAB Calcium', 3600, 0, 'Kamdem', '2021-10-06', '13:05:28', 'masse', '2021-10-06 13:05:28'),
(190, '692021012325474606859818728135', 'LAB Calcium', 3600, 0, 'Kamdem', '2021-10-06', '13:05:28', 'masse', '2021-10-06 13:05:28'),
(191, '692021012325474606859818728135', 'LAB NFS', 6300, 0, 'Kamdem', '2021-10-06', '13:05:28', 'masse', '2021-10-06 13:05:28'),
(192, '692021018870879161099268351310', 'MED Ami', 1500, 0, 'Kamdem', '2021-10-06', '13:10:35', 'ekedi', '2021-10-06 13:10:35'),
(193, '692021018870879161099268351310', 'MED Dossier médical', 1000, 0, 'Kamdem', '2021-10-06', '13:10:35', 'ekedi', '2021-10-06 13:10:35'),
(194, '692021018870879161099268351310', 'MED Pose cathether', 1000, 0, 'Kamdem', '2021-10-06', '13:10:35', 'ekedi', '2021-10-06 13:10:35'),
(195, '69202101371016474820312491341', 'CO Carnet de consultation', 400, 0, 'Kamdem', '2021-10-06', '13:41:09', 'ali mohammed', '2021-10-06 13:41:09'),
(196, '69202101371016474820312491341', 'CO Consultation simple', 600, 0, 'Kamdem', '2021-10-06', '13:41:09', 'ali mohammed', '2021-10-06 13:41:09'),
(197, '692021014140097386492354421342', 'CO Carnet de consultation', 400, 0, 'Kamdem', '2021-10-06', '13:42:42', 'mbezele', '2021-10-06 13:42:42'),
(198, '692021014140097386492354421342', 'CO Consultation simple', 600, 0, 'Kamdem', '2021-10-06', '13:42:42', 'mbezele', '2021-10-06 13:42:42'),
(199, '69202101765434379205538501348', 'MA Forfait maternité', 7600, 0, 'Kamdem', '2021-10-06', '13:48:00', 'kengne marie', '2021-10-06 13:48:00'),
(200, '69202101765434379205538501348', 'CHR K20', 20000, 0, 'Kamdem', '2021-10-06', '13:48:00', 'kengne marie', '2021-10-06 13:48:00'),
(201, '69202101765434379205538501348', 'CO Consultation prénatale', 5500, 0, 'Kamdem', '2021-10-06', '13:48:00', 'kengne marie', '2021-10-06 13:48:00'),
(202, '69202101568828491293746461349', 'MED Hospitalisation VIP', 5000, 0, 'Kamdem', '2021-10-06', '13:49:46', 'Nolla', '2021-10-06 13:49:46'),
(203, '69202101568828491293746461349', 'MED Hospitalisation VIP', 5000, 0, 'Kamdem', '2021-10-06', '13:49:46', 'Nolla', '2021-10-06 13:49:46'),
(204, '69202101568828491293746461349', 'MED Hospitalisation VIP', 5000, 0, 'Kamdem', '2021-10-06', '13:49:46', 'Nolla', '2021-10-06 13:49:46'),
(205, '692021018745001022219552561353', 'MED Soins infirmiers', 1000, 0, 'Kamdem', '2021-10-06', '13:53:56', 'BABILLON Christian', '2021-10-06 13:53:56'),
(206, '692021018745001022219552561353', 'MED Soins infirmiers', 1000, 0, 'Kamdem', '2021-10-06', '13:53:56', 'BABILLON Christian', '2021-10-06 13:53:56'),
(207, '692021018745001022219552561353', 'CHR Pansement simple', 500, 0, 'Kamdem', '2021-10-06', '13:53:56', 'BABILLON Christian', '2021-10-06 13:53:56'),
(208, '692021018745001022219552561353', 'MED Soins infirmiers', 1000, 0, 'Kamdem', '2021-10-06', '13:53:56', 'BABILLON Christian', '2021-10-06 13:53:56'),
(209, '692021018745001022219552561353', 'MED Soins infirmiers', 1000, 0, 'Kamdem', '2021-10-06', '13:53:56', 'BABILLON Christian', '2021-10-06 13:53:56'),
(210, '692021018745001022219552561353', 'CHR Pansement simple', 500, 0, 'Kamdem', '2021-10-06', '13:53:56', 'BABILLON Christian', '2021-10-06 13:53:56'),
(211, '692021018745001022219552561353', 'CHR Pansement simple', 500, 0, 'Kamdem', '2021-10-06', '13:53:56', 'BABILLON Christian', '2021-10-06 13:53:56'),
(212, '692021012137960758899633571355', 'LAB Glycémie à jeun', 1000, 0, 'Kamdem', '2021-10-06', '13:55:57', 'NOLLA Jules Roland', '2021-10-06 13:55:57'),
(213, '692021012137960758899633571355', 'LAB Hémoglobine glycossylée (HBA1C)', 10800, 0, 'Kamdem', '2021-10-06', '13:55:57', 'NOLLA Jules Roland', '2021-10-06 13:55:57'),
(214, '692021012137960758899633571355', 'LAB Triglycérides', 3600, 0, 'Kamdem', '2021-10-06', '13:55:57', 'NOLLA Jules Roland', '2021-10-06 13:55:57'),
(215, '69202101015887847848990555131357', 'CO Carnet de consultation', 400, 0, 'Kamdem', '2021-10-06', '13:57:13', 'BABILLON Christian', '2021-10-06 13:57:13'),
(216, '69202101015887847848990555131357', 'CO Consultation simple', 600, 0, 'Kamdem', '2021-10-06', '13:57:13', 'BABILLON Christian', '2021-10-06 13:57:13'),
(217, '11920210132491774748837292294', 'MED Hospitalisation payant', 3000, 0, 'Kamdem', '2021-10-11', '09:04:22', 'ekedi', '2021-10-11 09:04:22'),
(218, '11920210132491774748837292294', 'LAB ACHVC', 4500, 0, 'Kamdem', '2021-10-11', '09:04:22', 'ekedi', '2021-10-11 09:04:22'),
(221, '1492021010389943647516624171441', 'CHR K10', 10000, 0, 'Kamdem', '2021-10-14', '14:41:17', 'kengne marie', '2021-10-14 14:41:17'),
(222, '1492021010389943647516624171441', 'Echographie Pelvienne', 7500, 0, 'Kamdem', '2021-10-14', '14:41:17', 'kengne marie', '2021-10-14 14:41:17'),
(223, '1492021010389943647516624171441', 'LAB ASLO', 4000, 0, 'Kamdem', '2021-10-14', '14:41:17', 'kengne marie', '2021-10-14 14:41:17'),
(224, '1492021010389943647516624171441', 'CO Carnet de consultation', 400, 0, 'Kamdem', '2021-10-14', '14:41:17', 'kengne marie', '2021-10-14 14:41:17'),
(225, '1492021010389943647516624171441', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-14', '14:41:17', 'kengne marie', '2021-10-14 14:41:17'),
(226, '1492021010389943647516624171441', 'LAB ACE', 20000, 0, 'Kamdem', '2021-10-14', '14:41:17', 'kengne marie', '2021-10-14 14:41:17'),
(227, '1492021010389943647516624171441', 'Echographie parties molles', 10000, 0, 'Kamdem', '2021-10-14', '14:41:17', 'kengne marie', '2021-10-14 14:41:17'),
(228, '1492021010389943647516624171441', 'MED Ami', 1500, 0, 'Kamdem', '2021-10-14', '14:41:18', 'kengne marie', '2021-10-14 14:41:18'),
(229, '1492021010389943647516624171441', 'MED Ami', 1500, 0, 'Kamdem', '2021-10-14', '14:41:18', 'kengne marie', '2021-10-14 14:41:18'),
(230, '1492021010389943647516624171441', 'MED Ami', 1500, 0, 'Kamdem', '2021-10-14', '14:41:18', 'kengne marie', '2021-10-14 14:41:18'),
(231, '1492021010389943647516624171441', 'RX Avant-bras (F/P)', 12000, 0, 'Kamdem', '2021-10-14', '14:41:18', 'kengne marie', '2021-10-14 14:41:18'),
(232, '1492021010389943647516624171441', 'RX Doigt (F/P)', 10000, 0, 'Kamdem', '2021-10-14', '14:41:18', 'kengne marie', '2021-10-14 14:41:18'),
(233, '149202101479631270946957467155', 'RX Rachis dorsal (F/P)', 15000, 0, 'Kamdem', '2021-10-14', '15:05:07', 'Alan Kamga', '2021-10-14 15:05:07'),
(234, '149202101479631270946957467155', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-14', '15:05:07', 'Alan Kamga', '2021-10-14 15:05:07'),
(235, '149202101479631270946957467155', 'MED Injection', 500, 0, 'Kamdem', '2021-10-14', '15:05:07', 'Alan Kamga', '2021-10-14 15:05:07'),
(236, '149202101479631270946957467155', 'MED Hospitalisation simple', 1500, 0, 'Kamdem', '2021-10-14', '15:05:07', 'Alan Kamga', '2021-10-14 15:05:07'),
(237, '149202101479631270946957467155', 'LAB ACHVC', 4500, 0, 'Kamdem', '2021-10-14', '15:05:07', 'Alan Kamga', '2021-10-14 15:05:07'),
(238, '149202101479631270946957467155', 'MED Injection', 500, 0, 'Kamdem', '2021-10-14', '15:05:07', 'Alan Kamga', '2021-10-14 15:05:07'),
(239, '149202101639862157864042181522', 'CHR Incision', 2000, 0, 'Kamdem', '2021-10-14', '15:22:18', 'masse', '2021-10-14 15:22:18'),
(240, '1492021015812375733171891511523', 'CHR K10', 10000, 0, 'Kamdem', '2021-10-14', '15:23:51', 'ali mohammed', '2021-10-14 15:23:51'),
(241, '1492021015812375733171891511523', 'MED Injection', 500, 0, 'Kamdem', '2021-10-14', '15:23:51', 'ali mohammed', '2021-10-14 15:23:51'),
(242, '1492021015812375733171891511523', 'MED Pose cathether', 1000, 0, 'Kamdem', '2021-10-14', '15:23:51', 'ali mohammed', '2021-10-14 15:23:51'),
(243, '1492021015812375733171891511523', 'MED Dossier médical', 1000, 0, 'Kamdem', '2021-10-14', '15:23:51', 'ali mohammed', '2021-10-14 15:23:51'),
(244, '1492021015812375733171891511523', 'MED Hospitalisation simple', 1500, 0, 'Kamdem', '2021-10-14', '15:23:51', 'ali mohammed', '2021-10-14 15:23:51'),
(245, '1492021015812375733171891511523', 'MA Forfait maternité', 7600, 0, 'Kamdem', '2021-10-14', '15:23:51', 'ali mohammed', '2021-10-14 15:23:51'),
(246, '1492021015812375733171891511523', 'MA Suture vaginale', 7500, 0, 'Kamdem', '2021-10-14', '15:23:51', 'ali mohammed', '2021-10-14 15:23:51'),
(247, 'a5cc', 'CHR Incision', 2000, 0, 'Kamdem', '2021-10-15', '11:23:57', 'abel', '2021-10-15 11:23:57'),
(248, '997c', 'CHR Circoncision', 5000, 0, 'Kamdem', '2021-10-17', '14:54:25', 'Omah ley', '2021-10-17 14:54:25'),
(249, '37b4', 'LAB D.dimeres', 20000, 0, 'Kamdem', '2021-10-18', '14:10:42', 'Bob Manga', '2021-10-18 14:10:42'),
(250, '37b4', 'Echographie Thyroidienne, Echographie Cervicale (parotide…)', 20000, 0, 'Kamdem', '2021-10-18', '14:10:42', 'Bob Manga', '2021-10-18 14:10:42'),
(251, '37b4', 'Echographie Rénale (ou voies urinaires ou arbres urinaires)', 10000, 0, 'Kamdem', '2021-10-18', '14:10:42', 'Bob Manga', '2021-10-18 14:10:42'),
(252, '37b4', 'Echographie Testiculaire (ou scrotale ou bourses)', 12500, 0, 'Kamdem', '2021-10-18', '14:10:42', 'Bob Manga', '2021-10-18 14:10:42'),
(253, 'cc3a', 'LAB Chlamydia PCR', 35000, 0, 'Kamdem', '2021-10-18', '20:43:18', 'mbezele', '2021-10-18 20:43:18'),
(254, '956f', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-18', '22:17:58', 'Bob Manga', '2021-10-18 22:17:58'),
(255, '956f', 'CHR K10', 10000, 0, 'Kamdem', '2021-10-18', '22:17:58', 'Bob Manga', '2021-10-18 22:17:58'),
(256, '956f', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-18', '22:17:58', 'Bob Manga', '2021-10-18 22:17:58'),
(257, 'ffa3', 'CHR K11', 11000, 0, 'Kamdem', '2021-10-18', '22:22:58', 'masse', '2021-10-18 22:22:58'),
(258, '419d', 'CHR Incision', 2000, 0, 'Kamdem', '2021-10-19', '10:37:37', 'bernard nanga', '2021-10-19 10:37:37'),
(259, '401c', 'LAB Widal et Felix', 3600, 0, 'Kamdem', '2021-10-19', '10:39:30', 'masse', '2021-10-19 10:39:30'),
(260, '620a', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-20', '10:35:20', 'Bob Manga', '2021-10-20 10:35:20'),
(261, '56a7', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-20', '12:03:05', 'Bob Manga', '2021-10-20 12:03:05'),
(262, '60c7', 'CHR K2', 2000, 0, 'Kamdem', '2021-10-20', '12:04:10', 'Richard Kenfack', '2021-10-20 12:04:10'),
(264, '8493', 'LAB NFS', 1890, 30, 'Kamdem', '2021-10-23', '10:47:44', 'abel', '2021-10-23 10:47:44'),
(265, '8493', 'LAB GE', 300, 30, 'Kamdem', '2021-10-23', '10:47:45', 'abel', '2021-10-23 10:47:45'),
(266, '3afa', 'CHR K1', 500, 50, 'Kamdem', '2021-10-23', '10:52:09', 'Nolla', '2021-10-23 10:52:09'),
(267, 'e868', 'CHR K1', 1000, 30, 'Kamdem', '2021-10-23', '10:55:31', 'Bob Manga', '2021-10-23 10:55:31'),
(268, 'c390', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-25', '16:42:45', 'abel', '2021-10-25 16:42:45'),
(269, '10cb', 'CHR Incision', 2000, 0, 'Kamdem', '2021-10-25', '16:44:35', 'Nolla', '2021-10-25 16:44:35'),
(270, '10cb', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-25', '16:44:35', 'Nolla', '2021-10-25 16:44:35'),
(271, 'be7a', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-25', '16:49:09', 'ali mohammed', '2021-10-25 16:49:09'),
(272, 'be7a', 'CHR Incision', 2000, 0, 'Kamdem', '2021-10-25', '16:49:09', 'ali mohammed', '2021-10-25 16:49:09'),
(273, 'e334', 'CHR Incision', 2000, 30, 'Kamdem', '2021-10-25', '16:50:52', 'Nolla', '2021-10-25 16:50:52'),
(274, 'e334', 'CHR K1', 1000, 30, 'Kamdem', '2021-10-25', '16:50:52', 'Nolla', '2021-10-25 16:50:52'),
(275, '2cc0', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-25', '16:58:47', 'ariane', '2021-10-25 16:58:47'),
(276, '3adf', 'CHR Incision', 2000, 0, 'Kamdem', '2021-10-25', '17:14:50', 'Alan Kamga', '2021-10-25 17:14:50'),
(277, '2708', 'CHR Circoncision', 5000, 0, 'Kamdem', '2021-10-25', '17:19:03', 'Alan Kamga', '2021-10-25 17:19:03'),
(278, 'ccee', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-25', '17:20:09', 'Bob Manga', '2021-10-25 17:20:09'),
(279, '4696', 'CHR Incision', 2000, 0, 'Kamdem', '2021-10-25', '17:20:51', 'Richard Kenfack', '2021-10-25 17:20:51'),
(280, 'd2b4', 'CHR K1', 1000, 0, 'Kamdem', '2021-10-25', '17:28:37', 'Richard Kenfack', '2021-10-25 17:28:37'),
(281, '714d', 'CHR Circoncision', 5000, 0, 'Kamdem', '2021-10-25', '17:29:38', 'ali mohammed', '2021-10-25 17:29:38'),
(282, 'bf3e', 'CHR Incision', 2000, 0, 'Kamdem', '2021-10-27', '10:45:12', 'Alan Kamga', '2021-10-27 10:45:12'),
(283, 'a96a', 'LAB Widal et Felix', 3600, 0, 'Kamdem', '2021-10-27', '16:28:31', 'Alan Kamga', '2021-10-27 16:28:31'),
(284, '3cb9', 'LAB Triglycérides', 3600, 0, 'Kamdem', '2021-10-27', '18:40:00', 'Alan Kamga', '2021-10-27 18:40:00'),
(285, '3cb9', 'LAB Widal et Felix', 3600, 0, 'Kamdem', '2021-10-27', '18:40:00', 'Alan Kamga', '2021-10-27 18:40:00'),
(286, '59e1', 'LAB ASLO', 4000, 0, 'Kamdem', '2021-10-27', '18:45:13', 'Alan Kamga', '2021-10-27 18:45:13'),
(287, 'c2c1', 'LAB Acide urique', 2700, 0, 'Kamdem', '2021-10-27', '19:04:49', 'Alan Kamga', '2021-10-27 19:04:49'),
(288, '1c53', 'LAB Dosage HCV', 18000, 0, 'Kamdem', '2021-10-27', '21:04:46', 'Alan Kamga', '2021-10-27 21:04:46'),
(289, 'c804', 'LAB ACHVC', 4500, 0, 'Kamdem', '2021-10-27', '21:05:21', 'Alan Kamga', '2021-10-27 21:05:21'),
(290, 'c804', 'RX Rachis cervical (F/P + %)', 20000, 0, 'Kamdem', '2021-10-27', '21:05:21', 'Alan Kamga', '2021-10-27 21:05:21'),
(291, 'f6d6', 'LAB Widal et Felix', 3600, 0, 'Kamdem', '2021-10-28', '15:34:22', 'Alan Kamga', '2021-10-28 15:34:22'),
(292, 'f6d6', 'LAB Glycémie à jeun', 1000, 0, 'Kamdem', '2021-10-28', '15:34:22', 'Alan Kamga', '2021-10-28 15:34:22'),
(293, '0de6', 'LAB Chlamydia', 8000, 0, 'Kamdem', '2021-10-28', '15:35:01', 'Alan Kamga', '2021-10-28 15:35:01'),
(294, '0de6', 'LAB Calcium', 3600, 0, 'Kamdem', '2021-10-28', '15:35:01', 'Alan Kamga', '2021-10-28 15:35:01'),
(295, '0de6', 'LAB Créatine', 2700, 0, 'Kamdem', '2021-10-28', '15:35:01', 'Alan Kamga', '2021-10-28 15:35:01'),
(296, '1841', 'LAB D.dimeres', 20000, 0, 'Kamdem', '2021-10-28', '15:35:35', 'abel', '2021-10-28 15:35:35'),
(297, '1841', 'LAB CRP', 3600, 0, 'Kamdem', '2021-10-28', '15:35:35', 'abel', '2021-10-28 15:35:35'),
(298, 'd9e3', 'LAB GE', 1000, 0, 'Kamdem', '2021-10-28', '15:36:08', 'ekedi', '2021-10-28 15:36:08'),
(299, 'd9e3', 'LAB Fer serique', 5400, 0, 'Kamdem', '2021-10-28', '15:36:08', 'ekedi', '2021-10-28 15:36:08');

-- --------------------------------------------------------

--
-- Structure de la table `id_facture_assure`
--

CREATE TABLE `id_facture_assure` (
  `id` int(11) NOT NULL,
  `id_general` varchar(255) NOT NULL,
  `id_facture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `id_facture_assure`
--

INSERT INTO `id_facture_assure` (`id`, `id_general`, `id_facture`) VALUES
(1, '0', '59e1'),
(30, '0', 'c2c1'),
(32, 'ps1', 'd2b4'),
(33, '9ne', '1c53'),
(34, '9ne', '4c4b'),
(35, '9ne', 'c804'),
(36, '9ne', '3db2'),
(37, 'gqods2v', 'f6d6'),
(38, 'gqods2v', '0de6'),
(39, 'gqods2v', 'c0db'),
(40, 'gqods2v', '20c7'),
(41, 'gqods2v', 'e2c0'),
(42, 'ohe5voi', '1841'),
(43, 'ohe5voi', '1468'),
(44, 'r77ka32', 'd9e3'),
(45, 'r77ka32', 'c4ff');

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
(16, '061a452611', 'A', 'Dr Obam', 452611, '2021-08-31 13:50:48'),
(17, '0cdd25000', 'A', 'Dr Obam', 25000, '2021-09-18 00:50:48'),
(18, 'fff350000', 'B', 'Dr Obam', 50000, '2021-10-10 19:10:54'),
(19, 'c1aa50000', 'B', 'ABC', 50000, '2021-10-11 08:51:33'),
(20, '7f7250000', 'B', 'ABC', 50000, '2021-10-11 12:18:42');

-- --------------------------------------------------------

--
-- Structure de la table `medicaments`
--

CREATE TABLE `medicaments` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL DEFAULT 'non défini',
  `designation` varchar(255) NOT NULL,
  `categorie` varchar(100) NOT NULL DEFAULT 'non défini',
  `pu_vente` int(11) NOT NULL,
  `pu_achat` int(11) NOT NULL,
  `conditionnement` text NOT NULL,
  `en_stock` int(11) NOT NULL,
  `min_rec` int(11) NOT NULL DEFAULT 0,
  `date_peremption` varchar(50) NOT NULL DEFAULT 'non défini',
  `date_approv` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medicaments`
--

INSERT INTO `medicaments` (`id`, `code`, `designation`, `categorie`, `pu_vente`, `pu_achat`, `conditionnement`, `en_stock`, `min_rec`, `date_peremption`, `date_approv`) VALUES
(344, 'MASL', 'metronidazol', ' ', 200, 100, ' ', 778, 150, '08-25', '2021-09-18 00:46:22'),
(345, 'MKAS', 'panadol', 'comprimé', 450, 150, 'plaquette de 10', 0, 50, '07-24', '2021-09-18 00:46:22'),
(346, 'AMAK', 'eferalgan', 'comprimé efervescent', 100, 50, 'plaquette de 10', 76, 130, '02-23', '2021-09-18 00:46:22'),
(347, 'ZMOS', 'arthemeter', 'comprimé', 1800, 900, 'plaquette de 6', 779, 80, '02-22', '2021-09-18 00:46:22'),
(348, 'KASL', 'amoxiline', 'comprimé', 250, 50, 'plaquette 20', 778, 100, '12-24', '2021-09-18 00:46:22'),
(349, 'KAAA', 'paracétamol', 'comprimé', 100, 45, 'plaquette de 10', 777, 50, '10-25', '2021-09-18 00:46:22'),
(350, 'MAAS', 'minoxidil 300ml', '', 7500, 5000, 'paquet de 10 tubes', 780, 80, '02-23', '2021-09-18 00:46:22'),
(352, 'MASL', 'ibuprofene', ' cp', 150, 100, ' ', 393, 150, '03-24', '2021-09-18 00:50:48'),
(415, 'ZMOS', 'arthemeter', 'comprimé', 1800, 900, 'plaquette de 6', 700, 80, '02-25', '2021-10-10 19:10:54'),
(416, 'MASL', 'metronidazol', ' ', 200, 100, ' ', 250, 150, '08-25', '2021-10-10 19:10:54'),
(418, 'MASL', 'ibuprofene', ' cp', 150, 100, ' ', 250, 150, '03-24', '2021-10-11 08:51:33'),
(419, 'MASL', 'metronidazol', ' ', 200, 100, ' ', 450, 150, '08-25', '2021-10-11 12:18:42'),
(420, 'KASL', 'amoxiline', 'comprimé', 250, 50, 'plaquette 20', 450, 100, '12-24', '2021-10-11 12:18:42'),
(421, ' ', 'albendazole 400mg', 'cp', 250, 0, 'b/1', 0, 0, '', '0000-00-00 00:00:00'),
(422, ' ', 'amoxicilline 500mg cp', 'cp', 500, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(423, ' ', 'asaq adulte', 'cp', 250, 0, 'B/6', 0, 0, '', '0000-00-00 00:00:00'),
(424, ' ', 'asaq enft', 'cp', 150, 0, 'B/3', 0, 0, '', '0000-00-00 00:00:00'),
(425, ' ', ' ciprofloxacine 500mg', 'cp', 1000, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(426, ' ', 'cloxacilline 500  mg ', 'cp', 1000, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(427, ' ', 'cotrimoxazole 480mc', 'cp', 150, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(428, ' ', 'chlorpheniramine 4mg', 'cp', 100, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(429, ' ', 'diclofenac 50mg', 'cp', 100, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(430, ' ', 'doxycilline 100mg', 'cp', 200, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(431, ' ', 'erythromycine 500mg', 'cp', 1000, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(432, ' ', 'ibuprofene 400mg', 'cp', 100, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(433, ' ', 'métronidazole 500mg', 'cp', 200, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(434, ' ', 'métronidazole 250mg', 'cp', 150, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(435, ' ', 'mebendazole 100mg ', 'cp', 150, 0, 'B/6', 0, 0, '', '0000-00-00 00:00:00'),
(436, ' ', 'misoprostol', 'cp', 500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(437, ' ', 'nystatine 100mg', 'ovule', 1000, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(438, ' ', 'pyramax cp AD', 'cp', 1250, 0, 'B/3', 0, 0, '', '0000-00-00 00:00:00'),
(439, '', 'pyramax Sachet', 'scht', 350, 0, 'B/3', 0, 0, '', '0000-00-00 00:00:00'),
(440, '', 'paracetamol 500mg', 'cp', 100, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(441, '', 'quinine sulfate 300mg', 'cp', 500, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(442, '', 'fer + acide folique', 'cp', 100, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(443, '', 'vitamine B complex', 'cp', 100, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(444, '', 'albendazole 400mg', 'sp', 250, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(445, '', 'amoxicilline 250mg', 'sp', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(446, '', 'carbocysteine 5%', 'sp', 1500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(447, '', 'carbocysteine 2%', 'sp', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(448, '', 'ibuprofène sirup', 'sp', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(449, '', 'ibuprofene + paracetamol', 'sp', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(450, '', 'mebendazole', 'sp', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(451, '', 'mebendazole  100mg', 'sp', 150, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(452, '', 'nystatine ', 'sp', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(453, '', 'paracetamol 2,4%', 'sp', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(454, '', 'genta', 'cy', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(455, '', 'miconazole', 'creme', 1200, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(456, '', 'baneocin ', 'pde', 1500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(457, '', 'glucosé 10%', 'solution', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(458, '', 'glucosé 5%', 'solution', 750, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(459, '', 'glucosé mixte', 'solution', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(460, '', 'salée (chlorure de sodium)', 'solution', 750, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(461, '', 'ringer lactate', 'solution', 750, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(462, '', 'analgin ', 'inj', 500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(463, '', 'artemether', 'inj', 600, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(464, '', 'ampicilline ', 'inj', 300, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(465, '', 'artesun 60mg', 'inj', 1500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(466, '', 'benzathine 2,4MUI', 'inj', 400, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(467, '', 'curam 0,5 ', 'inj', 1500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(468, '', 'curam 1g', 'inj', 2500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(469, '', 'fleming 1g ', 'inj', 2000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(470, '', 'ceftriaxone 1g', 'inj', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(471, '', 'calcium gluconate', 'inj', 300, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(472, '', 'chlorure de sodium', 'inj', 400, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(473, '', 'chlorure de potassium', 'inj', 400, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(474, '', 'diclofenac ', 'inj', 200, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(475, '', 'dexamethazone ', 'inj', 200, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(476, '', 'dislep ', 'inj', 1500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(477, '', 'vogalene ', 'inj', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(478, '', 'furosemide', 'inj', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(479, '', 'gentamycine', 'inj', 200, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(480, '', 'lidocaine', 'inj', 1500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(481, '', 'sulfate de magnesium', 'inj', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(482, '', 'mag 2', 'inj', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(483, '', 'oméprazole ', 'inj', 2500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(484, '', 'quinine ', 'inj', 300, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(485, '', 'vitamine B co (HPV)', 'inj', 150, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(486, '', 'vitamine K1', 'inj', 300, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(487, '', 'vitamine C', 'inj', 300, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(488, '', 'diazepam (Valium)', 'inj', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(489, '', 'hemafer', 'inj', 3000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(490, '', 'vitamine C ', 'inj', 300, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(491, '', 'spasfon ', 'inj', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(492, '', 'clavicin 1,2 G', 'inj', 2000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(493, '', 'tramafil 100mg ', 'inj', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(494, '', 'dicynone 250mg ', 'inj', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(495, '', 'dynapar 75mg', 'inj', 700, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(496, '', 'coton hydrophile 100 G', '', 800, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(497, '', 'épicranien 23 ', '', 100, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(498, '', 'épicranien 25', '', 100, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(499, '', 'compresse 40x40', '', 100, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(500, '', 'cathéter rose', '', 300, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(501, '', 'cathéter bleu', '', 300, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(502, '', 'cathéter jaune', '', 300, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(503, '', 'bande crêpe 7cmx4m', '', 500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(504, '', 'poche à urine pediatrique', '', 500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(505, '', 'poche à urine adulte', '', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(506, '', 'lame de bistouri', '', 100, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(507, '', 'jadelle', '', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(508, '', 'DIU', '', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(509, '', 'vicryl fil de suture', '', 2500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(510, '', 'catgut fil de suture', '', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(511, '', 'nylon fil de suture', '', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(512, '', 'preservatif masculin', '', 10, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(513, '', 'eau distillée', '', 100, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(514, '', 'depoprovera', 'inj', 500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(515, '', 'sayana press', '', 500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(516, '', 'aspirateur', '', 2000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(517, '', 'seringue à insuline', '', 100, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(518, '', 'SRO + zinc', '', 1000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(519, '', 'gant stérile', '', 250, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(520, '', 'seringue 10 CC', '', 100, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(521, '', 'seringue 5 CC', '', 100, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(522, '', 'seringue 2 CC', '', 100, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(523, '', 'perfuseur', '', 250, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(524, '', 'transfuseur', '', 500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(525, '', 'transfuseur', '', 500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(526, '', 'betadine jaune 125ml', '', 1500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(527, '', 'sucrafil O gel', 'sirop', 1500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(528, '', 'gants de soins', '', 150, 0, 'B/2', 0, 0, '', '0000-00-00 00:00:00'),
(529, '', 'paracetamol 100mg', 'inj', 2000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(530, '', 'exacyl ', 'inj', 2500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(531, '', 'noradrenaline 8mg', 'inj', 0, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(532, '', 'gelofusine ', 'inj', 4600, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(533, '', 'loxen ', 'inj', 2000, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(534, '', 'eau oxygénée', 'inj', 2500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(535, '', 'dakin ', 'solution', 2500, 0, 'B/1', 0, 0, '', '0000-00-00 00:00:00'),
(536, '', 'spasfon suppositoire', 'suppo', 2000, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(537, '', 'spasmo-apotel', 'cp', 2500, 0, 'B/20', 0, 0, '', '0000-00-00 00:00:00'),
(538, '', 'tergynan ov', 'ovule', 2750, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(539, '', 'ca c 1000', 'cp eff', 1800, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(540, '', 'upsa-C 1g ', 'cp eff', 1100, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(541, '', 'efferalgan 500mg', 'cp eff', 1300, 0, 'B/16', 0, 0, '', '0000-00-00 00:00:00'),
(542, '', 'distem 500', 'cp', 3750, 0, 'B/30', 0, 0, '', '0000-00-00 00:00:00'),
(543, '', 'ideos', 'cp', 4300, 0, 'B/30', 0, 0, '', '0000-00-00 00:00:00'),
(544, '', 'alvityl tonus', 'cp eff', 5300, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(545, '', 'spasfon-lyoc 80mg', 'cp', 2200, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(546, '', 'tracedol 500/50mg', 'cp eff', 3900, 0, 'B/10', 0, 0, '', '0000-00-00 00:00:00'),
(547, '', 'ornilox 500/200 mg', 'cp', 4600, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(548, '', 'fixim 200mg', 'cp', 5500, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(549, '', 'levotop 500mg ', 'cp', 7500, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(550, '', 'spasmo-apotel suppo', 'suppo', 2000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(551, '', 'ketaflox 200mg', 'cp', 2600, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(552, '', 'duo-cotexcin', 'cp', 3750, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(553, '', 'fedate 50mg', 'gellule', 2200, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(554, '', 'tardyferon B9', 'cp', 2600, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(555, '', 'oedes 20mg ', 'cp', 3400, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(556, '', 'spasfon', 'cp', 2000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(557, '', 'fercefol', 'cp', 2000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(558, '', 'azivent 500mg', 'cp', 3000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(559, '', 'azivent 250mg', 'cp', 3000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(560, '', 'cielcef 200mg', 'cp', 5200, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(561, '', 'phenobarbital', 'inj', 1000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(562, '', 'litacold ', 'cp', 250, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(563, '', 'flugen 100mg ', 'cp', 1600, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(564, '', 'allercet 10mg ', 'cp', 1975, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(565, '', 'pharpen 500mg ', 'cp', 2600, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(566, '', 'profenid 100mg', 'suppo', 2300, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(567, '', 'Es-ulcizone 20mg', 'cp', 3300, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(568, '', 'akerol 5mg', 'cp', 3700, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(569, '', 'azicure 500mg', 'cp', 4250, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(570, '', 'plasmocur 40/320 mg', 'cp', 2900, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(571, '', 'ketaflox 400mg', 'cp', 4000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(572, '', 'curam 1000mg', 'cp', 7200, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(573, '', 'tinazol 500mg', 'cp', 1200, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(574, '', 'folifer', 'cp', 4400, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(575, '', 'vicombil', 'cp', 3750, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(576, '', 'imodium 2mg ', 'gellule', 2300, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(577, '', 'ulcizone 20mg', 'gellule', 2600, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(578, '', 'exxib 200mg', 'cp', 2350, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(579, '', 'fuclo 500mg', 'gellule', 3500, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(580, '', 'ciprozole forte', 'cp', 6800, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(581, '', 'miorel', 'gellule', 2700, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(582, '', 'lumirelax', 'gellule', 3000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(583, '', 'fansidar', 'cp', 1000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(584, '', 'esomed 40mg', 'cp', 6300, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(585, '', 'fucidine 250mg ', 'cp', 6000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(586, '', 'stiton-9', 'sp', 2800, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(587, '', 'solfer', 'sp', 2800, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(588, '', 'fedate ', 'sp', 2200, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(589, '', 'ibumol', 'sp', 1400, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(590, '', 'curam 100mg', 'sp', 3900, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(591, '', 'akerol  ', 'sp', 3700, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(592, '', 'stimogène', 'sp', 3500, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(593, '', 'pharpen 250mg ', 'sp', 1600, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(594, '', 'linctagon', 'sp', 4050, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(595, '', 'efferalgan 2,4%', 'sp', 1300, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(596, '', 'fixim 100mg', 'sp', 5600, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(597, '', 'primalan', 'sp', 1800, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(598, '', 'flugen 50mg ', 'sp', 1200, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(599, '', 'HPV Eurolab', 'sp', 1300, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(600, '', 'uvesterol ADEC', 'sp', 1700, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(601, '', 'azicure 250mg ', 'sp', 3900, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(602, '', 'neutrocold', 'sp', 1400, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(603, '', 'neo-codion bb', 'sp', 1950, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(604, '', 'clavumoccid 250mg ', 'sp', 4900, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(605, '', 'almax forte ', 'scht', 4600, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(606, '', 'mag 2', 'Amp Buv', 5200, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(607, '', 'tot\'héma', 'Amp Buv', 4400, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(608, '', 'stimol', 'Amp Buv', 4950, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(609, '', 'phosphalugel', 'scht', 4100, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(610, '', 'spasmag', 'Amp Buv', 4000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(611, '', 'trofocard', 'scht', 4500, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(612, '', 'soya life', 'scht', 6600, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(613, '', 'revital', 'gellule', 4050, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(614, '', 'oflomac 200mg', 'inj', 4900, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(615, '', 'Glevo 500', 'inj', 6500, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(616, '', 'ketum', 'gel ', 2200, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(617, '', 'L-mesitran T/15G', 'pde', 2000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(618, '', 'L-mesitran T/50G', 'pde', 6000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(619, '', 'stéritax 1G', 'inj', 2500, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(620, '', 'zocin 250mg ', 'sp', 3250, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(621, '', 'resifuran', 'sp', 4400, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(622, '', 'exacyl ', 'inj', 2500, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(623, '', 'bimalaril 40/240mg', 'sp', 2200, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(624, '', 'tramadol denk 50mg', 'cp', 2450, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(625, '', 'escodyne', 'cp eff', 2000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(626, '', 'quinolox 200mg', 'cp', 4000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(627, '', 'pyramax', 'cp', 1250, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(628, '', 'pyramax', 'scht', 350, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(629, '', 'plasmocur 90ml', 'sp', 2400, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(630, '', 'laritem 80/480 mg', 'cp', 1700, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(631, '', 'surdex', 'sp', 1250, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(632, '', 'betadine bleu sol vag', 'sol vag', 1800, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(633, '', 'polygynax', 'ovule', 2350, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(634, '', 'acupan', 'inj', 1500, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(635, '', 'calsource 500mg', 'cp eff', 2250, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(636, '', 'venosmil', 'gellule', 3400, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(637, '', 'klipal 600mg', 'cp', 2000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(638, '', 'klipal 300mg', 'cp', 1350, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(639, '', 'helmintox', 'scht', 1250, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(640, '', 'biba', 'sp', 3700, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(641, '', 'revitalose', 'Amp Buv', 4650, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(642, '', 'passedyl', 'sp', 2450, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(643, '', 'tramadol denk 100mg', 'inj', 1000, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(644, '', 'artefan 20/120 mg ', 'sp', 1200, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(645, '', 'spasmopep junior', 'sp', 4050, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(646, '', 'rapiclav 1g ', 'cp', 4900, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(647, '', 'pyramax', 'cp', 1250, 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(648, '', 'levobact 500mg ', 'cp', 3450, 0, '', 0, 0, '', '0000-00-00 00:00:00');

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
(3, 'Bob Manga'),
(4, 'ali mohammed'),
(5, 'Nolla'),
(6, 'abel'),
(7, 'masse'),
(8, 'ekedi'),
(9, 'mbezele'),
(10, 'kengne marie'),
(11, 'BABILLON Christian'),
(12, 'NOLLA Jules Roland'),
(13, 'ross'),
(14, 'ariane'),
(15, 'bernard nanga'),
(16, 'Omah ley');

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

--
-- Déchargement des données de la table `recettes_caisse`
--

INSERT INTO `recettes_caisse` (`id`, `nom`, `montant`, `date_versement`) VALUES
(1, 'Dr Obam', 192785, '2021-08-19 10:31:45');

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

--
-- Déchargement des données de la table `recettes_enregistres`
--

INSERT INTO `recettes_enregistres` (`id`, `id_recette`, `recette_total`, `generalite`, `montant_retire`, `recette_restante`, `caissier`, `regisseur`, `date_heure`) VALUES
(1, '867638900', 38900, 9000, 18000, 20900, 'Kamdem', 'Mr Nola', '2021-09-10 21:35:36'),
(4, '5b5645000', 45000, 9250, 25000, 20000, 'Kamdem', 'Mr Nola', '2021-09-11 15:42:35'),
(5, 'd7de33000', 33000, 4500, 6750, 26250, 'Kamdem', 'Mr Nola', '2021-09-23 09:50:16'),
(6, '1b40144000', 144000, 0, 56000, 88000, 'Kamdem', 'Mr Nola', '2021-10-04 01:59:21'),
(7, '5402128000', 128000, 0, 46100, 81900, 'Kamdem', 'Mr Nola', '2021-10-06 12:49:16');

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
(1, 'CHR K1', 1000),
(2, 'CHR K2', 2000),
(3, 'CHR K3', 3000),
(4, 'CHR K4', 4000),
(5, 'CHR K5', 5000),
(6, 'CHR K6', 6000),
(7, 'CHR K7', 7000),
(8, 'CHR K8', 8000),
(9, 'CHR K9', 9000),
(10, 'CHR K10', 10000),
(11, 'CHR K11', 11000),
(12, 'CHR K12', 12000),
(13, 'CHR K13', 13000),
(14, 'CHR K14', 14000),
(15, 'CHR K15', 15000),
(16, 'CHR K16', 16000),
(17, 'CHR K17', 17000),
(18, 'CHR K18', 18000),
(19, 'CHR K19', 19000),
(20, 'CHR K20', 20000),
(21, 'CHR K21', 21000),
(22, 'CHR K22', 22000),
(23, 'CHR K23', 23000),
(24, 'CHR K24', 24000),
(25, 'CHR K25', 25000),
(26, 'CHR K26', 26000),
(27, 'CHR K27', 27000),
(28, 'CHR K28', 28000),
(29, 'CHR K29', 29000),
(30, 'CHR K30', 30000),
(31, 'CHR K31', 31000),
(32, 'CHR K32', 32000),
(33, 'CHR K33', 33000),
(34, 'CHR K34', 34000),
(35, 'CHR K35', 35000),
(36, 'CHR K36', 36000),
(37, 'CHR K37', 37000),
(38, 'CHR K38', 38000),
(39, 'CHR K39', 39000),
(40, 'CHR K40', 40000),
(41, 'CHR K41', 41000),
(42, 'CHR K42', 42000),
(43, 'CHR K43', 43000),
(44, 'CHR K44', 44000),
(45, 'CHR K45', 45000),
(46, 'CHR K46', 46000),
(47, 'CHR K47', 47000),
(48, 'CHR K48', 48000),
(49, 'CHR K49', 49000),
(50, 'CHR K50', 50000),
(51, 'CHR K51', 51000),
(52, 'CHR K52', 52000),
(53, 'CHR K53', 53000),
(54, 'CHR K54', 54000),
(55, 'CHR K55', 55000),
(56, 'CHR K56', 56000),
(57, 'CHR K57', 57000),
(58, 'CHR K58', 58000),
(59, 'CHR K59', 59000),
(60, 'CHR K60', 60000),
(61, 'CHR K61', 61000),
(62, 'CHR K62', 62000),
(63, 'CHR K63', 63000),
(64, 'CHR K64', 64000),
(65, 'CHR K65', 65000),
(66, 'CHR K66', 66000),
(67, 'CHR K67', 67000),
(68, 'CHR K68', 68000),
(69, 'CHR K69', 69000),
(70, 'CHR K70', 70000),
(71, 'CHR K71', 71000),
(72, 'CHR K72', 72000),
(73, 'CHR K73', 73000),
(74, 'CHR K74', 74000),
(75, 'CHR K75', 75000),
(76, 'CHR K76', 76000),
(77, 'CHR K77', 77000),
(78, 'CHR K78', 78000),
(79, 'CHR K79', 79000),
(80, 'CHR K80', 80000),
(81, 'CHR K81', 81000),
(82, 'CHR K82', 82000),
(83, 'CHR K83', 83000),
(84, 'CHR K84', 84000),
(85, 'CHR K85', 85000),
(86, 'CHR K86', 86000),
(87, 'CHR K87', 87000),
(88, 'CHR K88', 88000),
(89, 'CHR K89', 89000),
(90, 'CHR K90', 90000),
(91, 'CHR K91', 91000),
(92, 'CHR K92', 92000),
(93, 'CHR K93', 93000),
(94, 'CHR K94', 94000),
(95, 'CHR K95', 95000),
(96, 'CHR K96', 96000),
(97, 'CHR K97', 97000),
(98, 'CHR K98', 98000),
(99, 'CHR K99', 99000),
(100, 'CHR K100', 100000),
(101, 'CHR Pansement simple', 500),
(102, 'CHR Pansement complexe', 1000),
(103, 'CHR Pose sonde nase-gastrique', 3000),
(104, 'CHR Pose sonde urinaire', 3000),
(105, 'CHR Suture', 1000),
(106, 'CHR Circoncision', 5000),
(107, 'CHR Incision', 2000),
(108, 'Echographie Abdominale (foie, rate, vésicule biliaire, pancréas…)', 10000),
(109, 'Echographie Abdominopelvienne', 15000),
(110, 'Echographie Pelvienne', 7500),
(111, 'Echographie Pelvienne Endovaginale', 10000),
(112, 'Echographie Mammaire (ou sein)', 10000),
(113, 'Echographie Rénale (ou voies urinaires ou arbres urinaires)', 10000),
(114, 'Echographie Obstétricale (1er, 2e, 3e, trimestre)', 8000),
(115, 'Echographie Reno-Vesico-Prostatique', 20000),
(116, 'Echographie Testiculaire (ou scrotale ou bourses)', 12500),
(117, 'Echographie Thyroidienne, Echographie Cervicale (parotide…)', 20000),
(118, 'Echographie Occulaire', 12000),
(119, 'Echographie parties molles', 10000),
(120, 'Echographie Transfontanellaire', 15000),
(121, 'Echo Doppler Veneux des membres inférieur', 25000),
(122, 'Echo Dopper Artériel des membres', 30000),
(123, 'Echo Dopper Testiculaire', 20000),
(124, 'Echo Dopper des troncs supraortiques', 25000),
(125, 'Echographie Osteo Articulaire (genou, coude, épaule…)', 15000),
(126, 'RX Articulation antalo-axoidienne', 10000),
(127, 'RX Articulation Temporo-Mandibulaire', 10000),
(128, 'RX Blondeau/Hirtz/Worms/Shuller', 10000),
(129, 'RX Cavum (Profil)', 10000),
(130, 'RX Crane (F/P)', 15000),
(131, 'RX Défilé maxiliaire', 10000),
(132, 'RX Os propre du nez (OPN)', 10000),
(133, 'RX Selle turcique', 10000),
(134, 'RX Sinus complet', 20000),
(135, 'RX Avant-bras (F/P)', 12000),
(136, 'RX Bras (F/P)', 12000),
(137, 'RX Coude (F/P)', 12000),
(138, 'RX Epaule (F/P)', 12000),
(139, 'RX Epaule 3 incidences', 20000),
(140, 'RX Main (F/P)', 10000),
(141, 'RX Poignet (F/P)', 10000),
(142, 'RX Doigt (F/P)', 10000),
(143, 'RX Age osseux (main et poignet)', 20000),
(144, 'RX Bassin (F/P)', 15000),
(145, 'RX Calcanéum (F/P)', 10000),
(146, 'RX Cheville (F/P)', 10000),
(147, 'RX Fémur (F/P)', 12000),
(148, 'RX Genou (F/P)', 12000),
(149, 'RX Genou (F/P + 30° . 60°)', 20000),
(150, 'RX Hanche (F/P)', 15000),
(151, 'RX Jambe (F/P)', 12000),
(152, 'RX Orteil (F/P)', 10000),
(153, 'RX Pied (F/P)', 10000),
(154, 'RX Gril costal (F)', 15000),
(155, 'RX Gril costal (F/P)', 15000),
(156, 'RX Sternum, clavicule (F/P)', 10000),
(157, 'RX Thorax (F)', 9000),
(158, 'RX Thorax (F/P)', 15000),
(159, 'RX Rachis cervical (F/P + %)', 20000),
(160, 'RX Rachis cervical (F/P)', 15000),
(161, 'RX Rachis complet', 45000),
(162, 'RX Rachis dorsal (F/P)', 15000),
(163, 'RX Rachis dorso-lombaire (F/P)', 25000),
(164, 'RX Rashis lombaire (F/P + %)', 20000),
(165, 'RX Rashis lombaire (F/P)', 15000),
(166, 'RX Rashis lombo-sacré (F/P)', 15000),
(167, 'CO Consultation simple', 600),
(168, 'CO Consultation prénatale', 5500),
(169, 'CO Carnet de consultation', 400),
(170, 'CO Carnet pédiatrie', 1000),
(171, 'CO Consultation gynécologue', 3000),
(172, 'CO Consultation cardiologue', 5000),
(173, 'CO Consultation endocrinologue', 7000),
(174, 'CO Consultation pédiatre', 3000),
(175, 'CO Consultation kinésithépeute', 5000),
(176, 'CO Consultation chirurgien', 5000),
(177, 'CO Consultation psychologue', 5000),
(178, 'MED Soins infirmiers', 1000),
(179, 'MED Pose cathether', 1000),
(180, 'MED Injection', 500),
(181, 'MED Ami', 1500),
(182, 'MED Dossier médical', 1000),
(183, 'MED Hospitalisation simple', 1500),
(184, 'MED Hospitalisation payant', 3000),
(185, 'MED Hospitalisation VIP', 5000),
(186, 'MA Forfait maternité', 7600),
(187, 'MA Surveillance syntho', 5000),
(188, 'MA Induction', 5000),
(189, 'MA Suture vaginale', 7500),
(190, 'MA Suture col', 10000),
(191, 'MA Suture périnée', 5000),
(192, 'UPEC Crachats', 1000),
(193, 'LAB Cholestérol total', 3600),
(194, 'LAB Cholestérol HDL', 3600),
(195, 'LAB Cholestérol LDL', 3600),
(196, 'LAB Triglycérides', 3600),
(197, 'LAB Urée', 2700),
(198, 'LAB Créatine', 2700),
(199, 'LAB Ionogramme complet (Na, K, Cl, Ca2+, Mg2+', 13500),
(200, 'LAB Ionogramme simple (Na, K, Cl) ', 9000),
(201, 'LAB Calcium', 3600),
(202, 'LAB Chlore', 2700),
(203, 'LAB Magnésium', 3600),
(204, 'LAB Fer serique', 5400),
(205, 'LAB Hémoglobine glycossylée (HBA1C)', 10800),
(206, 'LAB Lipides', 6300),
(207, 'LAB Phosphore', 2700),
(208, 'LAB Protide', 1800),
(209, 'LAB Acide urique', 2700),
(210, 'LAB Ferritine', 18000),
(211, 'LAB Lipasse', 10800),
(212, 'LAB Transaminases (SGOT/SGPT)', 8000),
(213, 'LAB NFS', 6300),
(214, 'LAB GE', 1000),
(215, 'LAB TDR', 200),
(216, 'LAB VS', 2000),
(217, 'LAB Snip test', 2000),
(218, 'LAB Microfilaire', 2000),
(219, 'LAB Groupe sanguin (GS RH)', 2000),
(220, 'LAB Selle', 500),
(221, 'LAB Selle + ATB', 14000),
(222, 'LAB ECBU', 2000),
(223, 'LAB ECBU + ATB', 12000),
(224, 'LAB PU', 2000),
(225, 'LAB PU + ATB', 14000),
(226, 'LAB PCV', 2000),
(227, 'LAB PCV + ATB', 14000),
(228, 'LAB Mycoplasme', 14000),
(229, 'LAB Spermogramme', 14000),
(230, 'LAB Widal et Felix', 3600),
(231, 'LAB TPHA/VDRL', 4500),
(232, 'LAB Chlamydia', 8000),
(233, 'LAB Toxo', 8000),
(234, 'LAB Rubéole', 8000),
(235, 'LAB CRP', 3600),
(236, 'LAB ASLO', 4000),
(237, 'LAB Facteur Rhumatoide', 4500),
(238, 'LAB AgHbs', 3600),
(239, 'LAB ACHVC', 4500),
(240, 'LAB H.PYLORI', 8000),
(241, 'LAB Glycémie à jeun', 1000),
(242, 'LAB AgHbs', 13500),
(243, 'LAB AC anti Hbs', 13500),
(244, 'LAB AC anti Hbe', 13500),
(245, 'LAB AC anti Hbc', 13500),
(246, 'LAB Dosage AgHbs', 12600),
(247, 'LAB Dosage HCV', 18000),
(248, 'LAB Dosage Toxo', 12600),
(249, 'LAB Herpes 1 et 2', 18000),
(250, 'LAB IgE totales', 16200),
(251, 'LAB Chlamydia PCR', 35000),
(252, 'LAB Béta HCG serique', 6000),
(253, 'LAB Béta HCG Dosage ', 20000),
(254, 'LAB Cortisolémie', 36000),
(255, 'LAB Testotérone', 21600),
(256, 'LAB Oestradiol', 18000),
(257, 'LAB LH', 18000),
(258, 'LAB FSH', 18000),
(259, 'LAB Progestérone', 20000),
(260, 'LAB Prolactine', 20000),
(261, 'LAB T3', 20000),
(262, 'LAB T4', 20000),
(263, 'LAB TSH', 20000),
(264, 'LAB AFP', 20000),
(265, 'LAB ACE', 20000),
(266, 'LAB PSA libre', 25000),
(267, 'LAB PSA totale', 20000),
(268, 'LAB NT Pro BNP', 27000),
(269, 'LAB Troponine', 20000),
(270, 'LAB D.dimeres', 20000),
(271, 'LAB Procalcitomie', 30000),
(272, 'LAB Protéinurie de 24h', 7800),
(273, 'LAB AMH', 48000),
(274, 'LAB Speculum', 1000),
(277, 'RX abcabc', 1000),
(278, 'MA ', 0),
(279, 'MA ma hhh', 5);

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
(1, 'CHR K1', 1000),
(2, 'CHR K2', 2000),
(3, 'CHR K3', 3000),
(4, 'CHR K4', 4000),
(5, 'CHR K5', 5000),
(6, 'CHR K6', 6000),
(7, 'CHR K7', 7000),
(8, 'CHR K8', 8000),
(9, 'CHR K9', 9000),
(10, 'CHR K10', 10000),
(11, 'CHR K11', 11000),
(12, 'CHR K12', 12000),
(13, 'CHR K13', 13000),
(14, 'CHR K14', 14000),
(15, 'CHR K15', 15000),
(16, 'CHR K16', 16000),
(17, 'CHR K17', 17000),
(18, 'CHR K18', 18000),
(19, 'CHR K19', 19000),
(20, 'CHR K20', 20000),
(21, 'CHR K21', 21000),
(22, 'CHR K22', 22000),
(23, 'CHR K23', 23000),
(24, 'CHR K24', 24000),
(25, 'CHR K25', 25000),
(26, 'CHR K26', 26000),
(27, 'CHR K27', 27000),
(28, 'CHR K28', 28000),
(29, 'CHR K29', 29000),
(30, 'CHR K30', 30000),
(31, 'CHR K31', 31000),
(32, 'CHR K32', 32000),
(33, 'CHR K33', 33000),
(34, 'CHR K34', 34000),
(35, 'CHR K35', 35000),
(36, 'CHR K36', 36000),
(37, 'CHR K37', 37000),
(38, 'CHR K38', 38000),
(39, 'CHR K39', 39000),
(40, 'CHR K40', 40000),
(41, 'CHR K41', 41000),
(42, 'CHR K42', 42000),
(43, 'CHR K43', 43000),
(44, 'CHR K44', 44000),
(45, 'CHR K45', 45000),
(46, 'CHR K46', 46000),
(47, 'CHR K47', 47000),
(48, 'CHR K48', 48000),
(49, 'CHR K49', 49000),
(50, 'CHR K50', 50000),
(51, 'CHR K51', 51000),
(52, 'CHR K52', 52000),
(53, 'CHR K53', 53000),
(54, 'CHR K54', 54000),
(55, 'CHR K55', 55000),
(56, 'CHR K56', 56000),
(57, 'CHR K57', 57000),
(58, 'CHR K58', 58000),
(59, 'CHR K59', 59000),
(60, 'CHR K60', 60000),
(61, 'CHR K61', 61000),
(62, 'CHR K62', 62000),
(63, 'CHR K63', 63000),
(64, 'CHR K64', 64000),
(65, 'CHR K65', 65000),
(66, 'CHR K66', 66000),
(67, 'CHR K67', 67000),
(68, 'CHR K68', 68000),
(69, 'CHR K69', 69000),
(70, 'CHR K70', 70000),
(71, 'CHR K71', 71000),
(72, 'CHR K72', 72000),
(73, 'CHR K73', 73000),
(74, 'CHR K74', 74000),
(75, 'CHR K75', 75000),
(76, 'CHR K76', 76000),
(77, 'CHR K77', 77000),
(78, 'CHR K78', 78000),
(79, 'CHR K79', 79000),
(80, 'CHR K80', 80000),
(81, 'CHR K81', 81000),
(82, 'CHR K82', 82000),
(83, 'CHR K83', 83000),
(84, 'CHR K84', 84000),
(85, 'CHR K85', 85000),
(86, 'CHR K86', 86000),
(87, 'CHR K87', 87000),
(88, 'CHR K88', 88000),
(89, 'CHR K89', 89000),
(90, 'CHR K90', 90000),
(91, 'CHR K91', 91000),
(92, 'CHR K92', 92000),
(93, 'CHR K93', 93000),
(94, 'CHR K94', 94000),
(95, 'CHR K95', 95000),
(96, 'CHR K96', 96000),
(97, 'CHR K97', 97000),
(98, 'CHR K98', 98000),
(99, 'CHR K99', 99000),
(100, 'CHR K100', 100000),
(101, 'CHR Pansement simple', 500),
(102, 'CHR Pansement complexe', 1000),
(103, 'CHR Pose sonde nase-gastrique', 3000),
(104, 'CHR Pose sonde urinaire', 3000),
(105, 'CHR Suture', 1000),
(106, 'CHR Circoncision', 5000),
(107, 'CHR Incision', 2000),
(108, 'Echographie Abdominale (foie, rate, vésicule biliaire, pancréas…)', 12000),
(109, 'Echographie Abdominopelvienne', 15000),
(110, 'Echographie Pelvienne', 10000),
(111, 'Echographie Pelvienne Endovaginale', 12000),
(112, 'Echographie Mammaire (ou sein)', 12000),
(113, 'Echographie Rénale (ou voies urinaires ou arbres urinaires)', 12000),
(114, 'Echographie Obstétricale (1er, 2e, 3e, trimestre)', 10000),
(115, 'Echographie Reno-Vesico-Prostatique', 20000),
(116, 'Echographie Testiculaire (ou scrotale ou bourses)', 15000),
(117, 'Echographie Thyroidienne, Echographie Cervicale (parotide…)', 20000),
(118, 'Echographie Occulaire', 12000),
(119, 'Echographie parties molles', 10000),
(120, 'Echographie Transfontanellaire', 17500),
(121, 'Echo Doppler Veneux des membres inférieur', 30000),
(122, 'Echo Dopper Artériel des membres', 35000),
(123, 'Echo Dopper Testiculaire', 25000),
(124, 'Echo Dopper des troncs supraortiques', 30000),
(125, 'Echographie Osteo Articulaire (genou, coude, épaule…)', 17000),
(126, 'RX Articulation antalo-axoidienne', 10000),
(127, 'RX Articulation Temporo-Mandibulaire', 10000),
(128, 'RX Blondeau/Hirtz/Worms/Shuller', 10000),
(129, 'RX Cavum (Profil)', 10000),
(130, 'RX Crane (F/P)', 15000),
(131, 'RX Défilé maxiliaire', 10000),
(132, 'RX Os propre du nez (OPN)', 10000),
(133, 'RX Selle turcique', 10000),
(134, 'RX Sinus complet', 20000),
(135, 'RX Avant-bras (F/P)', 12000),
(136, 'RX Bras (F/P)', 12000),
(137, 'RX Coude (F/P)', 12000),
(138, 'RX Epaule (F/P)', 12000),
(139, 'RX Epaule 3 incidences', 20000),
(140, 'RX Main (F/P)', 10000),
(141, 'RX Poignet (F/P)', 10000),
(142, 'RX Doigt (F/P)', 10000),
(143, 'RX Age osseux (main et poignet)', 20000),
(144, 'RX Bassin (F/P)', 15000),
(145, 'RX Calcanéum (F/P)', 10000),
(146, 'RX Cheville (F/P)', 10000),
(147, 'RX Fémur (F/P)', 12000),
(148, 'RX Genou (F/P)', 12000),
(149, 'RX Genou (F/P + 30° . 60°)', 20000),
(150, 'RX Hanche (F/P)', 15000),
(151, 'RX Jambe (F/P)', 12000),
(152, 'RX Orteil (F/P)', 10000),
(153, 'RX Pied (F/P)', 10000),
(154, 'RX Gril costal (F)', 15000),
(155, 'RX Gril costal (F/P)', 15000),
(156, 'RX Sternum, clavicule (F/P)', 10000),
(157, 'RX Thorax (F)', 9000),
(158, 'RX Thorax (F/P)', 15000),
(159, 'RX Rachis cervical (F/P + %)', 20000),
(160, 'RX Rachis cervical (F/P)', 15000),
(161, 'RX Rachis complet', 45000),
(162, 'RX Rachis dorsal (F/P)', 15000),
(163, 'RX Rachis dorso-lombaire (F/P)', 25000),
(164, 'RX Rashis lombaire (F/P + %)', 20000),
(165, 'RX Rashis lombaire (F/P)', 15000),
(166, 'RX Rashis lombo-sacré (F/P)', 15000),
(167, 'CO Consultation simple', 900),
(168, 'CO Consultation prénatale', 5500),
(169, 'CO Carnet de consultation', 400),
(170, 'CO Carnet pédiatrie', 1000),
(171, 'CO Consultation gynécologue', 3000),
(172, 'CO Consultation cardiologue', 5000),
(173, 'CO Consultation endocrinologue', 7000),
(174, 'CO Consultation pédiatre', 3000),
(175, 'CO Consultation kinésithépeute', 5000),
(176, 'CO Consultation chirurgien', 5000),
(177, 'CO Consultation psychologue', 5000),
(178, 'MED Soins infirmiers', 1000),
(179, 'MED Pose cathether', 1000),
(180, 'MED Injection', 500),
(181, 'MED Ami', 1500),
(182, 'MED Dossier médical', 1000),
(183, 'MED Hospitalisation simple', 1500),
(184, 'MED Hospitalisation payant', 3000),
(185, 'MED Hospitalisation VIP', 5000),
(186, 'MA Forfait maternité', 7600),
(187, 'MA Surveillance syntho', 5000),
(188, 'MA Induction', 5000),
(189, 'MA Suture vaginale', 7500),
(190, 'MA Suture col', 10000),
(191, 'MA Suture périnée', 5000),
(192, 'UPEC Crachats', 1000),
(193, 'LAB Cholestérol total', 3600),
(194, 'LAB Cholestérol HDL', 3600),
(195, 'LAB Cholestérol LDL', 3600),
(196, 'LAB Triglycérides', 3600),
(197, 'LAB Urée', 2700),
(198, 'LAB Créatine', 2700),
(199, 'LAB Ionogramme complet (Na, K, Cl, Ca2+, Mg2+', 13500),
(200, 'LAB Ionogramme simple (Na, K, Cl) ', 9000),
(201, 'LAB Calcium', 3600),
(202, 'LAB Chlore', 2700),
(203, 'LAB Magnésium', 3600),
(204, 'LAB Fer serique', 5400),
(205, 'LAB Hémoglobine glycossylée (HBA1C)', 10800),
(206, 'LAB Lipides', 6300),
(207, 'LAB Phosphore', 2700),
(208, 'LAB Protide', 1800),
(209, 'LAB Acide urique', 2700),
(210, 'LAB Ferritine', 18000),
(211, 'LAB Lipasse', 10800),
(212, 'LAB Transaminases (SGOT/SGPT)', 8000),
(213, 'LAB NFS', 6300),
(214, 'LAB GE', 1000),
(215, 'LAB TDR', 200),
(216, 'LAB VS', 2000),
(217, 'LAB Snip test', 2000),
(218, 'LAB Microfilaire', 2000),
(219, 'LAB Groupe sanguin (GS RH)', 2000),
(220, 'LAB Selle', 500),
(221, 'LAB Selle + ATB', 14000),
(222, 'LAB ECBU', 2000),
(223, 'LAB ECBU + ATB', 12000),
(224, 'LAB PU', 2000),
(225, 'LAB PU + ATB', 14000),
(226, 'LAB PCV', 2000),
(227, 'LAB PCV + ATB', 14000),
(228, 'LAB Mycoplasme', 14000),
(229, 'LAB Spermogramme', 14000),
(230, 'LAB Widal et Felix', 3600),
(231, 'LAB TPHA/VDRL', 4500),
(232, 'LAB Chlamydia', 8000),
(233, 'LAB Toxo', 8000),
(234, 'LAB Rubéole', 8000),
(235, 'LAB CRP', 3600),
(236, 'LAB ASLO', 4000),
(237, 'LAB Facteur Rhumatoide', 4500),
(238, 'LAB AgHbs', 3600),
(239, 'LAB ACHVC', 4500),
(240, 'LAB H.PYLORI', 8000),
(241, 'LAB Glycémie à jeun', 1000),
(242, 'LAB AgHbs', 13500),
(243, 'LAB AC anti Hbs', 13500),
(244, 'LAB AC anti Hbe', 13500),
(245, 'LAB AC anti Hbc', 13500),
(246, 'LAB Dosage AgHbs', 12600),
(247, 'LAB Dosage HCV', 18000),
(248, 'LAB Dosage Toxo', 12600),
(249, 'LAB Herpes 1 et 2', 18000),
(250, 'LAB IgE totales', 16200),
(251, 'LAB Chlamydia PCR', 35000),
(252, 'LAB Béta HCG serique', 6000),
(253, 'LAB Béta HCG Dosage ', 20000),
(254, 'LAB Cortisolémie', 36000),
(255, 'LAB Testotérone', 21600),
(256, 'LAB Oestradiol', 18000),
(257, 'LAB LH', 18000),
(258, 'LAB FSH', 18000),
(259, 'LAB Progestérone', 20000),
(260, 'LAB Prolactine', 20000),
(261, 'LAB T3', 20000),
(262, 'LAB T4', 20000),
(263, 'LAB TSH', 20000),
(264, 'LAB AFP', 20000),
(265, 'LAB ACE', 20000),
(266, 'LAB PSA libre', 25000),
(267, 'LAB PSA totale', 20000),
(268, 'LAB NT Pro BNP', 27000),
(269, 'LAB Troponine', 20000),
(270, 'LAB D.dimeres', 20000),
(271, 'LAB Procalcitomie', 30000),
(272, 'LAB Protéinurie de 24h', 7800),
(273, 'LAB AMH', 48000),
(274, 'LAB Speculum', 1000),
(276, 'RX abcabc', 1000),
(277, 'MA ', 0),
(278, 'MA ma hhh', 5);

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
(7, 'Kamdem', '$2y$10$Z9GKQD2f9H1SA2mi0VspAu93zmhB5J44yjdo73m/79akfAd6Ir.UW', 'vendeur'),
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
(6, 'Dr Obam', '$2y$10$qS/AJVYzaZA293ep63qdDe9HmdLWbb1SU7Q8WOgkOEtjuG3TYI30S', 'admin'),
(12, 'Kamdem', '$2y$10$MT2QnhCiatG64HjcXKBb3.aHvqA64XKchbdivcXk0XKTSiMdh8hzi', 'caissier'),
(13, 'Mr Nola', '$2y$10$m1cYZy5QrQmzTyImU5J/lubvLU3l3pn6Sc94lNXW/uCOHZNwmPIqy', 'regisseur'),
(19, 'Tatiana', '$2y$10$jS460Q4r4W9WiM8GNIZSkOgdBPp5NlTwC.o63s7Vz9oYtr/1UfVI6', 'secretaire');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `approvisionnement`
--
ALTER TABLE `approvisionnement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_assurance`
--
ALTER TABLE `data_assurance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `details_recette`
--
ALTER TABLE `details_recette`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `facture_assurance`
--
ALTER TABLE `facture_assurance`
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
-- Index pour la table `id_facture_assure`
--
ALTER TABLE `id_facture_assure`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `data_assurance`
--
ALTER TABLE `data_assurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `details_recette`
--
ALTER TABLE `details_recette`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `facture_assurance`
--
ALTER TABLE `facture_assurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `facture_caisse`
--
ALTER TABLE `facture_caisse`
  MODIFY `id_fac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT pour la table `facture_pharmacie`
--
ALTER TABLE `facture_pharmacie`
  MODIFY `id_fac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT pour la table `historique_services`
--
ALTER TABLE `historique_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT pour la table `id_facture_assure`
--
ALTER TABLE `id_facture_assure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `infos_approvisionnement`
--
ALTER TABLE `infos_approvisionnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `medicaments`
--
ALTER TABLE `medicaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=676;

--
-- AUTO_INCREMENT pour la table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recettes_caisse`
--
ALTER TABLE `recettes_caisse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `recettes_enregistres`
--
ALTER TABLE `recettes_enregistres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT pour la table `services_urgences`
--
ALTER TABLE `services_urgences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `utilisateurs_caisse`
--
ALTER TABLE `utilisateurs_caisse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
