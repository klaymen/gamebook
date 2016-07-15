
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

CREATE TABLE IF NOT EXISTS `chapters` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(16) COLLATE UTF8_GENERAL_CI NOT NULL,
  `CONTENT` longtext COLLATE UTF8_GENERAL_CI NOT NULL,
  `FWD` text COLLATE UTF8_GENERAL_CI NOT NULL,
  `IMG` text COLLATE UTF8_GENERAL_CI NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=UTF8_GENERAL_CI AUTO_INCREMENT=2 ;

INSERT INTO `chapters` (`ID`, `NAME`, `CONTENT`, `FWD`, `IMG`) VALUES
(1, 'example', 'You have just woke up in a deep forest village after a short nap. You feel like, this is a short example adventure. What is your next move?', 'Sleep for an other hour|example;Pick a fight|gameover;', 'example.jpg'),
(2, 'gameover', 'Your story ends here. Rest in peace reckless warrior.', 'Restart|example;', 'gameover.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
