-- CREATE USER IF NOT EXISTS 'tifosi'@'localhost' IDENTIFIED BY 'tifosi';

-- GRANT IF NOT EXISTS ALL PRIVILEGES ON Tifosi_V2.* TO 'tifosi'@'localhost';

--   FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS Tifosi_V2;

USE Tifosi_V2;

CREATE TABLE IF NOT EXISTS `client`
(
	`id_client` INT PRIMARY KEY AUTO_INCREMENT,
	`nom_client` VARCHAR(45) NOT NULL,
	`age` INT NOT NULL,
	`cp_client` INT NOT NULL
);

CREATE TABLE IF NOT EXISTS `focaccia`
(
	`id_focaccia` INT PRIMARY KEY AUTO_INCREMENT,
	`nom_focaccia` VARCHAR(45) NOT NULL,
	`prix_focaccia` FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS `menu`
(
	`id_menu` INT PRIMARY KEY AUTO_INCREMENT,
	`nom_menu` VARCHAR(45) NOT NULL,
	`prix_menu` FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS `ingredient`
(
	`id_ingredient` INT PRIMARY KEY AUTO_INCREMENT,
	`nom_ingredient` VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS `marque`
(
	`id_marque` INT PRIMARY KEY AUTO_INCREMENT,
	`nom_marque` VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS `boisson`
(
	`id_boisson` INT PRIMARY KEY AUTO_INCREMENT,
	`nom_boisson` VARCHAR(45) NOT NULL
);


CREATE TABLE IF NOT EXISTS `achete`
(
    `id_client` INT NOT NULL,
    `id_focaccia` INT NOT NULL,
    `jour` DATE NOT NULL,
    PRIMARY KEY (`id_client`, `id_focaccia`),
    FOREIGN KEY (`id_client`) REFERENCES client(`id_client`),
    FOREIGN KEY (`id_focaccia`) REFERENCES focaccia(`id_focaccia`)
);

CREATE TABLE IF NOT EXISTS `paye`
(
	`id_paye` INT AUTO_INCREMENT,
	`id_client` INT,
	`id_menu` INT,
);
