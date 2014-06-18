-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Dim 09 Septembre 2012 à 11:27
-- Version du serveur: 5.5.9
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `zf2book`
--

-- --------------------------------------------------------

--
-- Structure de la table `developer`
--

CREATE TABLE `developer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_php_5_certified` tinyint(4) NOT NULL,
  `is_php_53_certified` tinyint(4) NOT NULL,
  `is_php_zf1_certified` tinyint(4) NOT NULL,
  `viadeo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8 NOT NULL,
  `twitter` varchar(255) CHARACTER SET utf8 NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Contenu de la table `developer`
--

INSERT INTO `developer` VALUES(1, 'Blanchon Vincent', NULL, 0, 1, 1, 'http://fr.viadeo.com/fr/profile/vincent.blanchon2', 'http://fr.linkedin.com/pub/blanchon-vincent/11/561/16', 'http://twitter.com/#!/blanchonvincent', 1);
INSERT INTO `developer` VALUES(2, 'Mailfert Christophe', NULL, 0, 0, 0, 'http://fr.viadeo.com/fr/profile/christophe.mailfert', 'htpp://fr.linkedin.com/pub/christophe-mailfert/b/741/315', '', 1);
INSERT INTO `developer` VALUES(3, 'Ahmed Amir', NULL, 0, 0, 0, 'http://fr.viadeo.com/fr/profile/aamir', '', '', 1);
INSERT INTO `developer` VALUES(4, 'Matmati Safouan ', NULL, 0, 0, 0, 'http://fr.viadeo.com/fr/profile/safouan.matmati', '', '', 1);
INSERT INTO `developer` VALUES(5, 'Nicolas Bochenko', NULL, 0, 0, 1, '', 'http://www.linkedin.com/pub/nicolas-bochenko/46/50b/ab8/en', '', 1);
INSERT INTO `developer` VALUES(6, 'Fr&eacute;d&eacute;ric Cywier', NULL, 0, 0, 1, '', 'http://www.linkedin.com/pub/frédéric-cywier/39/63/720', '', 1);
INSERT INTO `developer` VALUES(7, 'blanchon', 'blanchon.vincent@gmail.fr', 1, 0, 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `facebook`
--

CREATE TABLE `facebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Contenu de la table `facebook`
--

INSERT INTO `facebook` VALUES(1, 'Zend Framework', 'Page sur le Zend Framework : tutoriel et discussion multi-langues.', 'https://www.facebook.com/pages/Zend-Framework/51449910140');
INSERT INTO `facebook` VALUES(2, 'Zend Framework', 'Page de discussion sur le Zend Framework', 'https://www.facebook.com/pages/Zend-Framework/45921481506');
INSERT INTO `facebook` VALUES(3, 'Zend Framework', 'Page de developpez.com sur le Zend Framework', 'https://www.facebook.com/pages/Zend-Framework/119323318083011');
INSERT INTO `facebook` VALUES(4, 'Zend Framework Forum', 'Forum et liens allemand sur le Zend Framework', 'https://www.facebook.com/zend.framework.forum');
INSERT INTO `facebook` VALUES(5, 'Zend Framework', 'Page d''article sur le Zend Framework', 'https://www.facebook.com/pages/Zend-Framework/113604818653151');
INSERT INTO `facebook` VALUES(6, 'PHP and Zend Framework', 'Article, tutoriel et discussions autour du Zend Framework', 'https://www.facebook.com/myzendpage');
INSERT INTO `facebook` VALUES(7, 'Zend Framework', 'Videos et tutoriel sur le Zend Framework', 'https://www.facebook.com/pages/Zend-Framework/277050802327472');
INSERT INTO `facebook` VALUES(8, 'PHP Zend Framework', 'Discussions autour du Zend Framework', 'https://www.facebook.com/pages/PHP-Zend-Framework/221157804605799');
INSERT INTO `facebook` VALUES(9, 'Zend Framework tutorial', 'Tutotiels et r&eacute;ponses autour de l''environnement du Zend Framework', 'https://www.facebook.com/pages/Zend-Framework-tutorial/320155474685863');

-- --------------------------------------------------------

--
-- Structure de la table `language`
--

CREATE TABLE `language` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_bin NOT NULL,
  `libelle` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Contenu de la table `language`
--

INSERT INTO `language` VALUES(1, 'fr', 'Français');
INSERT INTO `language` VALUES(2, 'en', 'Anglais');

-- --------------------------------------------------------

--
-- Structure de la table `slideshare`
--

CREATE TABLE `slideshare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `thumbnail` varchar(255) CHARACTER SET utf8 NOT NULL,
  `language` smallint(6) NOT NULL,
  `moderate` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0: refusé, 1:valid',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  KEY `language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Contenu de la table `slideshare`
--

INSERT INTO `slideshare` VALUES(1, 'Zend Framework Workshop', 'Slides from Dutch PHP Conference 2008 full-day workshop covering Zend Framework MVC applications', '20080613zendframeworkworkshop-1213725963433006-9', '2008-06-17 11:01:45', 'http://cdn.slidesharecdn.com/20080613zendframeworkworkshop-1213725963433006-9-thumbnail-2', 2, 1);
INSERT INTO `slideshare` VALUES(2, 'Getting Started with Zend Framework', 'Introduction to Zend Framework and developing your first application with Zend Framework&rsquo;s MVC.', '20080916gettingstarted-1222397899827782-9', '2008-09-25 20:01:28', 'http://cdn.slidesharecdn.com/20080916gettingstarted-1222397899827782-9-thumbnail-2', 2, 1);
INSERT INTO `slideshare` VALUES(3, 'Zend_Form', 'Tutorial session on Zend_Form.', '20080916zendform-1222397826431585-8', '2008-09-25 20:01:28', 'http://cdn.slidesharecdn.com/20080916zendform-1222397826431585-8-thumbnail-2', 2, 1);
INSERT INTO `slideshare` VALUES(4, 'Zend Framework 2.0 Patterns Tutorial', 'Tutorial for PHP Community Conference, 2011 edition, covering new components and patterns found within Zend Framework 2.0 development.', '2011-04-21-zf2patterns-110513104015-phpapp01', '2011-05-13 10:40:11', 'http://cdn.slidesharecdn.com/2011-04-21-zf2patterns-110513104015-phpapp01-thumbnail-2', 2, 1);
INSERT INTO `slideshare` VALUES(5, 'Zend Framework 1 + Doctrine 2', 'Ralph Schindler (of Zend Framework) and Jon Wage (of Doctrine) presented these slides for a webinar hosted by zend.com (webinar available online).\n\nLinks are contained within the slides to the demo application that was also used during the webinar.', 'zendframework1doctrine2-101215100803-phpapp02', '2010-12-15 10:07:50', 'http://cdn.slidesharecdn.com/zendframework1doctrine2-101215100803-phpapp02-thumbnail-2', 2, 1);
INSERT INTO `slideshare` VALUES(6, 'Best Practices with Zend Framework - Matthew Weier O&rsquo;Phinney', '', 'dpc2008matthewweierophinneybestpractices-1213862722327995-8', '2008-06-19 01:19:19', 'http://cdn.slidesharecdn.com/dpc2008matthewweierophinneybestpractices-1213862722327995-8-thumbnail-2', 2, 1);
INSERT INTO `slideshare` VALUES(7, 'A PHP Christmas Miracle - 3 Frameworks, 1 app', 'In this presentation, we walk take a flat PHP4-style application and gently migrate it into our own &quot;framework&quot;, that uses components from Symfony2, Lithium, Zend Framework and a library called Pimple. By the end, you&rsquo;ll see how any ugly a', 'php-xmas-miracle-code-works-111203111543-phpapp01', '2011-12-03 11:15:35', 'http://cdn.slidesharecdn.com/php-xmas-miracle-code-works-111203111543-phpapp01-thumbnail-2', 2, 1);
INSERT INTO `slideshare` VALUES(8, 'Content Indexing with Zend_Search_Lucene', 'Zend_Search_Lucene is the first PHP port of the Lucene search and indexing library. A component of the Zend Framework, it allows you to easily index and search full-text indexes in better performance than many other solutions.\n\nThe slides are a technical ', 'content-indexing-with-zendsearchlucene-1192548514977438-2', '2007-10-16 08:28:35', 'http://cdn.slidesharecdn.com/content-indexing-with-zendsearchlucene-1192548514977438-2-thumbnail-2', 2, 1);
INSERT INTO `slideshare` VALUES(9, 'Facebook Development with Zend Framework', 'ZendCon 2008 presentation on Facebook Development using Zend Framework', 'facebookdevwithzf-1222193564359068-9', '2008-09-23 11:11:33', 'http://cdn.slidesharecdn.com/facebookdevwithzf-1222193564359068-9-thumbnail-2', 2, 1);
INSERT INTO `slideshare` VALUES(10, 'Creating Web Services with Zend Framework - Matthew Turland', '', 'presentation-1221796056710608-9', '2008-09-18 20:46:46', 'http://cdn.slidesharecdn.com/presentation-1221796056710608-9-thumbnail-2', 2, 1);
INSERT INTO `slideshare` VALUES(11, 'Integrating symfony and Zend Framework (PHPBarcelona 2009)', 'The Integrating symfony and Zend Framework presentation I did at PHPBarcelona 2009', 'integrating-sf-zf-barcelona-091030123516-phpapp01', '2009-10-30 12:34:25', 'http://cdn.slidesharecdn.com/integrating-sf-zf-barcelona-091030123516-phpapp01-thumbnail-2', 2, 1);
INSERT INTO `slideshare` VALUES(12, 'Zend Framework Form: Mastering Decorators', 'Zend Framework Form, Subforms, DisplayGroups and Decorators', 'zfforms-090824090259-phpapp02', '2009-08-24 09:02:52', 'http://cdn.slidesharecdn.com/zfforms-090824090259-phpapp02-thumbnail-2', 2, 1);
INSERT INTO `slideshare` VALUES(13, 'Introduction to ZendX jQuery', '', 'zendxjquery-100323185914-phpapp02', '2010-03-23 18:57:38', 'http://cdn.slidesharecdn.com/zendxjquery-100323185914-phpapp02-thumbnail-2', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tutoriel`
--

CREATE TABLE `tutoriel` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(512) COLLATE utf8_bin NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `img` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `tags` varchar(80) COLLATE utf8_bin NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_crawled` timestamp NULL DEFAULT NULL,
  `language` smallint(6) NOT NULL,
  `moderate` tinyint(4) NOT NULL COMMENT '0: en attente, 1:invalid, 2:valid',
  `http_code` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=16 ;

--
-- Contenu de la table `tutoriel`
--

INSERT INTO `tutoriel` VALUES(1, 'http://akrabat.com/zend-framework-2-tutorial/', 'Getting started with Zend Framework 2 (beta)', 0x42656175636f75702064652064266561637574653b76656c6f7070657572732073652064656d616e64656e7420636f6d6d656e7420636f6e74726962756572206175205a656e64204672616d65776f726b2e205327696c20657869737465206465206e6f6d62726575736573206169646573206166696e2064276578706c6971756572206c657320266561637574653b7461706573206465206c612070617274696369706174696f6e2c20696c206e2765786973746520706173206427656e64726f6974206f267567726176653b20746f75746573206c657320696e666f726d6174696f6e7320736f6e742063656e7472616c6973266561637574653b657320657420636c61697265732e204166696e2064272665636972633b747265206c6520706c757320636f6d706c657420706f737369626c652c206e6f757320766572726f6e7320636f6d6d656e7420737569767265206c6520706c616e6e696e672064652064266561637574653b76656c6f7070656d656e74206475206672616d65776f726b2c207361766f6972206f267567726176653b2074726f75766572206c6520636f64652064652064266561637574653b76656c6f7070656d656e742071756920266561637574653b766f6c75652061752066757220657420266167726176653b206d657375726520646573206368616e67656d656e74732065666665637475266561637574653b7320706172206c65732064266561637574653b76656c6f7070657572732c20636f6d6d656e74207265706f727465722065742073756976726520756e20626f67756520717565206c276f6e20612072656e636f6e7472266561637574653b20737572206c65206672616d65776f726b20657420656e66696e20636f6d6d656e742070726f706f73657220756e6520636f7272656374696f6e20646520626f677565206f75206170706f7274657220756e6520666f6e6374696f6e6e616c6974266561637574653b2e, 'akrabat.com.png', 'zf2, introduction', '2012-06-10 18:04:42', NULL, 2, 2, 200);
INSERT INTO `tutoriel` VALUES(2, 'http://www.throrinstudio.com/dev/zf/introduction-a-zend-framework-2-0/', 'Introduction &agrave; Zend Framework 2.0', 0x496e74726f64756374696f6e20266167726176653b205a656e64204672616d65776f726b20322e30, 'throrinstudio.com.png', 'zf2, introduction', '2012-04-22 21:11:19', NULL, 1, 2, 200);
INSERT INTO `tutoriel` VALUES(3, 'http://mwop.net/blog/267-Getting-started-writing-ZF2-modules.html', 'Getting started writing ZF2 modules', 0x224d6f64756c61723f205768617427732074686174206d65616e3f2220466f72205a46322c20226d6f64756c617222206d65616e73207468617420796f7572206170706c69636174696f6e206973206275696c74206f66206f6e65206f72206d6f726520226d6f64756c6573222e20496e2061206c657869636f6e206167726565642075706f6e20647572696e67206f757220495243206d656574696e67732c2061206d6f64756c65206973206120636f6c6c656374696f6e206f6620636f646520616e64206f746865722066696c6573207468617420736f6c76657320612073706563696669632061746f6d69632070726f626c656d206f6620746865206170706c69636174696f6e206f7220776562736974652e, 'mwop.net.png', 'zf2, modules', '2012-04-22 21:11:19', '2012-04-22 18:07:47', 2, 2, 200);
INSERT INTO `tutoriel` VALUES(4, 'http://mwop.net/blog/266-Using-the-ZF2-EventManager.html', 'Using the ZF2 EventManager', 0x4920746f6f6b2074686520726573656172636820492064696420666f7220746861742061727469636c652c20616e64206170706c69656420697420746f207768617420776173207468656e206120225369676e616c536c6f742220696d706c656d656e746174696f6e2077697468696e205a656e64204672616d65776f726b20322c20616e64207265666163746f726564207468617420776f726b20696e746f2061206e657720224576656e744d616e616765722220636f6d706f6e656e742e20546869732061727469636c6520697320696e74656e64656420746f2067657420796f7520757020616e642072756e6e696e6720776974682069742e, 'mwop.net.png', 'zf2, event manager', '2012-04-22 21:11:19', '2012-04-22 18:09:49', 2, 2, 200);
INSERT INTO `tutoriel` VALUES(5, 'http://www.michaelgallego.fr/blog/?p=132', 'L''autoloading avec Zend Framework 2', 0x4a27616920646f6e632064266561637574653b636964266561637574653b206465206372266561637574653b657220756e206e6f75766561752070726f6a657420706f7572206a6f75657220617665632065742064272665636972633b7472652070722665636972633b742064266567726176653b73206c6120736f72746965206427756e652076657273696f6e20737461626c652e20556e652064656d692d6a6f75726e266561637574653b6520706c7573207461726420266167726176653b2064266561637574653b636f72746971756572206c657320736f757263657320706f7572207361766f697220706f757271756f69202663636564696c3b61206e65206d61726368652070617320636f6d6d65206176616e7420286574206f75692c207061732064276578656d706c65732e2e2e292c206a2761692072656d61727175266561637574653b20717565206c6120706c75732067726f7373652064696666266561637574653b72656e636520636f6e6365726e65206c276175746f2d6c6f6164696e672e204475206d6f696e732c206a65206e276169207061732072266561637574653b7573736920266167726176653b206c6520666169726520666f6e6374696f6e6e657220636f6d6d65206176616e742e, 'michaelgallego.fr.png', 'zf2, autoloader', '2012-04-25 14:18:01', NULL, 1, 2, 200);
INSERT INTO `tutoriel` VALUES(6, 'http://mwop.net/blog/262-Backported-ZF2-Autoloaders.html', 'Backported ZF2 Autoloaders', 0x4927766520726563656e746c79206261636b706f7274656420746865205a4632206175746f6c6f616465727320746f2050485020352e322c20616e6420706f73746564207468656d206f6e204769744875622e, 'mwop.net.png', 'zf2, autoloader', '2011-05-10 22:30:05', '2012-04-22 22:30:41', 2, 2, 200);
INSERT INTO `tutoriel` VALUES(7, 'http://mwop.net/blog/248-Introducing-the-ZF2-Plugin-Broker.html', 'Introducing the ZF2 Plugin Broker', 0x496e205a656e64204672616d65776f726b20322e302c207765277265207265666163746f72696e6720696e2061206e756d626572206f6620617265617320696e206f7264657220746f20696e6372656173652074686520636f6e73697374656e6379206f6620746865206672616d65776f726b2e204f6e652061726561207765206964656e746966696564206561726c7920697320686f7720706c7567696e7320617265206c6f616465642e, 'mwop.net.png', 'zf2, plugin broker', '2010-11-09 22:30:05', '2012-04-22 22:30:41', 2, 2, 200);
INSERT INTO `tutoriel` VALUES(8, 'http://blanchon-vincent.developpez.com/php/zend-framework-2/comprendre-les-vues-layout-et-rendu/', 'Zend Framework 2, comprendre les vues : Layout, vues et rendu', 0x4c612067657374696f6e206465732076756573206475205a656e64204672616d65776f726b20322064696666266567726176653b726520636f6d706c266567726176653b74656d656e742064652063656c6c65206465206c61207072656d69266567726176653b72652076657273696f6e206475206672616d65776f726b2e2044266561637574653b736f726d61697320706c757320666c657869626c65206574206d69657578206f7267616e6973266561637574653b2c206c652070726f6365737375732064652072656e647520646973706f7365206465206e6f75766561757820636f6d706f73616e74732071756920706f7274656e742063686163756e20756e6520726573706f6e736162696c6974266561637574653b2e204c65206c61796f7574206e2765737420706c75732073266561637574653b706172266561637574653b206465206c612076756520636f7572616e74652c2063686163756e6520646520736573206465757820767565732065737420756e206f626a65742064652074797065204d6f64656c2c20696d6272697175266561637574653b206c27756e2064616e73206c2761757472652e204c27696d627269636174696f6e2070657574202665636972633b747265206175737369206772616e646520717565206c276f6e20736f7568616974652e, 'blanchon-vincent.developpez.com.png', 'zf2, vues, layout', '2012-09-09 11:27:06', '2012-06-10 16:00:48', 1, 2, 200);
INSERT INTO `tutoriel` VALUES(9, 'http://blanchon-vincent.developpez.com/php/zend-framework-2/optimiser-le-chargement-de-ses-modules/', 'Zend Framework 2 : le chargement de modules', 0x4c61206e6f74696f6e206465206d6f64756c65206120c3a9766f6c75c3a920646570756973206c61207072656d69c3a872652076657273696f6e206475206672616d65776f726b2e20496e64c3a970656e64616e7473206574206175746f6e6f6d65732c206c6573206d6f64756c6573206170706f7274656e74206c6575727320666f6e6374696f6e6e616c6974c3a973206574206c657572732070726f7072657320636f6e66696775726174696f6e732e, 'blanchon-vincent.developpez.com.png', 'zf2, modules', '2012-06-10 16:20:40', '2012-06-10 16:01:28', 1, 2, 200);
INSERT INTO `tutoriel` VALUES(10, 'http://blanchon-vincent.developpez.com/php/zend-framework-2/les-autoloaders/', 'Zend Framework 2 : Les autoloaders', 0x506c7573207261706964657320657420706c757320706572666f726d616e74732c206c6573206175746f6c6f6164657273206475205a656e64204672616d65776f726b20736f6e7420756e20706f696e7420666f7274206475206672616d65776f726b2e, 'blanchon-vincent.developpez.com.png', 'zf2, autoloaders', '2012-06-10 16:20:40', '2012-06-10 16:02:05', 1, 2, 200);
INSERT INTO `tutoriel` VALUES(11, 'http://blanchon-vincent.developpez.com/php/zend-framework-2/gestion-des-processus-fork-manager/', 'Zend Framework 2 : la gestion des processus', 0x504850206e652067c3a8726520706173206e61746976656d656e74206c65206d756c74697468726561642c206d616973206c657320666f6e6374696f6e732050434e544c207065726d657474656e74206c6520666f726b2064652070726f6365737375732e20556e65206269626c696f7468c3a8717565207065726d6574206d61696e74656e616e742064652067c3a972657220666163696c656d656e74207365732070726f6365737375732064657075697320504850206574205a656e64204672616d65776f726b20322e, 'blanchon-vincent.developpez.com.png', 'zf2, fork', '2012-06-10 16:20:40', '2012-06-10 16:02:41', 1, 2, 200);
INSERT INTO `tutoriel` VALUES(12, 'http://blanchon-vincent.developpez.com/php/zend-framework-2/servicemanager-gestion-de-fabriques/', 'Zend Framework 2 : le ServiceManager', 0x466c657869626c6520657420706572666f726d616e742c206c6520536572766963654d616e61676572207065726d65742064652067c3a972657220666163696c656d656e7420736573206661627269717565732064276f626a6574732e20496c2065737420c3a967616c656d656e74206c6520636f6d706cc3a96d656e74207061726661697420647520636f6d706f73616e74206427696e6a656374696f6e2064652064c3a970656e64616e6365732e, 'blanchon-vincent.developpez.com.png', 'zf2, servicemanager', '2012-06-10 16:20:40', '2012-06-10 16:03:13', 1, 2, 200);
INSERT INTO `tutoriel` VALUES(13, 'http://blanchon-vincent.developpez.com/php/zend-framework-2/les-formulaires/', 'Zend Framework 2 : les formulaires', 0x436f6d706cc3a874656d656e742072657675732c206c657320666f726d756c616972657320736f6e742064c3a9736f726d6169732062656175636f757020706c757320666c657869626c6573206574206469766973c3a97320656e20736f75732d636f6d706f73616e747320706f7274616e742063686163756e20736120726573706f6e736162696c6974c3a92e20496c2064657669656e742073696d706c652064277574696c69736572206465732062726971756573206427c3a96cc3a96d656e7473206175207365696e20646520706c7573696575727320666f726d756c61697265732e, 'blanchon-vincent.developpez.com.png', 'zf2, formulaires', '2012-06-10 16:20:40', '2012-06-10 16:03:39', 1, 2, 200);
INSERT INTO `tutoriel` VALUES(14, 'http://blanchon-vincent.developpez.com/php/zend-framework-2/cache-adaptateurs-plugins-performances/', 'Zend Framework 2 : le cache', 0x456e7469266567726176653b72656d656e742072266561637574653b266561637574653b6372697420706f7572206c612076657273696f6e2032206475205a656e64204672616d65776f726b2c206c2761707061726974696f6e2064657320706c7567696e7320657420646520636f6d706f73616e74732063617061626c65732064652072266561637574653b706f6e64726520266167726176653b206465732070726f626c266561637574653b6d61746971756573207072266561637574653b6369736573202863616368652064276f626a657473206f75206d266561637574653b74686f6465732920666f6e7420646520636520636f6d706f73616e7420756e206f7574696c20696e64697370656e7361626c6520706f75722072266561637574653b706f6e64726520617578206265736f696e7320646520706572666f726d616e6365732e, 'blanchon-vincent.developpez.com.png', 'zf2, cache', '2012-09-09 11:26:01', '2012-06-10 16:04:50', 1, 2, 200);
INSERT INTO `tutoriel` VALUES(15, 'http://blanchon-vincent.developpez.com/php/zend-framework-2/contribuer-au-zend-framework/', 'Zend Framework 2 : apporter sa contribution', 0x42656175636f75702064652064266561637574653b76656c6f7070657572732073652064656d616e64656e7420636f6d6d656e7420636f6e74726962756572206175205a656e64204672616d65776f726b2e205327696c20657869737465206465206e6f6d62726575736573206169646573206166696e2064276578706c6971756572206c657320266561637574653b7461706573206465206c612070617274696369706174696f6e2c20696c206e2765786973746520706173206427656e64726f6974206f267567726176653b20746f75746573206c657320696e666f726d6174696f6e7320736f6e742063656e7472616c6973266561637574653b657320657420636c61697265732e204166696e2064272665636972633b747265206c6520706c757320636f6d706c657420706f737369626c652c206e6f757320766572726f6e7320636f6d6d656e7420737569767265206c6520706c616e6e696e672064652064266561637574653b76656c6f7070656d656e74206475206672616d65776f726b2c207361766f6972206f267567726176653b2074726f75766572206c6520636f64652064652064266561637574653b76656c6f7070656d656e742071756920266561637574653b766f6c75652061752066757220657420266167726176653b206d657375726520646573206368616e67656d656e74732065666665637475266561637574653b7320706172206c65732064266561637574653b76656c6f7070657572732c20636f6d6d656e74207265706f727465722065742073756976726520756e20626f67756520717565206c276f6e20612072656e636f6e7472266561637574653b20737572206c65206672616d65776f726b20657420656e66696e20636f6d6d656e742070726f706f73657220756e6520636f7272656374696f6e20646520626f677565206f75206170706f7274657220756e6520666f6e6374696f6e6e616c6974266561637574653b2e, 'blanchon-vincent.developpez.com.png', 'zf2, contribuer', '2012-09-09 11:24:50', '2012-06-10 16:05:21', 1, 2, 200);

-- --------------------------------------------------------

--
-- Structure de la table `tweet`
--

CREATE TABLE `tweet` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `text` varchar(150) COLLATE utf8_bin NOT NULL,
  `user` varchar(50) COLLATE utf8_bin NOT NULL,
  `language` smallint(6) NOT NULL,
  `moderate` tinyint(4) NOT NULL COMMENT '0: refusé, 1:valid',
  `on_timeline` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `language` (`language`),
  KEY `moderate` (`moderate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=244697414131412995 ;

--
-- Contenu de la table `tweet`
--

INSERT INTO `tweet` VALUES(191876339945578499, '2012-04-16 13:10:58', 'Il reste de la place sur la session "Zend Framework DÃ©veloppeur" de la semaine prochaine http://t.co/HuqkndgC #formation #opensource #paris', 'AWFormation', 1, 1, 0);
INSERT INTO `tweet` VALUES(191876610163609600, '2012-04-16 13:12:03', 'RT @AWFormation: Il reste de la place sur la session "Zend Framework DÃ©veloppeur" de la semaine prochaine http://t.co/HuqkndgC #formation #opensource', 'labordage', 1, 0, 0);
INSERT INTO `tweet` VALUES(191915046547365888, '2012-04-16 15:44:47', 'J''ai rejoint le groupe Viadeo Zend Framework : http://t.co/Hzk9sMUT', 'JihadBenabra', 1, 1, 0);
INSERT INTO `tweet` VALUES(192143123596574722, '2012-04-17 06:51:05', 'Why isn''t there a standard URI validator in #ZendFramework?', 'motanelu', 2, 1, 0);
INSERT INTO `tweet` VALUES(192250878814720000, '2012-04-17 13:59:16', 'lanyrd page for #zfconf http://t.co/khIZ6mNl Please check out if you plan to attend. #zf #zf2', 'farazdagi', 2, 1, 0);
INSERT INTO `tweet` VALUES(192261798043455488, '2012-04-17 14:42:39', 'I''m speaking at ZFConf 2012, 21st April 2012 in Moscow http://t.co/vQcUovCh #zfconf #zf2 #zf', 'farazdagi', 2, 1, 0);
INSERT INTO `tweet` VALUES(192284491727896576, '2012-04-17 16:12:49', '@lucos11 mysql, php avec Zend Framework, Ã©ventuellement des batchs shell pour de l''asynchrone', 'maeliggohin', 1, 0, 0);
INSERT INTO `tweet` VALUES(192305541597499393, '2012-04-17 17:36:28', '@ZombieeNews RT/Who would you save 1st in a zombie attack? Easy! My BEER! Chicago Zombie Pub Crawl is coming up 4/28! #ZF @chicagozombie', 'michelletweet', 2, 0, 0);
INSERT INTO `tweet` VALUES(192354288960405504, '2012-04-17 20:50:10', 'Building a JSON API using #Silex and #Symfony components. It''s a very nice experience. Tempting to do a #ZF comparison. #only24hoursinaday', 'adrianhardy', 2, 1, 0);
INSERT INTO `tweet` VALUES(192394902716420096, '2012-04-17 23:31:33', 'That being said, can anyone recommend a (standalone) caching layer comparable with Zend_Cache? #zf', 'AdrianSchneider', 2, 1, 0);
INSERT INTO `tweet` VALUES(192431588926160896, '2012-04-18 01:57:20', 'How to Break Up With an #Aquarius: Get as romantic as possible towards them. Do not even think about giving them any type of space.. #ZF', 'giribima', 2, 1, 0);
INSERT INTO `tweet` VALUES(192454933990211586, '2012-04-18 03:30:06', 'How to BreakUp with a #Taurus: Start an Argument every now & then. A Taurus will think twice bfore committing to some1 who argues a lot. #ZF', 'putsastratenaya', 2, 1, 0);
INSERT INTO `tweet` VALUES(192577421688582144, '2012-04-18 11:36:49', '@webmozart A quick look in packagist I feel there is no other Filter component and yes #ZF seems having more deps.', 'harikt', 2, 0, 0);
INSERT INTO `tweet` VALUES(192603631508389889, '2012-04-18 13:20:58', '#zf2 IRC meeting today; get your topics in and vote on what you care about: http://t.co/g9BSMHKi', 'mwillbanks', 2, 1, 0);
INSERT INTO `tweet` VALUES(192603665100578816, '2012-04-18 13:21:06', 'RT @mwillbanks: #zf2 IRC meeting today; get your topics in and vote on what you care about: http://t.co/g9BSMHKi', 'kpschrade', 2, 0, 0);
INSERT INTO `tweet` VALUES(192603884156497920, '2012-04-18 13:21:59', 'RT @mwillbanks: #zf2 IRC meeting today; get your topics in and vote on what you care about: http://t.co/g9BSMHKi', 'CalEvans', 2, 0, 0);
INSERT INTO `tweet` VALUES(192603905643917313, '2012-04-18 13:22:04', '6 hours until today''s #ZF2 IRC meeting http://t.co/k0ewlnmZ', 'zend', 2, 1, 0);
INSERT INTO `tweet` VALUES(192604665425305600, '2012-04-18 13:25:05', '@DrDJo De codage avec Zend framework et avant le week-end. Je serai en forme pour le cours de Lundi!', 'Site_Rara', 1, 0, 0);
INSERT INTO `tweet` VALUES(192604793125089280, '2012-04-18 13:25:35', 'RT @mwillbanks: #zf2 IRC meeting today; get your topics in and vote on what you care about: http://t.co/g9BSMHKi', 'weierophinney', 2, 0, 0);
INSERT INTO `tweet` VALUES(192614198470119425, '2012-04-18 14:02:58', 'RT  : zend: 6 hours until today''s #ZF2 IRC meeting http://t.co/kDrewuUH: zend: 6 hours until today''s #ZF2 IRC me... http://t.co/eYiCFmVP', 'meliscms', 2, 0, 0);
INSERT INTO `tweet` VALUES(192617065222385665, '2012-04-18 14:14:21', 'Who is the maintainer of Zend\\Filter? Interested to join the discussion? https://t.co/EPfGEKNS #ZF2', 'webmozart', 2, 1, 0);
INSERT INTO `tweet` VALUES(192620425044434944, '2012-04-18 14:27:42', 'RT @webmozart: Who is the maintainer of Zend\\Filter? Interested to join the discussion? http://t.co/CiuNlLZc #ZF2 // cc @weierophinney', 'epiloic', 2, 0, 0);
INSERT INTO `tweet` VALUES(192644424491212800, '2012-04-18 16:03:04', 'Finished first readable draft of Zend\\Tool 2.0 RFC (http://t.co/51UatVcv). Hit me back if you have any comments/suggestions. #zf2', 'farazdagi', 2, 1, 0);
INSERT INTO `tweet` VALUES(192648057815449600, '2012-04-18 16:17:30', 'Updated meeting agenda http://t.co/UrmcOhI8 It is still 3.5+ hours till IRC meeting, so please consider discussing RFC Tool 2.0 #zf #zf2', 'farazdagi', 2, 1, 0);
INSERT INTO `tweet` VALUES(192653095627526144, '2012-04-18 16:37:31', 'J''ai rejoint le groupe Viadeo Zend Framework : http://t.co/jBN84Lwi', 'webqam', 1, 1, 0);
INSERT INTO `tweet` VALUES(192661272590950402, '2012-04-18 17:10:01', 'RT @webmozart: Who is the maintainer of Zend\\Filter? Interested to join the discussion? https://t.co/EPfGEKNS #ZF2', 'harikt', 2, 0, 0);
INSERT INTO `tweet` VALUES(192682226935275520, '2012-04-18 18:33:17', '#ZF to power 2013 #Ram #1500 Pickup Truck http://t.co/2jJ8IsZD #automotive #2013ram1500 #automatictransmission', 'vimanavarta', 2, 1, 0);
INSERT INTO `tweet` VALUES(192933571428745216, '2012-04-19 11:12:02', 'RT Just had a cool @zfChannel webinar with @howiephp and eric ritchie #zendframework', 'GavinRog', 2, 0, 0);
INSERT INTO `tweet` VALUES(193026482489147393, '2012-04-19 17:21:14', 'Does anyone know how I can access the default DI instance in #zf2, say in a custom router (to load a service model) /cc @weierophinney', 'davidwindell', 2, 0, 0);
INSERT INTO `tweet` VALUES(193052686243987456, '2012-04-19 19:05:21', 'Might be very useful: Cryptography made easy using #Zend Framework, May 31 by @ezimuel #zf http://t.co/SoCQO2nw', 'stu_rayner', 2, 0, 0);
INSERT INTO `tweet` VALUES(193152652819955712, '2012-04-20 01:42:35', '#ZF', 'dalton_moore27', 2, 1, 0);
INSERT INTO `tweet` VALUES(193259722827251712, '2012-04-20 08:48:03', 'bearing point : commencer un livre par la fin et attÃ©rir sur le mur avant de foncer dedans #zendframework #selfdummy', 'gerardchic', 1, 1, 0);
INSERT INTO `tweet` VALUES(193280453690654721, '2012-04-20 10:10:25', '#urlmapping en groovy est bien plus simple que celui #zendframework pour gÃ©nÃ©rer des #url propres #devoxxfr', 'ExFromTheLeft', 1, 1, 0);
INSERT INTO `tweet` VALUES(193291784275759105, '2012-04-20 10:55:27', 'Zend Framework Day -&gt; http://t.co/hpN1Huy4 #ZendFramework #PHP http://t.co/fLGeY0O9', 'cleibsonalmeida', 2, 1, 0);
INSERT INTO `tweet` VALUES(193302932521881600, '2012-04-20 11:39:45', 'RT @ExFromTheLeft: #urlmapping en groovy est bien plus simple que celui #zendframework pour gÃ©nÃ©rer des #url propres #devoxxfr', 'sebi2706', 1, 0, 0);
INSERT INTO `tweet` VALUES(193305834846040064, '2012-04-20 11:51:17', '@CenturionCms Is there an example about how to implement the "Manage highlights" module? http://t.co/scG50Z5S #centurioncms #zendframework', 'brgmn', 2, 0, 0);
INSERT INTO `tweet` VALUES(193306593901813761, '2012-04-20 11:54:18', 'RT @ExFromTheLeft: #urlmapping en groovy est bien plus simple que celui #zendframework pour gÃ©nÃ©rer des #url propres #devoxxfr', 'rokflow', 1, 0, 0);
INSERT INTO `tweet` VALUES(193328644784013312, '2012-04-20 13:21:55', '@julienpauli Oh guru de #ZF, j''ai besoin de ton aide pour un Ã©claircissement. Acceptes-tu stp d''aider un padawan en dÃ©tresse?', 'Guiled', 1, 0, 0);
INSERT INTO `tweet` VALUES(193400737072562177, '2012-04-20 18:08:23', 'trying to understand why there are traits defined in the #zf2 master branchâ€¦ I thought it was 5.3 focused guess I need to keep up on it more', 'zircote', 2, 1, 0);
INSERT INTO `tweet` VALUES(193406242981548032, '2012-04-20 18:30:16', 'Weird... The default #zf2 rewrite rules create a HTTP 500 on #phpcloud', 'neorey', 2, 1, 0);
INSERT INTO `tweet` VALUES(193451712214876160, '2012-04-20 21:30:57', 'As a #Leo your incandescence, your sparkle and your spectacular verbal ability all have the potential to cover you with starshine. RT #ZF', 'iamredgegabon', 2, 0, 0);
INSERT INTO `tweet` VALUES(193595149706731520, '2012-04-21 07:00:55', '@rizkyrahman â€œAs an #Aquarius you express your feelings of love in a detached manner, and this can certainly frustrate your partner.â€ #ZF', 'putrialita', 2, 0, 0);
INSERT INTO `tweet` VALUES(193599591466274816, '2012-04-21 07:18:34', '#programming #developer #russia #moscow #conference #zendconf #zend #zfconf #zendframework #php  http://t.co/C39B2xpF', 'mygunishot', 2, 1, 0);
INSERT INTO `tweet` VALUES(193731487873499137, '2012-04-21 16:02:45', 'Excelente, dando clases de #ZendFramework and #Ext.js en la Universidad, con @Dario_RDR http://t.co/bqgQ5CBv', 'ortova', 2, 0, 0);
INSERT INTO `tweet` VALUES(193788478943789056, '2012-04-21 19:49:08', 'RT @ezimuel: I just uploaded the slides of my talk "Zend Framework 2 quick start" at #zfconf 2012 in Moscow, http://t.co/ISEH8GSi', 'weierophinney', 2, 0, 0);
INSERT INTO `tweet` VALUES(193789866931261440, '2012-04-21 19:54:39', 'RT @ezimuel: I just uploaded the slides of my talk "Zend Framework 2 quick start" at #zfconf 2012 in Moscow, http://t.co/ISEH8GSi', 'akrabat', 2, 0, 0);
INSERT INTO `tweet` VALUES(193791818616414211, '2012-04-21 20:02:24', 'RT @ezimuel: I just uploaded the slides of my talk "Zend Framework 2 quick start" at #zfconf 2012 in Moscow, http://t.co/ISEH8GSi', 'webdevilopers', 2, 0, 0);
INSERT INTO `tweet` VALUES(193798011443355648, '2012-04-21 20:27:01', 'RT @ezimuel: I just uploaded the slides of my talk "Zend Framework 2 quick start" at #zfconf 2012 in Moscow, http://t.co/ISEH8GSi', 'kenahlstrom', 2, 0, 0);
INSERT INTO `tweet` VALUES(193800606874472448, '2012-04-21 20:37:19', 'RT @ezimuel: I just uploaded the slides of my talk "Zend Framework 2 quick start" at #zfconf 2012 in Moscow, http://t.co/ISEH8GSi', 'jakub_polak', 2, 0, 0);
INSERT INTO `tweet` VALUES(193802773177962496, '2012-04-21 20:45:56', 'Just uploaded "Code Generation in ZF2" talk on slideshare http://t.co/zbYDSwQ8 #zfconf', 'farazdagi', 2, 1, 0);
INSERT INTO `tweet` VALUES(193805146541654016, '2012-04-21 20:55:22', 'Really nice presentation, Enrico! RT @ezimuel: I just uploaded the slides of my talk "ZF 2 quick start" at #zfconf  http://t.co/FicsDHUL', 'farazdagi', 2, 0, 0);
INSERT INTO `tweet` VALUES(193808103588896769, '2012-04-21 21:07:07', '#zf2 is really tasty. It''s time to write reusable modules http://t.co/c4Dhbf6y', 'bakytn_kg', 2, 1, 0);
INSERT INTO `tweet` VALUES(193810608326582273, '2012-04-21 21:17:04', 'RT @ezimuel: I just uploaded the slides of my talk "Zend Framework 2 quick start" at #zfconf 2012 in Moscow, http://t.co/ISEH8GSi', 'm_delariva', 2, 0, 0);
INSERT INTO `tweet` VALUES(193811108719640578, '2012-04-21 21:19:03', 'RT @ezimuel: I just uploaded the slides of my talk "Zend Framework 2 quick start" at #zfconf 2012 in Moscow, http://t.co/ISEH8GSi', 'joostvanveen', 2, 0, 0);
INSERT INTO `tweet` VALUES(193826613375406080, '2012-04-21 22:20:40', 'RT @ezimuel: I just uploaded the slides of my talk "Zend Framework 2 quick start" at #zfconf 2012 in Moscow, http://t.co/ISEH8GSi', 'malber_o2m', 2, 0, 0);
INSERT INTO `tweet` VALUES(193846984757620736, '2012-04-21 23:41:37', 'RT @ezimuel: I just uploaded the slides of my talk "Zend Framework 2 quick start" at #zfconf 2012 in Moscow, http://t.co/ISEH8GSi', 'bladeofsteel', 2, 0, 0);
INSERT INTO `tweet` VALUES(193847067519614978, '2012-04-21 23:41:57', 'RT @farazdagi: Just uploaded "Code Generation in ZF2" talk on slideshare http://t.co/zbYDSwQ8 #zfconf', 'bladeofsteel', 2, 0, 0);
INSERT INTO `tweet` VALUES(193904388912332802, '2012-04-22 03:29:43', 'RT @farazdagi: Just uploaded "Code Generation in ZF2" talk on slideshare http://t.co/zbYDSwQ8 #zfconf', 'sasezakit', 2, 0, 0);
INSERT INTO `tweet` VALUES(193919095786311680, '2012-04-22 04:28:09', '#job Senior PHP Zend Framework Developer: Senior PHP Zend Framework Developer - York - Â£36,000 per annum M... http://t.co/V7Aoht0b #york', 'jobsinyork', 2, 1, 0);
INSERT INTO `tweet` VALUES(193926854586023936, '2012-04-22 04:58:59', 'Senior PHP Zend Framework Developer: Senior PHP Zend Framework Developer - York - Â£36,000 per annum My client si... http://t.co/KblyPZkr', 'jobsinyork', 2, 1, 0);
INSERT INTO `tweet` VALUES(193941353267343360, '2012-04-22 05:56:36', 'RT @ezimuel: I just uploaded the slides of my talk "Zend Framework 2 quick start" at #zfconf 2012 in Moscow, http://t.co/ISEH8GSi', 'webaaz', 2, 0, 0);
INSERT INTO `tweet` VALUES(193946291007524864, '2012-04-22 06:16:13', 'RT @farazdagi: Just uploaded "Code Generation in ZF2" talk on slideshare http://t.co/zbYDSwQ8 #zfconf', 'Dimache85', 2, 0, 0);
INSERT INTO `tweet` VALUES(193954232498528257, '2012-04-22 06:47:47', 'Why Conventions Matter :: http://t.co/eKng9wJv #zf #php', 'DerFichtl', 2, 1, 0);
INSERT INTO `tweet` VALUES(193954783139336192, '2012-04-22 06:49:58', '@janmachala yes there is a lot more #FLOW3 has which is not there in any other  #framework. We already kicked out #zend', 'hrishilele', 2, 0, 0);
INSERT INTO `tweet` VALUES(193959134918488065, '2012-04-22 07:07:16', '#MySQL #job - PHP Developer with Zend Framework / MVC Architecture Job - http://t.co/BSm3QQ9F #jobs', 'dnzMySQL', 2, 1, 0);
INSERT INTO `tweet` VALUES(193964892515074048, '2012-04-22 07:30:08', 'Overriding module configuration in ZF2 â€“ Rob Allen''s DevNotes http://t.co/94Wmb4u8', 'gsorry', 2, 1, 0);
INSERT INTO `tweet` VALUES(193967407415574529, '2012-04-22 07:40:08', 'Frank BrÃ¼ckner commented on   ZF-12166 - Form end tag is still generated if content is boolean false\n | http://t.co/y28jo13T', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(193976692908363776, '2012-04-22 08:17:02', 'Pro Zend Framework CMS (Expert''s Voice) (Paperback): The Zend Framework is one of todayâ€™s most popular PHP-based... http://t.co/V9mOHPGU', 'icizuwiji', 2, 1, 0);
INSERT INTO `tweet` VALUES(193985791045795842, '2012-04-22 08:53:11', 'Pro Zend Framework CMS (Expert''s Voice) (Paperback) http://t.co/GNZpK7Wm', 'itimesupuc', 2, 1, 0);
INSERT INTO `tweet` VALUES(193990882427551744, '2012-04-22 09:13:25', 'Building PHP Applications with Symfony, CakePHP, and Zend Framework: The first detailed, unbiased comparison of ... http://t.co/fs2FmkZ8', 'CassieTomas_nLy', 2, 1, 0);
INSERT INTO `tweet` VALUES(193994404447518720, '2012-04-22 09:27:24', 'Easy PHP Websites with the Zend Framework (Perfect Paperback): Recently revised for Zend Framework 1.9!, and com... http://t.co/mmzhPhDr', 'ejorusit', 2, 1, 0);
INSERT INTO `tweet` VALUES(194006570210828289, '2012-04-22 10:15:45', 'Zend Framework 2 Overview: http://t.co/K3NsbsWb via @youtube', 'dadepo', 2, 0, 0);
INSERT INTO `tweet` VALUES(194015891820781568, '2012-04-22 10:52:47', 'RT @hrishilele: @janmachala yes there is a lot more #FLOW3 has which is not there in any other  #framework. We already kicked out #zend', 'janmachala', 2, 0, 0);
INSERT INTO `tweet` VALUES(194047344159899648, '2012-04-22 12:57:46', '@groowon I hope so, I really enjoyed the time spent with the russian community of Zend Framework.', 'ezimuel', 2, 0, 0);
INSERT INTO `tweet` VALUES(194059158516019200, '2012-04-22 13:44:43', 'Easy PHP Websites with the Zend Framework (Perfect Paperback): Recently revised for Zend Framework 1.9!, and com... http://t.co/hysydsM6', 'siculan', 2, 1, 0);
INSERT INTO `tweet` VALUES(194077989661716481, '2012-04-22 14:59:33', 'Zend Framework in Action (Paperback) http://t.co/K9me0f4A', 'zobowyqumy', 2, 1, 0);
INSERT INTO `tweet` VALUES(194093373001441282, '2012-04-22 16:00:40', '7php interviews: Thanks @ijansch also for contributing a Zend Framework Question to ask @weierophinney - Cheers! #ready', '7php', 2, 0, 0);
INSERT INTO `tweet` VALUES(194123201662558209, '2012-04-22 17:59:12', 'http://t.co/fchuV7ey Zend Framework - adding meta tags with property not working http://t.co/NaOALV9e #Code #Discussion', 'binushacker', 2, 1, 0);
INSERT INTO `tweet` VALUES(194124412642013184, '2012-04-22 18:04:01', 'Is using the Twitter Bootstrap for his next project! Fully responsive, I love it! #TwitterBootstrap #ZendFramework', 'daviddebast', 2, 1, 0);
INSERT INTO `tweet` VALUES(194145851201957889, '2012-04-22 19:29:12', '#ZF: How to handle your #Cancer: You will need to be in tune with their mood swings, and learn when to hold back and when to be proactive.', 'tyagitavg', 2, 1, 0);
INSERT INTO `tweet` VALUES(194251638033219585, '2012-04-23 02:29:34', 'In airport, soon I will be back home. Thanks for a good conference to all involved #zfconf', 'farazdagi', 2, 1, 0);
INSERT INTO `tweet` VALUES(194291896582012929, '2012-04-23 05:09:32', 'RT @ezimuel: Thanks to the staff and the attendees of the #zfconf 2012. I really enjoyed the time spent in Moscow. Awesome conference and nice food!', 'zfconf', 2, 0, 0);
INSERT INTO `tweet` VALUES(194291917243170816, '2012-04-23 05:09:37', 'RT @ezimuel: I just uploaded the slides of my talk "Zend Framework 2 quick start" at #zfconf 2012 in Moscow, http://t.co/ISEH8GSi', 'zfconf', 2, 0, 0);
INSERT INTO `tweet` VALUES(194293333261160449, '2012-04-23 05:15:15', 'RT @farazdagi: Just uploaded "Code Generation in ZF2" talk on slideshare http://t.co/zbYDSwQ8 #zfconf', 'zfconf', 2, 0, 0);
INSERT INTO `tweet` VALUES(194294329420947456, '2012-04-23 05:19:12', 'RT @farazdagi: In airport, soon I will be back home. Thanks for a good conference to all involved #zfconf', 'zfconf', 2, 0, 0);
INSERT INTO `tweet` VALUES(194327901963943936, '2012-04-23 07:32:36', 'Bonjour ! Cette semaine Zend Framework DÃ©v, Prestashop, PHP Expert CertifiÃ© et Android DÃ©veloppeur pour smartphone #formation #opensource', 'AWFormation', 1, 1, 0);
INSERT INTO `tweet` VALUES(194328485509083136, '2012-04-23 07:34:56', 'RT @AWFormation: Bonjour ! Cette semaine Zend Framework DÃ©v, Prestashop, PHP Expert CertifiÃ© et Android DÃ©veloppeur pour smartphone #formation #ope', 'ChristopheP', 1, 0, 0);
INSERT INTO `tweet` VALUES(194366573488775168, '2012-04-23 10:06:16', 'Blogged: An introduction to Zend\\EventManager http://t.co/NcFRCWjH', 'akrabat', 2, 1, 0);
INSERT INTO `tweet` VALUES(194391380351664130, '2012-04-23 11:44:51', 'RT @ezimuel: I just uploaded the slides of my talk "Zend Framework 2 quick start" at #zfconf 2012 in Moscow, http://t.co/ISEH8GSi', 'kolzhanov', 2, 0, 0);
INSERT INTO `tweet` VALUES(194394199179796482, '2012-04-23 11:56:03', 'RT @DASPRiD - Hi #zf2 folks, i18n translator is soon about to be done and already up on github, so you can soon start toying with it.', 'weierophinney', 2, 0, 0);
INSERT INTO `tweet` VALUES(194395554707550208, '2012-04-23 12:01:26', 'RT @akrabat - Blogged: An introduction to Zend\\EventManager http://t.co/mb95lNd0 #zf2', 'weierophinney', 2, 0, 0);
INSERT INTO `tweet` VALUES(194395994740367360, '2012-04-23 12:03:11', 'RT @weierophinney: RT @akrabat - Blogged: An introduction to Zend\\EventManager http://t.co/mb95lNd0 #zf2', 'diegoholiveira', 2, 0, 0);
INSERT INTO `tweet` VALUES(194400737126658048, '2012-04-23 12:22:02', 'A list of #ZF2 events â€“ Rob Allen''s DevNotes http://t.co/yzjySxw9 via @akrabat', 'SevenyMedia', 2, 0, 0);
INSERT INTO `tweet` VALUES(194403134699880448, '2012-04-23 12:31:33', 'RT @weierophinney: RT @akrabat - Blogged: An introduction to Zend\\EventManager http://t.co/mb95lNd0 #zf2', 'taygius', 2, 0, 0);
INSERT INTO `tweet` VALUES(194403255718125568, '2012-04-23 12:32:02', 'RT @weierophinney: RT @akrabat - Blogged: An introduction to Zend\\EventManager http://t.co/mb95lNd0 #zf2', 'billyildirim', 2, 0, 0);
INSERT INTO `tweet` VALUES(194405376739901441, '2012-04-23 12:40:28', 'RT @weierophinney: RT @akrabat - Blogged: An introduction to Zend\\EventManager http://t.co/mb95lNd0 #zf2', '_posbo', 2, 0, 0);
INSERT INTO `tweet` VALUES(194417826231099393, '2012-04-23 13:29:56', 'Offre : DÃ©veloppeur PHP / Zend framework - OpportunitÃ© de carriÃ¨re au sein d''un client final pour un poste en CDI :... http://t.co/UW7GGKbI', 'Recruteo', 1, 1, 0);
INSERT INTO `tweet` VALUES(194422914513240066, '2012-04-23 13:50:09', 'Matthew Weier O&#39;Phinney commented on   ZF-12167 - Backport to ZF 1.x\n | http://t.co/57xykzQh', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(194422916107087872, '2012-04-23 13:50:10', 'Matthew Weier O&#39;Phinney resolved   ZF-12167 - Backport to ZF 1.x\n as ''Won''t Fix'' | http://t.co/57xykzQh', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(194423302285049857, '2012-04-23 13:51:42', 'An introduction to Zend\\EventManager http://t.co/APRwaKSO', 'leedavis81', 2, 1, 0);
INSERT INTO `tweet` VALUES(194424206547632128, '2012-04-23 13:55:17', 'Amsterdam â€“ Talented Zend Framework Developer for Award Winning http://t.co/TLGKeOWX', 'iantunnicliff', 2, 1, 0);
INSERT INTO `tweet` VALUES(194427946495262720, '2012-04-23 14:10:09', 'Gabriel Schuster commented on   ZF-12167 - Backport to ZF 1.x\n | http://t.co/57xykzQh', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(194428772479533057, '2012-04-28 17:30:56', '#devweb2 DEVELOPPEUR PHP MAGENTO/ZEND FRAMEWORK (H/F) - Programmez!: DEVELOPPEUR PHP MAGENTO/ZEND FRAMEWORK (H/F... http://t.co/uIJHpgiu', 'gnakouri_danon', 1, 1, 0);
INSERT INTO `tweet` VALUES(194436448034885633, '2012-04-23 14:43:56', 'Facebook Like button requires open graph and #Zend Framework requires RDFa to set property meta tags http://t.co/ex7lQwJF #ZF', 'AdrianWorld', 2, 1, 0);
INSERT INTO `tweet` VALUES(194437093999656962, '2012-04-23 14:46:30', 'PHP Developer (w/Zend Framework): IMMEDIATE need for a Senior Developer with expertise in PHP/Zend Fram... http://t.co/LEpoB4xn #in #job', 'ITJobsDallasTX', 2, 1, 0);
INSERT INTO `tweet` VALUES(194438011457519616, '2012-04-23 14:50:09', 'JordÃ£o Vieira commented on   ZF-8389 - call to undefined member function search() - Zend Tool\n | http://t.co/WEOXE90O', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(194443645531860992, '2012-04-23 15:12:32', 'RT @ezimuel: I just uploaded the slides of my talk "Zend Framework 2 quick start" at #zfconf 2012 in Moscow, http://t.co/ISEH8GSi', 'Skorney', 2, 0, 0);
INSERT INTO `tweet` VALUES(194460979579461632, '2012-04-23 16:21:25', 'http://t.co/dYh0kdWM / (An introduction to Zend\\EventManager â€“ Rob Allen''s DevNotes)', 'andreaswarnaar', 2, 1, 0);
INSERT INTO `tweet` VALUES(194462473934487552, '2012-04-23 16:27:21', 'Centurion Project: Zend framework CMS:  http://t.co/CD1veNMc #php', 'vlizco', 2, 1, 0);
INSERT INTO `tweet` VALUES(194472190173917184, '2012-04-23 17:05:57', 'web development â€“ Zend Framework â€“ Form and File Upload Tutorial (part 1 of 3):  http://t.co/Kd7zNhfc', 'Ganderone', 2, 1, 0);
INSERT INTO `tweet` VALUES(194473083820711936, '2012-04-23 17:09:30', 'OH @dgoerlich: "Well, Zend framework gives you ASCII art conversion for free!"', 'jonathanpenn', 2, 0, 0);
INSERT INTO `tweet` VALUES(194473244261220352, '2012-04-23 17:10:09', 'Jamie Krasnoo commented on   ZF-12166 - Form end tag is still generated if content is boolean false\n | http://t.co/y28jo13T', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(194494512444354560, '2012-04-23 18:34:39', 'A little more advanced #ZF2 #EventManager usage | ESchrade - Pure PHP Goodness http://t.co/fGB9yQ5t', 'kpschrade', 2, 1, 0);
INSERT INTO `tweet` VALUES(194494591087550466, '2012-04-23 18:34:58', 'RT @kpschrade: A little more advanced #ZF2 #EventManager usage | ESchrade - Pure PHP Goodness http://t.co/fGB9yQ5t', 'igormx', 2, 0, 0);
INSERT INTO `tweet` VALUES(194497190272569344, '2012-04-23 18:45:18', '@alexerax yep. Cos zend framework version 0.whatever was written by hebrew-speaking guys.', 'floopily', 2, 0, 0);
INSERT INTO `tweet` VALUES(194502371504693248, '2012-04-23 19:05:53', 'First #ZF2 talk already submitted for #ZendCon 2012 -- Since when did I stop procrastinating things until the last minute?', 'EvanDotPro', 2, 1, 0);
INSERT INTO `tweet` VALUES(194502672232099841, '2012-04-23 19:07:05', 'PHP Zend Framework - Event Manager usage.\nhttp://t.co/IXjTkW3b', 'pablo7_xpx', 2, 1, 0);
INSERT INTO `tweet` VALUES(194502832337059840, '2012-04-23 19:07:43', 'PHP Zend Framework - Event Manager usage.\nhttp://t.co/hU15u6oY', 'pablo7_xpx', 2, 1, 0);
INSERT INTO `tweet` VALUES(194506618132643840, '2012-04-23 19:22:46', 'Wanna win some beer?  http://t.co/1qebltjX #zend #zf #developerpulse #php', 'kpschrade', 2, 1, 0);
INSERT INTO `tweet` VALUES(194507193322704898, '2012-04-23 19:25:03', 'RT @kpschrade: Wanna win some beer?  http://t.co/1qebltjX #zend #zf #developerpulse #php', 'CalEvans', 2, 0, 0);
INSERT INTO `tweet` VALUES(194664353063108608, '2012-04-24 05:49:33', '@vallsymachinant Merci de me suivre. Je suis salariÃ© dans une agence web Ã  Reims, je dÃ©veloppe sous le framework php Zend', 'Paulgerold', 1, 0, 0);
INSERT INTO `tweet` VALUES(194699723372904448, '2012-04-24 08:10:06', 'Emploi IT INGENIEUR DE DEVELOPPEMENT PHP 5.0 / ZEND Framework H/F - Osiatis - Lyon: Â    Dans le cadre de notre d... http://t.co/DUsP0eaw', 'jobticHL', 1, 1, 0);
INSERT INTO `tweet` VALUES(194712883546959872, '2012-04-24 09:02:23', 'Zend_Translate, getText et pluriels : http://t.co/DNYFX0tQ // bon Ã  savoir #zf', 'Halleck45', 1, 1, 0);
INSERT INTO `tweet` VALUES(194714626993291266, '2012-04-24 09:09:19', 'RT @Halleck45: Zend_Translate, getText et pluriels : http://t.co/DNYFX0tQ // bon Ã  savoir #zf', 'armenweb', 1, 0, 0);
INSERT INTO `tweet` VALUES(194895740043149312, '2012-04-24 21:09:00', '[zf-contributors] New SharedEventManager means updates required to your ZF2 apps #zendframework http://t.co/MOJ0YyKT', 'mentby', 2, 1, 0);
INSERT INTO `tweet` VALUES(195159733949304832, '2012-04-25 14:38:01', 'RT @Tmbdrogba: Une trÃ¨s bonne doc'' alternative du Zend Framework : http://t.co/vCp3zu3H On y apprend bien plus de chose que sur l''officielle... #zend', 'keo79', 1, 0, 0);
INSERT INTO `tweet` VALUES(195198262221864962, '2012-04-25 17:11:06', 'RT @Tmbdrogba: Une trÃ¨s bonne doc'' alternative du Zend Framework : http://t.co/vCp3zu3H On y apprend bien plus de chose que sur l''officielle... #zend', 'bco69', 1, 0, 0);
INSERT INTO `tweet` VALUES(195200182751727617, '2012-04-25 17:18:44', 'Not all might agree but so far I think ideal web code development environment is: #Agile, #LAMP, #ZF, #Git, #TDD & simple solution approach', 'WinningFactory', 2, 1, 0);
INSERT INTO `tweet` VALUES(195204449252278273, '2012-04-25 17:35:42', 'RT @derfichtl: Why Conventions Matter :: http://t.co/jCzjegos #zf #php ^tr', 'cloudcontrolled', 2, 0, 0);
INSERT INTO `tweet` VALUES(195249490586902528, '2012-04-25 20:34:41', 'Totally made my day!! Yay! #ZF http://t.co/otDaARWQ', 'ellieivy', 2, 1, 0);
INSERT INTO `tweet` VALUES(195253655279124481, '2012-04-25 20:51:13', '@johnkary Sure, it is #zf2. Not sure if the culprit is #phpunit or #zf; I do know that I''m tired of worrying about the little things.', 'wilmoore', 2, 0, 0);
INSERT INTO `tweet` VALUES(195267742834753538, '2012-04-25 21:47:12', 'RT @Tmbdrogba: Une trÃ¨s bonne doc'' alternative du Zend Framework : http://t.co/vCp3zu3H On y apprend bien plus de chose que sur l''officielle... #zend', 'margoula', 1, 0, 0);
INSERT INTO `tweet` VALUES(195336391897526274, '2012-04-26 02:19:59', 'It''s a good thing @pintlabs is all #zfâ€¦ it keeps me happy!', 'farrelley', 2, 0, 0);
INSERT INTO `tweet` VALUES(195372374873481218, '2012-04-26 04:42:58', 'To all the web developers out there: does anybody have a spare Zend_OAuth2 module they can share? Anyone?? #zendframework #oauth2', 'alebiavati', 2, 1, 0);
INSERT INTO `tweet` VALUES(195385384807575552, '2012-04-26 05:34:40', 'Days like this where I need you kid #RIP #ZF #SC', 'KottonMouth_Kid', 2, 1, 0);
INSERT INTO `tweet` VALUES(195433139848491008, '2012-04-26 08:44:26', 'floating functions MAY be used, but are discouraged.Consider wrapping these functions in a static class,or within a specific namespace.[#ZF]', 'blaz_boy', 2, 1, 0);
INSERT INTO `tweet` VALUES(195470361607946241, '2012-04-26 11:12:20', 'DÃ©veloppeur PHP5 (Zend Framework,Symfony) - Libre acadÃ©mie http://t.co/WBNAwkio', 'xxijobs', 1, 1, 0);
INSERT INTO `tweet` VALUES(195477514817245185, '2012-04-26 11:40:45', 'Module lazy loading in #ZF2 : https://t.co/xO5kkXQJ #zf2 #beta #zendframework', 'blanchonvincent', 2, 1, 0);
INSERT INTO `tweet` VALUES(195527305802678272, '2012-04-26 14:58:37', '@Drcarter78 @g4l4drim @Elijaa J''ai dÃ©jÃ  testÃ© .. boff ... surtout avec le Zend Framework ... mais c''est une version 0.5 donc..', 'fred_bouchery', 1, 0, 0);
INSERT INTO `tweet` VALUES(195549779340705794, '2012-04-26 16:27:55', 'come fa un framework a non avere un code generator!! #framework #zf', 'emafront', 2, 1, 0);
INSERT INTO `tweet` VALUES(195611131199504385, '2012-04-26 20:31:42', 'ZF2 Dependency Injection: Managing Configuration - Part 2 http://t.co/kmCG3EjR #zf2 #zend #php', 'kpschrade', 2, 1, 0);
INSERT INTO `tweet` VALUES(195620679436075008, '2012-04-26 21:09:39', 'Jeez.  If your traffic is lagging a little just write some blog posts on #zf2 http://t.co/SkshlTeR', 'kpschrade', 2, 1, 0);
INSERT INTO `tweet` VALUES(195766646747561984, '2012-04-27 06:49:40', 'An introduction to Zend\\EventManager http://t.co/eqsxR69A by @akrabat - a great #zf2 component', 'paulmatthews86', 2, 0, 0);
INSERT INTO `tweet` VALUES(195779296164450304, '2012-04-27 07:39:56', '#zf2 dependancy injection to manage configuration #php http://t.co/J8qe3Lg5', 'SebastienCaumes', 2, 1, 0);
INSERT INTO `tweet` VALUES(195788295920300033, '2012-04-27 08:15:41', 'No wonder you''re a Hufflepuff, @key_mom :D "#ZF: #TAURUS is the most loyal of the Earth Signs and can be counted on for their reliability."', 'wadesay', 2, 0, 0);
INSERT INTO `tweet` VALUES(195791817533431808, '2012-04-27 08:29:41', 'Care este diferenÅ£a dintre romÃ¢ni ÅŸi occidentali â€“ carte recomandatÄƒ de Ziarul de duminicÄƒ |  #ZF #romani http://t.co/xx6T8OYh', 'cristinamitu', 1, 1, 0);
INSERT INTO `tweet` VALUES(195806032063234048, '2012-04-27 09:26:10', '@LoganeBauer bien ! Ã§a c est du boulot de pro ! Tu vas pouvoir attaquer #zend framework comme il faut', 'gautsGeneau', 1, 0, 0);
INSERT INTO `tweet` VALUES(195815918822109186, '2012-04-27 10:05:27', 'Dear Karma,My Friends Has been waied you for a long time .. Please ''VISIT'' them :) #ZF', 'ZonaFRONTAL_', 2, 1, 0);
INSERT INTO `tweet` VALUES(195816567936790528, '2012-04-27 10:08:02', 'RT @ZonaFRONTAL_: Dear Karma,My Friends Has been waied you for a long time .. Please ''VISIT'' them :) #ZF', 'susanlestarii', 2, 0, 0);
INSERT INTO `tweet` VALUES(195819849405046784, '2012-04-27 10:21:04', 'Une rÃ©ponse claire et prÃ©cise Ã  "Pourquoi utiliser des Models en plus des DbTables" sous Zend Framework http://t.co/WjygWDMD', 'srttbe', 1, 1, 0);
INSERT INTO `tweet` VALUES(195832703457832960, '2012-04-27 11:12:09', 'Lazy loading module project #zf2 #module on github : https://t.co/aFnzM1Nn', 'blanchonvincent', 2, 1, 0);
INSERT INTO `tweet` VALUES(195833225199882240, '2012-04-27 11:14:13', '@Jeremie_Ges Zend Framework, Symfony, Codigniter ne te plaisent pas ? ^^', 'arnolem', 1, 0, 0);
INSERT INTO `tweet` VALUES(195847021322715136, '2012-04-27 12:09:03', 'Anybody know why by default in #ZF2 Doctype Helper is HTML4_Loose instead of HTML5?', 'Skorney', 2, 1, 0);
INSERT INTO `tweet` VALUES(195849441884897280, '2012-04-27 12:18:40', '#ZF2 Dependency Injection: Managing Configuration â€“ Part 1\nhttp://t.co/tcI0eB1k', 'juareznjunior', 2, 1, 0);
INSERT INTO `tweet` VALUES(195879297733496832, '2012-04-27 14:17:18', 'The more I look at it the more I think #zendframework should rely on #symfony 2 core components and focus on more hi level stuff. #synergy', 'PierreJoye', 2, 1, 0);
INSERT INTO `tweet` VALUES(195879994046681089, '2012-04-27 14:20:04', 'RT @PierreJoye: The more I look at it the more I think #zendframework should rely on #symfony 2 core components and focus on more hi level stuff. #syn', 'asciidisco', 2, 0, 0);
INSERT INTO `tweet` VALUES(195880375002742785, '2012-04-27 14:21:35', 'RT @PierreJoye: The more I look at it the more I think #zendframework should rely on #symfony 2 core components and focus on more hi level stuff. #syn', 'CodeStars', 2, 0, 0);
INSERT INTO `tweet` VALUES(195880571476516866, '2012-04-27 14:22:22', 'RT @PierreJoye: The more I look at it the more I think #zendframework should rely on #symfony 2 core components and focus on more hi level stuff. #syn', 'skoop', 2, 0, 0);
INSERT INTO `tweet` VALUES(195882773989429251, '2012-04-27 14:31:07', 'RT @PierreJoye: The more I look at it the more I think #zendframework should rely on #symfony 2 core components and focus on more hi level stuff. #syn', 'natmchugh', 2, 0, 0);
INSERT INTO `tweet` VALUES(195884353300086784, '2012-04-27 14:37:23', '@skoop No longer the case with #zf2 when you install via Pyrus. Composer support is also on the way. /cc @kpschrade', 'weierophinney', 2, 0, 0);
INSERT INTO `tweet` VALUES(195899293310259200, '2012-04-27 15:36:45', 'Today has turned into a day full of just unit testing.  phpunit-skelgen ftw! #php #zf2', 'ralphschindler', 2, 1, 0);
INSERT INTO `tweet` VALUES(195900003133292544, '2012-04-27 15:39:35', 'RT @ralphschindler: Today has turned into a day full of just unit testing.  phpunit-skelgen ftw! #php #zf2', 'theUniC', 2, 0, 0);
INSERT INTO `tweet` VALUES(195902674108022784, '2012-04-27 15:50:11', 'Linus R commented on   ZF-4879 - Multiple equal option values to Zend Form Select elements\n | http://t.co/ztsDxaZg', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(195903343481204738, '2012-04-27 15:52:51', 'Hi #zf2 devs, are there any reasons my listener is not triggered when the bootstrap mvc event is triggered plz? https://t.co/Ua1zgrRE', 'hhamon', 2, 1, 0);
INSERT INTO `tweet` VALUES(195905017444708352, '2012-04-27 15:59:30', 'just got it! Unfortunately, the online doc seems outdated :\\ #zf2', 'hhamon', 2, 1, 0);
INSERT INTO `tweet` VALUES(195909713534259201, '2012-04-27 16:18:10', 'ZF2 Dependency Injection - Multiple Object Instances http://t.co/aB89ncgo via @kpschrade #zf2 #zend', 'kpschrade', 2, 0, 0);
INSERT INTO `tweet` VALUES(195909783268765696, '2012-04-27 16:18:26', 'RT @kpschrade: ZF2 Dependency Injection - Multiple Object Instances http://t.co/aB89ncgo via @kpschrade #zf2 #zend', 'igormx', 2, 0, 0);
INSERT INTO `tweet` VALUES(195911420523720704, '2012-04-27 16:24:57', 'I''ve come to the startling conclusion that I no longer know how to write a straight #php app, only #zf apps. This frightens me.', 'echosa', 2, 1, 0);
INSERT INTO `tweet` VALUES(195916663462432768, '2012-04-27 16:45:47', 'Trying to choose a web framework for a startup - django, padrino, symfony, rails, or zend? Suggestions? Needs: Easy2learn, Fast2Prototype', 'patrickcurl', 2, 1, 0);
INSERT INTO `tweet` VALUES(195922265748144129, '2012-04-27 17:08:02', '#Zend Framework based online marketplace site http://t.co/t9W6CaV0 #jobs', 'pelaphptutor', 2, 1, 0);
INSERT INTO `tweet` VALUES(195922296299470848, '2012-04-27 17:08:10', 'RT @kpschrade: ZF2 Dependency Injection - Multiple Object Instances http://t.co/aB89ncgo via @kpschrade #zf2 #zend', 'lucascorbeaux', 2, 0, 0);
INSERT INTO `tweet` VALUES(195943327647010816, '2012-04-27 18:31:44', 'Handling ZF2 FQ Dependency Setter Injections http://t.co/d00SoyWS via @kpschrade #zf2 #zend', 'kpschrade', 2, 0, 0);
INSERT INTO `tweet` VALUES(195951796886310912, '2012-04-27 19:05:23', 'Pour relaxer d''une grosse semaine, je reprend mes R&amp;D sur #ZendFramework v2 (bÃªta) ... que de changements par rapport Ã  la v1 !', 'letipix', 1, 1, 0);
INSERT INTO `tweet` VALUES(195961563969093633, '2012-04-27 19:44:12', 'Une extension pour utiliser Twig avec le ZF2 : http://t.co/PQvdqmCv', 'benletib', 1, 1, 0);
INSERT INTO `tweet` VALUES(195966992589651969, '2012-04-27 20:05:46', 'Une appli pour tester #ZF2 : https://t.co/E7fatq0z', 'benletib', 1, 1, 0);
INSERT INTO `tweet` VALUES(195970800250138624, '2012-04-27 20:20:54', 'bahahaha @kstoddard! RT #ZF: Living w/a #Gemini Sometimes they need direction &amp; persistence toward attending to priorities around the house.', 'MindeeAviva', 2, 0, 0);
INSERT INTO `tweet` VALUES(195973696299606017, '2012-04-27 20:32:24', 'Looking at #zendframework Lucene for the online bookshop we have in development using the #yiiframework: http://t.co/Zn8MPBE6', 'MattiRessler', 2, 1, 0);
INSERT INTO `tweet` VALUES(195977831182897152, '2012-04-27 20:48:50', 'RT @MindeeAviva: bahahaha @kstoddard! RT #ZF: Living w/a #Gemini Sometimes they need direction &amp; persistence toward attending to priorities around', 'kstoddard', 2, 0, 0);
INSERT INTO `tweet` VALUES(195987942886486016, '2012-04-27 21:29:01', 'Nette debbuger seems wonderful in Zend Framework', 'martinbargl', 2, 1, 0);
INSERT INTO `tweet` VALUES(195988571046420480, '2012-04-27 21:31:31', 'RT @benletib: Une appli pour tester #ZF2 : https://t.co/E7fatq0z', 'Halleck45', 1, 0, 0);
INSERT INTO `tweet` VALUES(195989315963203584, '2012-04-27 21:34:28', 'Annoying #Mysql related #ZendFramework http://t.co/Zh0Bmp6P', 'AndrewX192', 2, 1, 0);
INSERT INTO `tweet` VALUES(195990744534757377, '2012-04-27 21:40:09', 'Hovno Sk commented on   ZF-11431 - zf create db-table.from-database doesn&amp;#39;t work\n | http://t.co/810fI3XK', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(195992692260487169, '2012-04-27 21:47:53', 'I really, really hope that one day I will be followed by zombies. #ZF', 'Grind_n_Roll', 2, 1, 0);
INSERT INTO `tweet` VALUES(195993162567782400, '2012-04-27 21:49:45', 'RT @Grind_n_Roll: I really, really hope that one day I will be followed by zombies. #ZF', 'Chhoaacolate', 2, 0, 0);
INSERT INTO `tweet` VALUES(195995531082874882, '2012-04-27 21:59:10', 'RT @Grind_n_Roll: I really, really hope that one day I will be followed by zombies. #ZF', 'm1969west', 2, 0, 0);
INSERT INTO `tweet` VALUES(196005267559821312, '2012-04-27 22:37:52', '#Virgos are more comfortable showing their love by doing something useful and practical, or simply being there for them. #ZF', 'n0mys', 2, 1, 0);
INSERT INTO `tweet` VALUES(196021554075811840, '2012-04-27 23:42:35', 'Sharing a database connection across modules in Zend Framework 2 | @scoopit http://t.co/QVE5bP5h', 'ExFromTheLeft', 2, 0, 0);
INSERT INTO `tweet` VALUES(196021593443532801, '2012-04-27 23:42:44', 'Zend Framework, Html5, Jquery, Css3, Php: How to change the html ... | @scoopit http://t.co/0DKMjkSj', 'ExFromTheLeft', 2, 0, 0);
INSERT INTO `tweet` VALUES(196030946598850561, '2012-04-28 00:19:54', 'baseDn error when using Zend_Auth_Adapter_Ldap() in Zend Framework 1.11.5 http://t.co/1yGjuFmK', 'justlogged', 2, 1, 0);
INSERT INTO `tweet` VALUES(196106847571296257, '2012-04-28 05:21:30', 'RT : The Big Attraction by a #Scorpio: You guard your privacy, which makes you seem like a tantalizing mystery to be investigated. #ZF', 'SyasyaSakinah', 2, 0, 0);
INSERT INTO `tweet` VALUES(196109770044874752, '2012-04-28 05:33:07', 'Clarita Depue liked Access view variables in another view model: Unlike Zend Framework 1, the view layer in Zendâ€¦ http://t.co/FxxzTc40', 'ghostwrote', 2, 1, 0);
INSERT INTO `tweet` VALUES(196151735180472320, '2012-04-28 08:19:52', 'Next will be integration Zend Framework and PHPDesigner', 'banata_wr', 2, 1, 0);
INSERT INTO `tweet` VALUES(196152154380185600, '2012-04-28 08:21:32', 'IMHO #PHP finally became cool again! #composer #slim #twig @symfony #php-fpm #phing #zf2', 'resmo79', 2, 0, 0);
INSERT INTO `tweet` VALUES(196153727869128704, '2012-04-28 08:27:47', 'Team @databud toolchain @trello #eclipse #zendframework @twitterbootstrap @highcharts #jquery #bitbucket #mysql #symfony2 components #swkla', 'ssmusoke', 2, 0, 0);
INSERT INTO `tweet` VALUES(196153869200400384, '2012-04-28 08:28:21', 'Zend Framework 2 and ZeroMQ (from ZendConf 2012 in Russia)  - http://t.co/sMd4GJmh', 'asyncionews', 2, 1, 0);
INSERT INTO `tweet` VALUES(196154392557273089, '2012-04-28 08:30:26', 'RT @resmo79: IMHO #PHP finally became cool again! #composer #slim #twig @symfony #php-fpm #phing #zf2', 'phingofficial', 2, 0, 0);
INSERT INTO `tweet` VALUES(196154868380086272, '2012-04-28 08:32:19', 'Zend Framework 1.8 Web Application Development (Paperback): This book is an example-driven tutorial that takes y... http://t.co/CqRSBqj8', 'citebebam', 2, 1, 0);
INSERT INTO `tweet` VALUES(196155402646335488, '2012-04-28 08:34:27', 'RT @citebebam : This book is an example-driven tutorial that takes y... http://t.co/LQ59uqEc http://t.co/Cglmo8qi', 'Shishev', 2, 0, 0);
INSERT INTO `tweet` VALUES(196157361415655424, '2012-04-28 08:42:14', 'RT @ssmusoke: Team @databud toolchain @trello #eclipse #zendframework @twitterbootstrap @highcharts #jquery #bitbucket #mysql #symfony2 components #sw', 'ugouganda', 2, 0, 0);
INSERT INTO `tweet` VALUES(196162110995173377, '2012-04-28 09:01:06', 'RT â€œ@resmo79: IMHO #PHP finally became cool again! #composer #slim #twig @symfony #php-fpm #phing #zf2â€ cc @IvanKalaica', 'ajzele', 2, 0, 0);
INSERT INTO `tweet` VALUES(196181570065924096, '2012-04-28 10:18:25', 'Have a choice for today, write some zend framework OR some symfony 2 and doctrine. Still havent worked out if doc 2 is less terrible than 1', 'mattwillo', 2, 1, 0);
INSERT INTO `tweet` VALUES(196185460312256512, '2012-04-28 10:33:53', 'New Blog Post: Zend Form Master with Zend Config - Part 1 :: Custom Filter Paths  http://t.co/oG6JtXNx', 'maltblue', 2, 1, 0);
INSERT INTO `tweet` VALUES(196205541796749313, '2012-04-28 11:53:41', 'Rumbo al #flisol #FlisolPasco a exponer sobre #zend #framework y #drupal', 'dabesac', 2, 1, 0);
INSERT INTO `tweet` VALUES(196210719140749312, '2012-04-28 12:14:15', 'Evan Coury''s Blog: Sharing a database connection across modules in Zend Framework 2 http://t.co/ByNauEYi', 'totallyg33ked', 2, 1, 0);
INSERT INTO `tweet` VALUES(196229851609448448, '2012-04-28 13:30:17', 'Learning Zend Framework. Anyone have tips or resources they would recommend? #zend', 'DaveCaputo', 2, 1, 0);
INSERT INTO `tweet` VALUES(196231026215886849, '2012-04-28 13:34:57', 'I don''t understand our relationship. Sometimes we''re friends, sometimes we''re more then friends &amp; sometimes I''m just a stranger to you. #zf', 'BritAnnJ16', 2, 1, 0);
INSERT INTO `tweet` VALUES(196231054829432832, '2012-04-28 13:35:03', '@DaveCaputo i''ve recommended recently to one guy http://t.co/ISLV3ZLW http://t.co/kQYnUWDL #zend', 'SpAwN_gUy', 2, 0, 0);
INSERT INTO `tweet` VALUES(198749000923496449, '2012-05-05 12:20:29', 'How to overrule the script path by default? http://t.co/Jo1xMn8Z Please reply #zendframework #zf', 'michaelbeers1', 2, 1, 0);
INSERT INTO `tweet` VALUES(198808075757555712, '2012-05-05 16:15:13', 'Y a-t-il dans #ZendFramework un mÃ©canisme de Cache de vue partiellement rendue/rendable ? (ou double passe). http://t.co/IHTy9zw5', 'Moosh_be', 1, 1, 0);
INSERT INTO `tweet` VALUES(198817286826639361, '2012-05-05 16:51:49', 'Actually you don''t need templates in php5 (smarty i.e.). You just need a view that includes a templated .phtml file. See: #ZendFramework', 'nanashiRei', 2, 1, 0);
INSERT INTO `tweet` VALUES(199223876469792768, '2012-05-06 19:47:28', 'Working on some db interface improvements @ work. Using *gasp* functions instead of mapper classes for common queries. #zendframework #php', 'etscrivner', 2, 0, 0);
INSERT INTO `tweet` VALUES(199250726399123456, '2012-05-06 21:34:09', 'Anyone is looking for a #zendframework developer?', 'tagmyjob', 2, 1, 0);
INSERT INTO `tweet` VALUES(199348106712711168, '2012-05-07 04:01:07', 'I''ve tried #zendframework for #php, #django for #python, but nothing so powerful like #Spring for #Java. @SpringSource Next: #grails', 'repcax', 2, 0, 0);
INSERT INTO `tweet` VALUES(199437828764078080, '2012-05-07 09:57:38', 'AssurÃ©ment, la meilleure introduction pour installer Zend Framework sur son poste et lancer les premiÃ¨res commandes http://t.co/CAnpJtrk', 'prompto', 1, 1, 0);
INSERT INTO `tweet` VALUES(199513283563225089, '2012-05-07 14:57:28', 'Took almost three years, but my Zend_Paginator fix has finally become part of #zendframework. YAY! http://t.co/NWcjCbBo', 'mmoussa01', 2, 1, 0);
INSERT INTO `tweet` VALUES(199514456445816833, '2012-05-07 15:02:07', 'je suis a la recherche d''un dev expert zend framework ou symfony pour un projet de site Ã  fort contenu. free ou cdd selon profil', 'damientailhades', 1, 1, 0);
INSERT INTO `tweet` VALUES(199528982302048258, '2012-05-07 15:59:51', 'Working really hard with @stixjelle to migrate our software to #ZendFramework and #Doctrine2!', 'keesschepers', 2, 0, 0);
INSERT INTO `tweet` VALUES(200181924721987584, '2012-05-09 11:14:24', 'The next generation of content management system is comming: http://t.co/R7bdyhzJ #php #cms #nextcms Powered by #zendframework #dojo #jquery', 'thenextcms', 2, 1, 0);
INSERT INTO `tweet` VALUES(200204888314101760, '2012-05-09 12:45:39', 'Juste arrivÃ© au #supinfo job forum de Lille. On est au fond de la salle Ã  droite et on cherche des gens bien #symfony #Symfony2 #Zf2 #agile', 'pockystar', 1, 1, 0);
INSERT INTO `tweet` VALUES(200221543819788289, '2012-05-09 13:51:51', 'Preparing to get freelance #php and #zendframework work. So the portfolio site''s being re-built. What do you think? http://t.co/oWdggcGC', 'settermjd', 2, 1, 0);
INSERT INTO `tweet` VALUES(200484319926550528, '2012-05-10 07:16:01', 'MÃ©canisme trÃ¨s intÃ©ressant et redoutablement pratique : le coupe circuit http://t.co/6nZlsMOP #lostproposal', 'dbrugne', 1, 1, 0);
INSERT INTO `tweet` VALUES(200616824562384897, '2012-05-10 16:02:32', 'Awesome!  @mwillbanks will be speaking on Mobile Push Notifications at @ThatConference  #php #zendframework #zf #mobile http://t.co/S80M2jX0', 'mikegstowe', 2, 0, 0);
INSERT INTO `tweet` VALUES(200878287118020608, '2012-05-11 09:21:30', 'There was another #zfmeetup in Prague yesterday. We did some bughunting for #zendframework 1.12 http://t.co/rFvuQ6JM #zf //cc @akrabat', 'MartinHujer', 2, 0, 0);
INSERT INTO `tweet` VALUES(200917063777271808, '2012-05-11 11:55:35', 'Get my #zf2 modules on http://t.co/Q6ZOTz4M #modules #zendframework', 'blanchonvincent', 2, 1, 0);
INSERT INTO `tweet` VALUES(200941513981698048, '2012-05-11 13:32:44', 'I''m finding it fascinating how #Symfony2 is building up momentum during #ZF2''s continued gestation.', 'stuherbert', 2, 1, 0);
INSERT INTO `tweet` VALUES(200948495086137344, '2012-05-11 14:00:29', '@lsmith let''s change the topic a tad. You come across as uncomfortable that there''s competition from #ZF / #ZF2. Why?', 'stuherbert', 2, 0, 0);
INSERT INTO `tweet` VALUES(200949554340835328, '2012-05-11 14:04:41', 'diving into this. http://t.co/DD4ITbfK @GetGlue #ZendFramework', '1wayrocker', 2, 0, 0);
INSERT INTO `tweet` VALUES(200951125615181825, '2012-05-11 14:10:56', '@rdohms you''ve got to chuckle. for something that isn''t even ready yet, #ZF2 sure does scare certain folks who have nothing to worry about', 'stuherbert', 2, 0, 0);
INSERT INTO `tweet` VALUES(200953238416134144, '2012-05-11 14:19:20', 'Don''t understand this framework bickering. I just use #ZF because it''s supported by @zend. #superioritycomplexes', 'iH8', 2, 0, 0);
INSERT INTO `tweet` VALUES(200956411532939266, '2012-05-11 14:31:56', '@stuherbert you mean if someone else but #ZF can release them as stable? no, not really. could i make pkgs? sure ..', 'lsmith', 2, 0, 0);
INSERT INTO `tweet` VALUES(200957047603347458, '2012-05-11 14:34:28', '@lsmith thanks for the answers. so why don''t we see tweets from you talking about the amazing things that could be done if #zf did this?', 'stuherbert', 2, 0, 0);
INSERT INTO `tweet` VALUES(200960883034300416, '2012-05-11 14:49:42', '@stuherbert if you believe i say bad things about #ZF b/c of fear then you imply i''m intentionally saying wrong things on ZF to discredit it', 'lsmith', 2, 0, 0);
INSERT INTO `tweet` VALUES(200963586808487938, '2012-05-11 15:00:27', 'uuuu, where is FOR_UPDATE? https://t.co/J1FEEyTn #zf2', 'sasezakit', 2, 1, 0);
INSERT INTO `tweet` VALUES(200975929500106753, '2012-05-11 15:49:30', 'RT @EvanDotPro: Blogged: Module-specific layouts (or whatever else) in #ZF2. http://t.co/WmAnaxZM', 'richardjh_org', 2, 0, 0);
INSERT INTO `tweet` VALUES(200986541147947009, '2012-05-11 16:31:40', 'Yesterdays #zfmeetup with @MartinHujer and @OndraM transformed into #bughunt. Result: 12 #zf issues with patches http://t.co/sDlpRAWS', 'tomasfejfar', 2, 0, 0);
INSERT INTO `tweet` VALUES(201005218207514624, '2012-05-11 17:45:53', 'I wanna see u in my dream tonight #ZF', 'lia_rahardjo', 2, 1, 0);
INSERT INTO `tweet` VALUES(201028721799462912, '2012-05-11 19:19:16', 'RT @weierophinney: Glad I''ve taken some time to look at my new #zf2 forms code from a usage level. Some big improvements are queueing up.', 'rPawel', 2, 0, 0);
INSERT INTO `tweet` VALUES(201030359197028352, '2012-05-11 19:25:47', 'H/T to @skoop here''s a project called "CFP" to manage conference RFPs. Please contribute to this! https://t.co/BslD7IYu #zf', 'joedevon', 2, 0, 0);
INSERT INTO `tweet` VALUES(201030417535610880, '2012-05-11 19:26:01', 'RT @joedevon: H/T to @skoop here''s a project called "CFP" to manage conference RFPs. Please contribute to this! https://t.co/BslD7IYu #zf', 'kpschrade', 2, 0, 0);
INSERT INTO `tweet` VALUES(201030840099151872, '2012-05-11 19:27:41', 'RT @joedevon: H/T to @skoop here''s a project called "CFP" to manage conference RFPs. Please contribute to this! https://t.co/BslD7IYu #zf', 'skoop', 2, 0, 0);
INSERT INTO `tweet` VALUES(201031000246075392, '2012-05-11 19:28:20', 'RT @joedevon: H/T to @skoop here''s a project called "CFP" to manage conference RFPs. Please contribute to this! https://t.co/BslD7IYu #zf', 'elazar', 2, 0, 0);
INSERT INTO `tweet` VALUES(201032924320104450, '2012-05-11 19:35:58', 'RT @joedevon: H/T to @skoop here''s a project called "CFP" to manage conference RFPs. Please contribute to this! https://t.co/BslD7IYu #zf', 'harikt', 2, 0, 0);
INSERT INTO `tweet` VALUES(201141593019908097, '2012-05-12 02:47:47', 'RT @YogiWithAStogy: Happy Bday to the hip-hop Sullivangelist @itSuLLGooD. Prolly let the candles on the cake just straight melt huh? #ZFG #IDontGiveAF', 'itSuLLGooD', 2, 0, 0);
INSERT INTO `tweet` VALUES(201261259935588352, '2012-05-12 10:43:18', 'are there any open source #zf2 projects out there?', 'billyildirim', 2, 1, 0);
INSERT INTO `tweet` VALUES(201262070052818944, '2012-05-12 10:46:31', 'RT @EvanDotPro: Blogged: Module-specific layouts (or whatever else) in #ZF2. http://t.co/WmAnaxZM', 'xerkus', 2, 0, 0);
INSERT INTO `tweet` VALUES(201262145177010176, '2012-05-12 10:46:49', 'RT @weierophinney: Just finished the last changes in the new #zf2 form implementation prior to a review by @akrabat tomorrow. Not complete, but solid.', 'xerkus', 2, 0, 0);
INSERT INTO `tweet` VALUES(201273277434441728, '2012-05-12 11:31:03', 'The lack of a clear goal with Annotations in #ZF2 is something that really disappoints me.', 'rdohms', 2, 1, 0);
INSERT INTO `tweet` VALUES(201325836710850560, '2012-05-12 14:59:54', 'In English versions of The Blind Dead films they are called "Templar Knights" in original Spanish film they are "Warriors of The Orient" #zf', 'FlyBoysZomFacts', 2, 1, 0);
INSERT INTO `tweet` VALUES(201337278516297728, '2012-05-12 15:45:22', 'My proposal for the new Zend\\Crypt of #zf2, check it out! https://t.co/Mk3RRvvx', 'ezimuel', 2, 1, 0);
INSERT INTO `tweet` VALUES(201339646955892736, '2012-05-12 15:54:47', 'RT @ezimuel: My proposal for the new Zend\\Crypt of #zf2, check it out! https://t.co/Mk3RRvvx', 'xerkus', 2, 0, 0);
INSERT INTO `tweet` VALUES(201343150525132801, '2012-05-12 16:08:42', 'RT @ezimuel: My proposal for the new Zend\\Crypt of #zf2, check it out! https://t.co/Mk3RRvvx', 'weierophinney', 2, 0, 0);
INSERT INTO `tweet` VALUES(201346616404344833, '2012-05-12 16:22:28', 'RT @ezimuel: My proposal for the new Zend\\Crypt of #zf2, check it out! https://t.co/Mk3RRvvx', 'andigutmans', 2, 0, 0);
INSERT INTO `tweet` VALUES(201373694503813121, '2012-05-12 18:10:04', 'RT @ezimuel: My proposal for the new Zend\\Crypt of #zf2, check it out! https://t.co/Mk3RRvvx', 'eddiejaoude', 2, 0, 0);
INSERT INTO `tweet` VALUES(201386582354305025, '2012-05-12 19:01:17', '#Module-specific layouts in #Zend Framework 2 #ZF2 Â» Evan''s Blog http://t.co/SkKQDPqK', 'SevenyMedia', 2, 1, 0);
INSERT INTO `tweet` VALUES(201420218319372288, '2012-05-12 21:14:56', '@weierophinney @akrabat which ones specifically? #ZF2', 'breerly', 2, 0, 0);
INSERT INTO `tweet` VALUES(201423465436282881, '2012-05-12 21:27:51', 'RT @ezimuel: My proposal for the new Zend\\Crypt of #zf2, check it out! https://t.co/Mk3RRvvx', 'motanelu', 2, 0, 0);
INSERT INTO `tweet` VALUES(201438499818311680, '2012-05-12 22:27:35', 'I just wrote my first ZF Resource Plugin that really makes sense! Good feeling. #zend #zf #php', 'jakub_kulak', 2, 1, 0);
INSERT INTO `tweet` VALUES(201447900688039936, '2012-05-12 23:04:56', 'ZF wurfl returns exception (no device with generic_mobile ID) for Nokia N900 on default browser, fine on Opera = WEIRD! #wurfl #zf #php', 's2s2web', 2, 1, 0);
INSERT INTO `tweet` VALUES(201528415701041152, '2012-05-13 04:24:53', 'I''ve been a beta slut for 3 years @AdamWhitt418 #zf #winning', 'mellymel1230', 2, 0, 0);
INSERT INTO `tweet` VALUES(201529738035068928, '2012-05-13 04:30:08', 'RT @mellymel1230: I''ve been a beta slut for 3 years @AdamWhitt418 #zf #winning', 'AdamWhitt418', 2, 0, 0);
INSERT INTO `tweet` VALUES(201589071380881408, '2012-05-13 08:25:54', 'Check this out: Develop #PHP mobile applications with #Zend Framework, May 15 by @ezimuel #zf http://t.co/WlD2Bb0f', 'prompto', 2, 0, 0);
INSERT INTO `tweet` VALUES(201594183226630144, '2012-05-13 08:46:13', 'http://t.co/4oAzo34m about #php54 #ZF2 and #zs9', 'tab4by', 2, 1, 0);
INSERT INTO `tweet` VALUES(201603281984823297, '2012-05-13 09:22:22', 'Quelqu''un ici maitrise Zend ou Symfony ? C''est facile Ã  prendre en main quand on y connait pas grand chose en framework ?', 'fabiengr', 1, 1, 0);
INSERT INTO `tweet` VALUES(201608349555499009, '2012-05-13 09:42:30', '@Seby2027 Zend Framework et Symfony2 car ils sont simples, puissants, et ont une communautÃ© trÃ¨s importante derriÃ¨re eux', 'pierretranchard', 1, 0, 0);
INSERT INTO `tweet` VALUES(201661911421558786, '2012-05-13 13:15:21', 'Use google translate for a website. Good job! Well done. #ZendFramework http://t.co/OOqHIdBs', 'tab4by', 2, 1, 0);
INSERT INTO `tweet` VALUES(201690407178997762, '2012-05-13 15:08:34', 'interresting http://t.co/G2OaaXQd Develop #PHP mobile applications with #ZendFramework', 'rapha_86', 2, 1, 0);
INSERT INTO `tweet` VALUES(201715774614798337, '2012-05-13 16:49:23', 'Le ServiceManager du #zendframework 2 expliquÃ© : http://t.co/idPppnSW #zf2', 'blanchonvincent', 2, 1, 0);
INSERT INTO `tweet` VALUES(201724165475143680, '2012-05-13 17:22:43', 'RT @blanchonvincent: Le ServiceManager du #zendframework 2 expliquÃ© : http://t.co/idPppnSW #zf2', 'lucascorbeaux', 2, 0, 0);
INSERT INTO `tweet` VALUES(201747828991737856, '2012-05-13 18:56:45', 'J''ai rejoint le groupe Viadeo Zend Framework : http://t.co/7sEZC2bm', 'TGIORDMA', 1, 1, 0);
INSERT INTO `tweet` VALUES(201796077945491457, '2012-05-13 22:08:28', 'A #Taurus woman likes harmony and tranquility, so don''t engage in arguing and harsh discussions she doesn''t have time for the bullshit. #ZF', 'LiaLegrands', 2, 1, 0);
INSERT INTO `tweet` VALUES(201870663777132544, '2012-05-14 03:04:51', 'RT  #Taurus you seem to take everything in stride while keeping a level head and staying calm and unperturbed in the worst of situations #ZF', 'AMayrika', 2, 0, 0);
INSERT INTO `tweet` VALUES(201954416012701696, '2012-05-14 08:37:39', 'Tomorrow @ezimuel will show how to develop #PHP mobile applications with Zend Framework. Register here: http://t.co/1VDl8UGR #zf', 'WebinarsatZend', 2, 0, 0);
INSERT INTO `tweet` VALUES(202001082442985473, '2012-05-14 11:43:05', 'Master Of Zend Framework en 2 jours. Qui a dit que ce Framework Ã©tait compliquÃ©? Parce qu''il s''est trompÃ© ! ^^', 'MelinaCaVa34', 1, 1, 0);
INSERT INTO `tweet` VALUES(202006936835727360, '2012-05-14 12:06:21', 'Who wants to have http://t.co/VJtoVu4x domain? #zendframework #zend #php Contact me! I will donate it to the Zend Framework #php community', 'thomasf', 2, 1, 0);
INSERT INTO `tweet` VALUES(202017328005783552, '2012-05-14 12:47:38', 'A fini depuis vendredi son stage de web dev chez @AgenceUzik ! Merci @enuniforme et @Stormfaint pour la formation sur #ZendFramework.', 'gerardchic', 1, 0, 0);
INSERT INTO `tweet` VALUES(202022151744782336, '2012-05-14 13:06:49', 'Quelqu''un a deja mis en place un serveur Oauth avec le zend framework ?', 'xenderCreation', 1, 1, 0);
INSERT INTO `tweet` VALUES(202045403393302528, '2012-05-14 14:39:12', 'Was about to use the ZendX_JQuery library, but it seems it will be drop on #ZF2 ... On the long run, better go with another option', 'camposgalan', 2, 1, 0);
INSERT INTO `tweet` VALUES(202050651214192641, '2012-05-14 15:00:03', '#Job - Project Manager- Zend Framework   - http://t.co/58RQN7Br 61', 'Open_Project_ro', 2, 1, 0);
INSERT INTO `tweet` VALUES(202051286823223296, '2012-05-14 15:02:35', 'Analyste fonctionnel Zend Framework: Nous recherchons dans le cadre dâ€™un nouveau projet, au... http://t.co/f2vWQNgC #freelance #missions', 'freelanceOffres', 1, 1, 0);
INSERT INTO `tweet` VALUES(202062503654588418, '2012-05-14 15:47:09', 'Zend Framework 2.0.0beta3 Released! http://t.co/wJb6fOHK', 'fuzzybee7', 2, 1, 0);
INSERT INTO `tweet` VALUES(202062524085055490, '2012-05-14 15:47:14', 'Out tomorrow: the second part of mastering zend form configuration. #zend #zf #forms', 'maltblue', 2, 1, 0);
INSERT INTO `tweet` VALUES(202064063843401730, '2012-05-14 15:53:21', 'Oh, Guys! Zend Framework is awesome! So Easy and fast.', 'WSafild', 2, 1, 0);
INSERT INTO `tweet` VALUES(202068291047522306, '2012-05-14 16:10:09', 'Adam Lundrigan commented on   ZF-11542 - major incompatibility introduced in commit #21893\n | http://t.co/3j8hY2CQ', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(202068294566555649, '2012-05-14 16:10:10', 'Adam Lundrigan commented on   ZF-12054 - Possible XSS in Zend_View::escape()\n | http://t.co/mxzze3wS', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(202070810880507904, '2012-05-14 16:20:10', 'Adam Lundrigan closed   ZF-11499 - PHP5 UTF-8\n | http://t.co/I5mwzklb', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(202070826898558976, '2012-05-14 16:20:14', 'Adam Lundrigan closed   ZF-10723 - Namespace issues in Zend\\Db\\Adapter\\AbstractAdapter\n | http://t.co/DsQVVzSJ', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(202070830111395840, '2012-05-14 16:20:14', 'Adam Lundrigan closed   ZF-8924 - Zend_Auth_Adapther_Http weird production problem\n | http://t.co/6WIvNYBE', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(202070833458458626, '2012-05-14 16:20:15', 'Adam Lundrigan commented on   ZF-9527 - When Using ZendStudio locally; the browser doesn&amp;#39;t always show any html\n | http://t.co/T8GUzeqN', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(202079697725689858, '2012-05-14 16:55:29', 'Anyone knows #zf2 irc ?', 'harikt', 2, 1, 0);
INSERT INTO `tweet` VALUES(202080355795210241, '2012-05-14 16:58:05', 'RT @harikt: Anyone knows #zf2 irc ?', 'stuherbert', 2, 0, 0);
INSERT INTO `tweet` VALUES(202095010835988480, '2012-05-14 17:56:19', 'Don''t miss our next meeting on June 7th: "ZF2 Dependency injection" with Maurice Kherlakian http://t.co/Jrocv8Lz #phpquebec #zf2', 'phpquebec', 2, 1, 0);
INSERT INTO `tweet` VALUES(202095976108916738, '2012-05-14 18:00:10', 'Adam Lundrigan updated the Description of   ZF-11906 - Update library and test suite to be compatible with PHP 5.4\n | http://t.co/fx0kmTTp', 'ZFv1_JIRA', 2, 1, 0);
INSERT INTO `tweet` VALUES(202107633816174592, '2012-05-14 18:46:29', 'Bem chatinhos esses decorators do Zend Form =/  #ZendFramework', 'Rangel_Netto', 2, 1, 0);
INSERT INTO `tweet` VALUES(202113798205734913, '2012-05-14 19:10:59', 'Quelqu''un pour me faire pour la traduction en anglais de mes articles sur zend framework 2 pour la communautÃ© en/us ?', 'blanchonvincent', 1, 1, 0);
INSERT INTO `tweet` VALUES(202120089691111424, '2012-05-14 19:35:59', 'Just reading @cakephp manual, definitely the way forward on my next project, very easy to get started compared with Zend Framework... Nice!', 'ukwebdeveloper', 2, 0, 0);
INSERT INTO `tweet` VALUES(202123494119579649, '2012-05-14 19:49:30', 'Php Coder That Know Zend Framework To Complete Website 2 #jobs http://t.co/MLLJNAIO', 'OutsrceWebsite', 2, 1, 0);
INSERT INTO `tweet` VALUES(202123674998935553, '2012-05-14 19:50:14', 'Php Coder That Know Zend Framework To Complete Website 2 http://t.co/C9WKMDao #php', 'php_gigs', 2, 1, 0);
INSERT INTO `tweet` VALUES(202126545513492480, '2012-05-14 20:01:38', 'New Online Job: Php Coder That Know Zend Framework To Complete Website 2: Hello\n\nI have a site that is set up th... http://t.co/B255l1E9', 'freejobsonline', 2, 1, 0);
INSERT INTO `tweet` VALUES(202126903761571840, '2012-05-14 20:03:03', 'Php Coder That Know Zend Framework To Complete Website 2: Hello\n\nI have a site that is set up that n... http://t.co/m2NU5wtr #work #jobs', 'StartWorkNow', 2, 1, 0);
INSERT INTO `tweet` VALUES(202126990533337088, '2012-05-14 20:03:24', '#jobs - Php Coder That Know Zend Framework To Complete Website 2 http://t.co/pXdGFepq', 'RunarsJobs', 2, 1, 0);
INSERT INTO `tweet` VALUES(202127736624517120, '2012-05-14 20:06:22', 'Php Coder That Know Zend Framework To Complete Website 2 http://t.co/mHXRoocp', 'job4freelancerc', 2, 1, 0);
INSERT INTO `tweet` VALUES(202130637648445440, '2012-05-14 20:17:54', 'EscalateSEO - Php Coder That Know Zend Framework To Complete Website 2: Hello I have a site that is set up that ... http://t.co/qroGlO9C', 'EscalateSEO', 2, 1, 0);
INSERT INTO `tweet` VALUES(202132038990569472, '2012-05-14 20:23:28', 'PHP coder that know Zend Framework To Complete Website 2 http://t.co/EuOec23b', 'php_projects', 2, 1, 0);
INSERT INTO `tweet` VALUES(202132815184273408, '2012-05-14 20:26:34', 'Facebooking on the job... giving #zf http://t.co/0WPdZni5', 'mellymel1230', 2, 1, 0);
INSERT INTO `tweet` VALUES(202134701492809728, '2012-05-14 20:34:02', 'RT @RunarsJobs: #jobs - Php Coder That Know Zend Framework To Complete Website 2 http://t.co/pXdGFepq', 'PHPandSEOJobs', 2, 0, 0);
INSERT INTO `tweet` VALUES(202135318701408258, '2012-05-14 20:36:30', 'Php Coder That Know Zend Framework To Complete Website 2 http://t.co/TeJ8Ephr', 'scriptlancescoc', 2, 1, 0);
INSERT INTO `tweet` VALUES(202137998874251264, '2012-05-14 20:47:09', 'RT @akrabat: Linked to: Evan Coury: Module-specific layouts in Zend Framework 2 http://t.co/NOaBTjo3', 'LucaGaspariEN', 2, 0, 0);
INSERT INTO `tweet` VALUES(202142031630438400, '2012-05-14 21:03:10', 'WEBINAR: Develop #PHP Mobile Applications with #Zend Framework #ZF http://t.co/k0XnuNj3', 'primolapdk', 2, 1, 0);
INSERT INTO `tweet` VALUES(202142651796037633, '2012-05-14 21:05:38', 'Php Coder That Know Zend Framework To Complete Website 2 - http://t.co/ViLigUQU', 'AdvertisingWork', 2, 1, 0);
INSERT INTO `tweet` VALUES(202148420742418434, '2012-05-14 21:28:33', 'Php Coder That Know Zend Framework To Complete Website 2:  http://t.co/IcmrBnSc', 'php_bb', 2, 1, 0);
INSERT INTO `tweet` VALUES(243550790927659008, '2012-09-06 03:26:48', '2.5 years of development, &gt; 2000 changesets, and &gt; 200 contributors. #zf2 is stable: http://t.co/i6Gt9pp1', 'weierophinney', 2, 1, 0);
INSERT INTO `tweet` VALUES(243626421694656513, '2012-09-06 08:27:19', 'Le Zend Framework 2 est disponible en version stable ! http://t.co/zh7WYH7y #zf #zf2 #zend #php #ZendFramework #ZendFramework2', 'arnolem', 2, 1, 0);
INSERT INTO `tweet` VALUES(243629038722248704, '2012-09-06 08:37:43', 'RT @arnolem: Le Zend Framework 2 est disponible en version stable ! http://t.co/zh7WYH7y #zf #zf2 #zend #php #ZendFramework #ZendFramework2', 'alexmex_', 2, 0, 0);
INSERT INTO `tweet` VALUES(243660429765791745, '2012-09-06 10:42:28', 'RT @arnolem: Le Zend Framework 2 est disponible en version stable ! http://t.co/zh7WYH7y #zf #zf2 #zend #php #ZendFramework #ZendFramework2', 'alaingrange', 2, 0, 0);
INSERT INTO `tweet` VALUES(243668560419905536, '2012-09-06 11:14:46', '2.5 years, 5 continents, &gt;200 contributors Zend Framework 2.0 is RELEASED!  http://t.co/oUyMrXiP', 'zeevs', 2, 1, 0);
INSERT INTO `tweet` VALUES(243669805847171072, '2012-09-06 11:19:43', 'Zend Framework 2.0 (stable) is now available in #phpcloud apps gallery. #ZF2 #PHP #Zend', 'phpCloud', 2, 1, 0);
INSERT INTO `tweet` VALUES(243682853525786624, '2012-09-06 12:11:34', 'RT @arnolem: Le Zend Framework 2 est disponible en version stable ! http://t.co/zh7WYH7y #zf #zf2 #zend #php #ZendFramework #ZendFramework2', 'wixiweb', 2, 0, 0);
INSERT INTO `tweet` VALUES(243713588345319424, '2012-09-06 14:13:42', 'Zend Framework 2.0 is officially released!  New features, new capabilities, and a new MVC model make it a very... http://t.co/pNJz66PS', 'zend', 2, 1, 0);
INSERT INTO `tweet` VALUES(243721044995743744, '2012-09-06 14:43:19', 'Why bother with Zend Framework 2? : PHP: #symfony2 #zendframework2 #opinion #framework http://t.co/632lOIhY', 'phpquickfix', 2, 1, 0);
INSERT INTO `tweet` VALUES(243723682416062465, '2012-09-06 14:53:48', 'RT @phpquickfix: Why bother with Zend Framework 2? : PHP: #symfony2 #zendframework2 #opinion #framework http://t.co/632lOIhY', 'nebiros', 2, 0, 0);
INSERT INTO `tweet` VALUES(243776804521914368, '2012-09-06 18:24:54', 'Zend Framework 2 Released: http://t.co/B4MUSG5E #Zend #ZendFramework2', 'soliantconsult', 2, 1, 0);
INSERT INTO `tweet` VALUES(243829789226594304, '2012-09-06 21:55:26', 'Zend Framework 1 n''est pas mort, le support est prolongÃ© au moins jusqu''en 2014 (voir plus). #zf1 et #zf2 sont deux produits diffÃ©rents #php', 'arnolem', 1, 1, 0);
INSERT INTO `tweet` VALUES(243832752477204480, '2012-09-06 22:07:13', 'RT @arnolem: Zend Framework 1 n''est pas mort, le support est prolongÃ© au moins jusqu''en 2014 (voir plus). #zf1 et #zf2 sont deux produit ...', 'padraicb', 1, 0, 0);
INSERT INTO `tweet` VALUES(243833665874960385, '2012-09-06 22:10:50', 'RT @arnolem: Zend Framework 1 n''est pas mort, le support est prolongÃ© au moins jusqu''en 2014 (voir plus). #zf1 et #zf2 sont deux produit ...', 'Freeaqingme', 1, 0, 0);
INSERT INTO `tweet` VALUES(243858002191450113, '2012-09-06 23:47:33', 'RT @arnolem: Zend Framework 1 n''est pas mort, le support est prolongÃ© au moins jusqu''en 2014 (voir plus). #zf1 et #zf2 sont deux produit ...', 'remisouverain', 1, 0, 0);
INSERT INTO `tweet` VALUES(243940500304957440, '2012-09-07 05:15:22', 'RT @phpquickfix: Why bother with Zend Framework 2? : PHP: #symfony2 #zendframework2 #opinion #framework http://t.co/632lOIhY', 'ArneCoder', 2, 0, 0);
INSERT INTO `tweet` VALUES(243967899168022528, '2012-09-07 07:04:14', 'RT @arnolem: Zend Framework 1 n''est pas mort, le support est prolongÃ© au moins jusqu''en 2014 (voir plus). #zf1 et #zf2 sont deux produit ...', 'maximemdotnet', 1, 0, 0);
INSERT INTO `tweet` VALUES(243972347567161344, '2012-09-07 07:21:55', '#ZF2 stable est disponible! http://t.co/ijhiXth2', 'VincentChabot', 1, 1, 0);
INSERT INTO `tweet` VALUES(243976067222745088, '2012-09-07 07:36:41', 'RT @VincentChabot: #ZF2 stable est disponible! http://t.co/ijhiXth2', 'AWFormation', 1, 0, 0);
INSERT INTO `tweet` VALUES(243991987890561024, '2012-09-07 08:39:57', 'RT @VincentChabot: #ZF2 stable est disponible! http://t.co/ijhiXth2', 'N1c0lasB', 1, 0, 0);
INSERT INTO `tweet` VALUES(244009345313021953, '2012-09-07 09:48:56', 'Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© e... http://t.co/prefHyPe by Lewis Tweet', 'ouslewis', 1, 1, 0);
INSERT INTO `tweet` VALUES(244009911174959104, '2012-09-07 09:51:10', '-RT @Developpez: Le Zend Framework2 est sorti, rÃ©Ã©criture complÃ¨te du code pr plus de modularitÃ©, flexibilitÃ©,sÃ©curitÃ© http://t.co/n9n82saO', 'shloch', 1, 0, 0);
INSERT INTO `tweet` VALUES(244010251748253696, '2012-09-07 09:52:32', 'RT @Developpez: Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/ ...', 'tomsyweb', 1, 0, 0);
INSERT INTO `tweet` VALUES(244011258804858880, '2012-09-07 09:56:32', 'Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/VlhgAVo6', 'geekastuces', 1, 1, 0);
INSERT INTO `tweet` VALUES(244011863740907520, '2012-09-07 09:58:56', 'RT @arnolem: Zend Framework 1 n''est pas mort, le support est prolongÃ© au moins jusqu''en 2014 (voir plus). #zf1 et #zf2 sont deux produit ...', 'rapha_86', 1, 0, 0);
INSERT INTO `tweet` VALUES(244012010042445825, '2012-09-07 09:59:31', 'RT @arnolem: Zend Framework 1 n''est pas mort, le support est prolongÃ© au moins jusqu''en 2014 (voir plus). #zf1 et #zf2 sont deux produit ...', 'notFloran', 1, 0, 0);
INSERT INTO `tweet` VALUES(244013714959900672, '2012-09-07 10:06:17', 'RT @Developpez: Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/ ...', 'jeromepupier_4D', 1, 0, 0);
INSERT INTO `tweet` VALUES(244019712848187392, '2012-09-07 10:30:07', 'RT @Developpez: Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/ ...', 'runs59', 1, 0, 0);
INSERT INTO `tweet` VALUES(244020491763974144, '2012-09-07 10:33:13', 'RT @arnolem: Zend Framework 1 n''est pas mort, le support est prolongÃ© au moins jusqu''en 2014 (voir plus). #zf1 et #zf2 sont deux produits...', 'VincentChabot', 1, 0, 0);
INSERT INTO `tweet` VALUES(244023767733530624, '2012-09-07 10:46:14', 'Le #Zend #Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© : http://t.co/O7aa5gW6', 'sebastienheyd', 1, 1, 0);
INSERT INTO `tweet` VALUES(244023960948322304, '2012-09-07 10:47:00', 'RT @Developpez: Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/ ...', 'pierredurand87', 1, 0, 0);
INSERT INTO `tweet` VALUES(244026044103942144, '2012-09-07 10:55:17', 'RT @Developpez: Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/ ...', 'AdrienPro', 1, 0, 0);
INSERT INTO `tweet` VALUES(244026936769265664, '2012-09-07 10:58:50', 'Le #Zend #Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© : http://t.co/4Cdow6nr', 'advisatechno', 1, 1, 0);
INSERT INTO `tweet` VALUES(244031317170335744, '2012-09-07 11:16:14', 'RT @Developpez: Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/ ...', 'damdirt', 1, 0, 0);
INSERT INTO `tweet` VALUES(244031671576453120, '2012-09-07 11:17:39', 'RT @Developpez: Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/ ...', 'Atheanor', 1, 0, 0);
INSERT INTO `tweet` VALUES(244037679761743872, '2012-09-07 11:41:31', 'RT @Developpez: Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/ ...', 'sandbara', 1, 0, 0);
INSERT INTO `tweet` VALUES(244039305394286593, '2012-09-07 11:47:59', 'RT @Developpez: Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/ ...', 'QBaptiste', 1, 0, 0);
INSERT INTO `tweet` VALUES(244046445639000064, '2012-09-07 12:16:21', 'Pourquoi choisir #sf2 ? parce que c''est comme #ZF2 ! http://t.co/oXPB9EE0 / cc @fabpot', 'mageekguy', 1, 0, 0);
INSERT INTO `tweet` VALUES(244047449935736832, '2012-09-07 12:20:20', 'RT @mageekguy : Pourquoi choisir #sf2 ? parce que c''est comme #ZF2 ! http://t.co/NDb8qk4j', 'FabienSalles', 1, 0, 0);
INSERT INTO `tweet` VALUES(244048083816689665, '2012-09-07 12:22:52', 'RT @mageekguy: Pourquoi choisir #sf2 ? parce que c''est comme #ZF2 ! http://t.co/oXPB9EE0 / cc @fabpot', 'antoineguiral', 1, 0, 0);
INSERT INTO `tweet` VALUES(244048774845050880, '2012-09-07 12:25:36', 'RT @mageekguy: Pourquoi choisir #sf2 ? parce que c''est comme #ZF2 ! http://t.co/oXPB9EE0 / cc @fabpot', 'b_thuillier', 1, 0, 0);
INSERT INTO `tweet` VALUES(244049711923855360, '2012-09-07 12:29:20', 'RT @mageekguy: Pourquoi choisir #sf2 ? parce que c''est comme #ZF2 ! http://t.co/oXPB9EE0 / cc @fabpot', 'foxmask', 1, 0, 0);
INSERT INTO `tweet` VALUES(244050226279743488, '2012-09-07 12:31:22', 'RT @mageekguy: Pourquoi choisir #sf2 ? parce que c''est comme #ZF2 ! http://t.co/oXPB9EE0 / cc @fabpot', 'relucblog', 1, 0, 0);
INSERT INTO `tweet` VALUES(244056377604046849, '2012-09-07 12:55:49', 'RT @mageekguy: Pourquoi choisir #sf2 ? parce que c''est comme #ZF2 ! http://t.co/oXPB9EE0 / cc @fabpot', 'euskadi31', 1, 0, 0);
INSERT INTO `tweet` VALUES(244059147836993536, '2012-09-07 13:06:49', 'Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/dgGlMOkE Le Zend ...', 'OCEHO', 1, 1, 0);
INSERT INTO `tweet` VALUES(244070258456018945, '2012-09-07 13:50:58', 'Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curit... http://t.co/rpOUGZvD #Zend', 'ZEND_DVP', 1, 1, 0);
INSERT INTO `tweet` VALUES(244075555216056322, '2012-09-07 14:12:01', 'Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/UIzv7tSg Le Zend ...', 'OCEHO', 1, 1, 0);
INSERT INTO `tweet` VALUES(244076264795799552, '2012-09-07 14:14:50', 'RT @mageekguy: Pourquoi choisir #sf2 ? parce que c''est comme #ZF2 ! http://t.co/oXPB9EE0 / cc @fabpot', 'webaaz', 1, 0, 0);
INSERT INTO `tweet` VALUES(244076956021317632, '2012-09-07 14:17:35', '#php #web Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©c... http://t.co/zRvYumn7', 'php_DVP', 1, 1, 0);
INSERT INTO `tweet` VALUES(244083252585967618, '2012-09-07 14:42:36', 'Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/LKv306jB', 'Nanaki43', 1, 1, 0);
INSERT INTO `tweet` VALUES(244103426319978496, '2012-09-07 16:02:46', 'Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ©:  http://t.co/9wZ7plIJ #php', 'vlizco', 1, 1, 0);
INSERT INTO `tweet` VALUES(244123327118069761, '2012-09-07 17:21:51', 'Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/UIzv7tSg Le Zend ...', 'OCEHO', 1, 1, 0);
INSERT INTO `tweet` VALUES(244142258369220608, '2012-09-07 18:37:04', '10 000 lignes juste pour "So we do not need to populate the formâ€™s data". Ok cimer #zf2 ! Bref j''arrÃªtes mais tweets de dev rageux.', 'Danetag', 1, 1, 0);
INSERT INTO `tweet` VALUES(244144761613729792, '2012-09-07 18:47:01', 'La doc selon Zend http://t.co/89VzyTXk on continue dans le mÃªme dÃ©lire', 'Danetag', 1, 1, 0);
INSERT INTO `tweet` VALUES(244151473489977344, '2012-09-07 19:13:42', '#Symfony2.1 &amp; #ZendFramework2 - its a good time to be doing #PHP - now if we could only get an interactive CLI debugger.', 'breerly', 2, 1, 0);
INSERT INTO `tweet` VALUES(244163497783607296, '2012-09-07 20:01:28', 'Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et... http://t.co/RL5gEQhU via @developpez', 'lucascorbeaux', 1, 0, 0);
INSERT INTO `tweet` VALUES(244169462314569728, '2012-09-07 20:25:10', 'RT @EvanDotPro: In response to @fabpot''s recent "Why Symfony" post, I''ve blogged "Why Zend Framework" http://t.co/rJSr8Y1p #zf2 #symfony', 'blanchonvincent', 2, 0, 0);
INSERT INTO `tweet` VALUES(244174763357007876, '2012-09-07 20:46:14', 'RT @EvanDotPro: In response to @fabpot''s recent "Why Symfony" post, I''ve blogged "Why Zend Framework" http://t.co/rJSr8Y1p #zf2 #symfony', 'ajaxman', 2, 0, 0);
INSERT INTO `tweet` VALUES(244175504087859200, '2012-09-07 20:49:11', '@weierophinney using #nginx and #zf2, i show error,  ''Host "~^(.*)$" is not valid or is not accepted by Zend\\Uri\\Http'' , some idea?', 'ajaxman', 2, 0, 0);
INSERT INTO `tweet` VALUES(244176109925724161, '2012-09-07 20:51:35', '@zeevs I must say the new Zend Framework 2.0 starter page, looks 10000x better and professional then the last. Nicely done. #ZF2', 'mildev', 2, 0, 0);
INSERT INTO `tweet` VALUES(244179868282134528, '2012-09-07 21:06:31', 'Downloading the new #ZF2 - yeah, I''m curious as heck. http://t.co/PMweKiQW', 'johnmcl69', 2, 1, 0);
INSERT INTO `tweet` VALUES(244182260138516482, '2012-09-07 21:16:02', '@sam_dark had the same thought many times last days when checking out #zf2 and some tutorials about DI. :-D', 'The_CeBe', 2, 0, 0);
INSERT INTO `tweet` VALUES(244185815415156738, '2012-09-07 21:30:09', 'RT @Developpez: Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©curitÃ© http://t.co/ ...', 'MrBlack_75', 1, 0, 0);
INSERT INTO `tweet` VALUES(244195325282226176, '2012-09-07 22:07:57', '"@zend: Press release: Zend Announces General Availability of Zend Framework 2 http://t.co/wenk0hAb"', 'cadurruti', 2, 0, 0);
INSERT INTO `tweet` VALUES(244197379069341696, '2012-09-07 22:16:06', 'Zend Framework 2.0.0 STABLE Released! http://t.co/1jwyKc2V', 'hisa_py', 2, 1, 0);
INSERT INTO `tweet` VALUES(244197980507348992, '2012-09-07 22:18:30', 'Can''t wait for #Symfony 3 to be released so #ZendFramework 3 work can begin *wink* cc #Symfony2 #ZF2 #PHP', 'breerly', 2, 1, 0);
INSERT INTO `tweet` VALUES(244198570016784384, '2012-09-07 22:20:50', 'RT @hisa_py: Zend Framework 2.0.0 STABLE Released! http://t.co/1jwyKc2V', 'DaniBernalF', 2, 0, 0);
INSERT INTO `tweet` VALUES(244199870292967424, '2012-09-07 22:26:00', 'RT @EvanDotPro: In response to @fabpot''s recent "Why Symfony" post, I''ve blogged "Why Zend Framework" http://t.co/rJSr8Y1p #zf2 #symfony', 'atukai', 2, 0, 0);
INSERT INTO `tweet` VALUES(244202972387610624, '2012-09-07 22:38:20', 'Zend Framework 2.0.0 STABLE released!', 'AlekRancic', 2, 1, 0);
INSERT INTO `tweet` VALUES(244203616049717248, '2012-09-07 22:40:53', 'On ne prend pas autant de risques chez #ZF: "The advances in Zend Framework 2 are too numerous to list" http://t.co/ArcvmLrB cc @mageekguy', 'crash__', 2, 0, 0);
INSERT INTO `tweet` VALUES(244204371439652865, '2012-09-07 22:43:53', 'RT @mageekguy: Pourquoi choisir #sf2 ? parce que c''est comme #ZF2 ! http://t.co/oXPB9EE0 / cc @fabpot', 'Narno', 1, 0, 0);
INSERT INTO `tweet` VALUES(244232235870457856, '2012-09-08 00:34:37', 'RT @EvanDotPro: In response to @fabpot''s recent "Why Symfony" post, I''ve blogged "Why Zend Framework" http://t.co/rJSr8Y1p #zf2 #symfony', 'spiffyjr', 2, 0, 0);
INSERT INTO `tweet` VALUES(244250864695513090, '2012-09-08 01:48:38', 'Having taken a look at the new #zf2, I think @ealexhudson expresses perfectly well my sentiments :( http://t.co/dPlIBiGp', 'dadepo', 2, 0, 0);
INSERT INTO `tweet` VALUES(244266314229755904, '2012-09-08 02:50:02', 'Zend Framework 2 Released! Modular, Modern, Stellar!  http://t.co/PIryP7oF shared by @iNisa', 'phpcamp', 2, 0, 0);
INSERT INTO `tweet` VALUES(244266847048966144, '2012-09-08 02:52:09', 'Zend Framework 2 is out.  YAY!!!', 'marioraffonso', 2, 1, 0);
INSERT INTO `tweet` VALUES(244274670575165440, '2012-09-08 03:23:14', 'RT @phpCloud: Zend Framework 2.0 (stable) is now available in #phpcloud apps gallery. #ZF2 #PHP #Zend', 'khanhtran', 2, 0, 0);
INSERT INTO `tweet` VALUES(244275559415300096, '2012-09-08 03:26:46', 'RT @phpCloud: Zend Framework 2.0 (stable) is now available in #phpcloud apps gallery. #ZF2 #PHP #Zend', 'zimba085', 2, 0, 0);
INSERT INTO `tweet` VALUES(244296372319313920, '2012-09-08 04:49:28', 'Why Symfony? http://t.co/ryKp1jMJ, Why Zend? http://t.co/ZfFt49p6, Why CakePHP? http://t.co/wiNKc4Jk #HardSelling #PHP #ZF2 #SF2 #CackePHP', 'baliwebsite', 2, 1, 0);
INSERT INTO `tweet` VALUES(244313460387766272, '2012-09-08 05:57:22', 'Not a fan of either framework, but #zf2 install via composer works (effortlessly).  #Symfony2 doesnâ€™t. #php  #composer', 'lazyguru', 2, 1, 0);
INSERT INTO `tweet` VALUES(244317337879191552, '2012-09-08 06:12:47', 'RT @zend: Press release:  Zend Announces General Availability of Zend Framework 2 http://t.co/XiomwqQF', 'HalitYesil', 2, 0, 0);
INSERT INTO `tweet` VALUES(244325737132335104, '2012-09-08 06:46:09', 'RT @phpcamp: Zend Framework 2 Released! Modular, Modern, Stellar!  http://t.co/PIryP7oF shared by @iNisa', 'jimilucio', 2, 0, 0);
INSERT INTO `tweet` VALUES(244333183880024064, '2012-09-08 07:15:45', 'Good news! http://t.co/9xbkB6FJ', 'david_barna', 2, 1, 0);
INSERT INTO `tweet` VALUES(244344554864660480, '2012-09-08 08:00:56', 'Finally! A @Zend 2.0 stable release is available: http://t.co/Z7l0HmrJ\n#PHP #programming', 'Jonathan_Crowe', 2, 0, 0);
INSERT INTO `tweet` VALUES(244345376281333760, '2012-09-08 08:04:12', 'A peine sortie que c''est dÃ©jÃ  la guerre entre #ZF2 et #SF2, Ã§a troll Ã  tout va, Ã  celui qui pissera le plus haut... #omg #wtf', 'MickaelCOLLET', 1, 1, 0);
INSERT INTO `tweet` VALUES(244347331846238208, '2012-09-08 08:11:58', 'RT @phpcamp: Zend Framework 2 Released! Modular, Modern, Stellar!  http://t.co/PIryP7oF shared by @iNisa', 'josedasilva', 2, 0, 0);
INSERT INTO `tweet` VALUES(244353559024521216, '2012-09-08 08:36:43', 'PHP : Zend publie la version 2 de Zend Framework http://t.co/u2Ms84fW #php #zend #zend2', 'danielkameni', 2, 1, 0);
INSERT INTO `tweet` VALUES(244361166627946497, '2012-09-08 09:06:56', 'Getting into #zf2', 'vranac', 2, 1, 0);
INSERT INTO `tweet` VALUES(244366414998274048, '2012-09-08 09:27:48', 'Zend Framework 2.0.0 STABLE released!', 'teplolog', 2, 1, 0);
INSERT INTO `tweet` VALUES(244374535653167104, '2012-09-08 10:00:04', 'Want to know what features will be included in the #ZF2 GA launch? Download the latest issue of Web &amp; PHP Mag to find out!', 'webandphp', 2, 1, 0);
INSERT INTO `tweet` VALUES(244376681169694720, '2012-09-08 10:08:35', 'RT @webaaz: @zend @zendframework Vous nâ€™avez encore pas proposÃ© de conf pour le #phptourNantes, pas dâ€™annonce Ã  faire sur  #ZF2 ? On vou ...', 'omansour', 1, 0, 0);
INSERT INTO `tweet` VALUES(244377940232642561, '2012-09-08 10:13:35', 'Zend Framework 2.0.0 has arrived http://t.co/Kuy9hC9r', 'saji89', 2, 1, 0);
INSERT INTO `tweet` VALUES(244379256153583617, '2012-09-08 10:18:49', '@blanchonvincent Ils sont jaloux de la qualitÃ© du #ZF2 ( Allez moi aussi je vais troller ! ) :)', 'MickaelCOLLET', 1, 0, 0);
INSERT INTO `tweet` VALUES(244380451664445440, '2012-09-08 10:23:34', 'RT @MickaelCOLLET: A peine sortie que c''est dÃ©jÃ  la guerre entre #ZF2 et #SF2, Ã§a troll Ã  tout va, Ã  celui qui pissera le plus haut... # ...', 'arnolem', 1, 0, 0);
INSERT INTO `tweet` VALUES(244388107468808192, '2012-09-08 10:53:59', '@akrabat I was wondering if Rob has progress with his #ZF2 book.', 'djozsef', 2, 0, 0);
INSERT INTO `tweet` VALUES(244400290969841664, '2012-09-08 11:42:24', 'RT @EvanDotPro: In response to @fabpot''s recent "Why Symfony" post, I''ve blogged "Why Zend Framework" http://t.co/rJSr8Y1p #zf2 #symfony', 'koriym', 2, 0, 0);
INSERT INTO `tweet` VALUES(244417142123008000, '2012-09-08 12:49:22', 'RT @EvanDotPro: In response to @fabpot''s recent "Why Symfony" post, I''ve blogged "Why Zend Framework" http://t.co/rJSr8Y1p #zf2 #symfony', 'samsonasik', 2, 0, 0);
INSERT INTO `tweet` VALUES(244417521141297153, '2012-09-08 12:50:52', '@Danetag #zf2 session component is stable; documentation is what we''re working on.', 'weierophinney', 2, 0, 0);
INSERT INTO `tweet` VALUES(244427426535440385, '2012-09-08 13:30:14', 'RT @phpCloud: Zend Framework 2.0 (stable) is now available in #phpcloud apps gallery. #ZF2 #PHP #Zend', 'long_thanh_tran', 2, 0, 0);
INSERT INTO `tweet` VALUES(244429883080572929, '2012-09-08 13:40:00', 'RT @phpCloud: Zend Framework 2.0 (stable) is now available in #phpcloud apps gallery. #ZF2 #PHP #Zend', 'PHPVideos', 2, 0, 0);
INSERT INTO `tweet` VALUES(244450068797747200, '2012-09-08 15:00:12', 'Once your #ZF2 application working, installing ScnSocialAuth is a breeze. @socialnick tells you why in the latest issue of Web &amp; PHP Mag!', 'webandphp', 2, 0, 0);
INSERT INTO `tweet` VALUES(244481291125415936, '2012-09-08 17:04:16', 'Zend Framework 2.0.0 STABLE Released! http://t.co/7qAPKfVe', 'madmamor', 2, 1, 0);
INSERT INTO `tweet` VALUES(244486519010775040, '2012-09-08 17:25:03', 'Why bother with #Zend Framework 2? http://t.co/3GzTUVlR #php', 'EfikaPHP', 2, 1, 0);
INSERT INTO `tweet` VALUES(244496491123720192, '2012-09-08 18:04:40', 'Does anyone know a good tutorial on #ZF2 with #TDD ? #phpunit #zend #ZendFramework', 'scollado', 2, 1, 0);
INSERT INTO `tweet` VALUES(244523367485542400, '2012-09-08 19:51:28', 'Le Zend Framework 2 est sorti, rÃ©Ã©criture complÃ¨te du code pour plus de modularitÃ©, flexibilitÃ© et sÃ©cu http://t.co/YXBH9Qgf via @developpez', 'JasonMarto', 1, 0, 0);
INSERT INTO `tweet` VALUES(244525555200950272, '2012-09-08 20:00:10', 'Fact. ScnSocialAuth is a great example of how #ZF2 and its modules are easily extensible when designed correctly.', 'webandphp', 2, 1, 0);
INSERT INTO `tweet` VALUES(244530862681624577, '2012-09-08 20:21:15', 'Finally #Zend #Framework 2.0 is released (and #Symfony 2.1) http://t.co/QTbWLhIc', 'ruflin', 2, 1, 0);
INSERT INTO `tweet` VALUES(244532005587546112, '2012-09-08 20:25:47', 'rilis Zend Framework 2.0 stable http://t.co/JXIrgrcb', 'phpindonesia', 2, 1, 0);
INSERT INTO `tweet` VALUES(244548596077297664, '2012-09-08 21:31:43', 'About to do the Zend Framework 2 Tutorial! Wish me luck.', 'inglisd101', 2, 1, 0);
INSERT INTO `tweet` VALUES(244581561092153344, '2012-09-08 23:42:42', 'RT @webandphp: Fact. ScnSocialAuth is a great example of how #ZF2 and its modules are easily extensible when designed correctly.', 'padraicb', 2, 0, 0);
INSERT INTO `tweet` VALUES(244583881955758080, '2012-09-08 23:51:56', 'Zend Framework 2 hello world example http://t.co/wjUxQip0', 'tagmyjob', 2, 1, 0);
INSERT INTO `tweet` VALUES(244631039350288384, '2012-09-09 02:59:19', '@weierophinney is there any plan to add support for Message Queues in #ZF2 ?', 'igormx', 2, 0, 0);
INSERT INTO `tweet` VALUES(244634861187526656, '2012-09-09 03:14:30', 'Zend Framework 2.0 Documentation: http://t.co/s8WFX50C', 'AndrewX192', 2, 1, 0);
INSERT INTO `tweet` VALUES(244697414131412994, '2012-09-09 07:23:04', 'RT @webandphp: Fact. ScnSocialAuth is a great example of how #ZF2 and its modules are easily extensible when designed correctly.', 'AdrianPironescu', 2, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `youtube`
--

CREATE TABLE `youtube` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `moderate` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0: refusé, 1:valid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=51 ;

--
-- Contenu de la table `youtube`
--

INSERT INTO `youtube` VALUES(1, 'Uploading YouTube Videos with the PHP Client Library', 'Jochen Hartmann demonstrates the basics of how to use the PHP Client Library with the YouTube Data API. PHP Developer''s Guide: code.google.com Other documentation: code.google.com Please note that the code demonstrated is currently only available by obtai', 'https://www.youtube.com/watch?v=iIp7OnHXBlo&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(2, 'Zend Framework 1.8 tutorial 1 MVC basics', 'Here I show differences between code in Model, Controller and View and where they are located in the MVC tree. Code you are looking at is borrowed from Rob Allen''s Getting Started with Zend Framework akrabat.com', 'https://www.youtube.com/watch?v=6vhxo2oL70E&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(3, 'Programming Tutorials / Game Making Check Video Description', 'www.jimmyr.com Python and Macromedia Flash / Actionscript are probably the easiest to learn and setup games with. PHP Video Tutorials killerphp.com non-video php tutorials devzone.zend.com JAVA webcast.berkeley.edu w3schools has xml, html, javascript and ', 'https://www.youtube.com/watch?v=8LQkVcqWPhc&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(4, 'Getting Started with the Google Data PHP Client Library', 'Trevor Johns goes over how to get started with the Google Data PHP Client - from installation to general architecture to brief demo with the Blogger API. Getting Started Guide: code.google.com Zend Framework Manual: framework.zend.com Zend Framework API D', 'https://www.youtube.com/watch?v=BtrFZmZjalE&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(5, 'Zend Framework Installation: WAMP (1)', 'This tutorial teaches you how to Install Zend Framework on Windows WAMP. It has a few steps that may scare you at first if you''ve never messed with these files, but once it''s done - it''s done. Enjoy Zend Framework and the installation should get you up an', 'https://www.youtube.com/watch?v=m7svJHmgJqs&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(6, 'Zend Framework 1.8 tutorial 2 Controller and Viewer interaction part 1', 'Part 1 of tutorial #2 - Interaction between Controller and Viewer of Zend Framework. Here, i create the project using ZF command line tools and see what the default installation looks like. Part 2 www.youtube.com --------- Edit: As noted by one of the vie', 'https://www.youtube.com/watch?v=7pX9BHhdOCE&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(7, 'Zend Framework Tutorial: Quickstart (2)', 'Im using version 1.11. After installing Zend Framework, follow this tutorial to see how we do some basic things like makes controllers and layouts. jream.com', 'https://www.youtube.com/watch?v=BOwSfKXKpZQ&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(8, 'Zend Framework 1.8 tutorial 3 zend_application part 1', 'ZF 1.8 with new Zend_Application provides an easy way to get your models loaded automatically and resources to be shared across the whole application. Just need to know the naming convention. As I am using a simple database connection to illustrate the ex', 'https://www.youtube.com/watch?v=kuNNwpeNn4s&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(9, 'Zend Framework 1.8 tutorial 4 zend_auth and zend_form part 1', 'Learn to have zend_auth authenticate against user information located in a database and then store the aquired user data in a percistent storage (session) to be available to the rest of the application. Also learn the basics of creating a form using zend_', 'https://www.youtube.com/watch?v=UmtGClgImpo&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(10, 'Why choose the Zend Framework over other PHP Frameworks?', 'www.killersites.com - In this video I go over the reasons why I choose the Zend framework over the other PHP frameworks that are out there. We''ve only made part of our content available for free. For the rest, check out our Killer Video Store or our Video', 'https://www.youtube.com/watch?v=A1dmxvN6vRs&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(11, 'Zend Framework Google data PHP Client Update', 'A new PHP client has been updated for the Zend Framework, and the team discusses the release and shows examples at work.', 'https://www.youtube.com/watch?v=yHRi11Hsjqg&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(12, 'Zend Framework DB Access', 'To watch the rest of the presentation, and see more Zend Framework Webinars, go to www.zend.com', 'https://www.youtube.com/watch?v=vFMh2oeob18&feature=youtube_gdata_player', '2007-10-31 00:00:00', 1);
INSERT INTO `youtube` VALUES(13, 'Zend Framework 1.8 tutorial series welcome note', 'Welcome to my Zend Framework 1.8 tutorial series.', 'https://www.youtube.com/watch?v=UiG2bCmZt-I&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(14, 'Rapid Application Development with Zend Framework', 'In this demo, we''re going to see how Zend Studio 7 enables Zend Framework users to get things done faster, be more productive, and utilize the latest Zend Framework components.', 'https://www.youtube.com/watch?v=TqJs270tKg4&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(15, 'Building an Ajax Interface with Zend Framework', 'Presented by Wil Sinclair and Matthew Weier O''Phinney', 'https://www.youtube.com/watch?v=gvthjfCyTUw&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(16, 'Zend Framework 1.8 tutorial 2 Controller and Viewer interaction part 2', 'Part 2 of tutorial #2 - Interaction between Controller and Viewer of Zend Framework. Here, I show where controller and corresponding viewer are located in the MVC layout and how to access them in the web browser. Continued from part 1 www.youtube.com', 'https://www.youtube.com/watch?v=hOYQ98Kqjxo&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(17, 'Zend Framework 1.8 tutorial 4 zend_auth and zend_form part 2', 'SKIP FIRST 20 seconds! Learn to have zend_auth authenticate against user information located in a database and then store the aquired user data in a percistent storage (session) to be available to the rest of the application. Also learn the basics of crea', 'https://www.youtube.com/watch?v=4oNo-l6c-H0&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(18, 'Zend Framework 1.8 tutorial 5 zend_acl with zend_auth and controller plugin part 1', 'Learn to use Zend_Acl to create application resources and allocate permissions. Then use instance of Zend_Auth to get the user''s role and check it against the resource permissions. Finally, learn the basics of MVC plugins as we make sure that the security', 'https://www.youtube.com/watch?v=b6qsSnLfcmE&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(19, 'Zend Framework 1.8 tutorial 3 zend_application part 2', 'ZF 1.8 with new Zend_Application provides an easy way to get your models loaded automatically and resources to be shared across the whole application. Just need to know the naming convention. As I am using a simple database connection to illustrate the ex', 'https://www.youtube.com/watch?v=Xmyqf4cvKHE&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(20, 'Zend Framework 1.9 tutorial 10 modular application part 1', 'Full quality and source alex-tech-adventures.com ------------------------------ When your site has multiple functionality, like user services and administration, you may want to break them into separate modules. This way you can have library/books/list an', 'https://www.youtube.com/watch?v=qblFgRAcCgk&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(21, 'Zend Framework Tutorial: Forms (3)', 'In this Zend Framework Tutorial we take a look at generating forms as a separate module, which is then plugged into your controller and view. jream.com', 'https://www.youtube.com/watch?v=OY3GZouDCbs&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(22, 'Instalando Zend Framework - Parte 01', 'VÃ­deo do site da Zend sobre instalaÃ§Ã£o do Zend Framework by Mitchell Hashimoto.', 'https://www.youtube.com/watch?v=WfF7oQEWbe4&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(23, 'Simple PHP Zend Framework Code Sample', 'This is a short overview of a simple code sample that uses the PHP Zend Framework. This code sample can be an excellent jump start for any developer that wants to start using the PHP Zend Framework. You can download the code at www.abelski.com. This is th', 'https://www.youtube.com/watch?v=uRadmoYAGPI&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(24, 'How to install the Zend Framework MAC + MAMP', 'Windows users....although I do not use a PC, I have gotten personal comments from others on a PC who have had no problem installing. Usually the only trouble people run into is being so new to PHP that some of the basic concepts are harder to grasp...like', 'https://www.youtube.com/watch?v=097GoCeZm2U&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(25, 'Zend Framework 1.8 tutorial 4 zend_auth and zend_form part 3', 'Learn to have zend_auth authenticate against user information located in a database and then store the aquired user data in a percistent storage (session) to be available to the rest of the application. Also learn the basics of creating a form using zend_', 'https://www.youtube.com/watch?v=0x9Qgy8VyQs&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(26, 'Zend Framework 1.8 tutorial 6 zend_layout and view helpers part 1.', 'Learn how to deal with the problem of repetitive HTML code by creating a template and distributing it across your application using zend_layout. Learn to use existing, and create your own, view helpers to solve more complex HTML problems such as consisten', 'https://www.youtube.com/watch?v=IWKSp8OqAm0&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(27, 'Getting Started with Zend Framework', 'A brief tutorial about creating a Hello Zend application using Zend Framework 1.11.4', 'https://www.youtube.com/watch?v=5d675aSOssg&feature=youtube_gdata_player', '2011-04-15 00:00:00', 1);
INSERT INTO `youtube` VALUES(28, 'Zend Framework Tutorial: Database (4)', 'We will configure the Database in this Zend Framework Tutorial. We''ll also create a DbTable object to use within the models. Download SQL JSample @ jream.com', 'https://www.youtube.com/watch?v=_L9JxYf80Kk&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(29, 'Zend Framework 1.8 tutorial 4 zend_auth and zend_form part 4', 'Learn to have zend_auth authenticate against user information located in a database and then store the aquired user data in a percistent storage (session) to be available to the rest of the application. Also learn the basics of creating a form using zend_', 'https://www.youtube.com/watch?v=ZJ7f9ZOKNYs&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(30, 'Getting Started with Zend Studio 7', 'A quick demo to introduce you to the new features in Zend Studio 7.0 end Studio 7.0 brings a host of new features and enhancements that will help you develop faster, resolve defects more quickly, and take advantage of the latest PHP technologies directly ', 'https://www.youtube.com/watch?v=eJ7UYyoLK48&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(31, 'Mobile development using Zend Framework and Zend Studio', 'You can get more information about Zend Framework and other Zend stuff at our Facebook page www.facebook.com or our website at www.zend.com', 'https://www.youtube.com/watch?v=_A8yg73tqOY&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(32, 'Zend Framework 1.8 tutorial 7 zend_navigation part 1', 'Create a web site navigation menu using zend_navigation. --------------- Resources: zendframework.com framework.zend.com --------------- Part 2: www.youtube.com --------------- Full quality video: www.viddler.com', 'https://www.youtube.com/watch?v=ZqcADrUPEc4&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(33, 'Zend Framework 1.8 tutorial 5 zend_acl with zend_auth and controller plugin part 2', 'Learn to use Zend_Acl to create application resources and allocate permissions. Then use instance of Zend_Auth to get the user''s role and check it against the resource permissions. Finally, learn the basics of MVC plugins as we make sure that the security', 'https://www.youtube.com/watch?v=1xHuGqQ7jEQ&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(34, 'jQuery & Ajax [1/3]', 'KrÃ³tkie przedstawienie wspÃ³Å‚dziaÅ‚ania komponentu MVC (Zend Framework) i biblbioteki jQuery. drlex.jogger.pl', 'https://www.youtube.com/watch?v=MXr6B8JnZjA&feature=youtube_gdata_player', '2008-02-19 00:00:00', 1);
INSERT INTO `youtube` VALUES(35, 'Which PHP Framework or CMS do I use?', 'Which PHP Framework do I use? Zend Framework, Symfony, Yii, Code Igniter, CakePHP? How about CMS''s? WolfCMS, Drupal, WordPress, ModX, Joomla, the list goes on! I think you should ask yourself, what skill level am I at, and where can I be productive and le', 'https://www.youtube.com/watch?v=NnvOY8y_Lr0&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(36, 'XAMPP - Zend Framework installieren und einrichten', 'Das PHP5 Zend-Framework einrichten unter Windows 7 mit XAMPP.', 'https://www.youtube.com/watch?v=P5fjmV4qHnA&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(37, 'Zend Framework 1.8 tutorial 5 zend_acl with zend_auth and controller plugin part 3', 'Learn to use Zend_Acl to create application resources and allocate permissions. Then use instance of Zend_Auth to get the user''s role and check it against the resource permissions. Finally, learn the basics of MVC plugins as we make sure that the security', 'https://www.youtube.com/watch?v=VsdDvfMznH0&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(38, 'Zend Framework 1.8 tutorial 8 zend_navigation and zend_acl', 'Combine zend_navigation with zend_acl to generate menu based on current user role. --------------- Resources: zendframework.com framework.zend.com', 'https://www.youtube.com/watch?v=n31mQGZxtbE&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(39, 'Zend Framework 1.9 tutorial 14: ajax requests part 1', 'Prepare controller to accept AJAX request using action context switcher action helper. Will generate JSON object which is picked up by jQuery front-end and applied to the page. For full quality, source and discussions visit:alex-tech-adventures.com', 'https://www.youtube.com/watch?v=Xrw8TP62-XU&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(40, 'Zend Framework e NetBeans 6.9', 'Tutorial que demonstra como integrar o Zend Tools com o NetBeans. adlermedrado.com.br Link para o tutorial de configuraÃ§Ã£o do ambiente de desenvolvimento em Zend Framework blog.adlermedrado.com.br', 'https://www.youtube.com/watch?v=O0g6ARlDlys&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(41, 'Zend Framework 1.9 tutorial 10 modular application part 2', 'Full quality and source alex-tech-adventures.com ------------------------------ When your site has multiple functionality, like user services and administration, you may want to break them into separate modules. This way you can have library/books/list an', 'https://www.youtube.com/watch?v=4431zLExYP0&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(42, 'Zend Framework 2 Overview', '', 'https://www.youtube.com/watch?v=T0LMaODppcc&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(43, 'Zend Framework 1.8 tutorial 6 zend_layout and view helpers part 2', 'Learn how to deal with the problem of repetitive HTML code by creating a template and distributing it across your application using zend_layout. Learn to use existing, and create your own, view helpers to solve more complex HTML problems such as consisten', 'https://www.youtube.com/watch?v=BJINPcqbtz4&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(44, 'Apprendre ZEND Framework et MVC en franÃ§ais - part 1', 'Turoriaux : Apprendre Ã  utiliser Zend Framework avec l''architecture MVC en franÃ§ais MVC = Models, Views, Controllers = ModÃ¨les, Vues, ContrÃ´leurs.', 'https://www.youtube.com/watch?v=tulAXVxIAjA&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(45, 'ZF Clase 1 - Configurar un proyecto con Zend Framework', 'Este es el primero de una serie de screencast sobre Zend Framework. En esta parte vemos la configuracion inicial de un proyecto, crear un virtual host, y agregarlo a netbeans. El curso lo pueden seguir en mi blog. blog.pablo-morales.com', 'https://www.youtube.com/watch?v=KNyhUbusOQ0&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(46, 'Zend Framework 1.9 tutorial 15: ZF and jQuery mix part 1', 'Ideas on how to mix front-end jQuery interface with back-end Zend Framework. May be boring for advanced users. For full quality and source visit: alex-tech-adventures.com', 'https://www.youtube.com/watch?v=MIHrwX6dW24&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(47, 'Zend Framework 1.8 tutorial 5 zend_acl with zend_auth and controller plugin part 4', 'Learn to use Zend_Acl to create application resources and allocate permissions. Then use instance of Zend_Auth to get the user''s role and check it against the resource permissions. Finally, learn the basics of MVC plugins as we make sure that the security', 'https://www.youtube.com/watch?v=qSczmb4Y2k8&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(48, 'Zend Framework 1.8 tutorial 7 zend_navigation part 2', 'Create a web site navigation menu using zend_navigation. --------------- Resources: zendframework.com framework.zend.com --------------- Full quality video:www.viddler.com', 'https://www.youtube.com/watch?v=TgpLXFvdWNw&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(49, 'Zend Framework 1.9 tutorial 13: ZendX_Jquery introduction part 1', 'Introduction to jQuery and Zend Framework integration. For full quality, source code and discussions visit alex-tech-adventures.com', 'https://www.youtube.com/watch?v=dyU3pKkGdII&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);
INSERT INTO `youtube` VALUES(50, 'Apprendre ZEND Framework et MVC - part 2', 'Turoriaux : Apprendre Ã  utiliser Zend Framework avec l''architecture MVC MVC = Models, Views, Controllers = ModÃ¨les, Vues, ContrÃ´leurs.', 'https://www.youtube.com/watch?v=aUZKmlx8www&feature=youtube_gdata_player', '2012-09-09 11:11:32', 1);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `tutoriel`
--
ALTER TABLE `tutoriel`
  ADD CONSTRAINT `tutoriel_ibfk_1` FOREIGN KEY (`language`) REFERENCES `language` (`id`);

--
-- Contraintes pour la table `tweet`
--
ALTER TABLE `tweet`
  ADD CONSTRAINT `tweet_ibfk_1` FOREIGN KEY (`language`) REFERENCES `language` (`id`);
