-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 13 nov. 2020 à 16:56
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omekas`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

DROP TABLE IF EXISTS `api_key`;
CREATE TABLE IF NOT EXISTS `api_key` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credential_hash` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C912ED9D7E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

DROP TABLE IF EXISTS `asset`;
CREATE TABLE IF NOT EXISTS `asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `csvimport_entity`
--

DROP TABLE IF EXISTS `csvimport_entity`;
CREATE TABLE IF NOT EXISTS `csvimport_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_84D382F4BE04EA9` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `csvimport_import`
--

DROP TABLE IF EXISTS `csvimport_import`;
CREATE TABLE IF NOT EXISTS `csvimport_import` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `undo_job_id` int(11) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_err` tinyint(1) NOT NULL,
  `stats` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_17B50881BE04EA9` (`job_id`),
  UNIQUE KEY `UNIQ_17B508814C276F75` (`undo_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

DROP TABLE IF EXISTS `fulltext_search`;
CREATE TABLE IF NOT EXISTS `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`resource`),
  KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(1, 'items', 1, 1, 'Thierry', 'WEN\nThierry\n16701702\nthierry.wen@laposte.net\nM2 THYP\nYrrieth\nC\nJava\nC#\nHTML\nCSS\nJavascript\nFrançais\nPhotoshop\nDiscord\nYoutube\nThierry'),
(18, 'items', 1, 1, 'Arseniia', 'Khoriushina\nArseniia\n20009013\nasya1isa@yahoo.com\nM1 CEN\nasyalisa\nFrançais, anglais\nPhotoshop\nIntragram, Youtube\nArseniia'),
(19, 'items', 1, 1, 'Elisa', 'Elisa\nDILLMAN\n18904153\ndillmann.elisa@gmail.com\n\nPrestashop\nelisadlmn\nFrançais\nAnglais\nPhotoshop\nInstagram\nLinkedin\nYoutube\nElisa'),
(20, 'items', 1, 1, 'Abdelrahim', 'Bouchiha\nAbdelrahim\n15608220\na.bouchiha@outlook.fr\nM2 THYP\nWordpress\nanas0dev\nC\nC++\nPHP\nJavascript\nPython\nHTML\nCSS\nFrançais\nArabe\nGimp\nInstagram\nFacebook\nWhatsapp\nAbdelrahim'),
(21, 'items', 1, 1, 'Bastien', 'Bastien\nPelmard\n16702682\nbastien.pelmard@gmail.com\nM2 THYP\nWordpress\nJoomla\n4G\nWIFI\nEthernet\nBaste95\nC\nC++\nJavascript\nPHP\nHTML\nCSS\nFrançais\nAnglais\nEspagnol\nUnity\nInstagram\nYoutube\nWhatsapp\nBastien'),
(22, 'items', 1, 1, 'Naushad-Ali', 'Naushad-Ali\nSOOKUN\n15602165\nnausha@hotmail.fr\nM2 THYP\n4G\nWIFI\nEthernet\nN-Ali\nFrançais\nAnglais\nJaponais\nEspagnol\nLinkedin\nGithub\nFacebook\nWhatsapp\nInstagram\nYoutube\nNaushad-Ali');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`) VALUES
(1),
(18),
(19),
(20),
(21),
(22);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

DROP TABLE IF EXISTS `item_item_set`;
CREATE TABLE IF NOT EXISTS `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  PRIMARY KEY (`item_id`,`item_set_id`),
  KEY `IDX_6D0C9625126F525E` (`item_id`),
  KEY `IDX_6D0C9625960278D7` (`item_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

DROP TABLE IF EXISTS `item_set`;
CREATE TABLE IF NOT EXISTS `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item_site`
--

DROP TABLE IF EXISTS `item_site`;
CREATE TABLE IF NOT EXISTS `item_site` (
  `item_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`item_id`,`site_id`),
  KEY `IDX_A1734D1F126F525E` (`item_id`),
  KEY `IDX_A1734D1FF6BD1646` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_site`
--

INSERT INTO `item_site` (`item_id`, `site_id`) VALUES
(1, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1);

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `log` longtext COLLATE utf8mb4_unicode_ci,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `job`
--

INSERT INTO `job` (`id`, `owner_id`, `pid`, `status`, `class`, `args`, `log`, `started`, `ended`) VALUES
(1, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"lod.csv\",\"filesize\":\"4253\",\"filepath\":\"C:\\\\Windows\\\\Temp\\\\omeAA1F.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column\":[\"Table\",\"Colonne\",\"Lien LOD\"],\"column-data-type\":[\"literal\",\"literal\",\"literal\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2020-11-10T11:00:10+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-10T11:00:10+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\wamp64\\www\\ldw\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\wamp64\\www\\ldw\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\wamp64\\www\\ldw\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\wamp64\\www\\ldw\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(154): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\wamp64\\www\\ldw\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-10 11:00:10', '2020-11-10 11:00:10'),
(2, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"lod.csv\",\"filesize\":\"4253\",\"filepath\":\"C:\\\\Windows\\\\Temp\\\\omeC1E4.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-data-type\":[\"literal\",\"literal\",\"literal\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"o:resource_template\":{\"o:id\":2},\"o:resource_class\":{\"o:id\":106},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2020-11-10T11:35:35+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-10T11:35:35+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\wamp64\\www\\ldw\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\wamp64\\www\\ldw\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\wamp64\\www\\ldw\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\wamp64\\www\\ldw\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(154): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\wamp64\\www\\ldw\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-10 11:35:35', '2020-11-10 11:35:35'),
(3, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"lod.csv\",\"filesize\":\"4253\",\"filepath\":\"C:\\\\Windows\\\\Temp\\\\ome7A18.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-data-type\":[\"literal\",\"literal\",\"literal\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2020-11-12T13:48:31+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-12T13:48:31+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\wamp64\\www\\ldw\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\wamp64\\www\\ldw\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\wamp64\\www\\ldw\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\wamp64\\www\\ldw\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(154): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\wamp64\\www\\ldw\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-12 13:48:30', '2020-11-12 13:48:31'),
(4, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"lod.csv\",\"filesize\":\"4253\",\"filepath\":\"C:\\\\Windows\\\\Temp\\\\ome6E85.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-data-type\":[\"literal\",\"literal\",\"literal\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2020-11-12T14:22:11+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: invalid PHP path. in C:\\wamp64\\www\\ldw\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:57\nStack trace:\n#0 C:\\wamp64\\www\\ldw\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\wamp64\\www\\ldw\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\wamp64\\www\\ldw\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(154): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\wamp64\\www\\ldw\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\wamp64\\www\\ldw\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-12 14:22:11', '2020-11-12 14:22:11'),
(5, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"lod.csv\",\"filesize\":\"4253\",\"filepath\":\"C:\\\\Windows\\\\Temp\\\\omeC240.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-data-type\":[\"literal\",\"literal\",\"literal\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2020-11-12 14:23:37', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renderer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `source` longtext COLLATE utf8mb4_unicode_ci,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha256` char(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  KEY `IDX_6A2CA10C126F525E` (`item_id`),
  KEY `item_position` (`item_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

DROP TABLE IF EXISTS `migration`;
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
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

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id`, `is_active`, `version`) VALUES
('CSVImport', 1, '2.2.0');

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

DROP TABLE IF EXISTS `password_creation`;
CREATE TABLE IF NOT EXISTS `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_creation`
--

INSERT INTO `password_creation` (`id`, `user_id`, `created`, `activate`) VALUES
('cCulbW2RZK9lroPncZ4A7Nsameyarncm', 1, '2020-11-09 09:17:06', 0);

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(185, 1, 5, 'Studentname', 'prénom', NULL),
(186, 1, 5, 'Studentlastname', 'nom', NULL),
(187, 1, 5, 'Studentemail', 'email', NULL),
(188, 1, 5, 'Studentstudent_number', 'Numéro étudiant', NULL),
(189, 1, 5, 'Studentgithub', 'Github', NULL),
(190, 1, 5, 'Studentconnexion', 'connexion', NULL),
(191, 1, 5, 'Studentimage', 'image', NULL),
(192, 1, 5, 'Studentcms', 'cms', NULL),
(193, 1, 5, 'Studentlanguage', 'Langues', NULL),
(194, 1, 5, 'Studentprogramming_language', 'Langages programmation', NULL),
(195, 1, 5, 'Studenttools', 'Outils', NULL),
(196, 1, 5, 'Studentspecialities', 'Specialité', NULL),
(197, 1, 5, 'Studentskills', 'Compétences', NULL),
(198, 1, 5, 'Studentneed', 'Besoins', NULL),
(199, 1, 5, 'Studentnetwork', 'Reseaux', NULL),
(200, 1, 5, 'Studentinformations', 'Information', NULL),
(201, NULL, 5, 'Studentstudent_class', 'Parcours scolaire', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

DROP TABLE IF EXISTS `resource`;
CREATE TABLE IF NOT EXISTS `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(1, 1, 106, 2, NULL, 'Thierry', 1, '2020-11-12 15:06:35', '2020-11-13 16:18:44', 'Omeka\\Entity\\Item'),
(18, 1, 106, 2, NULL, 'Arseniia', 1, '2020-11-13 15:45:29', '2020-11-13 15:50:20', 'Omeka\\Entity\\Item'),
(19, 1, 106, 2, NULL, 'Elisa', 1, '2020-11-13 15:53:31', '2020-11-13 16:03:15', 'Omeka\\Entity\\Item'),
(20, 1, 106, 2, NULL, 'Abdelrahim', 1, '2020-11-13 15:58:54', '2020-11-13 15:58:54', 'Omeka\\Entity\\Item'),
(21, 1, 106, 2, NULL, 'Bastien', 1, '2020-11-13 16:02:42', '2020-11-13 16:17:08', 'Omeka\\Entity\\Item'),
(22, 1, 106, 2, NULL, 'Naushad-Ali', 1, '2020-11-13 16:16:51', '2020-11-13 16:16:51', 'Omeka\\Entity\\Item');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

DROP TABLE IF EXISTS `resource_class`;
CREATE TABLE IF NOT EXISTS `resource_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(106, 1, 5, 'StudentStudent', 'Student', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

DROP TABLE IF EXISTS `resource_template`;
CREATE TABLE IF NOT EXISTS `resource_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(2, 1, 106, NULL, NULL, 'Etudiant');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

DROP TABLE IF EXISTS `resource_template_property`;
CREATE TABLE IF NOT EXISTS `resource_template_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_comment` longtext COLLATE utf8mb4_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `data_type` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  KEY `IDX_4689E2F1549213EC` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(26, 2, 186, NULL, NULL, 2, NULL, 0, 0),
(27, 2, 185, NULL, NULL, 1, NULL, 0, 0),
(28, 2, 188, NULL, NULL, 3, NULL, 0, 0),
(29, 2, 187, NULL, NULL, 4, NULL, 0, 0),
(30, 2, 198, NULL, NULL, 6, NULL, 0, 0),
(31, 2, 192, NULL, NULL, 7, NULL, 0, 0),
(32, 2, 197, NULL, NULL, 8, NULL, 0, 0),
(33, 2, 190, NULL, NULL, 9, NULL, 0, 0),
(34, 2, 189, NULL, NULL, 10, NULL, 0, 0),
(35, 2, 191, NULL, NULL, 11, NULL, 0, 0),
(36, 2, 200, NULL, NULL, 12, NULL, 0, 0),
(37, 2, 194, NULL, NULL, 13, NULL, 0, 0),
(38, 2, 193, NULL, NULL, 14, NULL, 0, 0),
(39, 2, 195, NULL, NULL, 15, NULL, 0, 0),
(40, 2, 199, NULL, NULL, 16, NULL, 0, 0),
(41, 2, 196, NULL, NULL, 17, NULL, 0, 0),
(42, 2, 1, NULL, NULL, 18, NULL, 0, 0),
(43, 2, 4, NULL, NULL, 19, NULL, 0, 0),
(47, 2, 201, NULL, NULL, 5, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('7fpmqvt2mra9rmilt4vplcvedp', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353139383033372e3139303737353b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a223764346f3734693237366f74746c39736469656b356838616a36223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353230313535303b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353230313631303b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353230313633373b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223635396661663331306363346564626234303038333936333066656362613763223b733a33323a226433363164343865646439383333383065383737376565643630613165333465223b7d733a343a2268617368223b733a36353a2264333631643438656464393833333830653837373765656436306131653334652d3635396661663331306363346564626234303038333936333066656362613763223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223534396235383239666633383263316666383539353132363863626565393564223b733a33323a223635616361643664353238396633373262313462333438366635636633633965223b733a33323a223766383831373830323664653933653137633164643161656466363234383430223b733a33323a223036306234356537643034626262333063306239303033653765333637303161223b7d733a343a2268617368223b733a36353a2230363062343565376430346262623330633062393030336537653336373031612d3766383831373830323664653933653137633164643161656466363234383430223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313833323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31393a7b733a33323a223630333034366464396634373662306466653163303735396536303633663362223b733a33323a223733386639373132303063653830656530666535656136323132373966333165223b733a33323a226332383035396130623939306166636331346338346530643332373261643531223b733a33323a226230326534353063633430316535366334653164626531313438333161346366223b733a33323a223064363465383733393239653834643164366363626637613531336235643166223b733a33323a223965323362343339373032353632623232646430626134643033343335623831223b733a33323a223433316433653763323034646363386665303139663939623135663866616565223b733a33323a223065373835346461646263383830356463386336343031396666363533646330223b733a33323a223463613164326663656265613839656434616131643730653631393131623132223b733a33323a223936366264623232653830623466626364313163613636376430353236363531223b733a33323a226164383761303237646233373866636633356431336139653261393866363063223b733a33323a226263373766653533646265656637373465383530346662356633343266363264223b733a33323a223131303265356633383435373561643636393536636564393531313439343231223b733a33323a223162353737333133336632626161303030666234376664343331636232343465223b733a33323a223065643234373862383835666363353638613031333332303039316664646563223b733a33323a223430393438303165613831323636393132316466643530626534396361313762223b733a33323a223738356364613434383935353235613061366538333531386331356134646136223b733a33323a226462323632623837616431616239663936356662316466306337346564326438223b733a33323a226536613730643066326264663030393662383131666565393863356430643932223b733a33323a223630373566623737343937386562343563353566396162343166376639323138223b733a33323a223261363464656564636665636464363666653135386665393337333363613535223b733a33323a226561383132383036346530393763643665626334383834396232323666356535223b733a33323a223262363861643134383138393564386535373737376637303635633034663962223b733a33323a223937356266323262316630333831656138633865333630623333643262333431223b733a33323a223237386136616137656338333832373037663964356630303131386338303664223b733a33323a226438393339636638333335393066383761623236313861316262656137353833223b733a33323a223030323165386137323438366639363735366431326163393465333635323133223b733a33323a223930386230393936333264316362306633663163656136663365353934653537223b733a33323a223030306534363435326232346434636264336535363030643034633831353334223b733a33323a226630373163366138656662306333313866306137393564303937396337623139223b733a33323a223336336564346563303236656566646461333630346465383032346433313065223b733a33323a223730643461376338346131646661336136333063663365326333303761343234223b733a33323a223734343335363139636131373931623964626433303438373163633336343533223b733a33323a226464323062636665396235346166386263656463373163356337336561313964223b733a33323a223330373462663836653461383933323938353435636333343264666439343938223b733a33323a223962363361383036616666656232386437306331613564313866653133633162223b733a33323a223536633533386638373437363334393139333263326635396666613137303736223b733a33323a223138393066333833623937363834646233626661363230666434393338666431223b7d733a343a2268617368223b733a36353a2231383930663338336239373638346462336266613632306664343933386664312d3536633533386638373437363334393139333263326635396666613137303736223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605198037),
('aqg06ajf16h9qvcmh5e31l5bf6', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343331343036342e3734343838343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2275306e657370386733726d6e66703465626f6265736d736b616d223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343331363338323b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343331373634313b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343331363937353b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343331373634313b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223836653437313739636231383138316535323139306638316362643164333463223b733a33323a226633616630653964643565323335313035363866373235613331666161336539223b7d733a343a2268617368223b733a36353a2266336166306539646435653233353130353638663732356133316661613365392d3836653437313739636231383138316535323139306638316362643164333463223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223833323566646338356231373665326232636230353362643265363737336338223b733a33323a226636663861653237396364356335386666376632386235333131616130646266223b733a33323a223233303532313438353533316563386663653762616531363461353561633363223b733a33323a226335613939303932333864353739666330393836386565383635373463306465223b733a33323a223139623733623561343431363536333538376661656438643338666332653262223b733a33323a226161623233383037646563396633623930663165613739643139613534643935223b733a33323a226630336132613862353464613139363335376134336530623964653938636333223b733a33323a226338636361326530316265383233386663393663396161333332373933313836223b733a33323a223662616162396564633862626335323936306538656264666532653634363933223b733a33323a223565363538343339386665316130356563353966376635343864313737356638223b7d733a343a2268617368223b733a36353a2235653635383433393866653161303565633539663766353438643137373566382d3662616162396564633862626335323936306538656264666532653634363933223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226134333335373163663335326561633833363763653934353161646633366565223b733a33323a226239373561666437396164323333636561303532313034393134326239393532223b733a33323a226564383031306231326630636332376631666430363264333131303837643036223b733a33323a223265336339363663373633306230376232656339323662623434356363343330223b7d733a343a2268617368223b733a36353a2232653363393636633736333062303762326563393236626234343563633433302d6564383031306231326630636332376631666430363264333131303837643036223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226565303337663664353164626165663037383235376263326139343763666661223b733a33323a223637343064616638623064303538663362356564356330373132623934656232223b733a33323a226261336363663732663865353463393435653632393463653737343539366337223b733a33323a223066356531376136396231346239333664623065363861346265366162343865223b7d733a343a2268617368223b733a36353a2230663565313761363962313462393336646230653638613462653661623438652d6261336363663732663865353463393435653632393463653737343539366337223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604314065),
('bs1cgmfvcc5pj7oi7ip4s6kk3e', 0x5f5f4c616d696e61737c613a393a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343931393532322e3430313734313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226a7031746f72376937326633666c76306c386d386a6264326d66223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343931373133343b7d733a35313a224c616d696e61735f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343931373033323b7d733a35393a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343931383138333b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343932323435343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343932333038373b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343931393833383b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343932333038373b7d7d72656469726563745f75726c7c733a33343a22687474703a2f2f6c6f63616c686f73742f6c64772f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313033313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a393a7b733a33323a223634326233656631656665663030663266643130356664663964663561353938223b733a33323a223834646234613039623765653531316664313533303630343864393661613935223b733a33323a223035643531336239616265616235336137383933633166366339383633323061223b733a33323a226165323437343737643234656331366231353735386138666135346531356563223b733a33323a223761623432373364626666373932356361386462366333613966393835653266223b733a33323a223166663138613736363936336265373533343335363664663063333064663934223b733a33323a223062623938353561363137333937323465633633323336623930393930376564223b733a33323a223631363661623864653764306662393739346133656633366330343931646336223b733a33323a223030383930363833353166356565616532366264386139313932306465616136223b733a33323a223364633034363339333733386464333366343135653935343636353430303264223b733a33323a223265363136323036313235663030366237333464613930396461316264663261223b733a33323a226136666263313336653538623037633262613433366363313135346566636465223b733a33323a223966386633633338653764323962656532346230303233316332326339376461223b733a33323a223434393863643365343066343336343239343835343930303665656663333161223b733a33323a226463333830363038313064386433383138613336656638313731316339303430223b733a33323a226333613463323664306364356538663533356366633566303532613835393934223b733a33323a223461376266623965316264333033373466646537633730656435386239346533223b733a33323a223765343439613837373430623736323233353766323837666633636566353264223b7d733a343a2268617368223b733a36353a2237653434396138373734306237363232333537663238376666336365663532642d3461376266623965316264333033373466646537633730656435386239346533223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223366363561316635323836666666343764383832653661623030313031613337223b733a33323a226566373134396165333837306663306162613961303661386333393562653437223b733a33323a226235336263356163346366616365666531386239356638646166396634663565223b733a33323a223263653131373130396664656534323266326132353931316436653962306338223b7d733a343a2268617368223b733a36353a2232636531313731303966646565343232663261323539313164366539623063382d6235336263356163346366616365666531386239356638646166396634663565223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a226363373831616331353965333036633333626237333066663937626165326639223b733a33323a226438613265393666613565663866353430363863643763376265323364333062223b733a33323a223262393862613031363261303565633265303333333162363233303031626535223b733a33323a226534303737623834366138656430663934336139633461356662666561386462223b733a33323a223130633963396137323231623832313837383566613466326533343933363161223b733a33323a223638343335656230393663316432373633333034356231326431336436376138223b733a33323a223930306265666535383061333866636637376130383864646532643965623632223b733a33323a226561353563343030626663343664386266613963653062653734313338343038223b7d733a343a2268617368223b733a36353a2265613535633430306266633436643862666139636530626537343133383430382d3930306265666535383061333866636637376130383864646532643965623632223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313139323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31313a7b733a33323a223164623730303333643231643530383635633233343261303136366130313765223b733a33323a226365336436643434323736623063336639626435646537663630353364366339223b733a33323a223036616162393531623638626339376561313830643164346366386664373331223b733a33323a223833636637353336643564313562313165346463346137626466376134376566223b733a33323a223335363261356662306533623336613563393034333161313466663938386331223b733a33323a223435393161623762356238386564306539386561336339333466653237393238223b733a33323a226265633762643236396235653334326264316261626362663239643432323036223b733a33323a226239653362313238656431366635643262383533653334653365643935376537223b733a33323a226336613061363738326636653264346564663139316536623039623431616539223b733a33323a223334383230353933326565393236313237313939313437376430653632393430223b733a33323a223761666233316466343133323565653038386663393736346534356137633066223b733a33323a223665316134386438643631343831323364343735616133323166313134336534223b733a33323a226231346136353232363364643738396139663837306239393135303238343462223b733a33323a223437373131653665643236313363653334326131613465396664383730346538223b733a33323a226235396136393538616536363461386231646333366465383135383134636635223b733a33323a226531326330323235326631323632306233633564323635663364366338646139223b733a33323a223363646461303532613537316535613632326437316262633430393032353233223b733a33323a223839363630666439356433393964613037393635356263656336336162653237223b733a33323a226439333339623938333538343632656436616339303562336238383637313030223b733a33323a223735643666633034356438386537333638653930643466356537326631326432223b733a33323a223637326561623839316562336135383535366539613633633231623132343437223b733a33323a223030363164653831623837373666363931376231343032333830353030303534223b7d733a343a2268617368223b733a36353a2230303631646538316238373736663639313762313430323338303530303035342d3637326561623839316562336135383535366539613633633231623132343437223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a223363333131353464353664363438393465646338333566393861346330623539223b733a33323a226239326334366139363266343035616363333865393364353030633663313264223b733a33323a226337386236613830363262333633633038353732363261633330636438303166223b733a33323a223430386136643639623139333130626539383864366333313539666334636337223b733a33323a223464363165353663386664636566323965663838383839636335323234623162223b733a33323a223366353565343838383030636161386563326338303566386562316331396133223b733a33323a223438353230646530663831623930373831623139373065313034623934316163223b733a33323a226262633133653466663261653363323038363836663966396265653531323938223b733a33323a226135303336396433363639363731383539623662363737303135663939353132223b733a33323a226665623462383839393661613335313835653238393864343730653963333435223b733a33323a226335323834336633343561626535386133653137636461336636326564663962223b733a33323a223163666438346361663562353138333266306661323534643733356238646466223b733a33323a223162383433313762303231633766613663303439353365313364326365343436223b733a33323a223434643763653237363831373231386139336433373135323762396437343266223b733a33323a223964656330396334633834623961653461383631313632626239343834326139223b733a33323a226463633161336234646265366334383764336164393264643637366265623864223b7d733a343a2268617368223b733a36353a2264636331613362346462653663343837643361643932646436373662656238642d3964656330396334633834623961653461383631313632626239343834326139223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226130353863383562363835323338646538663334643337316235666465636230223b733a33323a223439666335303064633766383265613533646138356537303264303932376666223b733a33323a226233343831373136333035353130396635656664663366343330636464663330223b733a33323a223335643638633065353065366461333737323065653230616138363332323265223b7d733a343a2268617368223b733a36353a2233356436386330653530653664613337373230656532306161383633323232652d6233343831373136333035353130396635656664663366343330636464663330223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a226633343734373937363039363962323534396561623964383666316430663364223b733a33323a223963306664633939343865303432613138633939653265373430353061643330223b733a33323a226338313832396563613630343962663436353766386463343134346634386636223b733a33323a223866623661333661363030666537653061616464626336643064343163636531223b733a33323a223335393539653935663035326530333534303430303331303635336131346630223b733a33323a223432353934333165626537386664333565393330333262333635646638393066223b733a33323a226236633464383962636638636462633363653730636261386439353839613834223b733a33323a226639383061353530373936316230643239626263323735626133336265326337223b7d733a343a2268617368223b733a36353a2266393830613535303739363162306432396262633237356261333362653263372d6236633464383962636638636462633363653730636261386439353839613834223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604919522);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('ektnvapnr1fspe1quh1o85mjfg', 0x5f5f4c616d696e61737c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353238363235302e38313933383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a223567766f31396e75387163396731636672306d32397565703973223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353237313836363b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353238353935373b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353238393835313b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353238363832313b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353238373838313b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353238353938333b7d7d72656469726563745f75726c7c733a33343a22687474703a2f2f6c6f63616c686f73742f6c64772f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223238663238353035336130313665646339333062616538313935306563393936223b733a33323a223635306561643562633038616137646563356333376237353438366538653663223b7d733a343a2268617368223b733a36353a2236353065616435626330386161376465633563333762373534383665386536632d3238663238353035336130313665646339333062616538313935306563393936223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313531323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31353a7b733a33323a226335316532626665376666386262663332366263663265643962386564616635223b733a33323a226133663433613139613263643832303032656132653331376533346234343230223b733a33323a226234383664356465663131363336356131366366303032633864636162323163223b733a33323a223738656135323263373263363037326262646462306230366130653435633331223b733a33323a223264303331326631376336346138303161326635633531363038323862313362223b733a33323a223233316633636136323837623461336634626561626338643861373330306562223b733a33323a223835363439353465323632353863633538616532313831663531656266626332223b733a33323a226265623439656661373837656134633436633035333363633735366237346261223b733a33323a223139346533333439356538356339336430363938383737663132343239386331223b733a33323a226636353562656339383666303964376361363538383663373931346332363431223b733a33323a223965346263613135396131623766396238643662633230396337616639393338223b733a33323a226536313861616561653733363063336464353939313830336635303262313637223b733a33323a223664373636643235373439346166356330303364356166313566316134306332223b733a33323a223063636638343162653236383963376265303238336266663965353236346333223b733a33323a223834343562393835623438646265383332333562613463373964383238306537223b733a33323a226566613639336639366361653032303266396632656361396437313365366236223b733a33323a223165376435323035313235376162393030626239323565636334343833323532223b733a33323a226635656139373565353464316562613565626630306238363666613763393964223b733a33323a223963623366633931316239303334383461626334383637626136383063653738223b733a33323a223864643039323236626337393161626437336162633262643235666165303463223b733a33323a223731623239626237346466363538313936616234633732333235386639373032223b733a33323a223961303261363532373131646133666666396235653230353766626132663766223b733a33323a223239376561623934343034393736666563376434386235393266333433633333223b733a33323a226466663261643336333563386337636435323138396631633063343237316361223b733a33323a223462613136386365646135646234636266316336386433366534303039656432223b733a33323a223962333061613232303835616538396662346134653465323831316333373032223b733a33323a226561383163623565623662656338643538353936376136343639653564393636223b733a33323a226639346266373033376635383734633162316130616137666636666132643664223b733a33323a223536613163343866333630316637623764616161316261306235303561373165223b733a33323a226634643038363236633636396363633033616466306461626630346537623039223b7d733a343a2268617368223b733a36353a2266346430383632366336363963636330336164663064616266303465376230392d3536613163343866333630316637623764616161316261306235303561373165223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a31313139333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3133363a7b733a33323a223133383938383866396537623435373463333634373935323564373031366663223b733a33323a223331393162343662636264626330663037373634333563346362633534366636223b733a33323a223966623336323031613665616564326431613662653165366332373264336164223b733a33323a223862326666363539313639373933343938366166303838313033326561303730223b733a33323a223138623662333335626131396431373566626662383732303466333563303436223b733a33323a223764643333303231303663373534316533666230323832656366626333386665223b733a33323a226566653263383337653564316161383331633563393464306631363230636263223b733a33323a223665386131353034313732623438316366613834666536623036643738613733223b733a33323a223861633264643535643465353434363038653932663862343564336534336633223b733a33323a223462613230626466643936393638306666353436313138363632333161313334223b733a33323a223330383661306335356661383735333963663639643338353066386466303830223b733a33323a223834353134616132646561356339623230333633303364313239333965626137223b733a33323a223161306435356534303662303137653665613737376539303666653931646461223b733a33323a226161646164343938663737316364636138633934643562373731383062666434223b733a33323a226165633037633239313230623832656130643131343738623764343962343238223b733a33323a226231353836313437326363636538666336323534636137363836366239386336223b733a33323a223234386230646363303238393936363536633134653365623961383865663330223b733a33323a223966396430303934373133393035306139353164646339623030616239313231223b733a33323a226434356430333430353263653732323134643863343564313239633364633438223b733a33323a223361303330396135393463353165333131356461666166336535343561626239223b733a33323a226563636561313162393233663661386463323633643366323935626435366336223b733a33323a223533336432373664616562646166393230643131313231316334656435383637223b733a33323a223934326337343834386639343137613535656335643162376266623032613238223b733a33323a226237613438313036616366383834643334653665326237326632366338323765223b733a33323a223032646436373966363537376438303435613966623036353438333638353731223b733a33323a223863396536353030636161633436626637323031613261646437373334636462223b733a33323a223032343134653339653037643762393733396633666161353432333937666137223b733a33323a226665353162353738396562613966626461663763326264643239393836396536223b733a33323a226532633430643633356535373463663866356162616264313730666461656565223b733a33323a223230643166386565633538363932353134323636326638383666383866323961223b733a33323a223265336338653534353439626534306234663033303031316534396336613066223b733a33323a223433626263623030653730633865613466363262653564623835303139643236223b733a33323a223939326662386538633734316331343131646363663761646230613833343161223b733a33323a223930386262396632363163653533396335386536353965316533306266363631223b733a33323a223834656636336532313237373237303832366438316133333437303062326664223b733a33323a223561306430386238613231323332313537373332333363393363613964633435223b733a33323a226238643764626538363866643765623939396337383637373334383734626337223b733a33323a226334303837633335366464643534663363633637633033383235373631393336223b733a33323a226261313765633661353965393531303064373536306361326431393539636236223b733a33323a223030313838343862633064373861393661323837363164633633626661356337223b733a33323a223864393830373339313034366134316238653365393461343766616335623964223b733a33323a226561396361623135316261393232323833626138346534613139346238633362223b733a33323a226663383361383037646239353330326266393334333864313436633766343130223b733a33323a226633633361343535343666666436653465313934383766653634376565303764223b733a33323a223135326630623336356332633635636630643964363337396438343064346434223b733a33323a223933663431396563646236326235353139656461613830343733613161303533223b733a33323a223561313961383333323432663561343938343431373038323165666463323131223b733a33323a223832633637386166303838363037613238393339363332613239346237366537223b733a33323a223764316236366161336338373562373161616164613734633631373034323165223b733a33323a223233326461373133306134616666336232653034653635623664316566343735223b733a33323a223165316162316239373337653063626434326237376231343931336530386635223b733a33323a223435356635613934366661323036633762343130656237333133303437643937223b733a33323a226661323761393035643665306532343239356165346237303337353332363530223b733a33323a226234613031393137373433613965366365356331356664373535396663363835223b733a33323a223634613532386337346263653139353936343862616335353364316333306638223b733a33323a223433313261663531643335636639633536653264333939626466383635343038223b733a33323a223636393038666138386664633538383133613839656461306261363065636536223b733a33323a226133643361656461313537346339323561653565363862303633393536626264223b733a33323a226131366362613361336231373837323634616637303432636664666237663435223b733a33323a223465386132343837343630393163623961353837353764363663633237613833223b733a33323a226365306432303264306566306165336233643761626462346662616136383534223b733a33323a223332396534633732333939653237313137303534316266663036376536373834223b733a33323a226239653666373537393262616265353533613162366536646461313363633739223b733a33323a223830656566353836333261333134323237383831626135643564343533353862223b733a33323a223966353163363938626634323435393132383936326565396435633237386537223b733a33323a226464363038346633623139386634366162346231333532626166336232353335223b733a33323a223361653335393364393831666531306337376465316463653963336532383233223b733a33323a223161386366353238373238323362623635623136373964313932356239636462223b733a33323a226438386464353339613864346362336435323832633231386466303735333637223b733a33323a223131623836353066326236383235393633373538656532313031623430356465223b733a33323a223061626236633438623637666531326536653931343262633239376134633062223b733a33323a223439363763396163323861646131613262333434643363353332393362666536223b733a33323a223263653039616437353035646131636635333830363734613237633830323930223b733a33323a226635303861666636343532333762306262323032616334363833373731626333223b733a33323a223730396164303634316536313432623130663061313064323165376166386564223b733a33323a226133343237353038336165373264376632306461646532396139636238353131223b733a33323a223466633430303033366537663262373231303737653165306638303837643230223b733a33323a223561333235383666663237346433333936623966653062306162303863383762223b733a33323a223736363265353762383666373735356261303937323439313663323965366331223b733a33323a223166633733386636663966393037316138653932386438353861653038303133223b733a33323a226430353834376165346266616461343234386461393564666431646634653261223b733a33323a226361636433633135626165393937653961653365656262323564663166646633223b733a33323a226237366662663437646238386631646338636638373066353361643166336431223b733a33323a223139653037316438326164396332623863336234373865626339326666306461223b733a33323a223332306465356638313334636330653235353436303539633262303535393163223b733a33323a223439323466346166303839333034313537386564323933333035663037366234223b733a33323a226662316238613464386666633133383362633431353633656365373735626130223b733a33323a223239613432323434383134373365636537653835306130643436316431323539223b733a33323a226633633662616464623165376639613730306436613531613237303632633762223b733a33323a226631376463313736613461613732656234396164396262623438313034393737223b733a33323a223835313564386633616637646537626562396433366137356238383539303635223b733a33323a226632343337633338663164626437343538316662663136336532316563613263223b733a33323a223632323966366535626339386563376634303534316635336362343835326166223b733a33323a223732323236336465393765333531353666363933303934346238313938643636223b733a33323a223362323436666131663839663530666665663334613432646131663638326434223b733a33323a226533323764323239363935666264643765663766663931306436623266346436223b733a33323a226330363366363966633635653530323062303135303265336565383765653835223b733a33323a226535323864383365663634393733653438396464323735376132613639346630223b733a33323a223132313066633866616535306164626339313236383532383636623034343332223b733a33323a223662646563386339623861643437376262373630386163316535363834313631223b733a33323a226138663564613665323165386236386536633565613234303931323039333461223b733a33323a226237333961353139373538373464623139373039643634306632656463396534223b733a33323a223939326133353865346664306462386338656336656438323039666539643637223b733a33323a226530343863316535336264303739316263646530383639346366313337343461223b733a33323a226630336536356434366435363932393239613765646161383632306565333034223b733a33323a223931386339333835306564323564643135623133646332353737653032366664223b733a33323a226132643064643231396238393261323931363963626538356536353630343731223b733a33323a223331376664373162323339313837316337313430666361303531353631343161223b733a33323a223839376333376265343237666337646666326231343439613134333163633036223b733a33323a226566383766653561303339363439663866373361396562653630393535643734223b733a33323a223738353065343535613737323031613834343866326632343332663231653362223b733a33323a223232333034346236326435613163626161323532646261316333356534303465223b733a33323a223936316239363063656337383139313666636338393137326531356163326336223b733a33323a226166363165666334366630353833613235386330353565306665373664623739223b733a33323a223431313432353465383732343539353866636437663035386436666437663366223b733a33323a223365323237333765393932353335326664333634363437326231386239366130223b733a33323a223833613134306535303066393865623831316161333065636430353165303130223b733a33323a223537386338663366323665653133343934396561653130323236353937396139223b733a33323a226437356136383838363364653262373363356631366333333265323930643437223b733a33323a223664373530653438373630356236393064653433373466316630313534366537223b733a33323a223839356137393261396338303639656635636438313166346639356135313064223b733a33323a223832366365613231396137333465626433393534353338396331373330653865223b733a33323a223161623433633633306432303932663164383533356661633238666163313062223b733a33323a226262393633666136383038626563333563376563643137376238653563386235223b733a33323a223463343066623135343835363437626161303762376332656631346463303430223b733a33323a223237373837633730343363333133396237623732656239316436333065313663223b733a33323a223537646137626638663134376536323139616536396161363536363531343866223b733a33323a223139653234393065643935386266623230336664333763313937396166643233223b733a33323a223361643662623165643438663032623339396131366163383339356239613661223b733a33323a223665353663353130613739393532613638643664366364373466643930306235223b733a33323a223539313961343733303332323666393936383961313236376634613961336363223b733a33323a223334373234303433333762366537363863393164343665656231386132663932223b733a33323a223738303039613038386530323936363231643934656666333462373538333837223b733a33323a223833666539376434316164343730373936633939333132396564353365653339223b733a33323a223535386666356265626332363861613132663036626637353163633662383663223b733a33323a223230343863653264346236626333393531303662376362303930636465326562223b733a33323a223433333535353763613733386632386166323835623135316133613036653035223b733a33323a226262313334323136663936306137356438393631333665633564373266373462223b733a33323a226439656635666238623163353362353336336630633664386134383862316565223b733a33323a223639393563663333666163633166663461323362626563636265363964336435223b733a33323a223933343662643634323034616137633130353965636265316634313538626166223b733a33323a226661633238306661616666646232386261323937666464386137306531356235223b733a33323a223136633731633137323536306139363630396465323664616365653865623439223b733a33323a226161323537643065333261376137363866653132393230616262633961643464223b733a33323a226532356661373738376531656237396138333737343664366265636165303538223b733a33323a223239393231303564653562303533623565663738646661616539323036633766223b733a33323a223733633539323866643230666562626235356139613130313732313532656664223b733a33323a226664313833653032656430323332303639393338373631333966626265623362223b733a33323a223635363839363265393638623430346338373866626662636163373633306637223b733a33323a226237303634646132643433393432343934383061386236366634613765316637223b733a33323a223837363532353234366237356131313263346434323834363662633137613739223b733a33323a226263633762663063633761636264396465623535656133633963396139346539223b733a33323a223461646338363539633233313663393963333831336165373439623136333263223b733a33323a223836616664633236626466333739383633646134363961376565653536333265223b733a33323a223366363930316163356330353334346161356534653933383233363462316263223b733a33323a226361666464353638343465373766303962626565633630363339616564646565223b733a33323a226464323336633064316361393066376633393736303666626535656338636337223b733a33323a223165343862303731643462373966396662656237643735336364313963393738223b733a33323a226234653862323164643636343030396533663633303838313530623339386337223b733a33323a223335343462616363666337663663636434386637306236366139383162653166223b733a33323a223732306564646466343539656462326339346136656332353237626439613338223b733a33323a226337363562376662356263396639336364346537346637393034636461656261223b733a33323a223832376239636164343930363632636538633131646438636537393761613363223b733a33323a226265306161363938326165346630323063653637333736353337343933643862223b733a33323a226432636261353663393239613362633037623231313134306565626164383632223b733a33323a223465333333653861663632396638313064633536303933393439393535643863223b733a33323a223963616634623930326234616631393165386432316531613330636435633462223b733a33323a226261323065323066356335616631623163396537353634343839366233363866223b733a33323a223263663963633938653762326339396366343761366163613839363437656366223b733a33323a226138663333373433353865663836616638303431353033653765646335376130223b733a33323a223634376131656165663032333564333432646261383839353632616539346632223b733a33323a223035326361393564333331323263386536313836643731643266613533306134223b733a33323a223163663234613030336538376165646130323230303433376239386133656664223b733a33323a223434663431386663376664363335363730613532646638643839373633306636223b733a33323a223637383434663732613339646536313538303537386632643035356461666364223b733a33323a223965633232663932356266336166316430616430373134383235663662346434223b733a33323a223164353062366536613530333261653030666138303562616661316166663936223b733a33323a223063316337316638323233633136316435303732623535376639346635646534223b733a33323a223165616434623737353930353931373430366332613134353663636631383036223b733a33323a223238366539646164633464323864326235326564633937346338333136393733223b733a33323a223133323263656332366236366662313334333138636432636534633330393863223b733a33323a223435376161626631633035313464313066303434633030373036323539376538223b733a33323a223536373931306261363539633062366165346335333339353435613236386463223b733a33323a223130623133386437313530666564343037373730366537663366366435643938223b733a33323a223966666639666663653365383839326231386363376438396338636361393163223b733a33323a226162626261393533366566303931353566636330386662383738393361386331223b733a33323a223538363636653839393035323164376666633431656461613464333065343734223b733a33323a223930353864353631313333373630356530343537303461363364356133646231223b733a33323a223664376239633363653735366536363665306332396464373435633534663137223b733a33323a223136343538343533373439323530306334323533316635653265303137346435223b733a33323a223830636664346263653630613038363031653363666261336666396165313032223b733a33323a223632633763343463613562383231646536623339323135353735326336656166223b733a33323a223336343033653663346362643430663661336638626563343239643963313732223b733a33323a223062623233316536386233616164396535626362376261333864353765346631223b733a33323a226563613639613734313064623537613938626362633265623562336234323766223b733a33323a223533643739393165373662663835353434393138323365613535363835393437223b733a33323a226239303539363662386333373932646535336164646334346531363530643262223b733a33323a226536646164663265653361626639636538353433303265613036353438306633223b733a33323a226665653865613633663831316362613937353336326365346461376636636336223b733a33323a223938383465616661646464656666323663646631613961313663663632316332223b733a33323a223034396536313165323762346132346663353039366332373939303739383535223b733a33323a226334366634393838623338306664653465373562633935623366323330386530223b733a33323a223838383438353633373534666365303731393334396230393262633164366635223b733a33323a223061376235356662666539383239613839666638336438643730636332303631223b733a33323a223339643935663232323965396431356362363238303630333430396164376336223b733a33323a223565663539643630643239326563646465323531386230353835363465393835223b733a33323a223231323530643237303432663930613238363436643833393932363563393562223b733a33323a223563393136373361373936653637313834616133356266613165313965343263223b733a33323a223730333065623136323038376466366539636665303333346132313033366166223b733a33323a223730373033653633356131623333613765343361623164326330626163656534223b733a33323a226365393165356238633761336662303265636463613239353639326536623664223b733a33323a226232373230326262343363326237653530313036646634393433623137646665223b733a33323a223638663536616630306164386664663061383637633838373937383161343466223b733a33323a223731386161636161613934386165636134646238353364333333303430626231223b733a33323a226462306163373962373761326566333964393763363432643734383866363936223b733a33323a226138366235383564366635653136643331666566383138626365313464306131223b733a33323a223336326338363062363763366433326339366637303562663166323066343938223b733a33323a226538656334333132316634366266366533323664303939653964373665653031223b733a33323a226334393939653035353634383563343136656537303132316330363839626565223b733a33323a223964666233623361386264373430613933336136343563623630373532323439223b733a33323a223031383961353632646333613330303365623236383264343133653937623161223b733a33323a223333653931616539336234643739643537313661653735336531656363326336223b733a33323a226334613861353737383035353636303962616561383435616231386236663030223b733a33323a226339353831306263363064643764623939626634643064613435656337303761223b733a33323a226233386663303239663231613738383430373435393066613936376461623636223b733a33323a223861633033613363646361653930316533346332373438343238343431626565223b733a33323a226661656531613865313766666165623530653062356562323063303935633937223b733a33323a226162353732663731376239666539663761383833653338663239643133393837223b733a33323a223837633834636536366438313638623030663732323661306537636530306333223b733a33323a223033623466613433656364366330373761356339633938326531363936303634223b733a33323a226662633831653532373337356139353765333062303038356334306139663039223b733a33323a226632383366363766373933333162356538383064366466616333666633613230223b733a33323a223034303766306230383939326334666431386432613336636430623530323963223b733a33323a223038333830623863326366373239633062333366633665376162363035613166223b733a33323a223037366137323235323865653736353233656461646237343863343039333836223b733a33323a226335316562343664366239653336313931343938316634333534313137343632223b733a33323a223434333461376261643234353636316661646234363233363534623763393161223b733a33323a226333373137313035663964316664303061653633643633313237386161383434223b733a33323a223132306530343438323730336132366261656330626164623132623464323661223b733a33323a223338643663646231313162393738396166613937653163326631613339363638223b733a33323a223832336337316162363833323732623932646537333463353235636534646232223b733a33323a223638396235343830616264326230393939643063656535616364343362366330223b733a33323a223438626365303631396531323639306532323338313761313934356336323430223b733a33323a226135396664376463616162616365363762653639366366326665636366373830223b733a33323a226362663765386236383935363732353764363961383236656330343335646538223b733a33323a223662353634356661613262643338386665653735333830386130383636663433223b733a33323a223165303461653166626437333130613833626166326130303566323863316665223b733a33323a226332663437346663383537333030313738306635663136656531373166353930223b733a33323a223631313839323664313136663332646130313065663864653166656335393732223b733a33323a226461303836343338623036333062363932373531396564333236346537323432223b733a33323a223132643734326336363461306435326161663162393937653538336663643030223b733a33323a223733373736336265353631303639633638663363663766656664633464373337223b733a33323a223235663636663333323062663064303832393538656562613131346431353738223b733a33323a223866313836643336613133663163353637326131376436656539633434616337223b733a33323a226539373232383133326361653036383965346539656332343165653965353066223b733a33323a226462356266663739336334373039366564613039383832393038386561633634223b733a33323a223338373530353238636437623735363439393430386133306265376334653162223b733a33323a223039393736383161393535323665366634656630656461663030306661333530223b733a33323a223536346331353563633935613566316566353832393766643431373439323862223b733a33323a223137316233316662613031613632306361636539303731323733343036663637223b733a33323a223537653663303862663130623537613537366666353864356638613636343733223b733a33323a223330366265666236376132333530396337343665613866613831343135333535223b733a33323a226639356664336166346563333433666231386532393637653930626338616263223b733a33323a223936386437663432313362363464653433646435616435333331623339396566223b733a33323a223961643739663862636335636366623666313663626338353130636539633237223b733a33323a226661663937643662343531373538653464303133353234646130393139316464223b733a33323a226632366364616262666534663035313637346333633964373937363366623436223b733a33323a223636303762336164356532656232653535623837653364383162623362393963223b733a33323a226639363330656235643930616138633830626535303939653762396138353231223b733a33323a226637306262333561356463386331303364613837653837656366316635303564223b733a33323a226564626662323661323337636137616161383963633363343630646366313661223b733a33323a226138386236613934393338393732303566303865666465363165653930383463223b7d733a343a2268617368223b733a36353a2261383862366139343933383937323035663038656664653631656539303834632d6564626662323661323337636137616161383963633363343630646366313661223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313033313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a393a7b733a33323a226662393562666536323935616338303930356362303139623166613138303238223b733a33323a223566323662626439616261633130656634366337653536356533636162653332223b733a33323a226230356538613936303134366139623363376133323036316139376438626334223b733a33323a226431393265346433636563333864633937376639363533383664646238393462223b733a33323a223335383539343664636135646461306435316566383431393439343532343831223b733a33323a223331626335306339343761363535616465373233633032393034646134303836223b733a33323a226439613137363461393735343636313464646139303132323335346230383631223b733a33323a223631626234616630386165383632643736623262303939653462653236393530223b733a33323a223236646638373038646330363838363137666231646466353235363939343131223b733a33323a223331303139663064616133646234373133623330643066303833346331623965223b733a33323a226164346535623562616331616162303163316662616132386338633335623237223b733a33323a226433656532346434666431633733633139333362373662346432613839616538223b733a33323a223734613236343335303638653531633831313233623638356635616638633662223b733a33323a226635316334613339633339383236663930636661343061396337623665363532223b733a33323a223231323932396365616462386139316237313332666238626562666433326238223b733a33323a223761323965353136343138366137336362366232623833356461666533623463223b733a33323a223165616230363630633135343032326232623062376338383837333637363033223b733a33323a223263656236333037616334613462653436653134323361353533633866366237223b7d733a343a2268617368223b733a36353a2232636562363330376163346134626534366531343233613535336338663662372d3165616230363630633135343032326232623062376338383837333637363033223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313931323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32303a7b733a33323a223231643666326438636564633963663363313465333430346563313530373366223b733a33323a226134303933363739353064646166613234636536313334313034353564376335223b733a33323a226234366235326334653937623261386434383562616137333262353835663363223b733a33323a226334646438383333343639306135346637346234636466366437303438656364223b733a33323a223335316132653637613262326434356335653735373930613137386532343638223b733a33323a223136633233653762363530313163333361623065366365353632643138326231223b733a33323a226533633263353463383463393733326630323830356366633230363430396664223b733a33323a226134353666313164393635396239356265333838343039636663336338623362223b733a33323a223564303439633231656132396233303531346361613664633865656431623066223b733a33323a223662623938353932633962393435303734633265316132393662323038356266223b733a33323a226131353733326466666335393863633264353562636531363434663161373839223b733a33323a226366343966313361663836666265373836633830336430616231343530623661223b733a33323a223233346332363333356630373166356261613238623837643631303935326231223b733a33323a226539643466643539336261303839323838323235646165616630636361653233223b733a33323a223430346439363261343836363935643339323631323338626238393430343664223b733a33323a226466616331333366363430313062653331626538613638333339373136383066223b733a33323a223462306437373535336139306335653936656232323331633363663631333364223b733a33323a226136316432343766316534353365373435326631346561363662663234383033223b733a33323a226563623462373762326462323566373431346531346462636165623335626130223b733a33323a226336353037343465363633616165653435663563346232303961636133656364223b733a33323a223662363137303365333361613630653334363064366666613733663035316161223b733a33323a223835643065616665373661383266336465346132386436646434626437353263223b733a33323a223139366536313162386134366636646364616638393861323437333638386363223b733a33323a226332313965336664333131303334633733623030343065356464313265653939223b733a33323a226263353835363537363634306336373538613930333735643130326236613866223b733a33323a226364356138626333656335343464323563616561613930326162356630646566223b733a33323a223866653131653035373836613866306336656434643939613232363739303565223b733a33323a223165313834326463373566643538383362306134313430633236323432316463223b733a33323a223430376261346664323034343438383132336565646566396635326337633065223b733a33323a226532633665643831393634333862303537363361643138663736663462656537223b733a33323a226266656536656338633762363035333139653236643237616638636531363732223b733a33323a223835346263336136623237323131396137383461383531333536643363636236223b733a33323a226466383232333166323736333166336164316433646433633032633033376532223b733a33323a223230373164366565373266613133356333363932316630336533353431646662223b733a33323a223938623834313538633666343930343461643062366163306438656132623639223b733a33323a223037323438386663316530313433653433356633363661373637656236363237223b733a33323a223861616630353637643331626564383839333935643536653837313431663738223b733a33323a226665353634666564373833653130633030373331323066373137613836373764223b733a33323a223763313633613533333862336162656536386263356337303236653430383634223b733a33323a223063663436346430383962356631643766623938373339323663303731346539223b7d733a343a2268617368223b733a36353a2230636634363464303839623566316437666239383733393236633037313465392d3763313633613533333862336162656536386263356337303236653430383634223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223236396663326439383333373962373736346336666237653034613432303937223b733a33323a223466663763323165393865613332663962656161633366633632643238636164223b7d733a343a2268617368223b733a36353a2234666637633231653938656133326639626561616333666336326432386361642d3236396663326439383333373962373736346336666237653034613432303937223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605286251),
('eob7htpctvgp263b2bdj14qrgp', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353139363736332e3635373035333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22647062396770767072386231316a6e373768623273333474666e223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353139323234383b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353139393135393b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353139363236303b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353230303336333b7d7d72656469726563745f75726c7c733a33343a22687474703a2f2f6c6f63616c686f73742f6c64772f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223632346638613937653262366666356264653036323433393737326264363435223b733a33323a223661616633343731393738373664343162643864376462613562643264623464223b7d733a343a2268617368223b733a36353a2236616166333437313937383736643431626438643764626135626432646234642d3632346638613937653262366666356264653036323433393737326264363435223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313637323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31373a7b733a33323a223137656236643463343436386130303833623939666231326336613563353534223b733a33323a223231613566363763656636326236343463636431353266613465306261643462223b733a33323a226433333231393036386233366663393936396664383563376331303164323163223b733a33323a226361306231386435386164306535326632366566303732316564373338633336223b733a33323a223739396137626564353161613532363333373831303631643761333534663161223b733a33323a223965656565336166626639343137373265633338633361326138626562306232223b733a33323a223861636636376161666466376438613332393834333136393961653462363065223b733a33323a223638633066613238303561626162353335643261333764343664643964306336223b733a33323a223035383134363062323737386133393666363433326232643962663164343863223b733a33323a223237613235343134313065386263383631346231313939663039353935656232223b733a33323a223635346634623930313835346436383461376265343665323932643561386566223b733a33323a223164643761383664646466663066323138376538656332613963386633356438223b733a33323a226135666633396636363731393236303837343236366162643462363932633939223b733a33323a223065303736613065363262663735646237336230313065316537636561323335223b733a33323a223030393133393336386461636233666263646166363333353336393431636162223b733a33323a223334343830613162646239663939613537626435646630383734326261653164223b733a33323a226331396663316537316635393761363239343238326161653261306639613739223b733a33323a226530383736643363333530353131613030353463393439303363656634353634223b733a33323a223466373737623433356337306531663063363731386465336464346338643466223b733a33323a226230353764366462316235356336666563316438313436643065393136653464223b733a33323a226664386265303134633636656563633036633866343338383830616633386335223b733a33323a223866656161366261353462333133383633643832643133623763356361613461223b733a33323a226134656663656364636332386632303763616331613737383264313934343430223b733a33323a223134346636653566633338386232383865626164633335623938623439353435223b733a33323a226532323332316438636336353539346638643865383935303533363464313766223b733a33323a226532646439653632633238303866303834333035316136306335393364363061223b733a33323a226531626638386436383935633637313363353730303266306462393766636533223b733a33323a226662373835326336383633623332373135313330363364643234643637373735223b733a33323a226238343639623538616537623037653263396430376638376462343037626361223b733a33323a223665306232613366336536353966343966636339646531376336356234626533223b733a33323a223332343031303830636233303034343261356435353834396330313130343461223b733a33323a223761356462386533356637346564333137366161643133613534393064306162223b733a33323a226235306432653037656535363764336338353538656435326336353666653966223b733a33323a226263343466303938333862353030393364646330303466646236336137616637223b7d733a343a2268617368223b733a36353a2262633434663039383338623530303933646463303034666462363361376166372d6235306432653037656535363764336338353538656435326336353666653966223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223161643733663430633531623865343065356633643838643330316135363863223b733a33323a223339623463616134356334313736623763373261633933306431353663356437223b733a33323a223965356531303036343266323130626464303633333063616533333764383463223b733a33323a223933313135376263313561393064623732616165616236326536306238633831223b7d733a343a2268617368223b733a36353a2239333131353762633135613930646237326161656162363265363062386338312d3965356531303036343266323130626464303633333063616533333764383463223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313931323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32303a7b733a33323a223930303736386534303838383764336665326234616531643564383538656330223b733a33323a226536353738643834343230306235663961396238316631643737366632353339223b733a33323a226539653762323965303537356462383835356239303662333537623263633339223b733a33323a223263663034633262326235376531343438626333343232663062653830333361223b733a33323a223065313237356436623133623131323837323830303161636662386164373733223b733a33323a226333393336323461613338373337386231653632616231373537636237356136223b733a33323a223334383130386237343665306334313931356539303965373261353937363430223b733a33323a223937326330356166393932646563383763623661346237663562323962306435223b733a33323a226338363935393266323134636531393033373163626663303435363765346561223b733a33323a223239636564613936386239656333396136303161663134353137626433656536223b733a33323a223536623530666331663239653535373361616662623965373330643637663865223b733a33323a223063643233626230366162663066653266393464623562623963393037373932223b733a33323a223661613939373639623835343837393562613633313063643234366533363738223b733a33323a223830643133383163623835383734613733343736656632383435613563353633223b733a33323a226430353338653438373037306666383634306263333030336131373930666661223b733a33323a226662653636306462653133343666376439646463613038303130353334343333223b733a33323a226136313766663864653266623862643439386535356565636532343039666537223b733a33323a223061663138653564313366316163383166333733383432333230376131666535223b733a33323a223934666338353034616630386335303933623364663365623138363537336363223b733a33323a223834393838666334663635643461663035383136376133333466656135326633223b733a33323a223231616665363438396663616530363330393932376562386561393039363462223b733a33323a223130663031643764343339656365376265306132636639303731376530313835223b733a33323a223832373834393434333463376363326537376466636232303036323732313233223b733a33323a223532656665636438303939353335363532306565323866343131633662613137223b733a33323a226232616564373765366433646532653631323038323939626536343465643736223b733a33323a226539383939393764343036343633383438323062363565333532346232333261223b733a33323a223464376335363135613532373164646335333261326666306662383230656538223b733a33323a223365666136656664373639373839363736333365616461376361313731353839223b733a33323a223432333063616432393936313062633464303035366338303163303737393331223b733a33323a223264313430303665343765663463643339316161653130346430656537313138223b733a33323a226261623635663461356135663564663064623630663338393931623631336236223b733a33323a223061393538343739653633393232353366333331316163306636613438613665223b733a33323a226538326338323265626166646665646232356637316335626237333061383364223b733a33323a223233616265666430626262383930616562303039333930656663326638336131223b733a33323a223165366538313039363636633834376530323566623936376439656265313331223b733a33323a226439333535313737616562396636343734663834363336313864313365633634223b733a33323a226362626365346235336165623631626439383263356634626332353236333930223b733a33323a226464356238636432666333663837383361663966396439363736316364303033223b733a33323a223363303836633334303730326437373131653063656134666664666432393434223b733a33323a223537306462386638346562383530363033383731643635326561316165333565223b7d733a343a2268617368223b733a36353a2235373064623866383465623835303630333837316436353265613161653335652d3363303836633334303730326437373131653063656134666664666432393434223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605196763);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('fkp7ogkckjci1uoi4oq8h5je6n', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343836363637362e3636313132333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22386f303373656a6669646873376473633966356d6f3637357575223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343739353836393b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343837303132393b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343836333032323b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343837303132303b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343835393933313b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223937323131353235393062626530383530656539373665646432613061303337223b733a33323a223135313863343839353238653834303765313966356262633066633863663538223b7d733a343a2268617368223b733a36353a2231353138633438393532386538343037653139663562626330666338636635382d3937323131353235393062626530383530656539373665646432613061303337223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313139323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31313a7b733a33323a226562366632383864343665613731323332346263323965656530616566323235223b733a33323a223463383665383062373137343238653332643632333964366536396266626435223b733a33323a223435363061633764323865376262643266396435346539393036316635626661223b733a33323a223364636666653766333337316135613538303738366438656465646136316565223b733a33323a223037333433313665323136386439663761336564653938353733616436666631223b733a33323a223636353337333531313861313061633537643963663261313761333262326535223b733a33323a226232636239383735636235353038333839353234316438383762613138346665223b733a33323a223434326639383930373233353936316532336638303736333733316439623930223b733a33323a223763363663343138623534656337366338363633303933373635333334333438223b733a33323a223164336531663130656564313365656661333330363638366561316165333264223b733a33323a223839386533313639393139353433333038383837316365333333333563323839223b733a33323a223634323234646439626465393939383564663838626437653935613536383139223b733a33323a223632616561613437363431386130373865643338663534306161396637663032223b733a33323a223536393137663637613632613136353135396430626266623861653830343933223b733a33323a223735313763343130623661623133333438646339366261303632303362306236223b733a33323a226433346563316639333933323132613732623239666137353637363933383734223b733a33323a226634353637633332323836386536613533333464383235393234666634343361223b733a33323a223762363335393761343333643261386439623664383461656437383862323061223b733a33323a226265376263353137633035343932356532653765353364366338666136363561223b733a33323a226638623264643733353062386339393834623332376235343434636666663564223b733a33323a223236616465313337666131346464386230343932346661323734326132323835223b733a33323a223834306639656334396434613335363830303161626432383334613233323661223b7d733a343a2268617368223b733a36353a2238343066396563343964346133353638303031616264323833346132333236612d3236616465313337666131346464386230343932346661323734326132323835223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323837323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33323a7b733a33323a223235306663333532333333366231333136343162653665626238373466623231223b733a33323a226231393437343663326462616636383338383132653761353439346336653565223b733a33323a226235323663333530633761616163316466393132366534363538646466323564223b733a33323a223162393031393633323438646335316434636436393466353639313864313764223b733a33323a226166363830393236613162346437353866623333393333643131333138393531223b733a33323a223764653637646131653764396431336530623364326638623436323266376365223b733a33323a226363643763633762376664313462623063626661653166323431313430626235223b733a33323a226635373033383131333136336136346665346131393139313063643438326431223b733a33323a223938353535376466316264643864623738323934366636313563313932373831223b733a33323a223134393937613931663266663335633764356636623361346562643533376134223b733a33323a223264643536363966366335343339366163363134393338613636393762393030223b733a33323a223438373532306531393831613266386463633934613134326166393133366639223b733a33323a223432303464626135306133373039383363666330383636346138323635343338223b733a33323a226266616166396139383737643661393662343865336638373036663863626662223b733a33323a223064303739353734393964393362653031373730323165393066323035383036223b733a33323a226164316264373838376530656636373264383531616631646130386135313433223b733a33323a223734323239626235336564313738353339356136616531643838343436663161223b733a33323a223835383464623732323831353135303136623731376361303365666165366432223b733a33323a223232653163346365636363393939383333306332323064343033383437323332223b733a33323a226132613236636165323936333636313934333032616639383133356461643834223b733a33323a223538336639666362383863353561633963376234323037343335663266396533223b733a33323a223766333734303061653133386263643535336163663634323032613066313236223b733a33323a226264313738303938306237613736333437373237646335373961333061616433223b733a33323a226462653031326537623533613633663831356165313361656561313834363361223b733a33323a223361376466313263303432393534623332396564323536353561613931353664223b733a33323a223963303933646462396361616137303165363330363965663737363136326637223b733a33323a226535643335383639373832326333666164366232653337323938326266353461223b733a33323a223835626165326435356233613263623435303634366239623162663835363261223b733a33323a226565633261373037353133666133323837353236626532646437366262656235223b733a33323a223461396634636237306564396562313436333563346263663635626334363764223b733a33323a223862396537643264613963623761393331323037613633643137656233356661223b733a33323a223166633834386635633437323463633664313837356164303038646263646230223b733a33323a223130613331333661373866386266643563663761316331323161326234353336223b733a33323a226463393931373639636439303437316230663530383833303136613464383964223b733a33323a223562363737633933353030643834653134396238613163323831306536386630223b733a33323a223562623133346439643065373032366230653032633630373664336263666665223b733a33323a223332656339656633366261366165626430623763303464353861666564363766223b733a33323a223430396661356439613964393635346566313265393536643836636361373933223b733a33323a226462663039333037303631396337303262326234396333336339323132323233223b733a33323a226638666638376130666639633330323032326232616663383334303536663939223b733a33323a226163353261386230306562353265323431613661366534636564303037636138223b733a33323a223839653336303738663632323332613865313963306136353564376230666164223b733a33323a226464303830616534383638343835646632396261346434636332613838346464223b733a33323a223330383264323138343261386336316262376439646461313666356265356564223b733a33323a223936636662646330616239356531663464633563653336333630373166643434223b733a33323a223939383637653638623662613132623363353138323365643466346533616337223b733a33323a226261663332663563666264316139373662666133396334623861353539373037223b733a33323a223832636663393137666136633239373634623037336333373735323837353461223b733a33323a223965626462323730393761633563306662323166323766373064306663386266223b733a33323a223231643836323130343564373336383235616362383438373938366135313139223b733a33323a223261376166383165626364376336303232373064393038656162306565333661223b733a33323a226461343033633933666261653663303762313736376564333233323862656333223b733a33323a223830616332656564363233613831623231373462663964356139626139316332223b733a33323a223634363831633935313165656261623630333835666139636662303033373866223b733a33323a223765316534643437646330336338306664316132616435663964663366383361223b733a33323a226638633030626462623432363636346563623964663332613633343034373961223b733a33323a223735653139343739383132383735366130656462303030336239333462373263223b733a33323a226236376131356532303665653337363563643763396530653433316332623130223b733a33323a223563663333623734633235396234366566346666343165373861636431653532223b733a33323a223230316263393534623930643334333830353162383334633164303261653363223b733a33323a226232623761386364613837313366393861393438316632373565616563656665223b733a33323a223634303030333832383762613766376365343963343235663833613561623439223b733a33323a226239663164626434373036326566333639373762346239316164613434633535223b733a33323a223730386463653132643036353164646239663263393262666262383738353137223b7d733a343a2268617368223b733a36353a2237303864636531326430363531646462396632633932626662623837383531372d6239663164626434373036326566333639373762346239316164613434633535223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343037323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34373a7b733a33323a223738343730333738396465376531363233366466656164656333633937316336223b733a33323a223265366566333633643334613534346132333966306563386665353637636331223b733a33323a226164613432333438643834336531363439623935323432643937616166333864223b733a33323a223334303933396164313639363735616562373235653161663437333562313535223b733a33323a223831353032663839396336353035613762633164376236376430353866373436223b733a33323a226362396466633831616262303263383636626163346138666539303432376133223b733a33323a226133663436303931313436613962666533303634316131366534616334613733223b733a33323a226432653639633034353432663163393135313362653261646331636165343135223b733a33323a223037663233323962666638636662383866653965343361373763646535666431223b733a33323a223064643334613063396538306363366632386664663736303361353738316335223b733a33323a226230633535323130393536353734386363643566326136313663653963353862223b733a33323a226338366133643737373363313534313532343665663138326532623537346638223b733a33323a223262373261313831646431323534353034666466313832306464626663643261223b733a33323a223234333737336464626637376438343231613364326632643233346661656565223b733a33323a223064666531656466333134383937383466333838316534636238623037643230223b733a33323a223261396164643034323032306437333963396463313663343863613530363133223b733a33323a223962663565666237656265666262313163336538346265643164613465623562223b733a33323a223730643139346663333363386436393264383964613439623331663735633330223b733a33323a223939663536303939376530393739353765353261356338353232643762616536223b733a33323a226561666138323161363461303366363864383136636438353531663366366335223b733a33323a223532313837353639356533363534373938353138336634383538626130633135223b733a33323a226433663463386662333739343535326162666333643362666464633234646535223b733a33323a223965396461623733633034303635333961353332303862636262613834353233223b733a33323a226235343961333465633663336362646335383633386434323532333263656366223b733a33323a223831393061323739313839366366396562323532313964306432353934316233223b733a33323a223564303432663563643466636166366230616130653962316435646431616530223b733a33323a223063623435363965383666313432626362396235326235613936326136666530223b733a33323a226233343339613931386531313736313835656235613639346135656237626430223b733a33323a223538623436396136353063636164633861306165623563346632373564353862223b733a33323a226333363833356530613264383764633830656466323235376164343539626636223b733a33323a223236373266386232363832316337636430666630366661666463393865613430223b733a33323a226338376338646564666361313139393364333932613161616338643462626132223b733a33323a223431616431336161386530653265366237393739626163656662646430333031223b733a33323a223736363039666234646262333232626638306336656333323966366533366637223b733a33323a223335313039363939643936336235356534663665613535646635656539363932223b733a33323a226363353965636332323366373464363234663037363938306336376661666634223b733a33323a223336356235393865653636333138383465333937396430336661633238336238223b733a33323a223030656465353461323739653234346161613262633036316462376138313139223b733a33323a223331383463663462343737353765333131366438373365613637333533663634223b733a33323a226462626564656630333761323336313132623234306365663266356237343365223b733a33323a223935643233313031353330636639376164346330393430353230643163653934223b733a33323a223937353739366439653662326263383266313834326430386464333263643961223b733a33323a226430383663383335386662383938356335663266393466666632353730396634223b733a33323a226262363736613962346262366230306438343633383261343831336665373434223b733a33323a223436336361326163326361323736343234396335313434633761303664323037223b733a33323a223766633135333762663331636461356135343631346562656535313638613539223b733a33323a223336633633333661616563646239666433396466343532386264626630366531223b733a33323a223862353635353661333731336263623533663765316161316230313732653362223b733a33323a223738316432653065303366656463613261626531366532613835356430346436223b733a33323a226337616333633734623965373333353637306536613866366438323461366563223b733a33323a226334376234363939336232386130623561313762346432623739386463396661223b733a33323a223764393936616662366536383135363430356634663761383233663962333833223b733a33323a223238373936376330306262393332636337343734653964656561343064623566223b733a33323a223366343664633937336231626162633239343965393436393635653264336433223b733a33323a226266393763323561623764363361396536383862326362646432373038666332223b733a33323a226333613638363464613139656165373733623333356232656664323262343664223b733a33323a223530306561393631653439346535373162343031356166656266353462616434223b733a33323a223230633534663565626461393766633637616634613930333666306466313064223b733a33323a223534343336383937303632336262616637643064366338646639393665366364223b733a33323a223436396137376532366366633863346131333833383730393036653765623439223b733a33323a223061623964306164646365643736323739373034363263303530373531313835223b733a33323a223066383034383539636337356632376337623364396531383361303036346665223b733a33323a223862383835626262623033326638393962376238313035313434643735386130223b733a33323a223432396462666664386462363339363463663939363039393866353764316335223b733a33323a226262656233316666353534643262353766613966303366626435633464356161223b733a33323a226134616235393737336665326532313639326361656361343333633932656562223b733a33323a226365323337366630346262316435313939343333383338643261376362626439223b733a33323a226631646265346632613863313631663536333335653339356432633238373338223b733a33323a223965303831653534303131303930636435313134326664636163653932356262223b733a33323a223736653564333064333261653630633864366261346131633235346565326433223b733a33323a223339383936633063653365623962303638326263663761663239376636373865223b733a33323a226663636632326136643235383233316333303664653862343362316632336333223b733a33323a226564303037326138353433623437313331306638306565376634343436663838223b733a33323a223563376435633832656133326636663932616462323836623335633833626464223b733a33323a226166373339343234353266333431313162376134646230323032393636306239223b733a33323a223234386435393439666331383462643864663438396631333037356133616266223b733a33323a223964303133346333393662613439303030633533613765643664653832323561223b733a33323a226665343466616164343534383932613239396462323939313135613164316234223b733a33323a223533306331306661316231343761353935313133366539333765313532356566223b733a33323a226464313739636131363435326165323136663632303235323930333463393538223b733a33323a223064373731393631636434363230313136643638646634643365323638326637223b733a33323a223839346565626633633730646361333239363366313764316131363539366566223b733a33323a223934343233646264663664313036313062626539393035383336623537343263223b733a33323a223030303438306334643131373362396137323538353930343461383339633239223b733a33323a223634636133386334303930313738396665356533373038366134396536356666223b733a33323a223561643063393131323863353031333833383735616161643531326464303261223b733a33323a226230616463383662626239373961343562666664633365336463666162343034223b733a33323a223437346434396661666330336133386634393530656134336638326437356265223b733a33323a223332616639356666633062646231343563323339333236616436663334656239223b733a33323a226636396337333230336262366264653238386132346561626239303634393839223b733a33323a226636356365356539383838323135373036386466376334386532346262323735223b733a33323a223531653266323361663834646330346430636536343632653464336664323838223b733a33323a223235626662323038633861643631356334343761373961643235353466366131223b733a33323a226635396633643532346265356264383161356362373035663162623332306465223b7d733a343a2268617368223b733a36353a2266353966336435323462653562643831613563623730356631626233323064652d3235626662323038633861643631356334343761373961643235353466366131223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223932333762626165623333383531386632653863653166396665666339366230223b733a33323a223439623764643663303937383039346661626163396532373037633535333437223b733a33323a223931346133306634396234333564663236633434306465353331343838323131223b733a33323a226130323831303363373363613436396634633030386664643964636533666263223b7d733a343a2268617368223b733a36353a2261303238313033633733636134363966346330303866646439646365336662632d3931346133306634396234333564663236633434306465353331343838323131223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604866676),
('j7gtuh5c02vvmecbjgaqme7jlk', 0x5f5f4c616d696e61737c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353030353930322e3136363232383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22756f333770686d63333666667071646130616b32326a676f6370223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353030333835313b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353030353331353b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353030393037393b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353030373330353b7d733a35393a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353030383330373b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353030383138353b7d7d72656469726563745f75726c7c733a33343a22687474703a2f2f6c6f63616c686f73742f6c64772f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226562326632646639363039303564366636653464663762653161326337356433223b733a33323a226433316437623339383438373738653235376162616466383930656463343663223b7d733a343a2268617368223b733a36353a2264333164376233393834383737386532353761626164663839306564633436632d6562326632646639363039303564366636653464663762653161326337356433223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223939636433396661316331376630333365653465346265383733333732323736223b733a33323a223330386561623930346330396263326437393833643535643966306535633632223b7d733a343a2268617368223b733a36353a2233303865616239303463303962633264373938336435356439663065356336322d3939636433396661316331376630333365653465346265383733333732323736223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223062336565333935303238643434386166616136393532626331363130653637223b733a33323a223832363335663261306639386638363362303638636165303039333532373964223b733a33323a223437313366333831623035336638386561656436396132313837646264623036223b733a33323a226366303632626465636435353939626236666134366534623363333834313038223b733a33323a223534613439643837396335306535303838333330653532663835353037396266223b733a33323a223032623438636336336439306535396530316534646331663036326465333466223b733a33323a223333376530306635373035646533353438343631646465336433613863353132223b733a33323a226562373762663266396539333832613438653030333063663631633533623363223b7d733a343a2268617368223b733a36353a2265623737626632663965393338326134386530303330636636316335336233632d3333376530306635373035646533353438343631646465336433613863353132223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226134616565306639643165386661343132613530613262333833623233633330223b733a33323a223430653632656363643236336330376566343535393934326162343563323663223b7d733a343a2268617368223b733a36353a2234306536326563636432363363303765663435353939343261623435633236632d6134616565306639643165386661343132613530613262333833623233633330223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223231313365663330383535613765316662663730376461393834306162373865223b733a33323a226137323832386463616666323363393131353366356332363362323531623637223b733a33323a223033366566393832396439383561623363646436363431643233643734306466223b733a33323a223066623763626261323735383364333664653936653962313866643231323638223b733a33323a226562643338326564616364363432323337303137643238383138393864366661223b733a33323a223635306231383431323234383362646661663539323966306630613564303738223b7d733a343a2268617368223b733a36353a2236353062313834313232343833626466616635393239663066306135643037382d6562643338326564616364363432323337303137643238383138393864366661223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226133373131616334386363386432633463383463386365346136653536613762223b733a33323a226265386636613434386465383835366261386266333636613938633234623931223b7d733a343a2268617368223b733a36353a2262653866366134343864653838353662613862663336366139386332346239312d6133373131616334386363386432633463383463386365346136653536613762223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605005902),
('pf6od3oq2nbss3k3b3ioai5oa2', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353031303739372e31363133363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2232377435306431336a65627162746f75393831316d6d6a333162223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353030393530393b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353031343339373b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353031343339333b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223230653532306632366162666139663364663731366633363230326461356631223b733a33323a226362303761313865633330393966336133303031663362303133343234653836223b733a33323a226238323931376335613363633730636632633232633962613561636439393530223b733a33323a226334343033643836656466313363613839313137326339653963393937366233223b7d733a343a2268617368223b733a36353a2263343430336438366564663133636138393131373263396539633939373662332d6238323931376335613363633730636632633232633962613561636439393530223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a226363643663373632653162326437626165616230653035326535326462636437223b733a33323a223537386432663333626638303266383537366238313832636562663235366333223b733a33323a226637643365356430313636626439383161663434646432636664326331383464223b733a33323a223261613666653734303032383762623365383766313166336566623230666232223b733a33323a223635313534353730366434323763383138343838386332363635656238643231223b733a33323a223238346363336365666466393134386439313734633566646633666163653330223b733a33323a226233346362393162343432623761663563373863633538393631386432636132223b733a33323a223638343031656265666433343066616366663861663665386533303439363332223b733a33323a223633373638313832303832373866346634323062333262393130653432393230223b733a33323a226262306335326530343463353239666364373339363964643766306666663135223b733a33323a226337343561363136343236666331656166343535353031626335633439383464223b733a33323a223135646161343730613062353838623261623732626166646465356636636363223b733a33323a226335313262613363386231383162326137643535336532313031376236623165223b733a33323a223266386236303931646164653166666331663961363261663737393766306230223b7d733a343a2268617368223b733a36353a2232663862363039316461646531666663316639613632616637373937663062302d6335313262613363386231383162326137643535336532313031376236623165223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226165363733666332613837333363383431633965303639636261306636336639223b733a33323a223263393138653133333332323734313436383037303436386231386534396233223b733a33323a226663636464393134393539643764383361626265303366663261356261346538223b733a33323a223962386334386264356163376638386535353138613765396332326565353563223b7d733a343a2268617368223b733a36353a2239623863343862643561633766383865353531386137653963323265653535632d6663636464393134393539643764383361626265303366663261356261346538223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605010797);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"thierry.wen@laposte.net\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"Test\"'),
('locale', '\"fr\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"UTC\"'),
('version', '\"3.0.1\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci,
  `navigation` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `assign_new_items` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  KEY `IDX_694309E47E3C61F9` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`id`, `homepage_id`, `owner_id`, `slug`, `theme`, `title`, `summary`, `navigation`, `item_pool`, `created`, `modified`, `is_public`, `assign_new_items`) VALUES
(1, NULL, 1, 'trombino', 'default', 'Trombino', NULL, '[{\"type\":\"browse\",\"data\":{\"label\":\"Parcourir\",\"query\":\"\"},\"links\":[]}]', '[]', '2020-11-02 10:47:20', '2020-11-02 10:47:20', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

DROP TABLE IF EXISTS `site_block_attachment`;
CREATE TABLE IF NOT EXISTS `site_block_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_236473FEE9ED820C` (`block_id`),
  KEY `IDX_236473FE126F525E` (`item_id`),
  KEY `IDX_236473FEEA9FDD75` (`media_id`),
  KEY `block_position` (`block_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

DROP TABLE IF EXISTS `site_item_set`;
CREATE TABLE IF NOT EXISTS `site_item_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  KEY `IDX_D4CE134F6BD1646` (`site_id`),
  KEY `IDX_D4CE134960278D7` (`item_set_id`),
  KEY `position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

DROP TABLE IF EXISTS `site_page`;
CREATE TABLE IF NOT EXISTS `site_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  KEY `IDX_2F900BD9F6BD1646` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page`
--

INSERT INTO `site_page` (`id`, `site_id`, `slug`, `title`, `is_public`, `created`, `modified`) VALUES
(1, 1, 'welcome', 'Bienvenue', 1, '2020-11-02 10:47:20', '2020-11-02 10:47:20');

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

DROP TABLE IF EXISTS `site_page_block`;
CREATE TABLE IF NOT EXISTS `site_page_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C593E731C4663E4` (`page_id`),
  KEY `page_position` (`page_id`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page_block`
--

INSERT INTO `site_page_block` (`id`, `page_id`, `layout`, `data`, `position`) VALUES
(1, 1, 'html', '{\"html\":\"Bienvenue sur votre nouveau site. Ceci est une page d\\u2019exemple.\"}', 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

DROP TABLE IF EXISTS `site_permission`;
CREATE TABLE IF NOT EXISTS `site_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  KEY `IDX_C0401D6FA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_permission`
--

INSERT INTO `site_permission` (`id`, `site_id`, `user_id`, `role`) VALUES
(1, 1, 1, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

DROP TABLE IF EXISTS `site_setting`;
CREATE TABLE IF NOT EXISTS `site_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`,`site_id`),
  KEY `IDX_64D05A53F6BD1646` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `Test1` int(11) NOT NULL,
  `Test2` int(11) NOT NULL,
  `Test3` int(11) NOT NULL,
  `Test4` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'thierry.wen@laposte.net', 'Yrrieth', '2020-11-02 10:26:21', '2020-11-02 10:26:21', '$2y$10$cqtc.vcT.i6dpwKHhiD/ke1.bkV8kQa/9Sn/Z..Rvi3.PEBFdhysa', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

DROP TABLE IF EXISTS `user_setting`;
CREATE TABLE IF NOT EXISTS `user_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`,`user_id`),
  KEY `IDX_C779A692A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_setting`
--

INSERT INTO `user_setting` (`id`, `user_id`, `value`) VALUES
('csv_import_automap_check_names_alone', 1, 'false'),
('csv_import_delimiter', 1, '\",\"'),
('csv_import_enclosure', 1, '\"\\\"\"'),
('csv_import_global_language', 1, '\"\"'),
('csv_import_identifier_property', 1, '\"\"'),
('csv_import_multivalue_separator', 1, '\",\"'),
('csv_import_rows_by_batch', 1, '20');

-- --------------------------------------------------------

--
-- Structure de la table `value`
--

DROP TABLE IF EXISTS `value`;
CREATE TABLE IF NOT EXISTS `value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `uri` longtext COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1D77583489329D25` (`resource_id`),
  KEY `IDX_1D775834549213EC` (`property_id`),
  KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  KEY `value` (`value`(190)),
  KEY `uri` (`uri`(190))
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(1, 1, 185, NULL, 'literal', '', 'WEN', NULL, 1),
(2, 1, 186, NULL, 'literal', '', 'Thierry', NULL, 1),
(3, 1, 188, NULL, 'literal', '', '16701702', NULL, 1),
(4, 1, 187, NULL, 'literal', '', 'thierry.wen@laposte.net', NULL, 1),
(5, 1, 201, NULL, 'literal', '', 'M2 THYP', NULL, 1),
(6, 1, 189, NULL, 'literal', '', 'Yrrieth', NULL, 1),
(79, 1, 194, NULL, 'literal', '', 'C', NULL, 1),
(80, 1, 194, NULL, 'literal', '', 'Java', NULL, 1),
(81, 18, 186, NULL, 'literal', '', 'Khoriushina', NULL, 1),
(82, 18, 185, NULL, 'literal', '', 'Arseniia', NULL, 1),
(83, 18, 188, NULL, 'literal', '', '20009013', NULL, 1),
(84, 18, 187, NULL, 'literal', '', 'asya1isa@yahoo.com', NULL, 1),
(85, 18, 201, NULL, 'literal', '', 'M1 CEN', NULL, 1),
(86, 18, 189, NULL, 'literal', '', 'asyalisa', NULL, 1),
(87, 18, 193, NULL, 'literal', '', 'Français, anglais', NULL, 1),
(88, 1, 194, NULL, 'literal', '', 'C#', NULL, 1),
(89, 18, 195, NULL, 'literal', '', 'Photoshop', NULL, 1),
(90, 18, 199, NULL, 'literal', '', 'Intragram, Youtube', NULL, 1),
(91, 18, 1, NULL, 'literal', '', 'Arseniia', NULL, 1),
(92, 1, 194, NULL, 'literal', '', 'HTML', NULL, 1),
(93, 19, 185, NULL, 'literal', '', 'Elisa', NULL, 1),
(94, 19, 186, NULL, 'literal', '', 'DILLMAN', NULL, 1),
(95, 19, 188, NULL, 'literal', '', '18904153', NULL, 1),
(96, 19, 187, NULL, 'literal', '', 'dillmann.elisa@gmail.com\n', NULL, 1),
(97, 19, 192, NULL, 'literal', '', 'Prestashop', NULL, 1),
(98, 19, 189, NULL, 'literal', '', 'elisadlmn', NULL, 1),
(99, 19, 193, NULL, 'literal', '', 'Français', NULL, 1),
(100, 19, 193, NULL, 'literal', '', 'Anglais', NULL, 1),
(101, 19, 195, NULL, 'literal', '', 'Photoshop', NULL, 1),
(102, 19, 199, NULL, 'literal', '', 'Instagram', NULL, 1),
(103, 19, 199, NULL, 'literal', '', 'Linkedin', NULL, 1),
(104, 19, 199, NULL, 'literal', '', 'Youtube', NULL, 1),
(105, 19, 1, NULL, 'literal', '', 'Elisa', NULL, 1),
(106, 20, 186, NULL, 'literal', '', 'Bouchiha', NULL, 1),
(107, 20, 185, NULL, 'literal', '', 'Abdelrahim', NULL, 1),
(108, 20, 188, NULL, 'literal', '', '15608220', NULL, 1),
(109, 20, 187, NULL, 'literal', '', 'a.bouchiha@outlook.fr', NULL, 1),
(110, 20, 201, NULL, 'literal', '', 'M2 THYP', NULL, 1),
(111, 20, 192, NULL, 'literal', '', 'Wordpress', NULL, 1),
(112, 20, 189, NULL, 'literal', '', 'anas0dev', NULL, 1),
(113, 20, 194, NULL, 'literal', '', 'C', NULL, 1),
(114, 20, 194, NULL, 'literal', '', 'C++', NULL, 1),
(115, 20, 194, NULL, 'literal', '', 'PHP', NULL, 1),
(116, 20, 194, NULL, 'literal', '', 'Javascript', NULL, 1),
(117, 20, 194, NULL, 'literal', '', 'Python', NULL, 1),
(118, 20, 194, NULL, 'literal', '', 'HTML', NULL, 1),
(119, 20, 194, NULL, 'literal', '', 'CSS', NULL, 1),
(120, 20, 193, NULL, 'literal', '', 'Français', NULL, 1),
(121, 20, 193, NULL, 'literal', '', 'Arabe', NULL, 1),
(122, 20, 195, NULL, 'literal', '', 'Gimp', NULL, 1),
(123, 20, 199, NULL, 'literal', '', 'Instagram', NULL, 1),
(124, 20, 199, NULL, 'literal', '', 'Facebook', NULL, 1),
(125, 20, 199, NULL, 'literal', '', 'Whatsapp', NULL, 1),
(126, 20, 1, NULL, 'literal', '', 'Abdelrahim', NULL, 1),
(127, 1, 194, NULL, 'literal', '', 'CSS', NULL, 1),
(128, 1, 194, NULL, 'literal', '', 'Javascript', NULL, 1),
(129, 1, 193, NULL, 'literal', '', 'Français', NULL, 1),
(130, 1, 195, NULL, 'literal', '', 'Photoshop', NULL, 1),
(131, 1, 199, NULL, 'literal', '', 'Discord', NULL, 1),
(132, 21, 185, NULL, 'literal', '', 'Bastien', NULL, 1),
(133, 21, 186, NULL, 'literal', '', 'Pelmard', NULL, 1),
(134, 21, 188, NULL, 'literal', '', '16702682', NULL, 1),
(135, 21, 187, NULL, 'literal', '', 'bastien.pelmard@gmail.com', NULL, 1),
(136, 21, 201, NULL, 'literal', '', 'M2 THYP', NULL, 1),
(137, 21, 192, NULL, 'literal', '', 'Wordpress', NULL, 1),
(138, 21, 192, NULL, 'literal', '', 'Joomla', NULL, 1),
(139, 21, 190, NULL, 'literal', '', '4G', NULL, 1),
(140, 21, 190, NULL, 'literal', '', 'WIFI', NULL, 1),
(141, 21, 190, NULL, 'literal', '', 'Ethernet', NULL, 1),
(142, 21, 189, NULL, 'literal', '', 'Baste95', NULL, 1),
(143, 21, 194, NULL, 'literal', '', 'C', NULL, 1),
(144, 21, 194, NULL, 'literal', '', 'C++', NULL, 1),
(145, 21, 194, NULL, 'literal', '', 'Javascript', NULL, 1),
(146, 21, 194, NULL, 'literal', '', 'PHP', NULL, 1),
(147, 21, 194, NULL, 'literal', '', 'HTML', NULL, 1),
(148, 21, 194, NULL, 'literal', '', 'CSS', NULL, 1),
(149, 21, 193, NULL, 'literal', '', 'Français', NULL, 1),
(150, 21, 193, NULL, 'literal', '', 'Anglais', NULL, 1),
(151, 21, 193, NULL, 'literal', '', 'Espagnol', NULL, 1),
(152, 21, 195, NULL, 'literal', '', 'Unity', NULL, 1),
(153, 21, 199, NULL, 'literal', '', 'Instagram', NULL, 1),
(154, 21, 199, NULL, 'literal', '', 'Youtube', NULL, 1),
(155, 21, 199, NULL, 'literal', '', 'Whatsapp', NULL, 1),
(156, 22, 185, NULL, 'literal', '', 'Naushad-Ali', NULL, 1),
(157, 22, 186, NULL, 'literal', '', 'SOOKUN', NULL, 1),
(158, 22, 188, NULL, 'literal', '', '15602165', NULL, 1),
(159, 22, 187, NULL, 'literal', '', 'nausha@hotmail.fr', NULL, 1),
(160, 22, 201, NULL, 'literal', '', 'M2 THYP', NULL, 1),
(161, 22, 190, NULL, 'literal', '', '4G', NULL, 1),
(162, 22, 190, NULL, 'literal', '', 'WIFI', NULL, 1),
(163, 22, 190, NULL, 'literal', '', 'Ethernet', NULL, 1),
(164, 22, 189, NULL, 'literal', '', 'N-Ali', NULL, 1),
(165, 22, 193, NULL, 'literal', '', 'Français', NULL, 1),
(166, 22, 193, NULL, 'literal', '', 'Anglais', NULL, 1),
(167, 22, 193, NULL, 'literal', '', 'Japonais', NULL, 1),
(168, 22, 193, NULL, 'literal', '', 'Espagnol', NULL, 1),
(169, 22, 199, NULL, 'literal', '', 'Linkedin', NULL, 1),
(170, 22, 199, NULL, 'literal', '', 'Github', NULL, 1),
(171, 22, 199, NULL, 'literal', '', 'Facebook', NULL, 1),
(172, 22, 199, NULL, 'literal', '', 'Whatsapp', NULL, 1),
(173, 22, 199, NULL, 'literal', '', 'Instagram', NULL, 1),
(174, 22, 199, NULL, 'literal', '', 'Youtube', NULL, 1),
(175, 22, 1, NULL, 'literal', '', 'Naushad-Ali', NULL, 1),
(176, 21, 1, NULL, 'literal', '', 'Bastien', NULL, 1),
(177, 1, 199, NULL, 'literal', '', 'Youtube', NULL, 1),
(178, 1, 1, NULL, 'literal', '', 'Thierry', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

DROP TABLE IF EXISTS `vocabulary`;
CREATE TABLE IF NOT EXISTS `vocabulary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  KEY `IDX_9099C97B7E3C61F9` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(5, 1, 'https://duraspace.org/wp-content/uploads/2020/02/vivo.owl#Student', 'drsp', 'duraspace', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

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
-- Contraintes pour la table `csvimport_entity`
--
ALTER TABLE `csvimport_entity`
  ADD CONSTRAINT `FK_84D382F4BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

--
-- Contraintes pour la table `csvimport_import`
--
ALTER TABLE `csvimport_import`
  ADD CONSTRAINT `FK_17B508814C276F75` FOREIGN KEY (`undo_job_id`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `FK_17B50881BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

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
