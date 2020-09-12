-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.6.45-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for projects
DROP DATABASE IF EXISTS `projects`;
CREATE DATABASE IF NOT EXISTS `projects` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `projects`;

-- Dumping structure for table projects.project_master
DROP TABLE IF EXISTS `project_master`;
CREATE TABLE IF NOT EXISTS `project_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(50) DEFAULT NULL,
  `teamSize` int(11) DEFAULT NULL,
  `projectSpan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table projects.project_master: ~2 rows (approximately)
DELETE FROM `project_master`;
/*!40000 ALTER TABLE `project_master` DISABLE KEYS */;
INSERT INTO `project_master` (`id`, `projectName`, `teamSize`, `projectSpan`) VALUES
	(1, 'IOT project WE', 2, 8),
	(2, 'HMS project', 12, 12);
/*!40000 ALTER TABLE `project_master` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
