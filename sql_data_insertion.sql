

USE tifosi;

-- Comptes Clients

INSERT INTO `client` (`nom_client`, `age`, `cp_client`) VALUES
('Kevin Rognon', 25, '60250'),
('Alice Dupont', 28, '75001'),
('Pierre Martin', 35, '69002'),
('Sophie Lambert', 22, '33000'),
('Élise Dubois', 29, '13001'),
('Thomas Lefebvre', 31, '59000'),
('Marie Renaud', 27, '69003');


-- Ajout des marques de boissons

INSERT INTO `marque` (`nom_marque`) VALUES
('Coca-cola'),
('Cristalline'),
('Monster'),
('Pepsico');


-- Ajout des boissons

INSERT INTO `boisson` (`nom_boisson`, `id_marque`) VALUES
    ('Coca-cola zéro', 1),
    ('Coca-cola original', 1),
    ('Fanta citron', 1),
    ('Fanta orange', 1),
    ('Capri-sun', 1),
    ('Pepsi', 4),
    ('Pepsi Max Zéro', 4),
    ('Lipton zéro citron', 4),
    ('Lipton Peach', 4),
    ('Monster energy ultra gold', 3),
    ('Monster energy ultra blue', 3),
    ('Eau de source', 2);


-- Ajout des focaccias

INSERT INTO `focaccia` (`nom_focaccia`, `prix_focaccia`) VALUES
('Mozaccia', 9.80),
('Gorgonzollaccia', 10.80),
('Raclaccia', 8.90),
('Emmentalaccia', 9.80),
('Tradizione', 8.90),
('Hawaienne', 11.20),
('Américaine', 10.80),
('Paysanne', 12.80);


