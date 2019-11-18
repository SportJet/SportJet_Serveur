-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour sportjet
CREATE DATABASE IF NOT EXISTS `sportjet` /*!40100 DEFAULT CHARACTER SET utf16 COLLATE utf16_unicode_ci */;
USE `sportjet`;

-- Listage de la structure de la table sportjet. t_clubs
CREATE TABLE IF NOT EXISTS `t_clubs` (
  `id` int(11) DEFAULT NULL,
  `Nom` text COLLATE utf16_unicode_ci,
  `Adresse` text COLLATE utf16_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- Listage des données de la table sportjet.t_clubs : ~0 rows (environ)
/*!40000 ALTER TABLE `t_clubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_clubs` ENABLE KEYS */;

-- Listage de la structure de la table sportjet. t_equipes
CREATE TABLE IF NOT EXISTS `t_equipes` (
  `id` int(11) DEFAULT NULL,
  `Nom` text COLLATE utf16_unicode_ci,
  `idClub` int(11) DEFAULT NULL,
  `idNiveau` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- Listage des données de la table sportjet.t_equipes : ~0 rows (environ)
/*!40000 ALTER TABLE `t_equipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_equipes` ENABLE KEYS */;

-- Listage de la structure de la table sportjet. t_matchs
CREATE TABLE IF NOT EXISTS `t_matchs` (
  `id` int(11) DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  `idEquipe1` int(11) DEFAULT NULL,
  `idEquipe2` int(11) DEFAULT NULL,
  `Score1` int(11) DEFAULT NULL,
  `Score2` int(11) DEFAULT NULL,
  `LogFilename` text COLLATE utf16_unicode_ci,
  `Lieu` text COLLATE utf16_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- Listage des données de la table sportjet.t_matchs : ~0 rows (environ)
/*!40000 ALTER TABLE `t_matchs` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_matchs` ENABLE KEYS */;

-- Listage de la structure de la table sportjet. t_niveau
CREATE TABLE IF NOT EXISTS `t_niveau` (
  `id` int(11) DEFAULT NULL,
  `Niveau` text COLLATE utf16_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- Listage des données de la table sportjet.t_niveau : ~0 rows (environ)
/*!40000 ALTER TABLE `t_niveau` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_niveau` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
