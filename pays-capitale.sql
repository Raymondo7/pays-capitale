-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 26 fév. 2023 à 11:57
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
-- Base de données : `pays-capitale`
--

-- --------------------------------------------------------

--
-- Structure de la table `afrique`
--

DROP TABLE IF EXISTS `afrique`;
CREATE TABLE IF NOT EXISTS `afrique` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pays` varchar(80) NOT NULL,
  `capitale` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `afrique`
--

INSERT INTO `afrique` (`id`, `pays`, `capitale`) VALUES
(1, 'Algérie', 'Alger'),
(2, 'Angola', 'Luanda'),
(3, 'Bénin', 'Porto-Novo'),
(4, 'Botswana', 'Gaborone'),
(5, 'Burkina Faso', 'Ouagadougou'),
(6, 'Burundi', 'Bujumbura'),
(7, 'Cameroun', 'Yaoundé'),
(8, 'Cap-Vert', 'Praia'),
(9, 'République centrafricaine', 'Bangui'),
(10, 'Comores', 'Moroni'),
(11, 'République démocratique du Congo', 'Kinshasa'),
(12, 'République du Congo', 'Brazzaville'),
(13, 'Côte d\'Ivoire', 'Yamoussoukro'),
(14, 'Djibouti', 'Djibouti'),
(15, 'Égypte', 'Le Caire'),
(16, 'Érythrée', 'Asmara'),
(17, 'Éthiopie', 'Addis-Abeba'),
(18, 'Gabon', 'Libreville'),
(19, 'Gambie', 'Banjul'),
(20, 'Ghana', 'Accra'),
(21, 'Guinée', 'Conakry'),
(22, 'Guinée-Bissau', 'Bissau'),
(23, 'Kenya', 'Nairobi'),
(24, 'Lesotho', 'Maseru'),
(25, 'Liberia', 'Monrovia'),
(26, 'Libye', 'Tripoli'),
(27, 'Madagascar', 'Antananarivo'),
(28, 'Malawi', 'Lilongwe'),
(29, 'Mali', 'Bamako'),
(30, 'Maroc', 'Rabat'),
(31, 'Maurice', 'Port Louis'),
(32, 'Mauritanie', 'Nouakchott'),
(33, 'Mozambique', 'Maputo'),
(34, 'Namibie', 'Windhoek'),
(35, 'Niger', 'Niamey'),
(36, 'Nigéria', 'Abuja'),
(37, 'Ouganda', 'Kampala'),
(38, 'Rwanda', 'Kigali'),
(39, 'São Tomé-et-Principe', 'São Tomé'),
(40, 'Sénégal', 'Dakar'),
(41, 'Seychelles', 'Victoria'),
(42, 'Sierra Leone', 'Freetown'),
(43, 'Somalie', 'Mogadishu'),
(44, 'Afrique du Sud', 'Pretoria'),
(45, 'Soudan', 'Khartoum'),
(46, 'Soudan du Sud', 'Juba'),
(47, 'Swaziland', 'Mbabane'),
(48, 'Tanzanie', 'Dodoma'),
(49, 'Tchad', 'N\'Djamena'),
(50, 'Togo', 'Lomé'),
(51, 'Tunisie', 'Tunis'),
(52, 'Zambie', 'Lusaka'),
(53, 'Zimbabwe', 'Harare');

-- --------------------------------------------------------

--
-- Structure de la table `amerique`
--

DROP TABLE IF EXISTS `amerique`;
CREATE TABLE IF NOT EXISTS `amerique` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pays` varchar(80) NOT NULL,
  `capitale` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `amerique`
--

INSERT INTO `amerique` (`id`, `pays`, `capitale`) VALUES
(1, 'Antigua-et-Barbuda', 'Saint John\'s'),
(2, 'Argentine', 'Buenos Aires'),
(3, 'Bahamas', 'Nassau'),
(4, 'Barbade', 'Bridgetown'),
(5, 'Belize', 'Belmopan'),
(6, 'Bolivie', 'La Paz | Sucre'),
(7, 'Brésil', 'Brasília'),
(8, 'Canada', 'Ottawa'),
(9, 'Chili', 'Santiago'),
(10, 'Colombie', 'Bogotá'),
(11, 'Costa Rica', 'San José'),
(12, 'Cuba', 'La Havane'),
(13, 'République dominicaine', 'Saint-Domingue'),
(14, 'Dominique', 'Roseau'),
(15, 'Équateur', 'Quito'),
(16, 'Salvador', 'San Salvador'),
(17, 'Grenade', 'Saint George\'s'),
(18, 'Guatemala', 'Guatemala'),
(19, 'Guyana', 'Georgetown'),
(20, 'Haïti', 'Port-au-Prince'),
(21, 'Honduras', 'Tegucigalpa'),
(22, 'Jamaïque', 'Kingston'),
(23, 'Mexique', 'Mexico'),
(24, 'Nicaragua', 'Managua'),
(25, 'Panama', 'Panama'),
(26, 'Paraguay', 'Asunción'),
(27, 'Pérou', 'Lima'),
(28, 'Saint Kitts et Nevis', 'Basseterre'),
(29, 'Sainte-Lucie', 'Castries'),
(30, 'Saint-Vincent-et-les Grenadines', 'Kingstown'),
(31, 'Suriname', 'Paramaribo'),
(32, 'Trinité-et-Tobago', 'Port d\'Espagne'),
(33, 'États-Unis d\'Amérique', 'Washington, D.C.'),
(34, 'Uruguay', 'Montevideo'),
(35, 'Venezuela', 'Caracas');

-- --------------------------------------------------------

--
-- Structure de la table `asie`
--

DROP TABLE IF EXISTS `asie`;
CREATE TABLE IF NOT EXISTS `asie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pays` varchar(80) NOT NULL,
  `capitale` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `asie`
--

INSERT INTO `asie` (`id`, `pays`, `capitale`) VALUES
(1, 'Afghanistan', 'Kaboul'),
(2, 'Arabie Saoudite', 'Riyad'),
(3, 'Armenie', 'Erevan'),
(4, 'Azerbaïdjan', 'Bakou'),
(5, 'Bahreïn', 'Manama'),
(6, 'Bangladesh', 'Dacca'),
(7, 'Bhoutan', 'Thimphou'),
(8, 'Brunei', 'Bandar Seri Begawan'),
(9, 'Cambodge', 'Phnom Penh'),
(10, 'Chine', 'Pékin'),
(11, 'Corée du Nord', 'Pyongyang'),
(12, 'Corée du Sud', 'Séoul'),
(13, 'Émirats arabes unis', 'Abu Dhabi'),
(14, 'Géorgie', 'Tbilissi'),
(15, 'Inde', 'New Delhi'),
(16, 'Indonésie', 'Jakarta'),
(17, 'Irak', 'Bagdad'),
(18, 'Iran', 'Téhéran'),
(19, 'Israël', 'Jérusalem | Tel Aviv'),
(20, 'Japon', 'Tokyo'),
(21, 'Jordanie', 'Amman'),
(22, 'Kazakhstan', 'Astana'),
(23, 'Kirghizistan', 'Biskek'),
(24, 'Koweït', 'Koweït'),
(25, 'Laos', 'Vientiane'),
(26, 'Liban', 'Beyrouth'),
(27, 'Malaisie', 'Kuala Lumpur'),
(28, 'Maldives', 'Malé'),
(29, 'Mongolie', 'Oulan-Bator'),
(30, 'Myanmar (Birmanie)', 'Naypyidaw'),
(31, 'Népal', 'Katmandou'),
(32, 'Oman', 'Mascate'),
(33, 'Ouzbékistan', 'Tachkent'),
(34, 'Pakistan', 'Islamabad'),
(35, 'Palestine', 'Ramallah '),
(36, 'Philippines', 'Manille'),
(37, 'Qatar', 'Doha'),
(38, 'Russie', 'Moscou '),
(39, 'Singapour', 'Singapour'),
(40, 'Sri Lanka', 'Sri Jayawardenepura Kotte'),
(41, 'Syrie', 'Damas'),
(42, 'Taiwan', 'Taipei'),
(43, 'Tadjikistan', 'Douchanbé'),
(44, 'Thaïlande', 'Bangkok'),
(45, 'Timor oriental', 'Dili'),
(46, 'Turquie', 'Ankara'),
(47, 'Turkménistan', 'Ashgabat'),
(48, 'Viêt Nam', 'Hanoï'),
(49, 'Yémen', 'Sanaa');

-- --------------------------------------------------------

--
-- Structure de la table `europe`
--

DROP TABLE IF EXISTS `europe`;
CREATE TABLE IF NOT EXISTS `europe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pays` varchar(80) NOT NULL,
  `capitale` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `europe`
--

INSERT INTO `europe` (`id`, `pays`, `capitale`) VALUES
(45, 'Albanie', 'Tirana'),
(46, 'Allemagne', 'Berlin'),
(47, 'Andorre', 'Andorre-la-Vieille'),
(48, 'Autriche', 'Vienne'),
(49, 'Belgique', 'Bruxelles'),
(50, 'Biélorussie', 'Minsk'),
(51, 'Bosnie-Herzégovine', 'Sarajevo'),
(52, 'Bulgarie', 'Sofia'),
(53, 'Chypre', 'Nicosie'),
(54, 'Croatie', 'Zagreb'),
(55, 'Danemark', 'Copenhague'),
(56, 'Espagne', 'Madrid'),
(57, 'Estonie', 'Tallinn'),
(58, 'Finlande', 'Helsinki'),
(59, 'France', 'Paris'),
(60, 'Grèce', 'Athènes'),
(61, 'Hongrie', 'Budapest'),
(62, 'Irlande', 'Dublin'),
(63, 'Islande', 'Reykjavik'),
(64, 'Italie', 'Rome'),
(65, 'Kosovo', 'Pristina'),
(66, 'Lettonie', 'Riga'),
(67, 'Liechtenstein', 'Vaduz'),
(68, 'Lituanie', 'Vilnius'),
(69, 'Luxembourg', 'Luxembourg'),
(70, 'Macédoine du Nord', 'Skopje'),
(71, 'Malte', 'La Valette'),
(72, 'Moldavie', 'Chisinau'),
(73, 'Monaco', 'Monaco'),
(74, 'Monténégro', 'Podgorica'),
(75, 'Norvège', 'Oslo'),
(76, 'Pays-Bas', 'Amsterdam'),
(77, 'Pologne', 'Varsovie'),
(78, 'Portugal', 'Lisbonne'),
(79, 'Roumanie', 'Bucarest'),
(80, 'Royaume-Uni', 'Londres'),
(81, 'Russie', 'Moscou'),
(82, 'Saint-Marin', 'Saint-Marin'),
(83, 'Serbie', 'Belgrade'),
(84, 'Slovaquie', 'Bratislava'),
(85, 'Slovénie', 'Ljubljana'),
(86, 'Suède', 'Stockholm'),
(87, 'Suisse', 'Berne'),
(88, 'Ukraine', 'Kiev');

-- --------------------------------------------------------

--
-- Structure de la table `liste`
--

DROP TABLE IF EXISTS `liste`;
CREATE TABLE IF NOT EXISTS `liste` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pays` varchar(80) NOT NULL,
  `capitale` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `liste`
--

INSERT INTO `liste` (`id`, `pays`, `capitale`) VALUES
(4, 'Algérie', 'Alger'),
(5, 'Angola', 'Luanda'),
(6, 'Bénin', 'Porto-Novo'),
(7, 'Botswana', 'Gaborone'),
(8, 'Burkina Faso', 'Ouagadougou'),
(9, 'Burundi', 'Bujumbura'),
(10, 'Cameroun', 'Yaoundé'),
(11, 'Cap-Vert', 'Praia'),
(12, 'République centrafricaine', 'Bangui'),
(13, 'Comores', 'Moroni'),
(14, 'République démocratique du Congo', 'Kinshasa'),
(15, 'République du Congo', 'Brazzaville'),
(16, 'Côte d\'Ivoire', 'Yamoussoukro'),
(17, 'Djibouti', 'Djibouti'),
(18, 'Égypte', 'Le Caire'),
(19, 'Érythrée', 'Asmara'),
(20, 'Éthiopie', 'Addis-Abeba'),
(21, 'Gabon', 'Libreville'),
(22, 'Gambie', 'Banjul'),
(23, 'Ghana', 'Accra'),
(24, 'Guinée', 'Conakry'),
(25, 'Guinée-Bissau', 'Bissau'),
(26, 'Kenya', 'Nairobi'),
(27, 'Lesotho', 'Maseru'),
(28, 'Liberia', 'Monrovia'),
(29, 'Libye', 'Tripoli'),
(30, 'Madagascar', 'Antananarivo'),
(31, 'Malawi', 'Lilongwe'),
(32, 'Mali', 'Bamako'),
(33, 'Maroc', 'Rabat'),
(34, 'Maurice', 'Port Louis'),
(35, 'Mauritanie', 'Nouakchott'),
(36, 'Mozambique', 'Maputo'),
(37, 'Namibie', 'Windhoek'),
(38, 'Niger', 'Niamey'),
(39, 'Nigéria', 'Abuja'),
(40, 'Ouganda', 'Kampala'),
(41, 'Rwanda', 'Kigali'),
(42, 'São Tomé-et-Principe', 'São Tomé'),
(43, 'Sénégal', 'Dakar'),
(44, 'Seychelles', 'Victoria'),
(45, 'Sierra Leone', 'Freetown'),
(46, 'Somalie', 'Mogadishu'),
(47, 'Afrique du Sud', 'Pretoria'),
(48, 'Soudan', 'Khartoum'),
(49, 'Soudan du Sud', 'Juba'),
(50, 'Swaziland', 'Mbabane'),
(51, 'Tanzanie', 'Dodoma'),
(52, 'Tchad', 'NDjamena'),
(53, 'Togo', 'Lomé'),
(54, 'Tunisie', 'Tunis'),
(55, 'Zambie', 'Lusaka'),
(56, 'Zimbabwe', 'Harare'),
(57, 'Albanie', 'Tirana'),
(58, 'Allemagne', 'Berlin'),
(59, 'Andorre', 'Andorre-la-Vieille'),
(60, 'Autriche', 'Vienne'),
(61, 'Belgique', 'Bruxelles'),
(62, 'Biélorussie', 'Minsk'),
(63, 'Bosnie-Herzégovine', 'Sarajevo'),
(64, 'Bulgarie', 'Sofia'),
(65, 'Chypre', 'Nicosie'),
(66, 'Croatie', 'Zagreb'),
(67, 'Danemark', 'Copenhague'),
(68, 'Espagne', 'Madrid'),
(69, 'Estonie', 'Tallinn'),
(70, 'Finlande', 'Helsinki'),
(71, 'France', 'Paris'),
(72, 'Grèce', 'Athènes'),
(73, 'Hongrie', 'Budapest'),
(74, 'Irlande', 'Dublin'),
(75, 'Islande', 'Reykjavik'),
(76, 'Italie', 'Rome'),
(77, 'Kosovo', 'Pristina'),
(78, 'Lettonie', 'Riga'),
(79, 'Liechtenstein', 'Vaduz'),
(80, 'Lituanie', 'Vilnius'),
(81, 'Luxembourg', 'Luxembourg'),
(82, 'Macédoine du Nord', 'Skopje'),
(83, 'Malte', 'La Valette'),
(84, 'Moldavie', 'Chisinau'),
(85, 'Monaco', 'Monaco'),
(86, 'Monténégro', 'Podgorica'),
(87, 'Norvège', 'Oslo'),
(88, 'Pays-Bas', 'Amsterdam'),
(89, 'Pologne', 'Varsovie'),
(90, 'Portugal', 'Lisbonne'),
(91, 'Roumanie', 'Bucarest'),
(92, 'Royaume-Uni', 'Londres'),
(93, 'Russie', 'Moscou'),
(94, 'Saint-Marin', 'Saint-Marin'),
(95, 'Serbie', 'Belgrade'),
(96, 'Slovaquie', 'Bratislava'),
(97, 'Slovénie', 'Ljubljana'),
(98, 'Suède', 'Stockholm'),
(99, 'Suisse', 'Berne'),
(100, 'Ukraine', 'Kiev'),
(101, 'Antigua-et-Barbuda', 'Saint John\'s'),
(102, 'Argentine', 'Buenos Aires'),
(103, 'Bahamas', 'Nassau'),
(104, 'Barbade', 'Bridgetown'),
(105, 'Belize', 'Belmopan'),
(106, 'Bolivie', 'La Paz | Sucre '),
(107, 'Brésil', 'Brasília'),
(108, 'Canada', 'Ottawa'),
(109, 'Chili', 'Santiago'),
(110, 'Colombie', 'Bogotá'),
(111, 'Costa Rica', 'San José'),
(112, 'Cuba', 'La Havane'),
(113, 'République dominicaine', 'Saint-Domingue'),
(114, 'Dominique', 'Roseau'),
(115, 'Équateur', 'Quito'),
(116, 'Salvador', 'San Salvador'),
(117, 'Grenade', 'Saint George\'s'),
(118, 'Guatemala', 'Guatemala'),
(119, 'Guyana', 'Georgetown'),
(120, 'Haïti', 'Port-au-Prince'),
(121, 'Honduras', 'Tegucigalpa'),
(122, 'Jamaïque', 'Kingston'),
(123, 'Mexique', 'Mexico'),
(124, 'Nicaragua', 'Managua'),
(125, 'Panama', 'Panama'),
(126, 'Paraguay', 'Asunción'),
(127, 'Pérou', 'Lima'),
(128, 'Saint Kitts et Nevis', 'Basseterre'),
(129, 'Sainte-Lucie', 'Castries'),
(130, 'Saint-Vincent-et-les Grenadines', 'Kingstown'),
(131, 'Suriname', 'Paramaribo'),
(132, 'Trinité-et-Tobago', 'Port d\'Espagne'),
(133, 'États-Unis d\'Amérique', 'Washington, D.C.'),
(134, 'Uruguay', 'Montevideo'),
(135, 'Venezuela', 'Caracas'),
(136, 'Afghanistan', 'Kaboul'),
(137, 'Arabie Saoudite', 'Riyad'),
(138, 'Armenie', 'Erevan'),
(139, 'Azerbaïdjan', 'Bakou'),
(140, 'Bahreïn', 'Manama'),
(141, 'Bangladesh', 'Dacca'),
(142, 'Bhoutan', 'Thimphou'),
(143, 'Brunei', 'Bandar Seri Begawan'),
(144, 'Cambodge', 'Phnom Penh'),
(145, 'Chine', 'Pékin'),
(146, 'Corée du Nord', 'Pyongyang'),
(147, 'Corée du Sud', 'Séoul'),
(148, 'Émirats arabes unis', 'Abu Dhabi'),
(149, 'Géorgie', 'Tbilissi'),
(150, 'Inde', 'New Delhi'),
(151, 'Indonésie', 'Jakarta'),
(152, 'Irak', 'Bagdad'),
(153, 'Iran', 'Téhéran'),
(154, 'Israël', 'Jérusalem | Tel Aviv'),
(155, 'Japon', 'Tokyo'),
(156, 'Jordanie', 'Amman'),
(157, 'Kazakhstan', 'Astana'),
(158, 'Kirghizistan', 'Biskek'),
(159, 'Koweït', 'Koweït'),
(160, 'Laos', 'Vientiane'),
(161, 'Liban', 'Beyrouth'),
(162, 'Malaisie', 'Kuala Lumpur'),
(163, 'Maldives', 'Malé'),
(164, 'Mongolie', 'Oulan-Bator'),
(165, 'Myanmar (Birmanie)', 'Naypyidaw'),
(166, 'Népal', 'Katmandou'),
(167, 'Oman', 'Mascate'),
(168, 'Ouzbékistan', 'Tachkent'),
(169, 'Pakistan', 'Islamabad'),
(170, 'Palestine', 'Ramallah'),
(171, 'Philippines', 'Manille'),
(172, 'Qatar', 'Doha'),
(174, 'Singapour', 'Singapour'),
(175, 'Sri Lanka', 'Sri Jayawardenepura Kotte'),
(176, 'Syrie', 'Damas'),
(177, 'Taiwan', 'Taipei'),
(178, 'Tadjikistan', 'Douchanbé'),
(179, 'Thaïlande', 'Bangkok'),
(180, 'Timor oriental', 'Dili'),
(181, 'Turquie', 'Ankara'),
(182, 'Turkménistan', 'Ashgabat'),
(183, 'Viêt Nam', 'Hanoï'),
(184, 'Yémen', 'Sanaa'),
(185, 'Australie', 'Canberra'),
(186, 'Fidji', 'Suva'),
(187, 'Kiribati', 'Tarawa'),
(188, 'Marshall', 'Majuro'),
(189, 'Micronésie', 'Palikir'),
(190, 'Nauru', 'Yaren District'),
(191, 'Nouvelle-Zélande', 'Wellington'),
(192, 'Palau', 'Melekeok'),
(193, 'Papouasie-Nouvelle-Guinée', 'Port Moresby'),
(194, 'Samoa', 'Apia'),
(195, 'Tonga', 'Nuku\'alofa'),
(196, 'Tuvalu', 'Funafuti'),
(197, 'Vanuatu', 'Port-Vila');

-- --------------------------------------------------------

--
-- Structure de la table `oceanie`
--

DROP TABLE IF EXISTS `oceanie`;
CREATE TABLE IF NOT EXISTS `oceanie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pays` varchar(80) NOT NULL,
  `capitale` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `oceanie`
--

INSERT INTO `oceanie` (`id`, `pays`, `capitale`) VALUES
(1, 'Australie', 'Canberra'),
(2, 'Fidji', 'Suva'),
(3, 'Kiribati', 'Tarawa'),
(4, 'Marshall', 'Majuro'),
(5, 'Micronésie', 'Palikir'),
(6, 'Nauru', 'Yaren District'),
(7, 'Nouvelle-Zélande', 'Wellington'),
(8, 'Palau', 'Melekeok'),
(9, 'Papouasie-Nouvelle-Guinée', 'Port Moresby'),
(10, 'Samoa', 'Apia'),
(11, 'Tonga', 'Nuku\'alofa'),
(12, 'Tuvalu', 'Funafuti'),
(13, 'Vanuatu', 'Port-Vila');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
