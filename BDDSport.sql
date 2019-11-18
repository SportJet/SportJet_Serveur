CREATE TABLE `t_clubs` (
  `id` int(11) DEFAULT NULL,
  `Nom` text,
  `Adresse` text
);

CREATE TABLE `t_equipes` (
  `id` int(11) DEFAULT NULL,
  `Nom` text,
  `idClub` int(11) DEFAULT NULL,
  `idNiveau` int(11) DEFAULT NULL
);

CREATE TABLE `t_matchs` (
  `id` int(11) DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  `idEquipe1` int(11) DEFAULT NULL,
  `idEquipe2` int(11) DEFAULT NULL,
  `Score1` int(11) DEFAULT NULL,
  `Score2` int(11) DEFAULT NULL,
  `LogFilename` text,
  `Lieu` text
);

CREATE TABLE `t_niveau` (
  `id` int(11) DEFAULT NULL,
  `Niveau` text
);

ALTER TABLE `t_equipes` ADD FOREIGN KEY (`idClub`) REFERENCES `t_clubs` (`id`);

ALTER TABLE `t_equipes` ADD FOREIGN KEY (`idNiveau`) REFERENCES `t_niveau` (`id`);

ALTER TABLE `t_matchs` ADD FOREIGN KEY (`idEquipe2`) REFERENCES `t_equipes` (`id`);

ALTER TABLE `t_matchs` ADD FOREIGN KEY (`idEquipe1`) REFERENCES `t_equipes` (`id`);
