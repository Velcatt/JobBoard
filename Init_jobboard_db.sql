SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `price` int(10) unsigned NOT NULL,
  `stock` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `price` int(10) unsigned NOT NULL,
  `stock` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `price` int(10) unsigned NOT NULL,
  `stock` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `price` int(10) unsigned NOT NULL,
  `stock` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;