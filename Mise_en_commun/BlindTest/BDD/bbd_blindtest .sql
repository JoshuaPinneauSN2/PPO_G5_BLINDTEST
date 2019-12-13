-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 12 déc. 2019 à 23:14
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bbd_blindtest`
--
CREATE DATABASE IF NOT EXISTS `bbd_blindtest` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bbd_blindtest`;

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

DROP TABLE IF EXISTS `artiste`;
CREATE TABLE IF NOT EXISTS `artiste` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `artiste`
--

INSERT INTO `artiste` (`id`, `nom`) VALUES
(1, 'Nekfeu'),
(2, 'Ninho'),
(3, 'Gambi'),
(4, 'PNL'),
(5, 'Lomepal'),
(6, 'Niska'),
(7, 'Vald'),
(8, 'Damso'),
(9, 'Riles'),
(10, 'Jul'),
(11, 'a-ha'),
(12, 'Earth, Wind & Fire'),
(13, 'Michael Jackson'),
(14, 'Cyndi Lauper'),
(15, 'Jean Pierre Mader'),
(16, 'Indochine'),
(17, 'Laroche Valmont'),
(18, 'Debut de Soiree'),
(19, 'Partenaire Particulier'),
(20, 'Eurythmics'),
(21, 'Yannick'),
(22, 'Daft Punk'),
(23, 'Alizee'),
(24, 'Eminem'),
(25, 'Garou'),
(26, 'Celine Dion'),
(27, 'Louise Attaque'),
(28, 'Helene Segara'),
(29, 'Britney Spears'),
(30, 'David Guetta'),
(31, 'Alicia Keys'),
(32, 'Rihanna'),
(33, 'Beyoncé'),
(34, 'R. Kelly'),
(35, 'Post Malone'),
(36, 'Usher'),
(37, 'Claude François'),
(38, 'Jean-Jacques Goldman'),
(39, 'Europe'),
(40, 'Talk Talk'),
(41, 'Wham!'),
(42, 'The Black Eyed Peas');

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

DROP TABLE IF EXISTS `joueur`;
CREATE TABLE IF NOT EXISTS `joueur` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `musique`
--

DROP TABLE IF EXISTS `musique`;
CREATE TABLE IF NOT EXISTS `musique` (
  `id_musique` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '\n',
  `nom` varchar(30) NOT NULL,
  `artiste_id` int(10) UNSIGNED NOT NULL,
  `theme_idtheme` int(10) UNSIGNED NOT NULL,
  `files` varchar(40) NOT NULL,
  PRIMARY KEY (`id_musique`),
  KEY `fk_musique_artiste1_idx` (`artiste_id`),
  KEY `fk_musique_theme1_idx` (`theme_idtheme`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `musique`
--

INSERT INTO `musique` (`id_musique`, `nom`, `artiste_id`, `theme_idtheme`, `files`) VALUES
(1, 'Ma dope', 1, 1, 'ma_dope.mp3'),
(2, 'Maman ne le sait pas', 2, 1, 'maman_ne_le_sait_pas.mp3'),
(3, 'POPOPOPO', 3, 1, 'popopopo.mp3'),
(4, 'Au DD', 4, 1, 'au_dd.mp3'),
(5, 'Trop Beau', 5, 1, 'trop_beau.mp3'),
(6, 'Take On Me', 11, 2, 'take_on_me.mp3'),
(7, ' September', 12, 2, 'september.mp3'),
(8, 'Girls Just Want To Have Fun', 14, 2, 'girls_just_want_to_have_fun.mp3'),
(9, 'Beat It', 13, 2, 'beat_it.mp3'),
(10, 'Macumba', 15, 2, 'macumba_mp3'),
(11, 'Ces soiree la', 21, 3, 'ces_soiree_la.mp3'),
(12, 'One More Time', 22, 3, 'one_more_time.mp3'),
(13, 'Moi.....Lolita', 23, 3, 'moi.....lolita.mp3'),
(14, 'The Real Slim Shady', 24, 3, 'the_real_slim_shady.mp3'),
(15, 'Sous Le Vent', 25, 3, 'sous_le_vent.mp3'),
(16, 'Fallin', 31, 4, 'fallin.mp3'),
(17, 'Unfaithful', 32, 4, 'unfaithful.mp3'),
(18, 'Crazy In Love', 33, 4, 'crazy_in_love.mp3'),
(19, 'I Believe I Can Fly', 34, 4, 'i_believe_i_can_fly.mp3'),
(20, 'rockstar ', 35, 4, 'rockstar.mp3'),
(21, 'Feu De Bois', 8, 1, 'feu_de_bois.mp3'),
(22, 'Brothers', 9, 1, 'brothers.mp3'),
(23, 'SMOG', 8, 1, 'smog.mp3'),
(24, '1000°C', 5, 1, '1000°c.mp3'),
(25, 'Ce monde est cruel ', 7, 1, 'ce_monde_est_cruel.mp3'),
(26, 'The Final Countdown', 39, 2, 'the_final_countdown.mp3'),
(27, 'Such A Shame', 40, 2, 'such_a_shame.mp3'),
(28, 'Trois nuits par semaine', 16, 2, 'trois_nuit_par_semaine.mp3'),
(29, 'Here Comes The Rain Again', 20, 2, 'here_comes_the_rain_again.mp3'),
(30, 'Wake Me Up Before You Go-Go', 41, 2, 'wake_me_up.mp3'),
(31, 'Around The World', 22, 3, 'around_the_word.mp3'),
(32, 'Lose Yourself to Dance ', 22, 3, 'lose_yourself_to_dance.mp3'),
(33, 'Courage', 26, 3, 'courage.mp3'),
(34, 'Sometimes', 29, 3, 'sometimes.mp3'),
(35, 'Till I Collapse', 24, 3, 'till_i_collapse.mp3'),
(36, 'Pump It', 42, 4, 'pump_it.mp3'),
(37, 'Boom Boom Pow', 42, 4, 'boom_boom_pow.mp3'),
(38, 'The Time', 42, 4, 'the_time.mp3'),
(39, 'My Humps', 42, 4, 'my_humps.mp3'),
(40, 'RITMO', 42, 4, 'ritmo_mp3');

-- --------------------------------------------------------

--
-- Structure de la table `musique_nonjoue`
--

DROP TABLE IF EXISTS `musique_nonjoue`;
CREATE TABLE IF NOT EXISTS `musique_nonjoue` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `artiste_id` int(10) UNSIGNED NOT NULL,
  `theme_idtheme` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_musique_nonjoue_artiste1_idx` (`artiste_id`),
  KEY `fk_musique_nonjoue_theme1_idx` (`theme_idtheme`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `musique_nonjoue`
--

INSERT INTO `musique_nonjoue` (`id`, `nom`, `artiste_id`, `theme_idtheme`) VALUES
(1, 'On Verra', 1, 1),
(2, 'Reuf Version Five', 1, 1),
(3, 'La vie qu\'on mene', 2, 1),
(4, 'Putana', 2, 1),
(5, 'He Ho', 3, 1),
(6, 'Naha', 4, 1),
(7, 'Moms', 5, 1),
(8, 'Yeux Disent', 5, 1),
(9, 'Dessacorde', 7, 1),
(10, 'Bitch', 7, 1),
(11, 'Batiment', 6, 1),
(12, 'Goutte d\'eau', 6, 1),
(13, 'Macarena', 8, 1),
(14, 'E.Signaler', 8, 1),
(15, 'PESETAS', 9, 1),
(16, 'JCVD', 10, 1),
(17, 'On M\'appelle L\'ovni', 10, 1),
(18, 'POPOPOPO', 2, 1),
(19, 'Reseaux', 6, 1),
(20, 'Tricheur Feat Damso', 1, 1),
(21, 'Let\'s Groove', 12, 2),
(22, 'Stay On These Roads', 11, 2),
(23, 'Smooth Criminal', 13, 2),
(24, 'Billie Jean', 13, 2),
(25, 'Time After Time', 14, 2),
(26, 'Thriller', 13, 2),
(27, 'True Colors', 14, 2),
(28, 'Disparue', 15, 2),
(29, 'L\'aventurier', 16, 2),
(30, 'J\'ai demande à la lune', 16, 2),
(31, 'T\'as Le Look Coco', 17, 2),
(32, ' Nuit de Folie', 18, 2),
(33, 'Partenaire Particulier', 19, 2),
(34, 'Alexandrie Alexandra', 37, 2),
(35, ' Le lundi au soleil ', 37, 2),
(36, 'Quand la musique est bonne', 38, 2),
(37, 'La-bas', 38, 2),
(38, ' Tournent les violons', 38, 2),
(39, 'Puisque tu pars', 38, 2),
(40, 'Cette annee-là', 37, 2),
(41, 'Sweet Dreams', 20, 3),
(42, 'Here Comes The Rain Again', 20, 3),
(43, 'Instant Crush', 22, 3),
(44, 'Harder Better Faster', 22, 3),
(45, 'Get Lucky', 22, 3),
(46, 'Gourmandises', 23, 3),
(47, 'J\'en ai marre', 23, 3),
(49, 'Without Me', 24, 3),
(50, 'Rap God', 24, 3),
(51, 'Belle', 25, 3),
(52, 'Seul', 25, 3),
(53, 'My Heart Will Go On', 26, 3),
(54, 'Because You Loved Me', 26, 3),
(55, 'On n\'oublie jamais rien, on vit avec', 28, 3),
(56, 'Je vis pour elle', 28, 3),
(57, 'Toxic', 29, 3),
(58, 'Titanium ft. Sia', 30, 3),
(59, 'Hey Mama', 30, 3),
(60, 'Oops!...I Did It Again', 29, 3),
(61, 'Girl On Fire', 31, 4),
(62, 'If I Ain\'t Got You ', 31, 4),
(63, 'Diamonds', 32, 4),
(64, 'Stay ft. Mikky Ekko', 32, 4),
(65, 'Work ft. Drake', 32, 4),
(66, 'Brand New Me', 31, 4),
(67, 'Halo', 33, 4),
(68, 'If I Were A Boy', 33, 4),
(69, 'Step In The Name Of Love', 34, 4),
(70, ' Sunflower', 35, 4),
(71, 'Congratulations ft. Quavo', 35, 4),
(72, ' Sunflower', 35, 4),
(73, ' Yeah! ft. Lil Jon, Ludacris', 36, 4),
(74, 'Psycho ft. Ty Dolla $ign', 35, 4),
(75, 'Play Hard ft. Ne-Yo, Akon', 30, 4),
(76, 'U Got It Bad', 36, 4),
(77, ' FourFiveSeconds', 32, 4),
(78, 'We Found Love ft. Calvin Harris', 32, 4),
(79, 'Irreplaceable', 33, 4),
(80, 'Wow.', 35, 4);

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

DROP TABLE IF EXISTS `theme`;
CREATE TABLE IF NOT EXISTS `theme` (
  `idtheme` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `miniature` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idtheme`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `theme`
--

INSERT INTO `theme` (`idtheme`, `nom`, `miniature`) VALUES
(1, 'RAP', NULL),
(2, 'Année 80', NULL),
(3, 'Année 2000', NULL),
(4, 'R&B', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `musique`
--
ALTER TABLE `musique`
  ADD CONSTRAINT `fk_musique_artiste1` FOREIGN KEY (`artiste_id`) REFERENCES `artiste` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_musique_theme1` FOREIGN KEY (`theme_idtheme`) REFERENCES `theme` (`idtheme`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `musique_nonjoue`
--
ALTER TABLE `musique_nonjoue`
  ADD CONSTRAINT `fk_musique_nonjoue_artiste1` FOREIGN KEY (`artiste_id`) REFERENCES `artiste` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_musique_nonjoue_theme1` FOREIGN KEY (`theme_idtheme`) REFERENCES `theme` (`idtheme`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
