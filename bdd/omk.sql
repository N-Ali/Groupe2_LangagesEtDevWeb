-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 28 nov. 2020 à 21:55
-- Version du serveur :  8.0.22
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tr_omeka`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

CREATE TABLE `api_key` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `credential_hash` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

CREATE TABLE `asset` (
  `id` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int NOT NULL,
  `resource` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(1, 'items', 1, 1, 'Wordpress', 'Wordpress\nje ne connais pas du tout'),
(2, 'items', 1, 1, 'Alfresco', 'Alfresco'),
(3, 'items', 1, 1, 'Drupal', 'Drupal'),
(4, 'items', 1, 1, 'Joomla', 'Joomla'),
(5, 'item_sets', 1, 1, 'Liste CMS', 'Liste CMS'),
(6, 'items', 1, 1, 'LMS', 'LMS'),
(7, 'items', 1, 1, 'Moodle', 'Moodle'),
(8, 'items', 1, 1, 'Omeka S', 'Omeka S'),
(9, 'items', 1, 1, 'Omeka Classique', 'Omeka Classique'),
(10, 'items', 1, 1, 'Presta Shop', 'Presta Shop'),
(11, 'items', 1, 1, 'SPIP', 'SPIP'),
(12, 'items', 1, 1, 'Sharepoint', 'Sharepoint'),
(13, 'item_sets', 1, 1, 'Liste d\'outils', 'Liste d\'outils'),
(14, 'items', 1, 1, 'After Effect', 'After Effect\nje connais bien'),
(15, 'items', 1, 1, 'Balsamique', 'Balsamique'),
(16, 'items', 1, 1, 'Blender', 'Blender'),
(17, 'items', 1, 1, 'Bracket', 'Bracket'),
(18, 'items', 1, 1, 'CRM entreprise', 'CRM entreprise'),
(19, 'items', 1, 1, 'Cordova', 'Cordova'),
(20, 'items', 1, 1, 'Dreamweaver', 'Dreamweaver'),
(21, 'items', 1, 1, 'FTP', 'FTP'),
(22, 'item_sets', 1, 1, 'Liste roseaux sociaux', 'Liste roseaux sociaux'),
(23, 'items', 1, 1, 'Blogs', 'Blogs'),
(24, 'items', 1, 1, 'Facebook', 'Facebook'),
(25, 'items', 1, 1, 'LinkedIn', 'LinkedIn'),
(26, 'items', 1, 1, 'MSN', 'MSN'),
(27, 'items', 1, 1, 'Twitter', 'Twitter'),
(28, 'item_sets', 1, 1, 'Liste étudiant', 'Liste étudiant'),
(29, 'items', 1, 1, 'Abdelrahim', 'Bouchiha\nAbdelrahim\nanas@gmail.com\nTHYP\n123456987\nOmeka S\nLMS\nWordpress\nFTP\nPresta Shop\nDreamweaver\nFacebook\nBlogs\nTwitter'),
(30, 'items', 1, 1, 'Ali', 'Naushad\nAli\nali@gmail.com\nTHYP\n45896317\nMoodle\nDreamweaver\nFTP\nTwitter\nMSN\nLinkedIn'),
(31, 'items', 1, 1, 'Baste', 'Pelmard\nBaste\nbaste@gmail.fr\nTHYP\n753698412\nCRM entreprise\nPresta Shop\nSPIP\nCordova\nBracket\nBlender\nBalsamique\nTwitter\nMSN'),
(32, 'items', 1, 1, 'Theiry', 'Wen\nTheiry\nwen@gmail.com\nTHYP\n156324789\nOmeka S\nPresta Shop\nFTP\nDreamweaver\nTwitter\nFacebook'),
(33, 'item_sets', 1, 1, 'Liste de Parcours', 'Liste de Parcours'),
(34, 'items', 1, 1, 'THYP', 'THYP'),
(35, 'items', 1, 1, 'NET', 'NET'),
(36, 'items', 1, 1, 'CEN', 'CEN'),
(37, 'items', 1, 1, 'SGI', 'SGI'),
(38, 'item_sets', 1, 1, 'Liste de choix', 'Liste de choix'),
(39, 'items', 1, 1, 'je connais un peu', 'je connais un peu'),
(40, 'items', 1, 1, 'je suis expert(e)', 'je suis expert(e)'),
(41, 'items', 1, 1, 'je ne connais pas du tout', 'je ne connais pas du tout'),
(42, 'items', 1, 1, 'je connais bien', 'je connais bien'),
(43, 'items', 1, 1, 'Wordpress', 'Wordpress\nje connais bien'),
(44, 'items', 1, 1, 'Wordpress', 'Wordpress\nje suis expert(e)'),
(45, 'items', 1, 1, 'Wordpress', 'Wordpress\nje connais un peu'),
(46, 'items', 1, 1, 'LMS', 'LMS\nje connais bien'),
(47, 'items', 1, 1, 'LMS', 'LMS\nje ne connais pas du tout'),
(48, 'items', 1, 1, 'LMS', 'LMS\nje suis expert(e)');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`) VALUES
(1),
(2),
(3),
(4),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(23),
(24),
(25),
(26),
(27),
(29),
(30),
(31),
(32),
(34),
(35),
(36),
(37),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int NOT NULL,
  `item_set_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_item_set`
--

INSERT INTO `item_item_set` (`item_id`, `item_set_id`) VALUES
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(14, 13),
(15, 13),
(16, 13),
(17, 13),
(18, 13),
(19, 13),
(20, 13),
(21, 13),
(23, 22),
(24, 22),
(25, 22),
(26, 22),
(27, 22),
(29, 28),
(30, 28),
(31, 28),
(32, 28),
(34, 33),
(35, 33),
(36, 33),
(37, 33),
(39, 38),
(40, 38),
(41, 38),
(42, 38),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5);

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_set`
--

INSERT INTO `item_set` (`id`, `is_open`) VALUES
(5, 0),
(13, 0),
(22, 0),
(28, 0),
(33, 0),
(38, 0);

-- --------------------------------------------------------

--
-- Structure de la table `item_site`
--

CREATE TABLE `item_site` (
  `item_id` int NOT NULL,
  `site_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_site`
--

INSERT INTO `item_site` (`item_id`, `site_id`) VALUES
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1);

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `pid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `log` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int NOT NULL,
  `item_id` int NOT NULL,
  `ingester` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `renderer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `source` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha256` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int DEFAULT NULL,
  `lang` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003'),
('20200224022356'),
('20200226064602'),
('20200325091157'),
('20200326091310'),
('20200803000000'),
('20200831000000');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `vocabulary_id` int NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(185, 1, 5, 'affiliatedOrganization', 'has affiliated organization', NULL),
(186, 1, 5, 'assignedBy', 'assigned by', NULL),
(187, 1, 5, 'assignee', 'assignee', NULL),
(188, 1, 5, 'assigneeFor', 'assignee for patent', NULL),
(189, 1, 5, 'assigns', 'assigns', NULL),
(190, 1, 5, 'conceptAssociatedWith', 'concept for', NULL),
(191, 1, 5, 'confirmedOrcidId', 'Orcid ID confirmation', 'Indicates that the Orcid ID has been confirmed by this Person'),
(192, 1, 5, 'contributingRole', 'contributor', NULL),
(193, 1, 5, 'dateFiled', 'date filed', NULL),
(194, 1, 5, 'dateIssued', 'date issued', NULL),
(195, 1, 5, 'dateTimeInterval', 'date/time interval', NULL),
(196, 1, 5, 'dateTimePrecision', 'date/time precision', NULL),
(197, 1, 5, 'dateTimeValue', 'date/time value', NULL),
(198, 1, 5, 'degreeCandidacy', 'degree candidacy', NULL),
(199, 1, 5, 'distributes', 'distributes', NULL),
(200, 1, 5, 'distributesFundingFrom', 'distributes funding from', NULL),
(201, 1, 5, 'eligibleFor', 'credential eligibility attained', NULL),
(202, 1, 5, 'end', 'end', NULL),
(203, 1, 5, 'equipmentFor', 'equipment for', NULL),
(204, 1, 5, 'expirationDate', 'expiration date', NULL),
(205, 1, 5, 'facilityFor', 'facilityFor', NULL),
(206, 1, 5, 'featuredIn', 'featured in', NULL),
(207, 1, 5, 'features', 'features', NULL),
(208, 1, 5, 'fundingVehicleFor', 'provides funding for', NULL),
(209, 1, 5, 'geographicFocus', 'geographic focus', NULL),
(210, 1, 5, 'geographicFocusOf', 'geographic focus of', NULL),
(211, 1, 5, 'governingAuthorityFor', 'governing authority for', NULL),
(212, 1, 5, 'grantSubcontractedThrough', 'subcontracted through', NULL),
(213, 1, 5, 'hasAssociatedConcept', 'associated concept', NULL),
(214, 1, 5, 'hasCollaborator', 'has collaborator', NULL),
(215, 1, 5, 'hasEquipment', 'has equipment', NULL),
(216, 1, 5, 'hasFacility', 'has facility', NULL),
(217, 1, 5, 'hasFundingVehicle', 'funding provided via', NULL),
(218, 1, 5, 'hasGoverningAuthority', 'governing authority', NULL),
(219, 1, 5, 'hasPredecessorOrganization', 'predecessor organization', NULL),
(220, 1, 5, 'hasPrerequisite', 'has prerequisite', NULL),
(221, 1, 5, 'hasProceedings', 'proceedings', NULL),
(222, 1, 5, 'hasPublicationVenue', 'published in', NULL),
(223, 1, 5, 'hasResearchArea', 'research areas', NULL),
(224, 1, 5, 'hasSubjectArea', 'has subject area', NULL),
(225, 1, 5, 'hasSuccessorOrganization', 'successor organization', NULL),
(226, 1, 5, 'hasTranslation', 'has translation', NULL),
(227, 1, 5, 'informationResourceSupportedBy', 'supported by', NULL),
(228, 1, 5, 'offeredBy', 'offered by', NULL),
(229, 1, 5, 'offers', 'offers', NULL),
(230, 1, 5, 'orcidId', 'ORCID iD', NULL),
(231, 1, 5, 'prerequisiteFor', 'prerequisite for', NULL),
(232, 1, 5, 'proceedingsOf', 'proceedings of', NULL),
(233, 1, 5, 'providesFundingThrough', 'provides funding through', NULL),
(234, 1, 5, 'publicationVenueFor', 'publication venue for', NULL),
(235, 1, 5, 'publisher', 'publisher', NULL),
(236, 1, 5, 'publisherOf', 'publisher of', NULL),
(237, 1, 5, 'relatedBy', 'related by', NULL),
(238, 1, 5, 'relates', 'relates', NULL),
(239, 1, 5, 'reproduces', 'reproduces', NULL),
(240, 1, 5, 'researchAreaOf', 'research area of', NULL),
(241, 1, 5, 'reviewedIn', 'reviewed in', NULL),
(242, 1, 5, 'roleContributesTo', 'contributes to', NULL),
(243, 1, 5, 'sponsoredBy', 'award sponsored by', NULL),
(244, 1, 5, 'sponsors', 'sponsors award or honor', NULL),
(245, 1, 5, 'start', 'start', NULL),
(246, 1, 5, 'subcontractsGrant', 'subcontracts grant', NULL),
(247, 1, 5, 'subjectAreaOf', 'subject area of', NULL),
(248, 1, 5, 'supportedBy', 'supported by', NULL),
(249, 1, 5, 'supportedInformationResource', 'supported publications or other works', NULL),
(250, 1, 5, 'supports', 'supports', NULL),
(251, 1, 5, 'translatorOf', 'translator of', NULL),
(252, 1, 5, 'validIn', 'valid in', NULL),
(253, 1, 5, 'abbreviation', 'abbreviation', NULL),
(254, 1, 5, 'cclCode', 'published US Classification Class/subclass (CCL) code', NULL),
(255, 1, 5, 'contactInformation', 'contact information', NULL),
(256, 1, 5, 'courseCredits', 'credits', NULL),
(257, 1, 5, 'dateTime', 'date/time', NULL),
(258, 1, 5, 'departmentOrSchool', 'department or school name within institution', NULL),
(259, 1, 5, 'description', 'description', NULL),
(260, 1, 5, 'eRACommonsId', 'eRA Commons ID', NULL),
(261, 1, 5, 'entryTerm', 'entry term', NULL),
(262, 1, 5, 'freetextKeyword', 'keywords', NULL),
(263, 1, 5, 'grantDirectCosts', 'direct costs', NULL),
(264, 1, 5, 'hasMonetaryAmount', 'has monetary amount', NULL),
(265, 1, 5, 'hasValue', 'has value', NULL),
(266, 1, 5, 'hideFromDisplay', 'hide from display', NULL),
(267, 1, 5, 'hrJobTitle', 'HR job title', NULL),
(268, 1, 5, 'iclCode', 'International Classification (ICL) code', NULL),
(269, 1, 5, 'identifier', 'identifier', NULL),
(270, 1, 5, 'isCorrespondingAuthor', 'Is this person a corresponding author?', NULL),
(271, 1, 5, 'licenseNumber', 'license number', NULL),
(272, 1, 5, 'localAwardId', 'local award ID', NULL),
(273, 1, 5, 'majorField', 'major field of degree', NULL),
(274, 1, 5, 'middleName', 'middle name or initial', NULL),
(275, 1, 5, 'nihmsid', 'NIH Manuscript Submission System ID', NULL),
(276, 1, 5, 'outreachOverview', 'outreach overview', NULL),
(277, 1, 5, 'overview', 'overview', NULL),
(278, 1, 5, 'patentNumber', 'patent number', NULL),
(279, 1, 5, 'placeOfPublication', 'place of publication', NULL),
(280, 1, 5, 'pmcid', 'PubMed Central ID', NULL),
(281, 1, 5, 'preferredDisplayOrder', 'preferred display order', NULL),
(282, 1, 5, 'rank', 'rank', NULL),
(283, 1, 5, 'reportId', 'report identifier', NULL),
(284, 1, 5, 'researchOverview', 'research overview', NULL),
(285, 1, 5, 'researcherId', 'ISI Researcher ID', NULL),
(286, 1, 5, 'scopusId', 'Scopus ID', NULL),
(287, 1, 5, 'seatingCapacity', 'seating capacity', NULL),
(288, 1, 5, 'sponsorAwardId', 'sponsor award ID', NULL),
(289, 1, 5, 'supplementalInformation', 'supplemental information', NULL),
(290, 1, 5, 'teachingOverview', 'teaching overview', NULL),
(291, 1, 5, 'termLabel', 'term label', NULL),
(292, 1, 5, 'termType', 'term type', NULL),
(293, 1, 5, 'totalAwardAmount', 'total award amount', NULL),
(294, 1, 6, 'Studentname', 'prénom', NULL),
(295, 1, 6, 'Studentlastname', 'nom', NULL),
(296, 1, 6, 'Studentemail', 'email', NULL),
(297, 1, 6, 'Studentstudent_number', 'Numéro étudiant', NULL),
(298, 1, 6, 'Studentstudent_class', 'Parcours scolaire', NULL),
(299, 1, 6, 'Studentgithub', 'Github', NULL),
(300, 1, 6, 'Studentconnexion', 'connexion', NULL),
(301, 1, 6, 'Studentimage', 'image', NULL),
(302, 1, 6, 'Studentcms', 'cms', NULL),
(303, 1, 6, 'Studentlanguage', 'Langues', NULL),
(304, 1, 6, 'Studentprogramming_language', 'Langages programmation', NULL),
(305, 1, 6, 'Studenttools', 'Outils', NULL),
(306, 1, 6, 'Studentspecialities', 'Specialité', NULL),
(307, 1, 6, 'Studentskills', 'Compétences', NULL),
(308, 1, 6, 'Studentneed', 'Besoins', NULL),
(309, 1, 6, 'Studentnetwork', 'Reseaux', NULL),
(310, 1, 6, 'Studentinformations', 'Information', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

CREATE TABLE `resource` (
  `id` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `resource_class_id` int DEFAULT NULL,
  `resource_template_id` int DEFAULT NULL,
  `thumbnail_id` int DEFAULT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(1, 1, NULL, 3, NULL, 'Wordpress', 1, '2020-11-28 16:17:15', '2020-11-28 20:46:16', 'Omeka\\Entity\\Item'),
(2, 1, NULL, 3, NULL, 'Alfresco', 1, '2020-11-28 16:18:17', '2020-11-28 16:21:33', 'Omeka\\Entity\\Item'),
(3, 1, NULL, 3, NULL, 'Drupal', 1, '2020-11-28 16:18:36', '2020-11-28 16:21:17', 'Omeka\\Entity\\Item'),
(4, 1, NULL, 3, NULL, 'Joomla', 1, '2020-11-28 16:18:51', '2020-11-28 16:20:52', 'Omeka\\Entity\\Item'),
(5, 1, 23, NULL, NULL, 'Liste CMS', 1, '2020-11-28 16:20:07', '2020-11-28 16:20:07', 'Omeka\\Entity\\ItemSet'),
(6, 1, NULL, 3, NULL, 'LMS', 1, '2020-11-28 16:22:17', '2020-11-28 16:22:17', 'Omeka\\Entity\\Item'),
(7, 1, NULL, 3, NULL, 'Moodle', 1, '2020-11-28 16:22:36', '2020-11-28 16:22:36', 'Omeka\\Entity\\Item'),
(8, 1, NULL, 3, NULL, 'Omeka S', 1, '2020-11-28 16:22:53', '2020-11-28 16:22:53', 'Omeka\\Entity\\Item'),
(9, 1, NULL, 3, NULL, 'Omeka Classique', 1, '2020-11-28 16:23:20', '2020-11-28 16:23:20', 'Omeka\\Entity\\Item'),
(10, 1, NULL, 3, NULL, 'Presta Shop', 1, '2020-11-28 16:24:04', '2020-11-28 16:24:04', 'Omeka\\Entity\\Item'),
(11, 1, NULL, 3, NULL, 'SPIP', 1, '2020-11-28 16:24:31', '2020-11-28 16:24:31', 'Omeka\\Entity\\Item'),
(12, 1, NULL, 3, NULL, 'Sharepoint', 1, '2020-11-28 16:24:58', '2020-11-28 16:24:58', 'Omeka\\Entity\\Item'),
(13, 1, 23, NULL, NULL, 'Liste d\'outils', 1, '2020-11-28 16:27:02', '2020-11-28 16:55:52', 'Omeka\\Entity\\ItemSet'),
(14, 1, NULL, 6, NULL, 'After Effect', 1, '2020-11-28 16:27:44', '2020-11-28 20:42:40', 'Omeka\\Entity\\Item'),
(15, 1, NULL, 6, NULL, 'Balsamique', 1, '2020-11-28 16:28:46', '2020-11-28 16:28:46', 'Omeka\\Entity\\Item'),
(16, 1, NULL, 6, NULL, 'Blender', 1, '2020-11-28 16:29:16', '2020-11-28 16:29:16', 'Omeka\\Entity\\Item'),
(17, 1, NULL, 6, NULL, 'Bracket', 1, '2020-11-28 16:32:28', '2020-11-28 16:32:28', 'Omeka\\Entity\\Item'),
(18, 1, NULL, 6, NULL, 'CRM entreprise', 1, '2020-11-28 16:32:55', '2020-11-28 16:33:01', 'Omeka\\Entity\\Item'),
(19, 1, NULL, 6, NULL, 'Cordova', 1, '2020-11-28 16:33:39', '2020-11-28 16:33:39', 'Omeka\\Entity\\Item'),
(20, 1, NULL, 6, NULL, 'Dreamweaver', 1, '2020-11-28 16:34:08', '2020-11-28 16:34:08', 'Omeka\\Entity\\Item'),
(21, 1, NULL, 6, NULL, 'FTP', 1, '2020-11-28 16:34:26', '2020-11-28 16:34:26', 'Omeka\\Entity\\Item'),
(22, 1, 23, NULL, NULL, 'Liste roseaux sociaux', 1, '2020-11-28 16:36:53', '2020-11-28 16:36:53', 'Omeka\\Entity\\ItemSet'),
(23, 1, NULL, 5, NULL, 'Blogs', 1, '2020-11-28 16:38:18', '2020-11-28 16:38:18', 'Omeka\\Entity\\Item'),
(24, 1, NULL, 5, NULL, 'Facebook', 1, '2020-11-28 16:38:44', '2020-11-28 16:38:44', 'Omeka\\Entity\\Item'),
(25, 1, NULL, 5, NULL, 'LinkedIn', 1, '2020-11-28 16:39:12', '2020-11-28 16:39:12', 'Omeka\\Entity\\Item'),
(26, 1, NULL, 5, NULL, 'MSN', 1, '2020-11-28 16:39:31', '2020-11-28 16:39:31', 'Omeka\\Entity\\Item'),
(27, 1, NULL, 5, NULL, 'Twitter', 1, '2020-11-28 16:39:56', '2020-11-28 16:39:56', 'Omeka\\Entity\\Item'),
(28, 1, 23, NULL, NULL, 'Liste étudiant', 1, '2020-11-28 16:41:43', '2020-11-28 16:41:43', 'Omeka\\Entity\\ItemSet'),
(29, 1, 240, 2, NULL, 'Abdelrahim', 1, '2020-11-28 16:46:59', '2020-11-28 20:52:15', 'Omeka\\Entity\\Item'),
(30, 1, 240, 2, NULL, 'Ali', 1, '2020-11-28 16:51:07', '2020-11-28 20:36:27', 'Omeka\\Entity\\Item'),
(31, 1, 240, 2, NULL, 'Baste', 1, '2020-11-28 16:53:16', '2020-11-28 20:35:47', 'Omeka\\Entity\\Item'),
(32, 1, 240, 2, NULL, 'Theiry', 1, '2020-11-28 16:55:12', '2020-11-28 20:35:23', 'Omeka\\Entity\\Item'),
(33, 1, 23, NULL, NULL, 'Liste de Parcours', 1, '2020-11-28 20:32:10', '2020-11-28 20:32:10', 'Omeka\\Entity\\ItemSet'),
(34, 1, NULL, 7, NULL, 'THYP', 1, '2020-11-28 20:33:03', '2020-11-28 20:33:03', 'Omeka\\Entity\\Item'),
(35, 1, NULL, 7, NULL, 'NET', 1, '2020-11-28 20:33:20', '2020-11-28 20:33:20', 'Omeka\\Entity\\Item'),
(36, 1, NULL, 7, NULL, 'CEN', 1, '2020-11-28 20:33:41', '2020-11-28 20:33:41', 'Omeka\\Entity\\Item'),
(37, 1, NULL, 7, NULL, 'SGI', 1, '2020-11-28 20:34:05', '2020-11-28 20:34:05', 'Omeka\\Entity\\Item'),
(38, 1, 23, NULL, NULL, 'Liste de choix', 1, '2020-11-28 20:38:58', '2020-11-28 20:38:58', 'Omeka\\Entity\\ItemSet'),
(39, 1, NULL, 8, NULL, 'je connais un peu', 1, '2020-11-28 20:39:32', '2020-11-28 20:39:32', 'Omeka\\Entity\\Item'),
(40, 1, NULL, 8, NULL, 'je suis expert(e)', 1, '2020-11-28 20:39:48', '2020-11-28 20:39:48', 'Omeka\\Entity\\Item'),
(41, 1, NULL, 8, NULL, 'je ne connais pas du tout', 1, '2020-11-28 20:40:05', '2020-11-28 20:40:05', 'Omeka\\Entity\\Item'),
(42, 1, NULL, 8, NULL, 'je connais bien', 1, '2020-11-28 20:40:37', '2020-11-28 20:40:37', 'Omeka\\Entity\\Item'),
(43, 1, NULL, 3, NULL, 'Wordpress', 1, '2020-11-28 20:47:50', '2020-11-28 20:51:15', 'Omeka\\Entity\\Item'),
(44, 1, NULL, 3, NULL, 'Wordpress', 1, '2020-11-28 20:48:06', '2020-11-28 20:51:15', 'Omeka\\Entity\\Item'),
(45, 1, NULL, 3, NULL, 'Wordpress', 1, '2020-11-28 20:48:26', '2020-11-28 20:51:15', 'Omeka\\Entity\\Item'),
(46, 1, NULL, 3, NULL, 'LMS', 1, '2020-11-28 20:48:57', '2020-11-28 20:51:15', 'Omeka\\Entity\\Item'),
(47, 1, NULL, 3, NULL, 'LMS', 1, '2020-11-28 20:49:13', '2020-11-28 20:51:15', 'Omeka\\Entity\\Item'),
(48, 1, NULL, 3, NULL, 'LMS', 1, '2020-11-28 20:50:01', '2020-11-28 20:51:15', 'Omeka\\Entity\\Item');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

CREATE TABLE `resource_class` (
  `id` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `vocabulary_id` int NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(106, 1, 5, 'Abstract', 'Abstract', NULL),
(107, 1, 5, 'AcademicDegree', 'Academic Degree', NULL),
(108, 1, 5, 'AcademicDepartment', 'Academic Department', NULL),
(109, 1, 5, 'AcademicTerm', 'Academic Term', NULL),
(110, 1, 5, 'AcademicYear', 'Academic Year', NULL),
(111, 1, 5, 'AdministratorRole', 'Administrator Role', NULL),
(112, 1, 5, 'AdviseeRole', 'Advisee Role', NULL),
(113, 1, 5, 'AdvisingProcess', 'Advising Process', NULL),
(114, 1, 5, 'AdvisingRelationship', 'Advising Relationship', NULL),
(115, 1, 5, 'AdvisorRole', 'Advisor Role', NULL),
(116, 1, 5, 'Association', 'Association', NULL),
(117, 1, 5, 'AttendeeRole', 'Attendee Role', NULL),
(118, 1, 5, 'AttendingProcess', 'Attending Process', NULL),
(119, 1, 5, 'Authorship', 'Authorship', ''),
(120, 1, 5, 'Award', 'Award or Honor', NULL),
(121, 1, 5, 'AwardReceipt', 'Award or Honor Receipt', NULL),
(122, 1, 5, 'AwardedDegree', 'Awarded Degree', NULL),
(123, 1, 5, 'Blog', 'Blog', NULL),
(124, 1, 5, 'BlogPosting', 'Blog Posting', NULL),
(125, 1, 5, 'Building', 'Building', NULL),
(126, 1, 5, 'Campus', 'Campus', NULL),
(127, 1, 5, 'CaseStudy', 'Case Study', NULL),
(128, 1, 5, 'Catalog', 'Catalog', NULL),
(129, 1, 5, 'Center', 'Center', NULL),
(130, 1, 5, 'Certificate', 'Certificate', NULL),
(131, 1, 5, 'Certification', 'Certification', NULL),
(132, 1, 5, 'ClinicalOrganization', 'Clinical Organization', NULL),
(133, 1, 5, 'ClinicalRole', 'Clinical Role', NULL),
(134, 1, 5, 'CoPrincipalInvestigatorRole', 'Co-Principal Investigator Role', NULL),
(135, 1, 5, 'College', 'College', NULL),
(136, 1, 5, 'Committee', 'Committee', NULL),
(137, 1, 5, 'Company', 'Company', NULL),
(138, 1, 5, 'Competition', 'Competition', NULL),
(139, 1, 5, 'ConferencePaper', 'Conference Paper', NULL),
(140, 1, 5, 'ConferencePoster', 'Conference Poster', NULL),
(141, 1, 5, 'ConferenceSeries', 'Conference Series', NULL),
(142, 1, 5, 'Consortium', 'Consortium', NULL),
(143, 1, 5, 'Continent', 'Continent', NULL),
(144, 1, 5, 'Contract', 'Contract', NULL),
(145, 1, 5, 'CoreLaboratory', 'Core Laboratory', NULL),
(146, 1, 5, 'Country', 'Country', NULL),
(147, 1, 5, 'County', 'County', NULL),
(148, 1, 5, 'Course', 'Course', NULL),
(149, 1, 5, 'Credential', 'Credential', NULL),
(150, 1, 5, 'Database', 'Database', NULL),
(151, 1, 5, 'Dataset', 'Dataset', NULL),
(152, 1, 5, 'DateTimeInterval', 'Date/Time Interval', NULL),
(153, 1, 5, 'DateTimeValue', 'Date/Time Value', NULL),
(154, 1, 5, 'DateTimeValuePrecision', 'DateTime Value Precision', NULL),
(155, 1, 5, 'Department', 'Department', NULL),
(156, 1, 5, 'Division', 'Division', NULL),
(157, 1, 5, 'EditorRole', 'Editor Role', NULL),
(158, 1, 5, 'EditorialArticle', 'Editorial Article', NULL),
(159, 1, 5, 'Editorship', 'Editorship', NULL),
(160, 1, 5, 'EducationalProcess', 'Educational Process', NULL),
(161, 1, 5, 'EmeritusFaculty', 'Faculty Member Emeritus', NULL),
(162, 1, 5, 'EmeritusLibrarian', 'Librarian Emeritus', NULL),
(163, 1, 5, 'EmeritusProfessor', 'Professor Emeritus', NULL),
(164, 1, 5, 'Equipment', 'Equipment', NULL),
(165, 1, 5, 'EventSeries', 'Event Series', NULL),
(166, 1, 5, 'Exhibit', 'Exhibit', NULL),
(167, 1, 5, 'ExtensionUnit', 'Extension Unit', NULL),
(168, 1, 5, 'F1000Link', 'F1000 Link', NULL),
(169, 1, 5, 'Facility', 'Facility', NULL),
(170, 1, 5, 'FacultyAdministrativePosition', 'Faculty Administrative Position', NULL),
(171, 1, 5, 'FacultyMember', 'Faculty Member', NULL),
(172, 1, 5, 'FacultyMentoringRelationship', 'Faculty Mentoring Relationship', NULL),
(173, 1, 5, 'FacultyPosition', 'Faculty Position', NULL),
(174, 1, 5, 'Foundation', 'Foundation', NULL),
(175, 1, 5, 'FundingOrganization', 'Funding Organization', NULL),
(176, 1, 5, 'GeographicLocation', 'Geographic Location', NULL),
(177, 1, 5, 'GeographicRegion', 'Geographic Region', NULL),
(178, 1, 5, 'GeopoliticalEntity', 'Geopolitical Entity', NULL),
(179, 1, 5, 'GovernmentAgency', 'Government Agency', NULL),
(180, 1, 5, 'GraduateAdvisingRelationship', 'Graduate Advising Relationship', NULL),
(181, 1, 5, 'GraduateStudent', 'Graduate Student', NULL),
(182, 1, 5, 'Grant', 'Grant', NULL),
(183, 1, 5, 'Hospital', 'Hospital', NULL),
(184, 1, 5, 'Institute', 'Institute', NULL),
(185, 1, 5, 'Internship', 'Internship', NULL),
(186, 1, 5, 'InvestigatorRole', 'Investigator Role', NULL),
(187, 1, 5, 'InvitedTalk', 'Invited Talk', NULL),
(188, 1, 5, 'IssuedCredential', 'Issued Credential', NULL),
(189, 1, 5, 'Laboratory', 'Laboratory', NULL),
(190, 1, 5, 'LeaderRole', 'Leader Role', NULL),
(191, 1, 5, 'Librarian', 'Librarian', NULL),
(192, 1, 5, 'LibrarianPosition', 'Librarian Position', NULL),
(193, 1, 5, 'Library', 'Library', NULL),
(194, 1, 5, 'License', 'License', NULL),
(195, 1, 5, 'Licensure', 'Licensure', NULL),
(196, 1, 5, 'Location', 'Location', NULL),
(197, 1, 5, 'MedicalResidency', 'Medical Residency', NULL),
(198, 1, 5, 'Meeting', 'Meeting', NULL),
(199, 1, 5, 'MemberRole', 'Member Role', NULL),
(200, 1, 5, 'Museum', 'Museum', NULL),
(201, 1, 5, 'NewsRelease', 'News Release', NULL),
(202, 1, 5, 'Newsletter', 'Newsletter', NULL),
(203, 1, 5, 'NonAcademic', 'Non-Academic', NULL),
(204, 1, 5, 'NonAcademicPosition', 'Non-Academic Position', NULL),
(205, 1, 5, 'NonFacultyAcademic', 'Non-Faculty Academic', NULL),
(206, 1, 5, 'NonFacultyAcademicPosition', 'Non-Faculty Academic Position', NULL),
(207, 1, 5, 'OrganizerRole', 'Organizer Role', NULL),
(208, 1, 5, 'OrganizingProcess', 'Organizing Process', NULL),
(209, 1, 5, 'OutreachProviderRole', 'Outreach Provider Role', NULL),
(210, 1, 5, 'PeerReviewerRole', 'Peer Reviewer Role', NULL),
(211, 1, 5, 'PopulatedPlace', 'Populated Place', NULL),
(212, 1, 5, 'Position', 'Position', NULL),
(213, 1, 5, 'Postdoc', 'Postdoc', NULL),
(214, 1, 5, 'PostdocOrFellowAdvisingRelationship', 'Postdoc or Fellow Advising Relationship', NULL),
(215, 1, 5, 'PostdocPosition', 'Postdoctoral Position', NULL),
(216, 1, 5, 'PostdoctoralTraining', 'Postdoctoral Training', NULL),
(217, 1, 5, 'Presentation', 'Presentation', NULL),
(218, 1, 5, 'PresenterRole', 'Presenter Role', NULL),
(219, 1, 5, 'PresentingProcess', 'Presenting Process', NULL),
(220, 1, 5, 'PrimaryPosition', 'Primary Position', NULL),
(221, 1, 5, 'PrincipalInvestigatorRole', 'Principal Investigator Role', NULL),
(222, 1, 5, 'PrivateCompany', 'Private Company', NULL),
(223, 1, 5, 'Program', 'Program', NULL),
(224, 1, 5, 'Project', 'Project', NULL),
(225, 1, 5, 'Publisher', 'Publisher', NULL),
(226, 1, 5, 'Relationship', 'Relationship', NULL),
(227, 1, 5, 'ResearchOrganization', 'Research Organization', NULL),
(228, 1, 5, 'ResearchProposal', 'Research Proposal', NULL),
(229, 1, 5, 'ResearcherRole', 'Researcher Role', NULL),
(230, 1, 5, 'Review', 'Review', NULL),
(231, 1, 5, 'ReviewerRole', 'Reviewer Role', NULL),
(232, 1, 5, 'Room', 'Room', NULL),
(233, 1, 5, 'School', 'School', NULL),
(234, 1, 5, 'Score', 'Score', NULL),
(235, 1, 5, 'Screenplay', 'Screenplay', NULL),
(236, 1, 5, 'SeminarSeries', 'Seminar Series', NULL),
(237, 1, 5, 'ServiceProvidingLaboratory', 'Service Providing Lab', NULL),
(238, 1, 5, 'Speech', 'Speech', NULL),
(239, 1, 5, 'StateOrProvince', 'State or Province', NULL),
(240, 1, 5, 'Student', 'Student', NULL),
(241, 1, 5, 'StudentOrganization', 'Student Organization', NULL),
(242, 1, 5, 'SubnationalRegion', 'Subnational Region', 'For example, the Midwest, northeast U.S.'),
(243, 1, 5, 'TeacherRole', 'Teacher Role', NULL),
(244, 1, 5, 'Team', 'Team', NULL),
(245, 1, 5, 'Translation', 'Translation', NULL),
(246, 1, 5, 'UndergraduateAdvisingRelationship', 'Undergraduate Advising Relationship', NULL),
(247, 1, 5, 'UndergraduateStudent', 'Undergraduate Student', NULL),
(248, 1, 5, 'University', 'University', NULL),
(249, 1, 5, 'Video', 'Video', NULL),
(250, 1, 5, 'WorkingPaper', 'Working Paper', NULL),
(251, 1, 5, 'WorkshopSeries', 'Workshop Series', NULL),
(252, 1, 6, 'StudentStudent', 'Student', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

CREATE TABLE `resource_template` (
  `id` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `resource_class_id` int DEFAULT NULL,
  `title_property_id` int DEFAULT NULL,
  `description_property_id` int DEFAULT NULL,
  `label` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(2, 1, 240, 139, 298, 'Etudiant'),
(3, 1, NULL, 1, 4, 'CMS'),
(4, 1, NULL, NULL, NULL, 'Besoin'),
(5, 1, NULL, NULL, NULL, 'Reseaux'),
(6, 1, NULL, NULL, NULL, 'Outils'),
(7, 1, NULL, 1, NULL, 'Parcours'),
(8, 1, NULL, 1, NULL, 'Choix');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int NOT NULL,
  `resource_template_id` int NOT NULL,
  `property_id` int NOT NULL,
  `alternate_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `position` int DEFAULT NULL,
  `data_type` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 0, 0),
(2, 1, 15, NULL, NULL, 2, NULL, 0, 0),
(3, 1, 8, NULL, NULL, 3, NULL, 0, 0),
(4, 1, 2, NULL, NULL, 4, NULL, 0, 0),
(5, 1, 7, NULL, NULL, 5, NULL, 0, 0),
(6, 1, 4, NULL, NULL, 6, NULL, 0, 0),
(7, 1, 9, NULL, NULL, 7, NULL, 0, 0),
(8, 1, 12, NULL, NULL, 8, NULL, 0, 0),
(9, 1, 40, 'Place', NULL, 9, NULL, 0, 0),
(10, 1, 5, NULL, NULL, 10, NULL, 0, 0),
(11, 1, 17, NULL, NULL, 11, NULL, 0, 0),
(12, 1, 6, NULL, NULL, 12, NULL, 0, 0),
(13, 1, 25, NULL, NULL, 13, NULL, 0, 0),
(14, 1, 10, NULL, NULL, 14, NULL, 0, 0),
(15, 1, 13, NULL, NULL, 15, NULL, 0, 0),
(16, 1, 29, NULL, NULL, 16, NULL, 0, 0),
(17, 1, 30, NULL, NULL, 17, NULL, 0, 0),
(18, 1, 50, NULL, NULL, 18, NULL, 0, 0),
(19, 1, 3, NULL, NULL, 19, NULL, 0, 0),
(20, 1, 41, NULL, NULL, 20, NULL, 0, 0),
(21, 2, 138, NULL, NULL, 1, '[\"literal\"]', 1, 0),
(22, 2, 139, NULL, NULL, 2, '[\"literal\"]', 1, 0),
(23, 2, 296, NULL, NULL, 3, NULL, 1, 0),
(24, 2, 298, NULL, NULL, 4, '[\"resource:item\"]', 1, 0),
(25, 2, 297, NULL, NULL, 5, NULL, 1, 0),
(26, 2, 154, NULL, NULL, 6, NULL, 0, 0),
(27, 2, 310, NULL, NULL, 7, NULL, 0, 0),
(28, 2, 299, NULL, NULL, 8, NULL, 0, 0),
(29, 2, 303, NULL, NULL, 9, NULL, 0, 0),
(30, 2, 308, NULL, NULL, 10, NULL, 0, 0),
(31, 2, 302, NULL, NULL, 11, '[\"resource:item\"]', 0, 0),
(32, 2, 307, NULL, NULL, 12, NULL, 0, 0),
(33, 2, 304, NULL, NULL, 13, NULL, 0, 0),
(34, 2, 305, NULL, NULL, 14, '[\"resource:item\"]', 0, 0),
(35, 2, 309, NULL, NULL, 15, '[\"resource:item\"]', 0, 0),
(36, 2, 306, NULL, NULL, 16, NULL, 0, 0),
(37, 3, 1, NULL, NULL, 1, '[\"literal\"]', 1, 0),
(38, 3, 4, NULL, NULL, 2, '[\"resource:item\"]', 1, 0),
(39, 4, 1, NULL, NULL, 1, NULL, 0, 0),
(40, 4, 4, NULL, NULL, 2, NULL, 0, 0),
(41, 5, 1, NULL, NULL, 1, NULL, 0, 0),
(42, 5, 4, NULL, NULL, 2, NULL, 0, 0),
(43, 6, 1, NULL, NULL, 1, NULL, 0, 0),
(44, 6, 4, NULL, NULL, 2, NULL, 0, 0),
(45, 7, 1, NULL, NULL, 1, '[\"literal\"]', 1, 0),
(46, 8, 1, NULL, NULL, 1, '[\"literal\"]', 1, 0),
(47, 8, 4, NULL, NULL, 2, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longblob NOT NULL,
  `modified` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('9spp866vd14bsb71otp9s8pjr0', 0x5f5f4c616d696e61737c613a31303a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363539363834372e3335373435363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2268646b616837636a6f386d6836316b31686d3437393870326963223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363538323530353b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363538333133383b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363539393636323b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363630303434373b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630363630303431343b7d733a34353a224c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363538363336383b7d733a33373a224c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363538363339373b7d733a35303a224c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363538363338393b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223332393533363938316337383130636235373462306539356437366263653962223b733a33323a223163393135303231353665396332396439376435623538346330323765363835223b7d733a343a2268617368223b733a36353a2231633931353032313536653963323964393764356235383463303237653638352d3332393533363938316337383130636235373462306539356437366263653962223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226237636461313232373862346363636263333535353639373832303434373838223b733a33323a223635336230393365333531396133636361616534346338383337326364396566223b733a33323a223761626338373132323864616635396137303037356239343335383233643761223b733a33323a226335303262323639383838336461396132393737623263303366666364333664223b733a33323a223263646635303035313338303537366437333166386163316231386136653934223b733a33323a223339613232333837636631363136623964313664653335343433373963616261223b7d733a343a2268617368223b733a36353a2233396132323338376366313631366239643136646533353434333739636162612d3263646635303035313338303537366437333166386163316231386136653934223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223432366665303764356337663265663937333533313635363066396363346461223b733a33323a223534653830313432396339613263626466363735623564326237353834643338223b733a33323a226431343563373536653462643232333164363331313462633463346132346666223b733a33323a223730333739393835363831346534636536356533353032356130613037303130223b733a33323a223030613065623232303165666138386662393130373638633263666264393931223b733a33323a223630313832613738326430613237323965343334326264633863623030613432223b733a33323a223563383236306563396364643135616636653736643532386463653032326231223b733a33323a226663646538383330353262653632373534396130343062366661633737616437223b733a33323a223536306534326436643433636231353533643261633730396161626438393038223b733a33323a226533306537633334393334343134396461323632363532333464363437623535223b7d733a343a2268617368223b733a36353a2265333065376333343933343431343964613236323635323334643634376235352d3536306534326436643433636231353533643261633730396161626438393038223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a363331323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a37353a7b733a33323a226539326166346463346130326335343735383934333931383563373331393538223b733a33323a223065383466303261636138616232653038333638353334386261376338303566223b733a33323a223735616632623638613965306438366638653537643463653066656364626632223b733a33323a226465303732353439383361616631663335313366393837613731323262353635223b733a33323a223332643239636330313265663961626631343365336331356166313938386561223b733a33323a226566306438376132346362383534626139363535356231663632363232326130223b733a33323a226266393434663364313635656161373232346332386134646565316635653534223b733a33323a223438613634313432646638613133633463386531363232613232383062343334223b733a33323a223966613163306666663938343365613231643965323464373865306133646261223b733a33323a223834616262373238646630643932386663663766386635633863383932613737223b733a33323a223836303965643566333761343266336662383538313166646535366534366562223b733a33323a223061373461653332376162333864313332643834353238616466653331393639223b733a33323a226666343739616661663438303938336434396631363563663030636236373237223b733a33323a226462343438373936623066393038613766303564313030613938373434663165223b733a33323a226432636666616263306135383532626362393561636561343833373335633365223b733a33323a223462373030653130636232326665653364363937623439373964613634313362223b733a33323a226434393566383737633766636630326662613131373732386230633332333061223b733a33323a223438333762313237353966363465396666653130323263316632366236353165223b733a33323a223066353865363531333431353862646661373436373037323861613638393031223b733a33323a223539356563306138663036303963626130656231656131333462363366313631223b733a33323a223365656432316134383534366665366138303633316562313164333864393630223b733a33323a226130626339353763313962656164613637633535316334646263316164376234223b733a33323a223861626339663664663332653037363931393037636139653534636465646632223b733a33323a223839613861663563653130643432633930633638316137396162336637613633223b733a33323a223562323264306231343532373963303230653739666539356630666262393830223b733a33323a223963623761386365373361333033616131316237653939623130633933343339223b733a33323a223830366631316232313633323966633938393961316431613838666230343039223b733a33323a223234313265313236383032326439643166623562393763373064343338633633223b733a33323a223165316337663436393536316336393835366137376330373431336438333233223b733a33323a226536633736356662303436376662636535373833323137656630643732633466223b733a33323a223136313831656137643934616162383130356434626339656564376537303663223b733a33323a223330616463373161653064363039636663363032653736313735386232666238223b733a33323a223137306339356165313863653033336339623832346231653164643063633364223b733a33323a226330636361663531663434613531643563323765636137363965313162633261223b733a33323a226561613561313333326264323132616364343932643061613561316262643864223b733a33323a226261396538623633613237623639363337613634643965326536373539306334223b733a33323a226438383266663230303137323863343133303863313534636361353735303937223b733a33323a223238656162643066353435656237313764633132626564626637643332653961223b733a33323a226263356438353366663730326263643366626234306164383838356138326433223b733a33323a223231643531646439663064376639396630323330353864376662623538653462223b733a33323a223565653936653236656162323836656665386563613338663135623033393565223b733a33323a226661393337363461643830613739323865333636366262306131366233633261223b733a33323a223566656432633636623234313736633266666439663839313863656135376134223b733a33323a226266616336623432333138353230393562313162633864623432393032313631223b733a33323a226364636463623365616632356135633730653733613939663233376364306234223b733a33323a226563613235333464666631613561643931393166376161653334396432333061223b733a33323a223339656462613037393636663632326261396665653033343339333030373163223b733a33323a223366383037656561363261316532303336393931313835356366353237343065223b733a33323a226136376433333365316437383362396532376661346633643635386434326234223b733a33323a223136353830666430373432326531633634663661643961623466393963303035223b733a33323a223132343937666262376339626364663162633534363131393039396133636438223b733a33323a223030373138376365613236636437643065396233656237393839323634626337223b733a33323a223166303832653537663866336533303837336362613461346132656231653966223b733a33323a223238336662303535663038353930613430313533376532616637306138353661223b733a33323a226465663338353835643262343966393838373633333031393565653362636534223b733a33323a226664353833333762303262383763316638396134353331396363663233353934223b733a33323a223464366430613266306634663132383939656339646334346661616135313766223b733a33323a226334333862303730376536373634643738393761306161383961623066626663223b733a33323a223832303966363639663866386335643732656164386263393235666634363036223b733a33323a226137393066663966663065343062303265356364393563383734666530343962223b733a33323a223436343436373333616330356232666262383335386332396637643334313838223b733a33323a226662646164373838633265356533326139353534306339333639326333333934223b733a33323a223231346130333237323936373165333133383461383665653636356661663633223b733a33323a226365363966663433666564383230393730306261353137646534313831666532223b733a33323a223432396338643837386234656637373036386632613930386531643661323666223b733a33323a226132366336313334313964663962636630316435353563333636303164613266223b733a33323a226237386434333635393530373466393164343066313035656335393430336364223b733a33323a223236353764306664363431313363326438346332343163656630653531303363223b733a33323a226462333233333333306536623762353939613138653632636265373265643837223b733a33323a226132383966333363373865323233313835653838326461653538663833653734223b733a33323a223065653461663039306635366662323362656365636337626135636335666662223b733a33323a226630623931666130383236626461383332383038646663623864653761663961223b733a33323a223163303330366462313264383033343066303238653161656538643831343033223b733a33323a223266383932373639303563353632626433336237626432306337373466373261223b733a33323a226261616538356639386131326636386565356161326563383830623435323538223b733a33323a223538653630636331396332626533393235393231643563366331613066306334223b733a33323a226433333235366362616636383062393562663465643734373664343765336164223b733a33323a226130333663383738333932396237343430383934366466613761333930366531223b733a33323a223635313065306530633264623534666337323664373336363261633366646437223b733a33323a226335316432303537326430633830343530393966376534373665646333343666223b733a33323a226234373138353232386330346437666239346533643564643065626633346630223b733a33323a223931323364323166323362396336353334393766316464303033383862646633223b733a33323a226665303364306139323163656166623131373934383566306164303131356165223b733a33323a226232643339313039383734336265383364663331393432303532663961663731223b733a33323a223633316364333634613233396666383739376230646661326433333938313364223b733a33323a223661326237376361333065333537646430613939326537613861653536613665223b733a33323a226564353861633538323263303230323530313237656234613866626538663331223b733a33323a223536366531643262383365383535393263633530383638393962323132663232223b733a33323a226466623462396433623064313966613235626135626630323065383865653631223b733a33323a223637633165663437306639643561363236313665353663383263613236353733223b733a33323a226230626637653164336238383232663932386366623362363765376266313734223b733a33323a226138613661313163633339636633616138626139333164323939616538633962223b733a33323a226562393839353232326464393131336235613563383035366431643139346532223b733a33323a223934653666393661336530326131366238623966663865643834303263396563223b733a33323a223238323766313265303062336532653830663863663365633731313135633137223b733a33323a223966613738653731363337623434656661663363383830623336633466386135223b733a33323a223038386138333937656265363437613831303838353432356139333762386639223b733a33323a223336383930663431303536616632363034643961396635366530316336663763223b733a33323a226339356131393931356666376264633064663164346563333333393166343966223b733a33323a226662313430363766363234316137353431616433623134386661373133643038223b733a33323a223835353066633166623365353666663334373861343666366331363433636638223b733a33323a223734643933646164383164386531633866366361316231316636643235363339223b733a33323a226262326335633161623934653863656561383565303834633539393763653233223b733a33323a223638313736313036653333306435653839336331303835316433643166656130223b733a33323a226261343938363831366361366664666131613135623230326462343466346231223b733a33323a223633313738313763313134363230613864623530616361396561653039353062223b733a33323a223030353564636163666238393633363062313835383166663532393666383363223b733a33323a223161623838666533663661623433656133326339336664313431386335666365223b733a33323a223635633831356138393034333233626234356335383637373031303430626466223b733a33323a223664373033313834373835336531373932633035656233643338303933353265223b733a33323a226330386137636366306439343431366139333561363033373065393761323661223b733a33323a223732623132323864363531383435383661306165353635303366656334346263223b733a33323a223139643361353364313865303965623565316366653934643566636134343038223b733a33323a223939353166356134313836346338303734396466343231663262626136363133223b733a33323a223036396235653236383639623433313630356138326337356137303334623765223b733a33323a223631393165363537653735313263356338656463383461326665633034616266223b733a33323a226635623163353932363762396566613832396365623263326662366536653934223b733a33323a226331313230336161663165306437653936663466373863653932626465616463223b733a33323a226136613538633963386461363235663736613238313932313639383232643262223b733a33323a223539376364666633353463383231613966383134666462356330643633333436223b733a33323a223333643933336661343661633261313932393265336263653834353839373135223b733a33323a226364666531666332376531656134383736333462666161623262633635646630223b733a33323a226537313336383836393066636534316132633034363830646536343439363461223b733a33323a226439326432313438326563316334386139386135633532303836373462343530223b733a33323a223630663063643065343536373666646464363939313539626439356561313630223b733a33323a223035653136376363613437313663363361376434646466343236333435626434223b733a33323a223131663564333766333835353662633733663236666565613461616536656632223b733a33323a223232346239636136313565396363373337356364396265393739396632373836223b733a33323a223766616636353561353334363965613564346330326661626134663965326333223b733a33323a223532623534313865336439303231643835373366323438626164356139366639223b733a33323a226134383635303562343636396666376533343336326663383061333731343534223b733a33323a223238313335313331366164343232356561613839646631633934656336326639223b733a33323a223738306664316662323365333632613130663563343433323136643735323631223b733a33323a223366613937623534353166633532633133393336353662363635613363363632223b733a33323a226263653964626536643365346136373763396361323038663838333163616639223b733a33323a223235323439613863656439383538303835313966353230396439346237626531223b733a33323a223435373461363466323766616462653461376635646234326635623563653834223b733a33323a223935383131393235616362343831356235383764316233613531333633363065223b733a33323a226539363531303339363934656233646562623062303466656166393365366165223b733a33323a226434346133633162353835353963376663373033653234656364613130393330223b733a33323a223634656531313430363837623762353435303631396261633063353564633338223b733a33323a226231633838373963393161616236343563363235306464656534316462353235223b733a33323a223133376137316238393666623934653839383066343962383963393638616637223b733a33323a226464373265623833633632616437646164663263373538356639366261323363223b733a33323a223934653238656466636265616131396563623939653630663532623966376135223b733a33323a223630303132313265366637383336346465643864333433643234653337373061223b733a33323a226536373235623866663665613931353233306334396134656566346432396664223b733a33323a226437353133653466383461373065623336383361373936333466626261356333223b733a33323a226266343635653230313065663137663532396435373463653938666235613365223b733a33323a226635376163656265303665323931666564326162303661366434366564653535223b7d733a343a2268617368223b733a36353a2266353761636562653036653239316665643261623036613664343665646535352d6266343635653230313065663137663532396435373463653938666235613365223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323633323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32393a7b733a33323a226539386366653538316464393337623239366562316433303430373464666239223b733a33323a223936356635353336363936666538653462333130356534616135616362363735223b733a33323a223431613662396532643434613935616266613433326665363039333963316438223b733a33323a223030393437313163313736353062336365633536363739316438376538633161223b733a33323a226462326165396638363036333138326562346133616439313035636161383863223b733a33323a226365656464343465613566653934326266363532633137623238353034346630223b733a33323a223634383239386431376335616362373830363534396566636339323536623439223b733a33323a223439643736316638383133343564303236363136323133633434383432393633223b733a33323a226666633035633463353665623533666331343762373765643833326466353561223b733a33323a226331326563666261656232633265323965373036333435626664346332343632223b733a33323a226130363662343963623365363433316131613263363031313139313038306137223b733a33323a223930323735623734303936353262393437643765306135646338313336623435223b733a33323a223830333232393431346239653165303935373832383266653837633863626334223b733a33323a223334396135336630323033626437373631303865343239376165616533376431223b733a33323a226165333735383565363330393663373662343938303738653962636537313231223b733a33323a226538666639656433666566656338333333663563646434383739313135633064223b733a33323a226530366136636631313032316534313130386531633031633730343531376132223b733a33323a226330373838346138613436366135353661393737656336623861613165653366223b733a33323a223634653764623432353936333937393338306530633265323632373639326262223b733a33323a223965653764366561366131313834393162323939333536326339386235613739223b733a33323a226238336164383333633865623531323963623632313035386539356364333666223b733a33323a226264303664663430656535333461333539333633366563376563383335373863223b733a33323a226536303830663233646332636466353363613433363962616164623761303536223b733a33323a223535366166383061623638386234383561303664643965333534653237363364223b733a33323a223861313333633033383965316237306233653035336639623965643839313630223b733a33323a226163633939343062386636373536336530333739666132366162313130313134223b733a33323a226237646436313639323434336639646339353239613734333633663438383035223b733a33323a226431336635633837393733383738333531653836396130353632626439336361223b733a33323a223830333032323764343832326233643963373939333032386136346635626161223b733a33323a226164373334633763616666613263336539306239386633663065633462623265223b733a33323a223830643637393835313739373534323964336439666165323464343563346665223b733a33323a223662306366633833316633643435653336363936333036633461663965353962223b733a33323a223338343630636633623361323633353231393463646166396361393434643464223b733a33323a223031366333316638633464616539356366656632303266326232663130343465223b733a33323a226632393235373531386234616130616666386137383732353330633435623134223b733a33323a226661353062626534646130386539316265396237646261613662613161643930223b733a33323a226330626165333232373737386339646537356538386438633930666362376530223b733a33323a226362623936366239303833393961653465306634616337666330343134393765223b733a33323a223133393231636433653233396530626465653936343139316662306634303030223b733a33323a223237376263663837626665666438313664383264393966333966613530613135223b733a33323a223562306230333633316138386434633631366463353531386635353637303535223b733a33323a223831376130643237333430623364383737383532623065613737323737613764223b733a33323a223835636262343064626232323832303035366366633466663635356534666165223b733a33323a223538666132393564313838346463336461326630323537356130353561323231223b733a33323a223365356165633537633832353064363565346363666336306336363366663538223b733a33323a223930313733303162373433313830626335326535643339396266636338353865223b733a33323a223463306461376536356635646136616630383266356461313931326434626132223b733a33323a223165353232333639346666343866653261653539663238633762666435313034223b733a33323a223436306635363137303039376461653264643731656461373234343563303237223b733a33323a223030303039346630636365373132653661373664626632663033343631643266223b733a33323a223138363634383737376663613362366361643735396431326637616631313637223b733a33323a223066336433303136396432366234623161323137363061653331303332333166223b733a33323a226664626463623737646661613836313665636264306231366262363833353766223b733a33323a226134333264353934343665383164363831623866636539313865363663353037223b733a33323a226330343862373338346238376165383538613932316430383762396139653363223b733a33323a223634323934316434373264363735346437303030653162383732333237656238223b733a33323a226137313862376232336538383562373561346335656162366166666538653535223b733a33323a226133363732393436333439636533316434613736653934393335326363646137223b7d733a343a2268617368223b733a36353a2261333637323934363334396365333164346137366539343933353263636461372d6137313862376232336538383562373561346335656162366166666538653535223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223430353637353832616465643137326637373363393535386332363138663931223b733a33323a226436343564653530346230323835633564663666613638313233383933373266223b7d733a343a2268617368223b733a36353a2264363435646535303462303238356335646636666136383132333839333732662d3430353637353832616465643137326637373363393535386332363138663931223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223133633636663162643036353465643234333430313133623066353037386635223b733a33323a226265343534313561343530323334643938343365376239376234653936353462223b733a33323a226163336438316666626139616636663834666336336236656363613031626535223b733a33323a223638393965376165393334396664616563633963623333323634306138353264223b733a33323a226365353037356539336335383262653632326437326333353366313663633039223b733a33323a223961393565336435316138616666363964633134313365313538303836356138223b7d733a343a2268617368223b733a36353a2239613935653364353161386166663639646331343133653135383038363561382d6365353037356539336335383262653632326437326333353366313663633039223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226339366639626339353435663165323131316239623134663566343233386531223b733a33323a223961386661653734616466386431316432323065656563613964353837363463223b7d733a343a2268617368223b733a36353a2239613866616537346164663864313164323230656565636139643538373634632d6339366639626339353435663165323131316239623134663566343233386531223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606596847);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"groupe2@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"trombinoscope\"'),
('locale', '\"fr\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"Europe\\/Paris\"'),
('version', '\"3.0.1\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

CREATE TABLE `site` (
  `id` int NOT NULL,
  `homepage_id` int DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `slug` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `navigation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `assign_new_items` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`id`, `homepage_id`, `owner_id`, `slug`, `theme`, `title`, `summary`, `navigation`, `item_pool`, `created`, `modified`, `is_public`, `assign_new_items`) VALUES
(1, NULL, 1, 'trombinoscope', 'default', 'Trombinoscope', NULL, '[{\"type\":\"browse\",\"data\":{\"label\":\"Parcourir\",\"query\":\"\"},\"links\":[]}]', '[]', '2020-11-28 16:59:03', '2020-11-28 16:59:03', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

CREATE TABLE `site_block_attachment` (
  `id` int NOT NULL,
  `block_id` int NOT NULL,
  `item_id` int DEFAULT NULL,
  `media_id` int DEFAULT NULL,
  `caption` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

CREATE TABLE `site_item_set` (
  `id` int NOT NULL,
  `site_id` int NOT NULL,
  `item_set_id` int NOT NULL,
  `position` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

CREATE TABLE `site_page` (
  `id` int NOT NULL,
  `site_id` int NOT NULL,
  `slug` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page`
--

INSERT INTO `site_page` (`id`, `site_id`, `slug`, `title`, `is_public`, `created`, `modified`) VALUES
(1, 1, 'welcome', 'Bienvenue', 1, '2020-11-28 16:59:03', '2020-11-28 16:59:03');

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

CREATE TABLE `site_page_block` (
  `id` int NOT NULL,
  `page_id` int NOT NULL,
  `layout` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `position` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page_block`
--

INSERT INTO `site_page_block` (`id`, `page_id`, `layout`, `data`, `position`) VALUES
(1, 1, 'html', '{\"html\":\"Bienvenue sur votre nouveau site. Ceci est une page d\\u2019exemple.\"}', 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

CREATE TABLE `site_permission` (
  `id` int NOT NULL,
  `site_id` int NOT NULL,
  `user_id` int NOT NULL,
  `role` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_permission`
--

INSERT INTO `site_permission` (`id`, `site_id`, `user_id`, `role`) VALUES
(1, 1, 1, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'groupe2@gmail.com', 'trombinoscope', '2020-11-28 15:55:04', '2020-11-28 15:55:05', '$2y$10$nKg2UyjudWXjGOiyigW0tepFsPCTGjIFJXRRUPlGac0WA2xw1.leK', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `value`
--

CREATE TABLE `value` (
  `id` int NOT NULL,
  `resource_id` int NOT NULL,
  `property_id` int NOT NULL,
  `value_resource_id` int DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uri` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(1, 1, 1, NULL, 'literal', '', 'Wordpress', NULL, 1),
(2, 2, 1, NULL, 'literal', '', 'Alfresco', NULL, 1),
(3, 3, 1, NULL, 'literal', '', 'Drupal', NULL, 1),
(4, 4, 1, NULL, 'literal', '', 'Joomla', NULL, 1),
(5, 5, 1, NULL, 'literal', '', 'Liste CMS', NULL, 1),
(6, 6, 1, NULL, 'literal', '', 'LMS', NULL, 1),
(7, 7, 1, NULL, 'literal', '', 'Moodle', NULL, 1),
(8, 8, 1, NULL, 'literal', '', 'Omeka S', NULL, 1),
(9, 9, 1, NULL, 'literal', '', 'Omeka Classique', NULL, 1),
(10, 10, 1, NULL, 'literal', '', 'Presta Shop', NULL, 1),
(11, 11, 1, NULL, 'literal', '', 'SPIP', NULL, 1),
(12, 12, 1, NULL, 'literal', '', 'Sharepoint', NULL, 1),
(13, 13, 1, NULL, 'literal', '', 'Liste d\'outils', NULL, 1),
(14, 14, 1, NULL, 'literal', '', 'After Effect', NULL, 1),
(15, 15, 1, NULL, 'literal', '', 'Balsamique', NULL, 1),
(16, 16, 1, NULL, 'literal', '', 'Blender', NULL, 1),
(17, 17, 1, NULL, 'literal', '', 'Bracket', NULL, 1),
(18, 18, 1, NULL, 'literal', '', 'CRM entreprise', NULL, 1),
(19, 19, 1, NULL, 'literal', '', 'Cordova', NULL, 1),
(20, 20, 1, NULL, 'literal', '', 'Dreamweaver', NULL, 1),
(21, 21, 1, NULL, 'literal', '', 'FTP', NULL, 1),
(22, 22, 1, NULL, 'literal', '', 'Liste roseaux sociaux', NULL, 1),
(23, 23, 1, NULL, 'literal', '', 'Blogs', NULL, 1),
(24, 24, 1, NULL, 'literal', '', 'Facebook', NULL, 1),
(25, 25, 1, NULL, 'literal', '', 'LinkedIn', NULL, 1),
(26, 26, 1, NULL, 'literal', '', 'MSN', NULL, 1),
(27, 27, 1, NULL, 'literal', '', 'Twitter', NULL, 1),
(28, 28, 1, NULL, 'literal', '', 'Liste étudiant', NULL, 1),
(29, 29, 138, NULL, 'literal', '', 'Bouchiha', NULL, 1),
(30, 29, 139, NULL, 'literal', '', 'Abdelrahim', NULL, 1),
(31, 29, 296, NULL, 'literal', '', 'anas@gmail.com', NULL, 1),
(32, 29, 298, 34, 'resource:item', NULL, NULL, NULL, 1),
(33, 29, 297, NULL, 'literal', '', '123456987', NULL, 1),
(34, 29, 302, 8, 'resource', NULL, NULL, NULL, 1),
(35, 29, 302, 46, 'resource:item', NULL, NULL, NULL, 1),
(36, 29, 302, 44, 'resource', NULL, NULL, NULL, 1),
(37, 29, 305, 21, 'resource', NULL, NULL, NULL, 1),
(38, 29, 305, 10, 'resource', NULL, NULL, NULL, 1),
(39, 29, 305, 20, 'resource', NULL, NULL, NULL, 1),
(40, 29, 309, 24, 'resource', NULL, NULL, NULL, 1),
(41, 29, 309, 23, 'resource', NULL, NULL, NULL, 1),
(42, 30, 138, NULL, 'literal', '', 'Naushad', NULL, 1),
(43, 30, 139, NULL, 'literal', '', 'Ali', NULL, 1),
(44, 30, 296, NULL, 'literal', '', 'ali@gmail.com', NULL, 1),
(45, 30, 298, 34, 'resource:item', NULL, NULL, NULL, 1),
(46, 30, 297, NULL, 'literal', '', '45896317', NULL, 1),
(47, 30, 302, 7, 'resource:item', NULL, NULL, NULL, 1),
(48, 30, 305, 20, 'resource:item', NULL, NULL, NULL, 1),
(49, 30, 305, 21, 'resource:item', NULL, NULL, NULL, 1),
(50, 30, 309, 27, 'resource:item', NULL, NULL, NULL, 1),
(51, 30, 309, 26, 'resource:item', NULL, NULL, NULL, 1),
(52, 30, 309, 25, 'resource:item', NULL, NULL, NULL, 1),
(53, 31, 138, NULL, 'literal', '', 'Pelmard', NULL, 1),
(54, 31, 139, NULL, 'literal', '', 'Baste', NULL, 1),
(55, 31, 296, NULL, 'literal', '', 'baste@gmail.fr', NULL, 1),
(56, 31, 298, 34, 'resource:item', NULL, NULL, NULL, 1),
(57, 31, 297, NULL, 'literal', '', '753698412', NULL, 1),
(58, 31, 302, 18, 'resource:item', NULL, NULL, NULL, 1),
(59, 31, 302, 10, 'resource:item', NULL, NULL, NULL, 1),
(60, 31, 302, 11, 'resource:item', NULL, NULL, NULL, 1),
(61, 31, 302, 19, 'resource:item', NULL, NULL, NULL, 1),
(62, 31, 305, 17, 'resource:item', NULL, NULL, NULL, 1),
(63, 31, 305, 16, 'resource:item', NULL, NULL, NULL, 1),
(64, 31, 305, 15, 'resource:item', NULL, NULL, NULL, 1),
(65, 31, 309, 27, 'resource:item', NULL, NULL, NULL, 1),
(66, 31, 309, 26, 'resource:item', NULL, NULL, NULL, 1),
(67, 32, 138, NULL, 'literal', '', 'Wen', NULL, 1),
(68, 32, 139, NULL, 'literal', '', 'Theiry', NULL, 1),
(69, 32, 296, NULL, 'literal', '', 'wen@gmail.com', NULL, 1),
(70, 32, 298, 34, 'resource:item', NULL, NULL, NULL, 1),
(71, 32, 297, NULL, 'literal', '', '156324789', NULL, 1),
(72, 32, 302, 8, 'resource:item', NULL, NULL, NULL, 1),
(73, 32, 302, 10, 'resource:item', NULL, NULL, NULL, 1),
(74, 32, 305, 21, 'resource:item', NULL, NULL, NULL, 1),
(75, 32, 305, 20, 'resource:item', NULL, NULL, NULL, 1),
(76, 32, 309, 27, 'resource:item', NULL, NULL, NULL, 1),
(77, 32, 309, 24, 'resource:item', NULL, NULL, NULL, 1),
(78, 33, 1, NULL, 'literal', '', 'Liste de Parcours', NULL, 1),
(79, 34, 1, NULL, 'literal', '', 'THYP', NULL, 1),
(80, 35, 1, NULL, 'literal', '', 'NET', NULL, 1),
(81, 36, 1, NULL, 'literal', '', 'CEN', NULL, 1),
(82, 37, 1, NULL, 'literal', '', 'SGI', NULL, 1),
(83, 38, 1, NULL, 'literal', '', 'Liste de choix', NULL, 1),
(84, 39, 1, NULL, 'literal', '', 'je connais un peu', NULL, 1),
(85, 40, 1, NULL, 'literal', '', 'je suis expert(e)', NULL, 1),
(86, 41, 1, NULL, 'literal', '', 'je ne connais pas du tout', NULL, 1),
(87, 42, 1, NULL, 'literal', '', 'je connais bien', NULL, 1),
(88, 14, 4, 42, 'resource', NULL, NULL, NULL, 1),
(89, 1, 4, 41, 'resource:item', NULL, NULL, NULL, 1),
(90, 43, 1, NULL, 'literal', '', 'Wordpress', NULL, 1),
(91, 43, 4, 42, 'resource:item', NULL, NULL, NULL, 1),
(92, 44, 1, NULL, 'literal', '', 'Wordpress', NULL, 1),
(93, 44, 4, 40, 'resource:item', NULL, NULL, NULL, 1),
(94, 45, 1, NULL, 'literal', '', 'Wordpress', NULL, 1),
(95, 45, 4, 39, 'resource:item', NULL, NULL, NULL, 1),
(96, 46, 1, NULL, 'literal', '', 'LMS', NULL, 1),
(97, 46, 4, 42, 'resource:item', NULL, NULL, NULL, 1),
(98, 47, 1, NULL, 'literal', '', 'LMS', NULL, 1),
(99, 47, 4, 41, 'resource:item', NULL, NULL, NULL, 1),
(100, 48, 1, NULL, 'literal', '', 'LMS', NULL, 1),
(101, 48, 4, 40, 'resource:item', NULL, NULL, NULL, 1),
(102, 29, 309, 27, 'resource', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `namespace_uri` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(5, 1, 'http://vivoweb.org/ontology/core', 'dura', 'duraspace', ''),
(6, 1, 'https://duraspace.org/wp-content/uploads/2020/02/vivo.owl#Student', 'etud', 'etudiant', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C912ED9D7E3C61F9` (`owner_id`);

--
-- Index pour la table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`);

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD PRIMARY KEY (`item_id`,`item_set_id`),
  ADD KEY `IDX_6D0C9625126F525E` (`item_id`),
  ADD KEY `IDX_6D0C9625960278D7` (`item_set_id`);

--
-- Index pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD PRIMARY KEY (`item_id`,`site_id`),
  ADD KEY `IDX_A1734D1F126F525E` (`item_id`),
  ADD KEY `IDX_A1734D1FF6BD1646` (`site_id`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_6A2CA10C126F525E` (`item_id`),
  ADD KEY `item_position` (`item_id`,`position`);

--
-- Index pour la table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  ADD KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  ADD KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  ADD KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`);

--
-- Index pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  ADD KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  ADD KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  ADD KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  ADD KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`);

--
-- Index pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  ADD KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  ADD KEY `IDX_4689E2F1549213EC` (`property_id`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  ADD KEY `IDX_694309E47E3C61F9` (`owner_id`);

--
-- Index pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_236473FEE9ED820C` (`block_id`),
  ADD KEY `IDX_236473FE126F525E` (`item_id`),
  ADD KEY `IDX_236473FEEA9FDD75` (`media_id`),
  ADD KEY `block_position` (`block_id`,`position`);

--
-- Index pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  ADD KEY `IDX_D4CE134F6BD1646` (`site_id`),
  ADD KEY `IDX_D4CE134960278D7` (`item_set_id`),
  ADD KEY `position` (`position`);

--
-- Index pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  ADD KEY `IDX_2F900BD9F6BD1646` (`site_id`);

--
-- Index pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C593E731C4663E4` (`page_id`),
  ADD KEY `page_position` (`page_id`,`position`);

--
-- Index pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  ADD KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  ADD KEY `IDX_C0401D6FA76ED395` (`user_id`);

--
-- Index pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`,`site_id`),
  ADD KEY `IDX_64D05A53F6BD1646` (`site_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `IDX_C779A692A76ED395` (`user_id`);

--
-- Index pour la table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1D77583489329D25` (`resource_id`),
  ADD KEY `IDX_1D775834549213EC` (`property_id`),
  ADD KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  ADD KEY `value` (`value`(190)),
  ADD KEY `uri` (`uri`(190));

--
-- Index pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  ADD UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  ADD KEY `IDX_9099C97B7E3C61F9` (`owner_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD CONSTRAINT `FK_A1734D1F126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A1734D1FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Contraintes pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Contraintes pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`);

--
-- Contraintes pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
