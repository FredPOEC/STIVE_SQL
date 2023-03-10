-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 03 fév. 2023 à 08:44
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `stive`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `IdArticle` int NOT NULL AUTO_INCREMENT,
  `NomArticle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DescriptifArticle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `QuantiteEnStock` int NOT NULL,
  `ImageArticle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PrixAchathtArticle` double NOT NULL,
  `AnneeArticle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IdFamille` int NOT NULL,
  `IdDomaine` int NOT NULL,
  `IdTVA` int NOT NULL,
  `IdCoef` int NOT NULL,
  `NumeroArticle` varchar(8) NOT NULL,
  PRIMARY KEY (`IdArticle`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`IdArticle`, `NomArticle`, `DescriptifArticle`, `QuantiteEnStock`, `ImageArticle`, `PrixAchathtArticle`, `AnneeArticle`, `IdFamille`, `IdDomaine`, `IdTVA`, `IdCoef`, `NumeroArticle`) VALUES
(14, 'Pilaho rosé', NULL, 15, NULL, 29.99, '2020', 3, 2, 1, 1, '02030014'),
(13, 'Pilaho blanc', NULL, 15, NULL, 29.99, '2020', 2, 2, 1, 1, '02020013'),
(12, 'Imprévu Blanc par 6', NULL, 15, NULL, 229.99, '2020', 2, 1, 1, 1, '01020012'),
(11, 'Imprévu Blanc', NULL, 15, NULL, 49.99, '2020', 2, 1, 1, 1, '01020011'),
(10, 'Bas armagnac', NULL, 15, NULL, 69.99, '2020', 5, 1, 1, 1, '01050010'),
(9, 'Imprevu par 6', NULL, 20, NULL, 169.99, '2020', 1, 1, 1, 1, '01020009'),
(8, 'Imprevu', 'Vin rouge du domaine Tariquet', 10, NULL, 29.99, '2020', 1, 1, 1, 1, '01010008'),
(15, 'Manseng noir', NULL, 15, NULL, 29.99, '2019', 1, 2, 1, 1, '02010015'),
(16, 'Manseng noir par 6', NULL, 15, NULL, 149.99, '2019', 1, 2, 1, 1, '02010016'),
(17, 'Ampéloméryx rouge', NULL, 35, NULL, 49.99, '2019', 1, 2, 1, 1, '02010017'),
(18, 'Ampéloméryx rouge par 6', NULL, 21, NULL, 229.99, '2019', 1, 2, 1, 1, '02010018'),
(19, 'Armagnac', NULL, 21, NULL, 229.99, '1973', 5, 2, 1, 1, '02050019'),
(20, 'Armagnac', NULL, 21, NULL, 199.99, '1974', 5, 2, 1, 1, '02050020'),
(21, 'Eros', NULL, 30, NULL, 19.99, '2019', 3, 3, 1, 1, '03030021'),
(22, 'L\'insolent', NULL, 42, NULL, 24.99, '2019', 1, 3, 1, 1, '03010022'),
(23, 'L\'insolent par 6 ', NULL, 21, NULL, 139.99, '2019', 1, 3, 1, 1, '03010023'),
(24, 'Brut de Joÿ', NULL, 45, NULL, 39.99, '2022', 4, 3, 1, 1, '03040024'),
(25, 'Brut de Joÿ par 6', NULL, 45, NULL, 229.99, '2022', 4, 3, 1, 1, '03040025'),
(26, 'Armagnac by Joÿ', NULL, 38, NULL, 69.99, '2012', 5, 3, 1, 1, '03050026'),
(27, 'Maubet rouge', NULL, 62, NULL, 39.99, '2020', 1, 4, 1, 1, '04010027'),
(28, 'Maubet rouge par 6', NULL, 31, NULL, 229.99, '2020', 1, 4, 1, 1, '04010028'),
(29, 'Maubet blanc', NULL, 52, NULL, 28.99, '2020', 2, 4, 1, 1, '04020029'),
(30, 'Maubet blanc par 6', NULL, 25, NULL, 214.99, '2020', 2, 4, 1, 1, '04020030'),
(31, 'Maubet rosé par 6', NULL, 21, NULL, 194.99, '2021', 3, 4, 1, 1, '04030031'),
(32, 'Maubet rosé', NULL, 56, NULL, 22.99, '2021', 3, 4, 1, 1, '04030032'),
(33, 'Bas armagnac XO', NULL, 56, NULL, 74.99, '2000', 5, 4, 1, 1, '04050033'),
(34, 'Bas armagnac VSOP', NULL, 33, NULL, 64.99, '2000', 5, 4, 1, 1, '04050034'),
(35, 'Bas armagnac Hors d\'âge', NULL, 19, NULL, 225.99, '1970', 5, 4, 1, 1, '04050035'),
(36, 'N°7 Tannat', NULL, 26, NULL, 21.99, '2021', 1, 5, 1, 1, '05010036'),
(37, 'N°7 Tannat par 6', NULL, 21, NULL, 159.99, '2021', 1, 5, 1, 1, '05010037'),
(38, 'N°1 Sauvignon ', NULL, 23, NULL, 13.99, '2021', 2, 5, 1, 1, '05020038'),
(39, 'N°1 Sauvignon par 6', NULL, 18, NULL, 59.99, '2021', 2, 5, 1, 1, '05020039'),
(40, 'N°6 Rosé par 6', NULL, 25, NULL, 59.99, '2021', 3, 5, 1, 1, '05030040'),
(41, 'N°6 Rosé', NULL, 72, NULL, 12.99, '2021', 3, 5, 1, 1, '05030041'),
(42, '002 Pétillant', NULL, 102, NULL, 14.99, '2022', 4, 5, 1, 1, '05040042'),
(43, '002 Pétillant par 6', NULL, 62, NULL, 79.99, '2022', 4, 5, 1, 1, '05040043'),
(44, 'Armagnac Oak', NULL, 51, NULL, 79.99, '2010', 5, 5, 1, 1, '05050044');

-- --------------------------------------------------------

--
-- Structure de la table `coefs`
--

DROP TABLE IF EXISTS `coefs`;
CREATE TABLE IF NOT EXISTS `coefs` (
  `IdCoef` int NOT NULL AUTO_INCREMENT,
  `ValeurCoef` double NOT NULL,
  `LibelleCoef` text NOT NULL,
  PRIMARY KEY (`IdCoef`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `coefs`
--

INSERT INTO `coefs` (`IdCoef`, `ValeurCoef`, `LibelleCoef`) VALUES
(1, 1.5, 'Coef de base'),
(2, 1.42, 'Coef -5%'),
(3, 1.35, 'Coef -10%'),
(4, 1.2, 'Coef -20%');

-- --------------------------------------------------------

--
-- Structure de la table `commandeclients`
--

DROP TABLE IF EXISTS `commandeclients`;
CREATE TABLE IF NOT EXISTS `commandeclients` (
  `IdCommandeClient` int NOT NULL AUTO_INCREMENT,
  `IdClient` int NOT NULL,
  `DateCommandeClient` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EtatCommandeClient` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`IdCommandeClient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commandedomaines`
--

DROP TABLE IF EXISTS `commandedomaines`;
CREATE TABLE IF NOT EXISTS `commandedomaines` (
  `IdCommandeDomaine` int NOT NULL AUTO_INCREMENT,
  `IdDomaine` int NOT NULL,
  `DateCommandeDomaine` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EtatCommandeDomaine` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`IdCommandeDomaine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `domaines`
--

DROP TABLE IF EXISTS `domaines`;
CREATE TABLE IF NOT EXISTS `domaines` (
  `IdDomaine` int NOT NULL AUTO_INCREMENT,
  `NomDomaine` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DescriptifDomaine` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `MailDomaine` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AdresseDomaine` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CodePostalDomaine` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `VilleDomaine` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TelephoneDomaine` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`IdDomaine`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `domaines`
--

INSERT INTO `domaines` (`IdDomaine`, `NomDomaine`, `DescriptifDomaine`, `MailDomaine`, `AdresseDomaine`, `CodePostalDomaine`, `VilleDomaine`, `TelephoneDomaine`) VALUES
(1, 'TARIQUET', NULL, 'contact@tariquet.com', 'Château du Tariquet', '32800', 'EAUZE', '0562098782'),
(2, 'PELLEHAUT', NULL, 'contact@pellehaut.com', 'Domaine de Pellehaut', '32250', 'MONTREAL DU GERS', '0562294879'),
(3, 'JOY', NULL, 'contact@domaine-joy.com ', 'Domaine de Joy D33', '32110', 'PANJAS', '0562090320'),
(4, 'FONTAN', NULL, 'contact@domaine-fontan.com ', 'Lieu dit \"Maubet\"', '32800', 'NOULENS', '0562085528'),
(5, 'UBY', NULL, 'contact@domaine-uby.com ', 'SAS SDU Distribution du Domaine UBY', '32250', 'CAZAUBON', '0562095193');

-- --------------------------------------------------------

--
-- Structure de la table `etatcommandes`
--

DROP TABLE IF EXISTS `etatcommandes`;
CREATE TABLE IF NOT EXISTS `etatcommandes` (
  `IdEtatCommande` int NOT NULL AUTO_INCREMENT,
  `LibelleEtatCommande` text NOT NULL,
  PRIMARY KEY (`IdEtatCommande`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `etatcommandes`
--

INSERT INTO `etatcommandes` (`IdEtatCommande`, `LibelleEtatCommande`) VALUES
(1, 'Panier'),
(2, 'CommandeValidee'),
(3, 'CommandePayee'),
(4, 'CommandeExpediee'),
(5, 'CommandeRecue');

-- --------------------------------------------------------

--
-- Structure de la table `familles`
--

DROP TABLE IF EXISTS `familles`;
CREATE TABLE IF NOT EXISTS `familles` (
  `IdFamille` int NOT NULL AUTO_INCREMENT,
  `LibelleFamille` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`IdFamille`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `familles`
--

INSERT INTO `familles` (`IdFamille`, `LibelleFamille`) VALUES
(1, 'Rouge'),
(2, 'Blanc'),
(3, 'Rosé'),
(4, 'Pétillant'),
(5, 'Digestif');

-- --------------------------------------------------------

--
-- Structure de la table `fonctions`
--

DROP TABLE IF EXISTS `fonctions`;
CREATE TABLE IF NOT EXISTS `fonctions` (
  `IdFonction` int NOT NULL AUTO_INCREMENT,
  `LibelleFonction` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`IdFonction`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `fonctions`
--

INSERT INTO `fonctions` (`IdFonction`, `LibelleFonction`) VALUES
(1, 'SuperUtilisateur'),
(2, 'GestionnaireCommercial'),
(3, 'GestionnaireStock'),
(4, 'GestionnaireInventaire'),
(5, 'ClientEnregistre');

-- --------------------------------------------------------

--
-- Structure de la table `lignecommandeclients`
--

DROP TABLE IF EXISTS `lignecommandeclients`;
CREATE TABLE IF NOT EXISTS `lignecommandeclients` (
  `IdLigneCommandeClient` int NOT NULL AUTO_INCREMENT,
  `QuantiteLigneCommandeClient` int NOT NULL,
  `PrixAchathtLigneCommandeClient` double NOT NULL,
  `TauxTVALigneCommandeClient` double NOT NULL,
  `IdArticle` int NOT NULL,
  `IdCommandeClient` int NOT NULL,
  PRIMARY KEY (`IdLigneCommandeClient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `lignecommandedomaines`
--

DROP TABLE IF EXISTS `lignecommandedomaines`;
CREATE TABLE IF NOT EXISTS `lignecommandedomaines` (
  `IdLigneCommandeDomaine` int NOT NULL AUTO_INCREMENT,
  `QuantiteLigneCommandeDomaine` int NOT NULL,
  `PrixAchathtLigneCommandeDomaines` double NOT NULL,
  `IdArticle` int NOT NULL,
  `IdCommandeDomaine` int NOT NULL,
  PRIMARY KEY (`IdLigneCommandeDomaine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tvas`
--

DROP TABLE IF EXISTS `tvas`;
CREATE TABLE IF NOT EXISTS `tvas` (
  `IdTva` int NOT NULL AUTO_INCREMENT,
  `TauxTva` double NOT NULL,
  `LibelleTVA` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`IdTva`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tvas`
--

INSERT INTO `tvas` (`IdTva`, `TauxTva`, `LibelleTVA`) VALUES
(1, 20, '20%');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `IdUtilisateur` int NOT NULL AUTO_INCREMENT,
  `NomUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PrenomUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MailUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MotdePasseUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AdresseUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CodePostalUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `VilleUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TelephoneUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `IdFonction` int NOT NULL,
  `NumeroUtilisateur` varchar(10) NOT NULL,
  PRIMARY KEY (`IdUtilisateur`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`IdUtilisateur`, `NomUtilisateur`, `PrenomUtilisateur`, `MailUtilisateur`, `MotdePasseUtilisateur`, `AdresseUtilisateur`, `CodePostalUtilisateur`, `VilleUtilisateur`, `TelephoneUtilisateur`, `IdFonction`, `NumeroUtilisateur`) VALUES
(2, 'h', 'h', 'h', 'g', 'h', 'h', 'h', 'g', 1, ''),
(3, 'd', 'jd', 'dj', 'htsj', 'hqerw', 'js', 'jsj', 'hst', 1, '01233'),
(4, 'TAMAGNI', 'Thibaud', 'thibaud.tamagni@gmail.com', '1234', '17 rue des vins', '69000', 'LYON', '1', 1, '02234'),
(5, 'HARZALLAH', 'Saïd', 'said.harzallah@gmail.com', '1234', '42 chemin ', '69000', 'LYON', '1', 2, '02235'),
(6, 'THENON', 'Frédéric', 'frederic.thenon', '1234', '42 chemin des Molières', '69000', 'LYON', '1', 2, '02236'),
(7, 'DUPOND', 'Frédéric', 'dupond@', '1234', '17 rue du pont', '69000', 'LYON', '1', 3, '02237'),
(8, 'MARTIN', 'Arthur', 'martin', '1234', '17 rue de la cusine', '69000', 'LYON', '1', 4, '02238'),
(9, 'DUPONT', 'Louis', 'louis', '1234', '123 rue du conte', '69000', 'LYON', '1', 5, '02239'),
(10, 'BERGER', 'Nathalie', 'nathalie', '1234', '321 avenue de saone', '69000', 'LYON', '1', 5, '022310'),
(11, 'BERGER', 'Thomas', 'thomas', '1234', '321 avenue de saone', '69000', 'LYON', '1', 5, '022311'),
(12, 'THENON', 'Léo', 'leo', '1234', '23 impasse du chat', '69000', 'LYON', '1', 5, '022312');

-- --------------------------------------------------------

--
-- Structure de la table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
CREATE TABLE IF NOT EXISTS `__efmigrationshistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20230104082648_CreateTables', '6.0.12');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
