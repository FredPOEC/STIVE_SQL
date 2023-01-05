-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 04 jan. 2023 à 13:27
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
  `ImageArticle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PrixVentehtArticle` double NOT NULL,
  `RistourneCartonArticle` double DEFAULT NULL,
  `NbDansCartonArticle` int DEFAULT NULL,
  `PrixVenteCartonhtArticle` double DEFAULT NULL,
  `PrixAchathtArticle` double NOT NULL,
  `AnneeArticle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IdFamille` int NOT NULL,
  `IdDomaine` int NOT NULL,
  `IdTVA` int NOT NULL,
  PRIMARY KEY (`IdArticle`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`IdArticle`, `NomArticle`, `DescriptifArticle`, `ImageArticle`, `PrixVentehtArticle`, `RistourneCartonArticle`, `NbDansCartonArticle`, `PrixVenteCartonhtArticle`, `PrixAchathtArticle`, `AnneeArticle`, `IdFamille`, `IdDomaine`, `IdTVA`) VALUES
(1, 'Imprévu', NULL, NULL, 19.99, 0.95, 6, 113.99, 12, '2020', 2, 1, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `fonctions`
--

INSERT INTO `fonctions` (`IdFonction`, `LibelleFonction`) VALUES
(1, 'SuperUtilisateur'),
(2, 'GestionnaireCommercial'),
(3, 'GestionnaireStock'),
(4, 'GestionnaireInventaire'),
(5, 'ClientEnregistre'),
(6, 'UtilisateurNonEnregistre');

-- --------------------------------------------------------

--
-- Structure de la table `lignecommandeclients`
--

DROP TABLE IF EXISTS `lignecommandeclients`;
CREATE TABLE IF NOT EXISTS `lignecommandeclients` (
  `IdLigneCommandeClient` int NOT NULL AUTO_INCREMENT,
  `QuantiteLigneCommandeClient` int NOT NULL,
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
  `NomUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PrenomUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MailUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MotdePasseUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AdresseUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CodePostalUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `VilleUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TelephoneUtilisateur` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `IdFonction` int NOT NULL,
  PRIMARY KEY (`IdUtilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
