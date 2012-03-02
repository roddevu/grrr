-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2012 at 04:33 PM
-- Server version: 5.1.49
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yssegma28767com10177_siteweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `avatar`
--

CREATE TABLE IF NOT EXISTS `avatar` (
  `idavatar` int(11) NOT NULL,
  `nomficier` varchar(64) NOT NULL,
  PRIMARY KEY (`idavatar`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `commentaire`
--

CREATE TABLE IF NOT EXISTS `commentaire` (
  `idcommentaire` int(8) NOT NULL,
  `contenu` varchar(512) NOT NULL,
  `date` date NOT NULL,
  `utilisateur` int(8) NOT NULL,
  `projet` int(8) NOT NULL,
  PRIMARY KEY (`idcommentaire`),
  KEY `utilisateur` (`utilisateur`,`projet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `idprojet` int(8) NOT NULL,
  `nom` varchar(32) NOT NULL,
  `libelle` varchar(64) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `prix` int(8) NOT NULL,
  `date` date NOT NULL,
  `type` smallint(8) NOT NULL,
  `createur` int(8) NOT NULL,
  PRIMARY KEY (`idprojet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `screenshot`
--

CREATE TABLE IF NOT EXISTS `screenshot` (
  `idscreenshot` int(8) NOT NULL,
  `nomfichier` varchar(32) NOT NULL,
  PRIMARY KEY (`idscreenshot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `succes`
--

CREATE TABLE IF NOT EXISTS `succes` (
  `idsuccess` int(8) NOT NULL,
  `nom` varchar(32) NOT NULL,
  `description` varchar(128) NOT NULL,
  `nombre` int(8) NOT NULL,
  PRIMARY KEY (`idsuccess`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idutilisateur` int(8) NOT NULL,
  `prenom` varchar(32) NOT NULL,
  `nom` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `login` varchar(32) NOT NULL,
  `motdepasse` varchar(32) NOT NULL,
  PRIMARY KEY (`idutilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
