-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 14 Novembre 2016 à 11:42
-- Version du serveur :  10.1.10-MariaDB
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blogslim`
--

-- --------------------------------------------------------

--
-- Structure de la table `billets`
--

CREATE TABLE `billets` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `titre` varchar(256) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `billets`
--

INSERT INTO `billets` (`id`, `message`, `date`, `titre`, `id_utilisateur`, `id_categorie`) VALUES
(1, 'Premier test', '2016-05-28 19:30:10', 'test', 1, 2),
(2, 'bonjour lol lpppppppppppp lp plpl plko ijuhyg thujikol plkjhuy ujikol', '2016-05-28 19:31:23', 'test 2', 1, 4),
(3, 'ceci est le test numéro 00', '2016-05-28 19:37:12', 'titre 0quoi', 1, 2),
(4, 'ceci est le test numéro 10', '2016-05-28 19:37:12', 'titre 1quoi', 1, 2),
(5, 'ceci est le test numéro 20', '2016-05-28 19:37:12', 'titre 2quoi', 1, 2),
(6, 'ceci est le test numéro 30', '2016-05-28 19:37:12', 'titre 3quoi', 1, 2),
(7, 'ceci est le test numéro 40', '2016-05-28 19:37:12', 'titre 4quoi', 1, 2),
(8, 'ceci est le test numéro 50', '2016-05-28 19:37:13', 'titre 5quoi', 1, 2),
(9, 'ceci est le test numéro 60', '2016-05-28 19:37:13', 'titre 6quoi', 1, 2),
(10, 'ceci est le test numéro 70', '2016-05-28 19:37:13', 'titre 7quoi', 1, 2),
(11, 'ceci est le test numéro 80', '2016-05-28 19:37:13', 'titre 8quoi', 1, 2),
(12, 'ceci est le test numéro 90', '2016-05-28 19:37:13', 'titre 9quoi', 1, 2),
(13, 'ceci est le test numéro 100', '2016-05-28 19:37:13', 'titre 10quoi', 1, 2),
(14, 'ceci est le test numéro 110', '2016-05-28 19:37:13', 'titre 11quoi', 1, 2),
(15, 'ceci est le test numéro 120', '2016-05-28 19:37:13', 'titre 12quoi', 1, 2),
(16, 'ceci est le test numéro 130', '2016-05-28 19:37:13', 'titre 13quoi', 1, 2),
(17, 'ceci est le test numéro 140', '2016-05-28 19:37:13', 'titre 14quoi', 1, 2),
(18, 'ceci est le test numéro 150', '2016-05-28 19:37:13', 'titre 15quoi', 1, 2),
(19, 'ceci est le test numéro 160', '2016-05-28 19:37:13', 'titre 16quoi', 1, 2),
(20, 'ceci est le test numéro 170', '2016-05-28 19:37:13', 'titre 17quoi', 1, 2),
(21, 'ceci est le test numéro 180', '2016-05-28 19:37:13', 'titre 18quoi', 1, 2),
(22, 'ceci est le test numéro 190', '2016-05-28 19:37:13', 'titre 19quoi', 1, 2),
(23, 'ceci est le test numéro 200', '2016-05-28 19:37:13', 'titre 20quoi', 1, 2),
(24, 'ceci est le test numéro 210', '2016-05-28 19:37:13', 'titre 21quoi', 1, 2),
(25, 'ceci est le test numéro 220', '2016-05-28 19:37:13', 'titre 22quoi', 1, 2),
(26, 'ceci est le test numéro 230', '2016-05-28 19:37:13', 'titre 23quoi', 1, 2),
(27, 'ceci est le test numéro 240', '2016-05-28 19:37:13', 'titre 24quoi', 1, 2),
(31, 'ceci est le test numéro 250', '2016-05-28 19:38:19', 'titre 25quoi', 2, 5),
(32, 'ceci est le test numéro 260', '2016-05-28 19:38:19', 'titre 26quoi', 2, 5),
(33, 'ceci est le test numéro 270', '2016-05-28 19:38:19', 'titre 27quoi', 2, 5),
(34, 'ceci est le test numéro 280', '2016-05-28 19:38:19', 'titre 28quoi', 2, 5),
(35, 'ceci est le test numéro 290', '2016-05-28 19:38:19', 'titre 29quoi', 2, 5),
(36, 'ceci est le test numéro 300', '2016-05-28 19:38:19', 'titre 30quoi', 2, 5),
(37, 'ceci est le test numéro 310', '2016-05-28 19:38:19', 'titre 31quoi', 2, 5),
(38, 'ceci est le test numéro 320', '2016-05-28 19:38:19', 'titre 32quoi', 2, 5),
(39, 'ceci est le test numéro 330', '2016-05-28 19:38:19', 'titre 33quoi', 2, 5),
(40, 'ceci est le test numéro 340', '2016-05-28 19:38:19', 'titre 34quoi', 2, 5),
(41, 'ceci est le test numéro 350', '2016-05-28 19:38:19', 'titre 35quoi', 2, 5),
(42, 'ceci est le test numéro 360', '2016-05-28 19:38:19', 'titre 36quoi', 2, 5),
(43, 'ceci est le test numéro 370', '2016-05-28 19:38:19', 'titre 37quoi', 2, 5),
(44, 'ceci est le test numéro 380', '2016-05-28 19:38:19', 'titre 38quoi', 2, 5),
(45, 'ceci est le test numéro 390', '2016-05-28 19:38:19', 'titre 39quoi', 2, 5),
(46, 'ceci est le test numéro 400', '2016-05-28 19:38:19', 'titre 40quoi', 2, 5),
(47, 'ceci est le test numéro 410', '2016-05-28 19:38:20', 'titre 41quoi', 2, 5),
(48, 'ceci est le test numéro 420', '2016-05-28 19:38:20', 'titre 42quoi', 2, 5),
(49, 'ceci est le test numéro 430', '2016-05-28 19:38:20', 'titre 43quoi', 2, 5),
(50, 'ceci est le test numéro 440', '2016-05-28 19:38:20', 'titre 44quoi', 2, 5),
(51, 'ceci est le test numéro 450', '2016-05-28 19:38:20', 'titre 45quoi', 2, 5),
(52, 'ceci est le test numéro 460', '2016-05-28 19:38:20', 'titre 46quoi', 2, 5),
(53, 'ceci est le test numéro 470', '2016-05-28 19:38:20', 'titre 47quoi', 2, 5),
(54, 'ceci est le test numéro 480', '2016-05-28 19:38:20', 'titre 48quoi', 2, 5),
(55, 'ceci est le test numéro 490', '2016-05-28 19:38:20', 'titre 49quoi', 2, 5),
(56, 'ceci est le test numéro 500', '2016-05-28 19:38:20', 'titre 50quoi', 2, 5),
(57, 'ceci est le test numéro 510', '2016-05-28 19:38:20', 'titre 51quoi', 2, 5),
(58, 'ceci est le test numéro 520', '2016-05-28 19:38:20', 'titre 52quoi', 3, 6),
(59, 'ceci est le test numéro 530', '2016-05-28 19:38:20', 'titre 53quoi', 3, 6),
(60, 'ceci est le test numéro 540', '2016-05-28 19:38:21', 'titre 54quoi', 3, 6),
(61, 'ceci est le test numéro 550', '2016-05-28 19:38:21', 'titre 55quoi', 3, 6),
(62, 'ceci est le test numéro 560', '2016-05-28 19:38:21', 'titre 56quoi', 3, 6),
(63, 'ceci est le test numéro 570', '2016-05-28 19:38:21', 'titre 57quoi', 3, 6),
(64, 'ceci est le test numéro 580', '2016-05-28 19:38:21', 'titre 58quoi', 3, 6),
(65, 'ceci est le test numéro 590', '2016-05-28 19:38:21', 'titre 59quoi', 3, 6),
(66, 'ceci est le test numéro 600', '2016-05-28 19:38:21', 'titre 60quoi', 3, 6),
(67, 'ceci est le test numéro 610', '2016-05-28 19:38:21', 'titre 61quoi', 3, 6),
(68, 'ceci est le test numéro 620', '2016-05-28 19:38:21', 'titre 62quoi', 3, 6),
(69, 'ceci est le test numéro 630', '2016-05-28 19:38:21', 'titre 63quoi', 3, 6),
(70, 'ceci est le test numéro 640', '2016-05-28 19:38:21', 'titre 64quoi', 3, 6),
(71, 'ceci est le test numéro 650', '2016-05-28 19:38:21', 'titre 65quoi', 3, 6),
(72, 'ceci est le test numéro 660', '2016-05-28 19:38:21', 'titre 66quoi', 3, 6),
(73, 'ceci est le test numéro 670', '2016-05-28 19:38:22', 'titre 67quoi', 3, 6),
(74, 'ceci est le test numéro 680', '2016-05-28 19:38:22', 'titre 68quoi', 3, 6),
(75, 'ceci est le test numéro 690', '2016-05-28 19:38:22', 'titre 69quoi', 3, 6),
(76, 'ceci est le test numéro 700', '2016-05-28 19:38:22', 'titre 70quoi', 3, 6),
(77, 'ceci est le test numéro 710', '2016-05-28 19:38:22', 'titre 71quoi', 3, 6),
(78, 'ceci est le test numéro 720', '2016-05-28 19:38:22', 'titre 72quoi', 3, 6),
(79, 'ceci est le test numéro 730', '2016-05-28 19:38:22', 'titre 73quoi', 3, 6),
(80, 'ceci est le test numéro 740', '2016-05-28 19:38:22', 'titre 74quoi', 3, 6),
(81, 'ceci est le test numéro 750', '2016-05-28 19:38:22', 'titre 75quoi', 3, 6),
(82, 'ceci est le test numéro 760', '2016-05-28 19:38:22', 'titre 76quoi', 3, 6),
(83, 'ceci est le test numéro 770', '2016-05-28 19:38:22', 'titre 77quoi', 3, 6),
(84, 'ceci est le test numéro 780', '2016-05-28 19:38:22', 'titre 78quoi', 3, 6),
(85, 'ceci est le test numéro 790', '2016-05-28 19:38:22', 'titre 79quoi', 3, 6),
(86, 'ceci est le test numéro 800', '2016-05-28 19:38:22', 'titre 80quoi', 3, 6),
(87, 'ceci est le test numéro 810', '2016-05-28 19:38:22', 'titre 81quoi', 3, 6),
(88, 'ceci est le test numéro 820', '2016-05-28 19:38:22', 'titre 82quoi', 3, 6),
(89, 'ceci est le test numéro 830', '2016-05-28 19:38:22', 'titre 83quoi', 3, 6),
(90, 'ceci est le test numéro 840', '2016-05-28 19:38:22', 'titre 84quoi', 3, 6),
(91, 'ceci est le test numéro 850', '2016-05-28 19:38:23', 'titre 85quoi', 3, 6),
(92, 'ceci est le test numéro 860', '2016-05-28 19:38:23', 'titre 86quoi', 3, 6),
(93, 'ceci est le test numéro 870', '2016-05-28 19:38:23', 'titre 87quoi', 3, 6),
(94, 'ceci est le test numéro 880', '2016-05-28 19:38:23', 'titre 88quoi', 3, 6),
(95, 'ceci est le test numéro 890', '2016-05-28 19:38:23', 'titre 89quoi', 3, 6),
(96, 'ceci est le test numéro 900', '2016-05-28 19:38:23', 'titre 90quoi', 3, 6),
(97, 'ceci est le test numéro 910', '2016-05-28 19:38:23', 'titre 91quoi', 3, 6),
(98, 'ceci est le test numéro 920', '2016-05-28 19:38:23', 'titre 92quoi', 3, 6),
(99, 'ceci est le test numéro 930', '2016-05-28 19:38:23', 'titre 93quoi', 3, 6),
(100, 'ceci est le test numéro 940', '2016-05-28 19:38:23', 'titre 94quoi', 3, 6),
(101, 'ceci est le test numéro 950', '2016-05-28 19:38:23', 'titre 95quoi', 3, 6),
(102, 'ceci est le test numéro 960', '2016-05-28 19:38:23', 'titre 96quoi', 3, 6),
(103, 'ceci est le test numéro 970', '2016-05-28 19:38:23', 'titre 97quoi', 3, 6),
(104, 'ceci est le test numéro 980', '2016-05-28 19:38:23', 'titre 98quoi', 3, 6),
(105, 'ceci est le test numéro 990', '2016-05-28 19:38:24', 'titre 99quoi', 3, 6),
(106, 'ceci est le test numéro 1000', '2016-05-28 19:38:24', 'titre 100quoi', 3, 6),
(107, 'ceci est le test numéro 1010', '2016-05-28 19:38:24', 'titre 101quoi', 3, 6),
(108, 'ceci est le test numéro 1020', '2016-05-28 19:38:24', 'titre 102quoi', 3, 6),
(109, 'ceci est le test numéro 1030', '2016-05-28 19:38:24', 'titre 103quoi', 3, 6),
(110, 'ceci est le test numéro 1040', '2016-05-28 19:38:24', 'titre 104quoi', 3, 6),
(111, 'ceci est le test numéro 1050', '2016-05-28 19:38:24', 'titre 105quoi', 3, 6),
(112, 'ceci est le test numéro 1060', '2016-05-28 19:38:24', 'titre 106quoi', 3, 6),
(113, 'ceci est le test numéro 1070', '2016-05-28 19:38:24', 'titre 107quoi', 3, 6),
(114, 'ceci est le test numéro 1080', '2016-05-28 19:38:24', 'titre 108quoi', 3, 6),
(115, 'ceci est le test numéro 1090', '2016-05-28 19:38:24', 'titre 109quoi', 3, 6),
(116, 'ceci est le test numéro 1100', '2016-05-28 19:38:24', 'titre 110quoi', 3, 6),
(117, 'ceci est le test numéro 1110', '2016-05-28 19:38:24', 'titre 111quoi', 3, 6),
(118, 'ceci est le test numéro 1120', '2016-05-28 19:38:24', 'titre 112quoi', 3, 6),
(119, 'ceci est le test numéro 1130', '2016-05-28 19:38:24', 'titre 113quoi', 3, 6),
(120, 'ceci est le test numéro 1140', '2016-05-28 19:38:24', 'titre 114quoi', 3, 6),
(121, 'ceci est le test numéro 1150', '2016-05-28 19:38:24', 'titre 115quoi', 3, 6),
(122, 'ceci est le test numéro 1160', '2016-05-28 19:38:25', 'titre 116quoi', 3, 6),
(123, 'ceci est le test numéro 1170', '2016-05-28 19:38:25', 'titre 117quoi', 3, 6),
(124, 'ceci est le test numéro 1180', '2016-05-28 19:38:25', 'titre 118quoi', 3, 6),
(125, 'ceci est le test numéro 1190', '2016-05-28 19:38:25', 'titre 119quoi', 3, 6),
(126, 'ceci est le test numéro 1200', '2016-05-28 19:38:25', 'titre 120quoi', 3, 6),
(127, 'ceci est le test numéro 1210', '2016-05-28 19:38:25', 'titre 121quoi', 3, 6),
(128, 'ceci est le test numéro 1220', '2016-05-28 19:38:25', 'titre 122quoi', 3, 6),
(129, 'ceci est le test numéro 1230', '2016-05-28 19:38:25', 'titre 123quoi', 3, 6),
(130, 'ceci est le test numéro 1240', '2016-05-28 19:38:25', 'titre 124quoi', 3, 6),
(131, 'ceci est le test numéro 1250', '2016-05-28 19:38:25', 'titre 125quoi', 3, 6),
(132, 'ceci est le test numéro 1260', '2016-05-28 19:38:25', 'titre 126quoi', 3, 6),
(133, 'ceci est le test numéro 1270', '2016-05-28 19:38:25', 'titre 127quoi', 3, 6),
(134, 'ceci est le test numéro 1280', '2016-05-28 19:38:25', 'titre 128quoi', 3, 6),
(135, 'ceci est le test numéro 1290', '2016-05-28 19:38:25', 'titre 129quoi', 3, 6),
(136, 'ceci est le test numéro 1300', '2016-05-28 19:38:25', 'titre 130quoi', 3, 6),
(137, 'ceci est le test numéro 1310', '2016-05-28 19:38:25', 'titre 131quoi', 3, 6),
(138, 'ceci est le test numéro 1320', '2016-05-28 19:38:26', 'titre 132quoi', 3, 6),
(139, 'ceci est le test numéro 1330', '2016-05-28 19:38:26', 'titre 133quoi', 3, 6),
(140, 'ceci est le test numéro 1340', '2016-05-28 19:38:26', 'titre 134quoi', 3, 6),
(141, 'ceci est le test numéro 1350', '2016-05-28 19:38:26', 'titre 135quoi', 3, 6),
(142, 'ceci est le test numéro 1360', '2016-05-28 19:38:26', 'titre 136quoi', 3, 6),
(143, 'ceci est le test numéro 1370', '2016-05-28 19:38:26', 'titre 137quoi', 3, 6),
(144, 'ceci est le test numéro 1380', '2016-05-28 19:38:26', 'titre 138quoi', 3, 6),
(145, 'ceci est le test numéro 1390', '2016-05-28 19:38:26', 'titre 139quoi', 3, 6),
(146, 'ceci est le test numéro 1400', '2016-05-28 19:38:26', 'titre 140quoi', 3, 6),
(147, 'ceci est le test numéro 1410', '2016-05-28 19:38:26', 'titre 141quoi', 3, 6),
(148, 'ceci est le test numéro 1420', '2016-05-28 19:38:26', 'titre 142quoi', 3, 6),
(149, 'ceci est le test numéro 1430', '2016-05-28 19:38:26', 'titre 143quoi', 3, 6),
(150, 'ceci est le test numéro 1440', '2016-05-28 19:38:26', 'titre 144quoi', 3, 6),
(151, 'ceci est le test numéro 1450', '2016-05-28 19:38:26', 'titre 145quoi', 3, 6),
(152, 'ceci est le test numéro 1460', '2016-05-28 19:38:26', 'titre 146quoi', 3, 6),
(153, 'ceci est le test numéro 1470', '2016-05-28 19:38:26', 'titre 147quoi', 3, 6),
(154, 'ceci est le test numéro 1480', '2016-05-28 19:38:26', 'titre 148quoi', 3, 6),
(155, 'ceci est le test numéro 1490', '2016-05-28 19:38:26', 'titre 149quoi', 3, 6),
(156, 'ceci est le test numéro 1500', '2016-05-28 19:38:27', 'titre 150quoi', 3, 6),
(157, 'ceci est le test numéro 1510', '2016-05-28 19:38:27', 'titre 151quoi', 3, 6),
(158, 'ceci est le test numéro 1520', '2016-05-28 19:38:27', 'titre 152quoi', 3, 6),
(159, 'ceci est le test numéro 1530', '2016-05-28 19:38:27', 'titre 153quoi', 3, 6),
(160, 'ceci est le test numéro 1540', '2016-05-28 19:38:27', 'titre 154quoi', 3, 6),
(161, 'ceci est le test numéro 1550', '2016-05-28 19:38:27', 'titre 155quoi', 3, 6),
(162, 'ceci est le test numéro 1560', '2016-05-28 19:38:27', 'titre 156quoi', 3, 6),
(163, 'ceci est le test numéro 1570', '2016-05-28 19:38:27', 'titre 157quoi', 3, 6),
(164, 'ceci est le test numéro 1580', '2016-05-28 19:38:27', 'titre 158quoi', 3, 6),
(165, 'ceci est le test numéro 1590', '2016-05-28 19:38:27', 'titre 159quoi', 3, 6),
(166, 'ceci est le test numéro 1600', '2016-05-28 19:38:27', 'titre 160quoi', 3, 6),
(167, 'ceci est le test numéro 1610', '2016-05-28 19:38:28', 'titre 161quoi', 3, 6),
(168, 'ceci est le test numéro 1620', '2016-05-28 19:38:28', 'titre 162quoi', 3, 6),
(169, 'ceci est le test numéro 1630', '2016-05-28 19:38:28', 'titre 163quoi', 3, 6),
(170, 'ceci est le test numéro 1640', '2016-05-28 19:38:28', 'titre 164quoi', 3, 6),
(171, 'ceci est le test numéro 1650', '2016-05-28 19:38:28', 'titre 165quoi', 3, 6),
(172, 'ceci est le test numéro 1660', '2016-05-28 19:38:28', 'titre 166quoi', 3, 6),
(173, 'ceci est le test numéro 1670', '2016-05-28 19:38:28', 'titre 167quoi', 3, 6),
(174, 'ceci est le test numéro 1680', '2016-05-28 19:38:29', 'titre 168quoi', 3, 6),
(175, 'ceci est le test numéro 1690', '2016-05-28 19:38:29', 'titre 169quoi', 3, 6),
(176, 'ceci est le test numéro 1700', '2016-05-28 19:38:29', 'titre 170quoi', 3, 6),
(177, 'ceci est le test numéro 1710', '2016-05-28 19:38:29', 'titre 171quoi', 3, 6),
(178, 'ceci est le test numéro 1720', '2016-05-28 19:38:29', 'titre 172quoi', 3, 6),
(179, 'ceci est le test numéro 1730', '2016-05-28 19:38:29', 'titre 173quoi', 3, 6),
(180, 'ceci est le test numéro 1740', '2016-05-28 19:38:29', 'titre 174quoi', 3, 6),
(181, 'ceci est le test numéro 1750', '2016-05-28 19:38:29', 'titre 175quoi', 3, 6),
(182, 'ceci est le test numéro 1760', '2016-05-28 19:38:29', 'titre 176quoi', 3, 6),
(183, 'ceci est le test numéro 1770', '2016-05-28 19:38:29', 'titre 177quoi', 3, 6),
(184, 'ceci est le test numéro 1780', '2016-05-28 19:38:29', 'titre 178quoi', 3, 6),
(185, 'ceci est le test numéro 1790', '2016-05-28 19:38:30', 'titre 179quoi', 3, 6),
(186, 'ceci est le test numéro 1800', '2016-05-28 19:38:30', 'titre 180quoi', 3, 6),
(187, 'ceci est le test numéro 1810', '2016-05-28 19:38:30', 'titre 181quoi', 3, 6),
(188, 'ceci est le test numéro 1820', '2016-05-28 19:38:30', 'titre 182quoi', 3, 6),
(189, 'ceci est le test numéro 1830', '2016-05-28 19:38:30', 'titre 183quoi', 3, 6),
(190, 'ceci est le test numéro 1840', '2016-05-28 19:38:30', 'titre 184quoi', 3, 6),
(191, 'ceci est le test numéro 1850', '2016-05-28 19:38:30', 'titre 185quoi', 3, 6),
(192, 'ceci est le test numéro 1860', '2016-05-28 19:38:30', 'titre 186quoi', 3, 6),
(193, 'ceci est le test numéro 1870', '2016-05-28 19:38:30', 'titre 187quoi', 3, 6),
(194, 'ceci est le test numéro 1880', '2016-05-28 19:38:30', 'titre 188quoi', 3, 6),
(195, 'ceci est le test numéro 1890', '2016-05-28 19:38:30', 'titre 189quoi', 3, 6),
(196, 'ceci est le test numéro 1900', '2016-05-28 19:38:30', 'titre 190quoi', 3, 6),
(197, 'ceci est le test numéro 1910', '2016-05-28 19:38:30', 'titre 191quoi', 3, 6),
(198, 'ceci est le test numéro 1920', '2016-05-28 19:38:30', 'titre 192quoi', 3, 6),
(199, 'ceci est le test numéro 1930', '2016-05-28 19:38:31', 'titre 193quoi', 3, 6),
(200, 'ceci est le test numéro 1940', '2016-05-28 19:38:31', 'titre 194quoi', 3, 6),
(201, 'ceci est le test numéro 1950', '2016-05-28 19:38:31', 'titre 195quoi', 3, 6),
(202, 'ceci est le test numéro 1960', '2016-05-28 19:38:31', 'titre 196quoi', 3, 6),
(203, 'ceci est le test numéro 1970', '2016-05-28 19:38:31', 'titre 197quoi', 3, 6),
(204, 'ceci est le test numéro 1980', '2016-05-28 19:38:31', 'titre 198quoi', 3, 6),
(205, 'ceci est le test numéro 1990', '2016-05-28 19:38:31', 'titre 199quoi', 3, 6),
(206, 'ceci est le test numéro 2000', '2016-05-28 19:38:31', 'titre 200quoi', 3, 6),
(207, 'ceci est le test numéro 2010', '2016-05-28 19:38:31', 'titre 201quoi', 3, 6),
(208, 'ceci est le test numéro 2020', '2016-05-28 19:38:31', 'titre 202quoi', 3, 6),
(209, 'ceci est le test numéro 2030', '2016-05-28 19:38:31', 'titre 203quoi', 3, 6),
(210, 'ceci est le test numéro 2040', '2016-05-28 19:38:31', 'titre 204quoi', 3, 6),
(211, 'ceci est le test numéro 2050', '2016-05-28 19:38:31', 'titre 205quoi', 3, 6),
(212, 'ceci est le test numéro 2060', '2016-05-28 19:38:32', 'titre 206quoi', 3, 6),
(213, 'ceci est le test numéro 2070', '2016-05-28 19:38:32', 'titre 207quoi', 3, 6),
(214, 'ceci est le test numéro 2080', '2016-05-28 19:38:32', 'titre 208quoi', 3, 6),
(215, 'ceci est le test numéro 2090', '2016-05-28 19:38:32', 'titre 209quoi', 3, 6),
(216, 'ceci est le test numéro 2100', '2016-05-28 19:38:32', 'titre 210quoi', 3, 6),
(217, 'ceci est le test numéro 2110', '2016-05-28 19:38:32', 'titre 211quoi', 3, 6),
(218, 'ceci est le test numéro 2120', '2016-05-28 19:38:32', 'titre 212quoi', 3, 6),
(219, 'ceci est le test numéro 2130', '2016-05-28 19:38:32', 'titre 213quoi', 3, 6),
(220, 'ceci est le test numéro 2140', '2016-05-28 19:38:32', 'titre 214quoi', 3, 6),
(221, 'ceci est le test numéro 2150', '2016-05-28 19:38:32', 'titre 215quoi', 3, 6),
(222, 'ceci est le test numéro 2160', '2016-05-28 19:38:32', 'titre 216quoi', 3, 6),
(223, 'ceci est le test numéro 2170', '2016-05-28 19:38:33', 'titre 217quoi', 3, 6),
(224, 'ceci est le test numéro 2180', '2016-05-28 19:38:33', 'titre 218quoi', 3, 6),
(225, 'ceci est le test numéro 2190', '2016-05-28 19:38:33', 'titre 219quoi', 3, 6),
(226, 'ceci est le test numéro 2200', '2016-05-28 19:38:33', 'titre 220quoi', 3, 6),
(227, 'ceci est le test numéro 2210', '2016-05-28 19:38:33', 'titre 221quoi', 3, 6),
(228, 'ceci est le test numéro 2220', '2016-05-28 19:38:33', 'titre 222quoi', 3, 6),
(229, 'ceci est le test numéro 2230', '2016-05-28 19:38:33', 'titre 223quoi', 3, 6),
(230, 'ceci est le test numéro 2240', '2016-05-28 19:38:33', 'titre 224quoi', 3, 6),
(231, 'ceci est le test numéro 2250', '2016-05-28 19:38:33', 'titre 225quoi', 3, 6),
(232, 'ceci est le test numéro 2260', '2016-05-28 19:38:33', 'titre 226quoi', 3, 6),
(233, 'ceci est le test numéro 2270', '2016-05-28 19:38:33', 'titre 227quoi', 3, 6),
(234, 'ceci est le test numéro 2280', '2016-05-28 19:38:33', 'titre 228quoi', 3, 6),
(235, 'ceci est le test numéro 2290', '2016-05-28 19:38:33', 'titre 229quoi', 3, 6),
(236, 'ceci est le test numéro 2300', '2016-05-28 19:38:33', 'titre 230quoi', 3, 6),
(237, 'ceci est le test numéro 2310', '2016-05-28 19:38:33', 'titre 231quoi', 3, 6),
(238, 'ceci est le test numéro 2320', '2016-05-28 19:38:34', 'titre 232quoi', 3, 6),
(239, 'ceci est le test numéro 2330', '2016-05-28 19:38:34', 'titre 233quoi', 3, 6),
(240, 'ceci est le test numéro 2340', '2016-05-28 19:38:34', 'titre 234quoi', 3, 6),
(241, 'ceci est le test numéro 2350', '2016-05-28 19:38:34', 'titre 235quoi', 3, 6),
(242, 'ceci est le test numéro 2360', '2016-05-28 19:38:34', 'titre 236quoi', 3, 6),
(243, 'ceci est le test numéro 2370', '2016-05-28 19:38:34', 'titre 237quoi', 3, 6),
(244, 'ceci est le test numéro 2380', '2016-05-28 19:38:34', 'titre 238quoi', 3, 6),
(245, 'ceci est le test numéro 2390', '2016-05-28 19:38:34', 'titre 239quoi', 3, 6),
(246, 'ceci est le test numéro 2400', '2016-05-28 19:38:34', 'titre 240quoi', 3, 6),
(247, 'ceci est le test numéro 2410', '2016-05-28 19:38:34', 'titre 241quoi', 3, 6),
(248, 'ceci est le test numéro 2420', '2016-05-28 19:38:34', 'titre 242quoi', 3, 6),
(249, 'ceci est le test numéro 2430', '2016-05-28 19:38:34', 'titre 243quoi', 3, 6),
(250, 'ceci est le test numéro 2440', '2016-05-28 19:38:34', 'titre 244quoi', 3, 6),
(251, 'ceci est le test numéro 2450', '2016-05-28 19:38:34', 'titre 245quoi', 3, 6),
(252, 'ceci est le test numéro 2460', '2016-05-28 19:38:34', 'titre 246quoi', 3, 6),
(253, 'ceci est le test numéro 2470', '2016-05-28 19:38:34', 'titre 247quoi', 3, 6),
(254, 'ceci est le test numéro 2480', '2016-05-28 19:38:34', 'titre 248quoi', 3, 6),
(255, 'ceci est le test numéro 2490', '2016-05-28 19:38:34', 'titre 249quoi', 3, 6),
(256, 'ceci est le test numéro 2500', '2016-05-28 19:38:34', 'titre 250quoi', 3, 6),
(257, 'ceci est le test numéro 2510', '2016-05-28 19:38:35', 'titre 251quoi', 3, 6),
(258, 'ceci est le test numéro 2520', '2016-05-28 19:38:35', 'titre 252quoi', 3, 6),
(259, 'ceci est le test numéro 2530', '2016-05-28 19:38:35', 'titre 253quoi', 3, 6),
(260, 'ceci est le test numéro 2540', '2016-05-28 19:38:35', 'titre 254quoi', 3, 6),
(261, 'ceci est le test numéro 2550', '2016-05-28 19:38:35', 'titre 255quoi', 3, 6),
(262, 'ceci est le test numéro 2560', '2016-05-28 19:38:35', 'titre 256quoi', 3, 6),
(263, 'ceci est le test numéro 2570', '2016-05-28 19:38:35', 'titre 257quoi', 3, 6),
(264, 'ceci est le test numéro 2580', '2016-05-28 19:38:36', 'titre 258quoi', 3, 6),
(265, 'ceci est le test numéro 2590', '2016-05-28 19:38:36', 'titre 259quoi', 3, 6),
(266, 'ceci est le test numéro 2600', '2016-05-28 19:38:36', 'titre 260quoi', 3, 6),
(267, 'ceci est le test numéro 2610', '2016-05-28 19:38:36', 'titre 261quoi', 3, 6),
(268, 'ceci est le test numéro 2620', '2016-05-28 19:38:36', 'titre 262quoi', 3, 6),
(269, 'ceci est le test numéro 2630', '2016-05-28 19:38:36', 'titre 263quoi', 3, 6),
(270, 'ceci est le test numéro 2640', '2016-05-28 19:38:36', 'titre 264quoi', 3, 6),
(271, 'ceci est le test numéro 2650', '2016-05-28 19:38:36', 'titre 265quoi', 3, 6),
(272, 'ceci est le test numéro 2660', '2016-05-28 19:38:36', 'titre 266quoi', 3, 6),
(273, 'ceci est le test numéro 2670', '2016-05-28 19:38:36', 'titre 267quoi', 3, 6),
(274, 'ceci est le test numéro 2680', '2016-05-28 19:38:36', 'titre 268quoi', 3, 6),
(275, 'ceci est le test numéro 2690', '2016-05-28 19:38:36', 'titre 269quoi', 3, 6),
(276, 'ceci est le test numéro 2700', '2016-05-28 19:38:37', 'titre 270quoi', 3, 6),
(277, 'ceci est le test numéro 2710', '2016-05-28 19:38:37', 'titre 271quoi', 3, 6),
(278, 'ceci est le test numéro 2720', '2016-05-28 19:38:37', 'titre 272quoi', 3, 6),
(279, 'ceci est le test numéro 2730', '2016-05-28 19:38:37', 'titre 273quoi', 3, 6),
(280, 'ceci est le test numéro 2740', '2016-05-28 19:38:37', 'titre 274quoi', 3, 6),
(281, 'ceci est le test numéro 2750', '2016-05-28 19:38:37', 'titre 275quoi', 3, 6),
(282, 'ceci est le test numéro 2760', '2016-05-28 19:38:37', 'titre 276quoi', 3, 6),
(283, 'ceci est le test numéro 2770', '2016-05-28 19:38:37', 'titre 277quoi', 3, 6),
(284, 'ceci est le test numéro 2780', '2016-05-28 19:38:37', 'titre 278quoi', 3, 6),
(285, 'ceci est le test numéro 2790', '2016-05-28 19:38:37', 'titre 279quoi', 3, 6),
(286, 'ceci est le test numéro 2800', '2016-05-28 19:38:37', 'titre 280quoi', 3, 6),
(287, 'ceci est le test numéro 2810', '2016-05-28 19:38:37', 'titre 281quoi', 3, 6),
(288, 'ceci est le test numéro 2820', '2016-05-28 19:38:37', 'titre 282quoi', 3, 6),
(289, 'ceci est le test numéro 2830', '2016-05-28 19:38:37', 'titre 283quoi', 3, 6),
(290, 'ceci est le test numéro 2840', '2016-05-28 19:38:38', 'titre 284quoi', 3, 6),
(291, 'ceci est le test numéro 2850', '2016-05-28 19:38:38', 'titre 285quoi', 3, 6),
(292, 'ceci est le test numéro 2860', '2016-05-28 19:38:38', 'titre 286quoi', 3, 6),
(293, 'ceci est le test numéro 2870', '2016-05-28 19:38:38', 'titre 287quoi', 3, 6),
(294, 'ceci est le test numéro 2880', '2016-05-28 19:38:38', 'titre 288quoi', 3, 6),
(295, 'ceci est le test numéro 2890', '2016-05-28 19:38:38', 'titre 289quoi', 3, 6),
(296, 'ceci est le test numéro 2900', '2016-05-28 19:38:38', 'titre 290quoi', 3, 6),
(297, 'ceci est le test numéro 2910', '2016-05-28 19:38:38', 'titre 291quoi', 3, 6),
(298, 'ceci est le test numéro 2920', '2016-05-28 19:38:38', 'titre 292quoi', 3, 6),
(299, 'ceci est le test numéro 2930', '2016-05-28 19:38:38', 'titre 293quoi', 3, 6),
(300, 'ceci est le test numéro 2940', '2016-05-28 19:38:38', 'titre 294quoi', 3, 6),
(301, 'ceci est le test numéro 2950', '2016-05-28 19:38:39', 'titre 295quoi', 3, 6),
(302, 'ceci est le test numéro 2960', '2016-05-28 19:38:39', 'titre 296quoi', 3, 6),
(303, 'ceci est le test numéro 2970', '2016-05-28 19:38:39', 'titre 297quoi', 3, 6),
(304, 'ceci est le test numéro 2980', '2016-05-28 19:38:39', 'titre 298quoi', 3, 6),
(305, 'ceci est le test numéro 2990', '2016-05-28 19:38:39', 'titre 299quoi', 3, 6),
(306, 'ceci est le test numéro 3000', '2016-05-28 19:38:39', 'titre 300quoi', 3, 6),
(307, 'ceci est le test numéro 3010', '2016-05-28 19:38:39', 'titre 301quoi', 3, 6),
(308, 'ceci est le test numéro 3020', '2016-05-28 19:38:39', 'titre 302quoi', 3, 6),
(309, 'ceci est le test numéro 3030', '2016-05-28 19:38:39', 'titre 303quoi', 3, 6),
(310, 'ceci est le test numéro 3040', '2016-05-28 19:38:39', 'titre 304quoi', 3, 6),
(311, 'ceci est le test numéro 3050', '2016-05-28 19:38:39', 'titre 305quoi', 3, 6),
(312, 'ceci est le test numéro 3060', '2016-05-28 19:38:39', 'titre 306quoi', 3, 6),
(313, 'ceci est le test numéro 3070', '2016-05-28 19:38:39', 'titre 307quoi', 3, 6),
(314, 'ceci est le test numéro 3080', '2016-05-28 19:38:39', 'titre 308quoi', 3, 6),
(315, 'ceci est le test numéro 3090', '2016-05-28 19:38:39', 'titre 309quoi', 3, 6),
(316, 'ceci est le test numéro 3100', '2016-05-28 19:38:39', 'titre 310quoi', 3, 6),
(317, 'ceci est le test numéro 3110', '2016-05-28 19:38:39', 'titre 311quoi', 3, 6),
(318, 'ceci est le test numéro 3120', '2016-05-28 19:38:39', 'titre 312quoi', 3, 6),
(319, 'ceci est le test numéro 3130', '2016-05-28 19:38:40', 'titre 313quoi', 3, 6),
(320, 'ceci est le test numéro 3140', '2016-05-28 19:38:40', 'titre 314quoi', 3, 6),
(321, 'ceci est le test numéro 3150', '2016-05-28 19:38:40', 'titre 315quoi', 3, 6),
(322, 'ceci est le test numéro 3160', '2016-05-28 19:38:40', 'titre 316quoi', 3, 6),
(323, 'ceci est le test numéro 3170', '2016-05-28 19:38:40', 'titre 317quoi', 3, 6),
(324, 'ceci est le test numéro 3180', '2016-05-28 19:38:40', 'titre 318quoi', 3, 6),
(325, 'ceci est le test numéro 3190', '2016-05-28 19:38:40', 'titre 319quoi', 3, 6),
(326, 'ceci est le test numéro 3200', '2016-05-28 19:38:40', 'titre 320quoi', 3, 6),
(327, 'ceci est le test numéro 3210', '2016-05-28 19:38:40', 'titre 321quoi', 3, 6),
(328, 'ceci est le test numéro 3220', '2016-05-28 19:38:40', 'titre 322quoi', 3, 6),
(329, 'ceci est le test numéro 3230', '2016-05-28 19:38:40', 'titre 323quoi', 3, 6),
(330, 'ceci est le test numéro 3240', '2016-05-28 19:38:40', 'titre 324quoi', 3, 6),
(331, 'ceci est le test numéro 3250', '2016-05-28 19:38:40', 'titre 325quoi', 3, 6),
(332, 'ceci est le test numéro 3260', '2016-05-28 19:38:40', 'titre 326quoi', 3, 6),
(333, 'ceci est le test numéro 3270', '2016-05-28 19:38:40', 'titre 327quoi', 3, 6),
(334, 'ceci est le test numéro 3280', '2016-05-28 19:38:40', 'titre 328quoi', 3, 6),
(335, 'ceci est le test numéro 3290', '2016-05-28 19:38:41', 'titre 329quoi', 3, 6),
(336, 'ceci est le test numéro 3300', '2016-05-28 19:38:41', 'titre 330quoi', 3, 6),
(337, 'ceci est le test numéro 3310', '2016-05-28 19:38:41', 'titre 331quoi', 3, 6),
(338, 'ceci est le test numéro 3320', '2016-05-28 19:38:41', 'titre 332quoi', 3, 6),
(339, 'ceci est le test numéro 3330', '2016-05-28 19:38:41', 'titre 333quoi', 3, 6),
(340, 'ceci est le test numéro 3340', '2016-05-28 19:38:41', 'titre 334quoi', 3, 6),
(341, 'ceci est le test numéro 3350', '2016-05-28 19:38:41', 'titre 335quoi', 3, 6),
(342, 'ceci est le test numéro 3360', '2016-05-28 19:38:41', 'titre 336quoi', 3, 6),
(343, 'ceci est le test numéro 3370', '2016-05-28 19:38:41', 'titre 337quoi', 3, 6),
(344, 'ceci est le test numéro 3380', '2016-05-28 19:38:41', 'titre 338quoi', 3, 6),
(345, 'ceci est le test numéro 3390', '2016-05-28 19:38:41', 'titre 339quoi', 3, 6),
(348, 'eeee', '2016-05-30 18:23:58', 'eeee', 4, 1),
(349, 'eddeeedde', '2016-05-30 18:24:55', 'ededed', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `label` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `label`) VALUES
(1, 'Poulpes magistrauxdddd'),
(2, 'Gueeepes de combat'),
(4, 'eeeeerrrrrrr'),
(5, 'eerfgthyjhg'),
(6, 'eerfgthyjhgefrdrfthg'),
(7, 'woiooo'),
(8, 'woioooeeeeeee'),
(10, 'woioooeeeeeeeeeeee'),
(11, 'poule aux oeufs d''oreeee');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_billet` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `message`, `date`, `id_billet`, `id_utilisateur`) VALUES
(1, 'blllaaaaa', '2016-05-29 19:26:14', 1, 1),
(2, 'cdeedeere', '2016-05-29 19:26:14', 1, 2),
(3, 'eee', '2016-05-31 11:08:16', 1, 4),
(4, 'bonjour', '2016-05-31 11:08:21', 1, 4),
(5, 'bonjour', '2016-05-31 11:11:02', 1, 4),
(6, 'bonjour', '2016-05-31 11:11:11', 1, 4),
(7, 'test', '2016-05-31 17:27:35', 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(128) NOT NULL,
  `nom` varchar(128) NOT NULL,
  `prenom` varchar(128) NOT NULL,
  `mail` varchar(256) NOT NULL,
  `mdp` varchar(256) NOT NULL,
  `profil` enum('membre','admin','','') NOT NULL,
  `radie` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `pseudo`, `nom`, `prenom`, `mail`, `mdp`, `profil`, `radie`) VALUES
(1, 'Eviliscious', 'De Balle', 'Trou', 'troudbal@gmail.com', 'luvluv', 'membre', 0),
(2, 'eeeeee', 'eeeeee', 'eeee', 'eee@g.fr', 'eeeeee', 'membre', 0),
(3, 'Oui', 'Non', 'Peut etre', 'kookjokj@gmail.lol', '666666', 'membre', 0),
(4, 'Regen', 'Furgaute', 'Yohanneee', 'yohannfurgaut@gmail.com', 'Steele1664', 'membre', 0),
(5, 'Kratz', 'eeeededeeeee', 'Yohanneee', 'yohannfurgaut@gmail.com', 'Kro1664', 'admin', 0),
(6, 'Regeeeeen', 'Furgaut', 'Yohann', 'kookokko@gmail.com', '820e13451d919f39043b634684c80171', 'membre', 0),
(8, 'Hola', 'ijijijij', 'ijijijijij', 'ijijij@gmail.com', '820e13451d919f39043b634684c80171', 'membre', 0),
(9, 'Kratzaaaa', 'kkkk', 'kkkk', 'kk@k.fr', '820e13451d919f39043b634684c80171', 'membre', 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `billets`
--
ALTER TABLE `billets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_billet` (`id_billet`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pseudo` (`pseudo`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `billets`
--
ALTER TABLE `billets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `billets`
--
ALTER TABLE `billets`
  ADD CONSTRAINT `fk_bill_cat` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_bill_user` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id`);

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `fk_comm_bill` FOREIGN KEY (`id_billet`) REFERENCES `billets` (`id`),
  ADD CONSTRAINT `fk_comm_user` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
