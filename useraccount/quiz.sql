-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 02, 2019 at 04:21 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `aID` int(11) NOT NULL AUTO_INCREMENT,
  `answers` varchar(200) NOT NULL,
  `ansID` int(50) NOT NULL,
  PRIMARY KEY (`aID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aID`, `answers`, `ansID`) VALUES
(1, 'Largest railway station', 1),
(2, 'Highest railway station', 1),
(3, 'Longest railway station', 1),
(4, 'Shortest railway station', 1),
(5, 'None of the above', 1),
(6, 'Behavior of human beings', 2),
(7, 'Insects', 2),
(8, 'The formation of rocks', 2),
(9, 'Birds', 2),
(10, 'Snakes', 2),
(11, '1839', 3),
(12, '1843', 3),
(13, '1833', 3),
(14, '1848', 3),
(15, 'None of the above', 3),
(16, 'China and Britain', 4),
(17, 'China and France', 4),
(18, 'China and Egypt', 4),
(19, 'China and Geek', 4),
(20, 'Nona of the above', 4),
(21, 'May 8', 5),
(22, 'May 18', 5),
(23, 'july 8', 5),
(24, 'June 8', 5),
(25, 'June 18', 5);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `qID` int(11) NOT NULL AUTO_INCREMENT,
  `questions` varchar(500) NOT NULL,
  `ansID` int(50) NOT NULL,
  PRIMARY KEY (`qID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qID`, `questions`, `ansID`) VALUES
(1, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 1),
(2, 'Entomology is the science that studies', 7),
(3, 'First Afgan War was took place in', 11),
(4, 'First China War was fought between', 16),
(5, 'Each year World Red Cross and Red Crescent Day is celebrated on', 21);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `password`) VALUES
(1, 'Achala', '12345'),
(2, 'Pavithra', '1994');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
