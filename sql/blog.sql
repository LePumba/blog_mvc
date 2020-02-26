-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 26 fév. 2020 à 21:58
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `date`) VALUES
(1, 'Pumbaa', 'De caractère jovial et un peu simple d\'esprit, ce phacochère au grand cœur partage tout avec son ami Timon, un jeune suricate (sorte de mangouste). Ils ont un dicton : Hakuna matata qui signifie « sans aucun souci ». Il est parfois plus malin que Timon et n\'hésite pas à fraterniser avec la première personne rencontrée. Timon et Pumbaa sont tous deux insectivores.\r\n\r\nLe film Le Roi lion 3 : Hakuna Matata permet de découvrir les raisons de l\'exil de Timon mais pas celle de Pumbaa. Il rencontre son futur ami suricate à la nuit tombée peu après le départ de celui-ci de sa colonie à la suite des nombreux problèmes qu\'il provoquait. Le seul indice inclus dans les films de ses origines se trouve dans la chanson Hakuna matata où il est question de pets « provoquant des tempêtes ». Le film Le Roi lion 3 : Hakuna Matata mets cela en scène en associant l\'un de ses pets avec l\'évanouissement des animaux durant la scène de prosternation devant l\'enfant roi Simba du premier opus.', NULL),
(2, 'Sangoku', 'Son Goku (???, Son Gok??, anciennement orthographié Son Gokû), de son vrai nom Kakarot (?????, Kakarotto?), est un personnage de fiction créé par Akira Toriyama et le principal héros du manga Dragon Ball (1984). Il apparaît pour la première fois le 20 novembre 1984 dans le Weekly Sh?nen Jump. Le personnage s\'inspire de Sun Wukong et Superman (en raison de son histoire d\'origine très similaire).\r\n\r\nVivant seul dans les montagnes loin de la ville, il hérite d\'une boule à quatre étoiles connue sous le nom de Dragon Ball qu\'il garde comme souvenir de son Grand-père Son Gohan, il se lie d\'amitié avec une adolescente nommée Bulma. Ensemble il se lance a la quête des sept Dragon Balls, qui, une fois rassemblés, invoquent le dragon Shenron qui exauce les vœux. Ils rencontrent le bandit du désert Yamcha et Plume, qui se joignent également à leur quête. Goku est ensuite formé par Muten Roshi, aux côtés d\'un moine Shaolin nommé Krillin, qui devient son meilleur ami. Muten Roshi donne à Goku le Nuage supersonique (en récompense pour avoir sauvé sa tortue de mer), qui devient la principale source de voyage de Goku à travers le monde.\r\n\r\nGoku combat des ennemis, avec ses alliés, comme Ten Shin Han, ainsi que Piccolo. Après être devenu champion finaliste des 21e et 22e tournois des arts martiaux, Goku l\'emporte finalement au 23e avec la défaite de Piccolo, et épouse Chi-Chi, à cause d\'une promesse qu\'il lui avait faite il y\'a des années, bien qu\'il ne sache pas ce qu\'était le mariage.\r\n\r\nCinq ans plus tard, Goku rencontre son frère aîné Raditz et se sacrifie pour vaincre celui-ci après avoir découvert ses origines. Afin de combattre les autres Saiyans qui lança l\'assaut d\'envahir la Terre, Goku s\'entraîne chez Maître Kaio dans l\'au-delà, celui-ci l\' enseigne le Kai?-ken et l\'enseigne également la plus puissante des techniques : le Genki-Dama. Après avoir été ressuscité par les Dragon Balls, Goku affronte le prince Saiyan Vegeta, qui deviendra finalement un allié. Lors de son voyage vers la planète Namek afin d\'aider ses amis à rassembler les Dragon Balls pour faire revivre les victimes tuées par les saiyans, Goku combat le tyran galactique Freezer, qui a détruit la planète natale des Saiyans et presque toute la race. Au cours de sa longue et périlleuse bataille épique avec Freezer, Goku devient le premier Saiyan en mille ans à se transformer en un légendaire Super Saiyan.\r\n\r\nEn l\'an 767 Goku est victime d\'une crise cardiaque dont le voyageur du temps Trunks le prévient récupère après avoir pris les médicaments fournis. Plus tard, Goku entraîne son premier fils Gohan à être son successeur et se sacrifie à nouveau pendant la bataille contre le mal bio-androïde Cell.\r\n\r\nGoku est temporairement ressuscité sur Terre sept ans plus tard et rencontre son deuxième fils Son Goten. Goku combat également Vegeta de nouveau après que Vegeta soit tombé sous le contrôle du sorcier Babidi. Peu de temps après, il est entraîné dans la Salle de l\'Esprit et du Temps contre le monstre Majin Boo. Avec Vegeta il arrive à fusionner en créant le guerrier Vegeto. Finalement, Goku détruit Boo avec le Genki-Dama. Dix ans plus tard, lors d\'un autre tournoi mondial d\'arts martiaux, Goku rencontre Uub, la réincarnation humaine de Boo, et part avec lui, avec l\'intention de le former comme le nouveau protecteur de la Terre.\r\n\r\nEn tant que protagoniste, Goku apparaît dans la plupart des épisodes, films, émissions de télévision et OVA des adaptations d\' anime du manga ( Dragon Ball , Dragon Ball Z , Dragon Ball GT , Dragon Ball Super ) ainsi que dans de nombreuses franchises jeux vidéo. En raison de la popularité internationale de la série, Goku est devenu l\'un des personnages les plus reconnaissables et les plus emblématiques du monde. En dehors de la franchise Dragon Ball, Goku a fait de brèves apparitions dans une autre œuvre de Toriyama, Neko Majin Z,parodie de la série Dragon Ball. Il a fait l\'objet d\'autres parodies ainsi l\'objet d\'événements spéciaux. La plupart des publics occidentaux ont été initiés à la version adulte de Goku apparaissant dans l\'anime Dragon Ball Z. La réception critique de Goku a été largement positive et il est souvent considéré comme l\'un des plus grands personnages de mangas et d\'animés de tous les temps.', NULL),
(3, 'Tidus', 'Tidus est le personnage principal du jeu Final Fantasy X. Jeune et célèbre joueur de Blitzball de l\'équipe des Zanarkand Abes, il vivait dans la cité de Zanarkand, jusqu\'à ce que celle-ci soit attaquée par Sin ; Tidus est alors projeté sur Spira, où il rencontre plusieurs personnes parmi lesquelles Yuna, dont il devient par la force des choses le gardien durant son pèlerinage et tombera fou amoureux d´elle. Tidus est le fils de Jecht, lui aussi grand joueur de Blitzball mais disparu 10 ans auparavant.\r\n\r\nTidus est un combattant rapide utilisant des épées courtes. Il utilise son agilité pour des techniques acrobatiques.\r\n\r\nIl apprend à la fin du jeu qu\'il est en fait un rêve issu d\'un Zanarkand imaginaire, un Zanarkand rêvé par les priants, et que l\'élimination de Sin provoquera sa disparition.\r\n\r\nTidus est le seul personnage du jeu dont on peut choisir le nom, c\'est pour cette raison que son nom n\'est jamais prononcé par les autres personnages au cours de l\'aventure, il est seulement interpellé par \"lui\", ou \"tu\".\r\n\r\nTidus apparait également dans la série des Kingdom Hearts, comme camarade de jeu du héros Sora sur l\'Île de la Destinée. Il est aussi un des héros du jeu Dissidia: Final Fantasy.', NULL),
(4, 'Freddie Mercury', 'Freddie Mercury [?f??di ?m??kj??i]1 — nom de scène de Farrokh Bulsara — né le 5 septembre 1946 à Stone Town dans le protectorat de Zanzibar et mort le 24 novembre 1991 à Londres, est un auteur-compositeur-interprète et musicien britannique, cofondateur en 1970 et chanteur-pianiste du groupe de rock Queen, au sein duquel il a établi sa réputation internationale, en compagnie du guitariste Brian May, du batteur Roger Taylor et du bassiste John Deacon, tous auteurs-compositeurs comme lui.\r\n\r\nDoté d\'une grande tessiture et d\'une bonne maîtrise de quelques techniques d\'opéra, il compose également la plupart des grands succès du groupe, dont Bohemian Rhapsody, Love of My Life, Somebody to Love, We Are the Champions, Don\'t Stop Me Now et Crazy Little Thing Called Love. Ses performances scéniques avec Queen participent à sa grande popularité, notamment sa prestation au Live Aid en 1985, dans le stade de Wembley. En solo, il réalise deux albums, Mr. Bad Guy en 1985 et Barcelona en 1988, qui comprennent notamment les titres Living on My Own, I Was Born to Love You et Barcelona en duo avec Montserrat Caballé.\r\n\r\nOuvertement bisexuel, il meurt à 45 ans des suites d\'une pneumonie, un jour après avoir révélé au public qu\'il était porteur du VIH et atteint du sida.', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
