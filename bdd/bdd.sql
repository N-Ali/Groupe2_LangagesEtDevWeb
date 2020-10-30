-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 30 oct. 2020 à 16:11
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `trombino_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `besoins`
--

DROP TABLE IF EXISTS `besoins`;
CREATE TABLE IF NOT EXISTS `besoins` (
  `idBesoins` int NOT NULL AUTO_INCREMENT,
  `analyser des bases de données` varchar(45) NOT NULL,
  `concevoir des UI` varchar(45) NOT NULL,
  `concevoir des UX` varchar(45) NOT NULL,
  `connaître les base du langage HTML 5` varchar(45) NOT NULL,
  `connaître les bases du responsive web design` varchar(45) NOT NULL,
  `connaître les outils d’édition web` varchar(45) NOT NULL,
  `modéliser des bases de données` varchar(45) NOT NULL,
  `service de type e-commerce` varchar(45) NOT NULL,
  `savoir gérer la publication à distance d’un site web` varchar(45) NOT NULL,
  `savoir gérer un projet` varchar(45) NOT NULL,
  `savoir gérer un site multilingue` varchar(45) NOT NULL,
  `savoir gérer une communauté en ligne` varchar(45) NOT NULL,
  `outils de diffusion web 2` varchar(45) NOT NULL,
  `savoir mettre en place des enquêtes` varchar(45) NOT NULL,
  `outils de type « ranking »` varchar(45) NOT NULL,
  `outils de veille d’information` varchar(45) NOT NULL,
  `forum de discussion` varchar(45) NOT NULL,
  `newsletter` varchar(45) NOT NULL,
  `savoir prototyper des innovations numériques` varchar(45) NOT NULL,
  `savoir réaliser des podcasts` varchar(45) NOT NULL,
  `savoir réaliser et diffuser des e-publications` varchar(45) NOT NULL,
  `rubriques multimédias` varchar(45) NOT NULL,
  `rubriques « statiques » d’un site web` varchar(45) NOT NULL,
  `savoir travailler avec le RSS` varchar(45) NOT NULL,
  `savoir utiliser correctement les métadonnées` varchar(45) NOT NULL,
  `savoir utiliser des cartes géographiques interactives` varchar(45) NOT NULL,
  `gestion d’accès aux rubriques` varchar(45) NOT NULL,
  `savoir utiliser les programmes de liens sponsorisés` varchar(45) NOT NULL,
  `utiliser les méthodes agiles de développement` varchar(45) NOT NULL,
  PRIMARY KEY (`idBesoins`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cms`
--

DROP TABLE IF EXISTS `cms`;
CREATE TABLE IF NOT EXISTS `cms` (
  `idCMS` int NOT NULL AUTO_INCREMENT,
  `Alfresco` varchar(45) NOT NULL,
  `Drupal` varchar(45) NOT NULL,
  `Joomla` varchar(45) NOT NULL,
  `LMS` varchar(45) NOT NULL,
  `Moodle` varchar(45) NOT NULL,
  `Omeka S` varchar(45) NOT NULL,
  `Omeka Classique` varchar(45) NOT NULL,
  `Presta Shop` varchar(45) NOT NULL,
  `SPIP` varchar(45) NOT NULL,
  `Sharepoint` varchar(45) NOT NULL,
  `Wordpress` varchar(45) NOT NULL,
  PRIMARY KEY (`idCMS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compétences`
--

DROP TABLE IF EXISTS `compétences`;
CREATE TABLE IF NOT EXISTS `compétences` (
  `idCompétences` int NOT NULL AUTO_INCREMENT,
  `analyser des bases de données` varchar(45) NOT NULL,
  `concevoir des UI` varchar(45) NOT NULL,
  `concevoir des UX` varchar(45) NOT NULL,
  `connaître les base du langage HTML 5` varchar(45) NOT NULL,
  `connaître les bases du responsive web design` varchar(45) NOT NULL,
  `connaître les outils d’édition web` varchar(45) NOT NULL,
  `modéliser une base de données` varchar(45) NOT NULL,
  `service de type e-commerce` varchar(45) NOT NULL,
  `savoir gérer la publication à distance d’un site web` varchar(45) NOT NULL,
  `savoir gérer un projet` varchar(45) NOT NULL,
  `savoir gérer un site multilingue` varchar(45) NOT NULL,
  `savoir gérer une communauté en ligne` varchar(45) NOT NULL,
  `outils de diffusion web 2` varchar(45) NOT NULL,
  `savoir mettre en place des enquêtes en ligne` varchar(45) NOT NULL,
  `outils de type « ranking »` varchar(45) NOT NULL,
  `outils de veille d’information` varchar(45) NOT NULL,
  `savoir mettre en place et gérer un forum de discussion` varchar(45) NOT NULL,
  `newsletter` varchar(45) NOT NULL,
  `savoir prototyper des innovations numériques` varchar(45) NOT NULL,
  `savoir réaliser des podcasts` varchar(45) NOT NULL,
  `savoir réaliser et diffuser des e-publications` varchar(45) NOT NULL,
  ` rubriques multimédias` varchar(45) NOT NULL,
  ` rubriques « statiques » d’un site web` varchar(45) NOT NULL,
  `savoir travailler avec le RSS` varchar(45) NOT NULL,
  `savoir utiliser correctement les métadonnées` varchar(45) NOT NULL,
  `savoir utiliser des cartes géographiques interactives` varchar(45) NOT NULL,
  `gestion d’accès aux rubriques` varchar(45) NOT NULL,
  `savoir utiliser les programmes de liens sponsorisés` varchar(45) NOT NULL,
  `utiliser les méthodes agiles de développement` varchar(45) NOT NULL,
  PRIMARY KEY (`idCompétences`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

DROP TABLE IF EXISTS `connexion`;
CREATE TABLE IF NOT EXISTS `connexion` (
  `idConnexion` int NOT NULL,
  `4G` varchar(45) DEFAULT NULL,
  `Ethernet` varchar(45) DEFAULT NULL,
  `Satelitte` varchar(45) DEFAULT NULL,
  `WIFI` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idConnexion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `idEtudiant` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(45) NOT NULL,
  `Prénom` varchar(45) NOT NULL,
  `Mail` varchar(45) NOT NULL,
  `Numéro Etudiant` varchar(15) NOT NULL,
  `Horodateur` datetime NOT NULL,
  `ImageURL` varchar(255) NOT NULL,
  `Github` varchar(45) NOT NULL,
  `Spécialités` varchar(45) NOT NULL,
  `CMS_id` int NOT NULL,
  `Langues_id` int NOT NULL,
  `Langages_id` int NOT NULL,
  `Outils_id` int NOT NULL,
  `Besoins_id` int NOT NULL,
  `Compétences_id` int NOT NULL,
  `Réseaux_id` int NOT NULL,
  `Informations_idInformations` int NOT NULL,
  `Connexion_idConnexion` int NOT NULL,
  PRIMARY KEY (`idEtudiant`,`CMS_id`,`Langues_id`,`Langages_id`,`Outils_id`,`Besoins_id`,`Compétences_id`,`Réseaux_id`,`Informations_idInformations`,`Connexion_idConnexion`),
  UNIQUE KEY `NumEtudiant_UNIQUE` (`Numéro Etudiant`),
  KEY `fk_Etudiant_CMS_idx` (`CMS_id`),
  KEY `fk_Etudiant_Langues1_idx` (`Langues_id`),
  KEY `fk_Etudiant_Langages1_idx` (`Langages_id`),
  KEY `fk_Etudiant_Outils1_idx` (`Outils_id`),
  KEY `fk_Etudiant_Besoins1_idx` (`Besoins_id`),
  KEY `fk_Etudiant_Compétences1_idx` (`Compétences_id`),
  KEY `fk_Etudiant_Réseaux Sociaux1_idx` (`Réseaux_id`),
  KEY `fk_Etudiant_Informations1_idx` (`Informations_idInformations`),
  KEY `fk_Etudiant_Connexion1_idx` (`Connexion_idConnexion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `informations`
--

DROP TABLE IF EXISTS `informations`;
CREATE TABLE IF NOT EXISTS `informations` (
  `idInformations` int NOT NULL,
  `Diigo` varchar(45) DEFAULT NULL,
  `Zotero` varchar(45) DEFAULT NULL,
  `Spécialité` varchar(800) NOT NULL,
  `Formation Précédente` varchar(100) NOT NULL,
  `Objectifs Professionels` varchar(800) DEFAULT NULL,
  `Ordinateur` char(3) NOT NULL,
  `Parcours` varchar(7) NOT NULL,
  PRIMARY KEY (`idInformations`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `langages`
--

DROP TABLE IF EXISTS `langages`;
CREATE TABLE IF NOT EXISTS `langages` (
  `idLangages` int NOT NULL AUTO_INCREMENT,
  `C#` varchar(45) NOT NULL,
  `C++` varchar(45) NOT NULL,
  `CSS` varchar(45) NOT NULL,
  `CSV` varchar(45) NOT NULL,
  `C` varchar(45) NOT NULL,
  `HTML` varchar(45) NOT NULL,
  `JAVA` varchar(45) NOT NULL,
  `JSON` varchar(45) NOT NULL,
  `Javascript` varchar(45) NOT NULL,
  `LISP` varchar(45) NOT NULL,
  `LaTek` varchar(45) NOT NULL,
  `ML (TersorFlow)` varchar(45) NOT NULL,
  `Markdown` varchar(45) NOT NULL,
  `OWL` varchar(45) NOT NULL,
  `PHP` varchar(45) NOT NULL,
  `Python` varchar(45) NOT NULL,
  `RDF` varchar(45) NOT NULL,
  `SQL` varchar(45) NOT NULL,
  `Stratch` varchar(45) NOT NULL,
  `Visual Basic` varchar(45) NOT NULL,
  `XML` varchar(45) NOT NULL,
  `scala` varchar(45) NOT NULL,
  PRIMARY KEY (`idLangages`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `langues`
--

DROP TABLE IF EXISTS `langues`;
CREATE TABLE IF NOT EXISTS `langues` (
  `idLangues` int NOT NULL AUTO_INCREMENT,
  `Allemenand` varchar(45) NOT NULL,
  `Anglais` varchar(45) NOT NULL,
  `Arabes` varchar(45) NOT NULL,
  `Chinois` varchar(45) NOT NULL,
  `Espagnol` varchar(45) NOT NULL,
  `Français` varchar(45) NOT NULL,
  `Italien` varchar(45) NOT NULL,
  `Japonais` varchar(45) NOT NULL,
  `Persan` varchar(45) NOT NULL,
  `Portugais` varchar(45) NOT NULL,
  `Russe` varchar(45) NOT NULL,
  `Tamazirth` varchar(45) NOT NULL,
  `Languescol` varchar(45) NOT NULL,
  PRIMARY KEY (`idLangues`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `outils`
--

DROP TABLE IF EXISTS `outils`;
CREATE TABLE IF NOT EXISTS `outils` (
  `idOutils` int NOT NULL AUTO_INCREMENT,
  `After Effect` varchar(45) NOT NULL,
  `Balsamique` varchar(45) NOT NULL,
  `Blender` varchar(45) NOT NULL,
  `Bracket` varchar(45) NOT NULL,
  `CRM entreprise` varchar(45) NOT NULL,
  `Cordova` varchar(45) NOT NULL,
  `Dreamweaver` varchar(45) NOT NULL,
  `Eclipse` varchar(45) NOT NULL,
  `FTP` varchar(45) NOT NULL,
  `Filezilla` varchar(45) NOT NULL,
  `Final Cut` varchar(45) NOT NULL,
  `Flash` varchar(45) NOT NULL,
  `Gantt` varchar(45) NOT NULL,
  `Gimp` varchar(45) NOT NULL,
  `GitHub` varchar(45) NOT NULL,
  `Illustrator` varchar(45) NOT NULL,
  `In design` varchar(45) NOT NULL,
  `Inkscape` varchar(45) NOT NULL,
  `Kompozer` varchar(45) NOT NULL,
  `LaTek` varchar(45) NOT NULL,
  `Mamp` varchar(45) NOT NULL,
  `Matlab` varchar(45) NOT NULL,
  `MySqlWorkbench` varchar(45) NOT NULL,
  `Office` varchar(45) NOT NULL,
  `Photoshop` varchar(45) NOT NULL,
  `PhpMyAdmin` varchar(45) NOT NULL,
  `Premier` varchar(45) NOT NULL,
  `Python` varchar(45) NOT NULL,
  `R` varchar(45) NOT NULL,
  `SLACK` varchar(45) NOT NULL,
  `Sketchup` varchar(45) NOT NULL,
  `Sublime text` varchar(45) NOT NULL,
  `Tableau` varchar(45) NOT NULL,
  `Talent` varchar(45) NOT NULL,
  `Trello` varchar(45) NOT NULL,
  `Unity` varchar(45) NOT NULL,
  `Visual Studio` varchar(45) NOT NULL,
  `Wamp` varchar(45) NOT NULL,
  `Xamp` varchar(45) NOT NULL,
  PRIMARY KEY (`idOutils`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `réseaux`
--

DROP TABLE IF EXISTS `réseaux`;
CREATE TABLE IF NOT EXISTS `réseaux` (
  `idRéseaux` int NOT NULL,
  `Blogs` varchar(45) NOT NULL,
  `Facebook` varchar(45) NOT NULL,
  `LinkedIn` varchar(45) NOT NULL,
  `MSN` varchar(45) NOT NULL,
  `Recherche Gate` varchar(45) NOT NULL,
  `Sky blog` varchar(45) NOT NULL,
  `Skype` varchar(45) NOT NULL,
  `Twitter` varchar(45) NOT NULL,
  `Viadeo` varchar(45) NOT NULL,
  `Vimeo` varchar(45) NOT NULL,
  `Youtube` varchar(45) NOT NULL,
  `Discord` varchar(45) NOT NULL,
  `Instagram` varchar(45) NOT NULL,
  `Pinterest` varchar(45) NOT NULL,
  `Snapchat` varchar(45) NOT NULL,
  `Telegram` varchar(45) NOT NULL,
  `What's App` varchar(45) NOT NULL,
  PRIMARY KEY (`idRéseaux`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `fk_Etudiant_Besoins1` FOREIGN KEY (`Besoins_id`) REFERENCES `besoins` (`idBesoins`),
  ADD CONSTRAINT `fk_Etudiant_CMS` FOREIGN KEY (`CMS_id`) REFERENCES `cms` (`idCMS`),
  ADD CONSTRAINT `fk_Etudiant_Compétences1` FOREIGN KEY (`Compétences_id`) REFERENCES `compétences` (`idCompétences`),
  ADD CONSTRAINT `fk_Etudiant_Connexion1` FOREIGN KEY (`Connexion_idConnexion`) REFERENCES `connexion` (`idConnexion`),
  ADD CONSTRAINT `fk_Etudiant_Informations1` FOREIGN KEY (`Informations_idInformations`) REFERENCES `informations` (`idInformations`),
  ADD CONSTRAINT `fk_Etudiant_Langages1` FOREIGN KEY (`Langages_id`) REFERENCES `langages` (`idLangages`),
  ADD CONSTRAINT `fk_Etudiant_Langues1` FOREIGN KEY (`Langues_id`) REFERENCES `langues` (`idLangues`),
  ADD CONSTRAINT `fk_Etudiant_Outils1` FOREIGN KEY (`Outils_id`) REFERENCES `outils` (`idOutils`),
  ADD CONSTRAINT `fk_Etudiant_Réseaux Sociaux1` FOREIGN KEY (`Réseaux_id`) REFERENCES `réseaux` (`idRéseaux`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
