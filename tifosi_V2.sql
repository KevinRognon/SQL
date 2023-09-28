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
	`prix_menu` FLOAT NOT NULL,
	FOREIGN KEY (id_menu) REFERENCES focaccia(id_focaccia)
);

CREATE TABLE IF NOT EXISTS `ingredient`
(
	`id_ingredient` INT PRIMARY KEY AUTO_INCREMENT,
	`nom_ingredient` VARCHAR(45),
	FOREIGN KEY (id_ingredient) REFERENCES focaccia(id_focaccia)
);

CREATE TABLE IF NOT EXISTS `marque`
(
	`id_marque` INT PRIMARY KEY AUTO_INCREMENT,
	`nom_marque` VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS `boisson`
(
	`id_boisson` INT PRIMARY KEY AUTO_INCREMENT,
	`nom_boisson` VARCHAR(45) NOT NULL,
	FOREIGN KEY (id_boisson) REFERENCES menu(id_menu),
	FOREIGN KEY (id_boisson) REFERENCES marque(id_marque)
);


CREATE TABLE IF NOT EXISTS `achete`
(
    `id_achat` INT PRIMARY KEY AUTO_INCREMENT,
    `id_client` INT NOT NULL,
    `id_focaccia` INT NOT NULL,
    `jour` DATE NOT NULL,
    FOREIGN KEY (id_client) REFERENCES client(id_client),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
);

CREATE TABLE IF NOT EXISTS `paye`
(
	`id_paye` INT PRIMARY KEY AUTO_INCREMENT,
	`id_client` INT NOT NULL,
	`id_menu` INT NOT NULL,
	FOREIGN KEY (id_client) REFERENCES client(id_client),
	FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
);


-- INSERTIONS

INSERT INTO focaccia (`nom_focaccia`, `prix_focaccia`) VALUES ('Mozaccia', 9.80), ('Gorgonzollaccia', 10.80), ('Raclaccia', 8.90), ('Emmentalaccia', 9.80), ('Tradizione', 8.90), ('Hawaienne', 11.20), ('Américaine', 10.80), ('Paysanne', 12.80), ('Emmentalaccia', 9.80);

INSERT INTO ingredient (`nom_ingredient`) VALUES ('Ail'), ('Ananas'), ('Artichaut'), ('Bacon'), ('Base Tomate'), ('Base crème'), ('Champignon'), ('Chevre'), ('Cresson'), ('Emmental'), ('Gorgonzola'), ('Jambon cuit'), ('Jambon fumé'), ('Oeuf'), ('Oignon'), ('Olive noire'), ('Olive verte'), ('Parmesan'), ('Piment'), ('Poivre'), ('Pomme de terre'), ('Raclette'), ('Salami'), ('Tomate cerise');


INSERT INTO marque (`nom_marque`) VALUES ('Coca-Cola'), ('Cristalline'), ('Monster'), ('Pepsico');
