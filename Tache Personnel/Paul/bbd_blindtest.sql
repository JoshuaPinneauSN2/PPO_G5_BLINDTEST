-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 22 Novembre 2019 à 10:35
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bbd_blindtest`
--

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE `artiste` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `artiste`
--

INSERT INTO `artiste` (`id`, `nom`) VALUES
(1, 'PNL'),
(2, 'Nekfeu'),
(3, 'Booba'),
(4, 'Kaaris'),
(5, 'Lomepal'),
(6, 'Romeo Elvis'),
(7, 'Vald'),
(8, 'Ninho'),
(9, 'Lorenzo'),
(10, 'Mister V'),
(11, 'Europe'),
(12, 'a-ha');

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `musique`
--

CREATE TABLE `musique` (
  `id_musique` int(10) UNSIGNED NOT NULL COMMENT '\n',
  `nom` varchar(30) NOT NULL,
  `artiste_id` int(10) UNSIGNED NOT NULL,
  `theme_idtheme` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `musique`
--

INSERT INTO `musique` (`id_musique`, `nom`, `artiste_id`, `theme_idtheme`) VALUES
(1, 'Blanka', 1, 1),
(2, 'Mon Reuf', 2, 1),
(3, 'Arc en Ciel', 3, 1),
(4, 'Diaraby', 4, 1),
(5, 'Trop Beau', 5, 1),
(6, 'Malade', 6, 1),
(7, 'Désaccordé', 7, 1),
(8, 'Putana', 8, 1),
(9, 'Damdamdeo', 9, 1),
(10, 'Top Album', 10, 1),
(11, 'The Final Countdown', 11, 2),
(12, 'Take on Me', 12, 2);

-- --------------------------------------------------------

--
-- Structure de la table `musique_nonjoue`
--

CREATE TABLE `musique_nonjoue` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(45) NOT NULL,
  `artiste_id` int(10) UNSIGNED NOT NULL,
  `theme_idtheme` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE `theme` (
  `idtheme` int(10) UNSIGNED NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `miniature` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `theme`
--

INSERT INTO `theme` (`idtheme`, `nom`, `miniature`) VALUES
(1, 'RAP', NULL),
(2, 'Année 80 ', NULL),
(3, 'Année 2000', NULL),
(4, 'R&B', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `artiste`
--
ALTER TABLE `artiste`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `musique`
--
ALTER TABLE `musique`
  ADD PRIMARY KEY (`id_musique`,`artiste_id`,`theme_idtheme`),
  ADD KEY `fk_musique_artiste1_idx` (`artiste_id`),
  ADD KEY `fk_musique_theme1_idx` (`theme_idtheme`);

--
-- Index pour la table `musique_nonjoue`
--
ALTER TABLE `musique_nonjoue`
  ADD PRIMARY KEY (`id`,`artiste_id`,`theme_idtheme`),
  ADD KEY `fk_musique_nonjoue_artiste1_idx` (`artiste_id`),
  ADD KEY `fk_musique_nonjoue_theme1_idx` (`theme_idtheme`);

--
-- Index pour la table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`idtheme`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `artiste`
--
ALTER TABLE `artiste`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `musique`
--
ALTER TABLE `musique`
  MODIFY `id_musique` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '\n', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `musique_nonjoue`
--
ALTER TABLE `musique_nonjoue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `theme`
--
ALTER TABLE `theme`
  MODIFY `idtheme` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
