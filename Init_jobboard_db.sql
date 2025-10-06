SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `company_categories` (
    `category` varchar(50) PRIMARY KEY,
)

CREATE TABLE `user_categories` (
    `category` varchar(50) PRIMARY KEY,
)

CREATE TABLE `companies` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255) DEFAULT NULL,
  FOREIGN KEY (company_category) REFERENCES company_categories(category),
);

CREATE TABLE `advertisements` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `type` varchar(255) NOT NULL,
  FOREIGN KEY (company_id) REFERENCES companies(id),
  `date_posted` date unsigned NOT NULL,
  `ad_text` text,
);

CREATE TABLE `people` (
  `username` varchar(16) PRIMARY KEY,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `email` varchar(255),
  `phone` varchar(20),
  FOREIGN KEY (category) REFERENCES user_categories(category),
  `hashedpw` varchar(255) NOT NULL,
);

CREATE TABLE `applications` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  FOREIGN KEY (ad_id) REFERENCES advertisements(id),
  FOREIGN KEY (username) REFERENCES people(username) DEFAULT NULL,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `email` varchar(255),
  `phone` varchar(20),
  `message` text,
)