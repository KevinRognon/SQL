

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



INSERT INTO `focaccia` (`nom_focaccia`, `prix_focaccia`) VALUES
    ('Mozaccia', 9.80),
    ('Gorgonzollaccia', 10.80),
    ('Raclaccia', 8.90),
    ('Emmentalaccia', 9.80),
    ('Tradizione', 8.90),
    ('Hawaienne', 11.20),
    ('Américaine', 10.80),
    ('Paysanne', 12.80);



-- Ajout des menus

-- Création des menus pour chaque focaccia
INSERT INTO `menu` (`nom_menu`, `prix_menu`, `id_focaccia`) VALUES
    ('Menu Mozaccia', 12.50, 1),
    ('Menu Gorgonzollaccia', 13.50, 2),
    ('Menu Raclaccia', 11.60, 3),
    ('Menu Emmentalaccia', 12.50, 4),
    ('Menu Tradizione', 11.60, 5),
    ('Menu Hawaienne', 14.00, 6),
    ('Menu Américaine', 13.50, 7),
    ('Menu Paysanne', 15.50, 8);


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


INSERT INTO `ingredient` (`nom_ingredient`) VALUES
    ('Ail'),
    ('Ananas'),
    ('Artichaut'),
    ('Bacon'),
    ('Base Tomate'),
    ('Base crème'),
    ('Champignon'),
    ('Chevre'),
    ('Cresson'),
    ('Emmental'),
    ('Gorgonzola'),
    ('Jambon cuit'),
    ('Jambon fumé'),
    ('Oeuf'),
    ('Oignon'),
    ('Olive noire'),
    ('Olive verte'),
    ('Parmesan'),
    ('Piment'),
    ('Poivre'),
    ('Pomme de terre'),
    ('Raclette'),
    ('Salami'),
    ('Tomate cerise'),
    ('Mozarella');

-- Insertion des associations focaccia-ingrédients dans la table "comprend"

-- Mozaccia
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(1, 1),   -- Ail
(1, 5),   -- Base Tomate
(1, 9),   -- Cresson
(1, 13),  -- Jambon fumé
(1, 18),  -- Parmesan
(1, 20),  -- Poivre
(1, 16);  -- Olive noire

-- Gorgonzollaccia
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(2, 1),   -- Ail
(2, 5),   -- Base Tomate
(2, 9),   -- Cresson
(2, 13),  -- Jambon fumé
(2, 18),  -- Parmesan
(2, 20),  -- Poivre
(2, 16);  -- Olive noire

-- Raclaccia
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(3, 1),   -- Ail
(3, 5),   -- Base Tomate
(3, 9),   -- Cresson
(3, 13),  -- Jambon fumé
(3, 18),  -- Parmesan
(3, 20);  -- Poivre

-- Emmentalaccia
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(4, 1),   -- Ail
(4, 6),   -- Base crème
(4, 10),  -- Emmental
(4, 9),   -- Cresson
(4, 7),   -- Champignon
(4, 18),  -- Parmesan
(4, 20),  -- Poivre
(4, 15);  -- Oignon

-- Tradizione
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(5, 1),   -- Ail
(5, 5),   -- Base Tomate
(5, 9),   -- Cresson
(5, 12),  -- Jambon cuit
(5, 7),   -- Champignon
(5, 18),  -- Parmesan
(5, 20),  -- Poivre
(5, 16),  -- Olive noire
(5, 17);  -- Olive verte

-- Hawaienne
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(6, 1),   -- Ail
(6, 5),   -- Base Tomate
(6, 9),   -- Cresson
(6, 4),   -- Bacon
(6, 2),   -- Ananas
(6, 19),  -- Piment
(6, 18),  -- Parmesan
(6, 20);  -- Poivre

-- Américaine
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(7, 1),   -- Ail
(7, 5),   -- Base Tomate
(7, 9),   -- Cresson
(7, 4),   -- Bacon
(7, 21),  -- Pomme de terre
(7, 18),  -- Parmesan
(7, 20),  -- Poivre
(7, 16);  -- Olive noire

-- Paysanne
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(8, 1),   -- Ail
(8, 6),   -- Base crème
(8, 8),   -- Chèvre
(8, 21),  -- Pomme de terre
(8, 13),  -- Jambon fumé
(8, 9),   -- Cresson
(8, 3),   -- Artichaut
(8, 7),   -- Champignon
(8, 18),  -- Parmesan
(8, 20),  -- Poivre
(8, 16),  -- Olive noire
(8, 14);  -- Œuf


INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8);


INSERT INTO `achete` (`id_client`, `id_focaccia`, `jour`) VALUES
    (1, 1, "2023-10-05"),
    (2, 2, "2023-10-06"),
    (3, 3, "2023-10-07"),
    (4, 4, "2023-10-08"),
    (5, 5, "2023-10-09"),
    (6, 6, "2023-10-10"),
    (7, 7, "2023-10-11");


INSERT INTO `paye` (`id_client`, `id_menu`, `jour`) VALUES
    (1, 1, "2023-10-05"),
    (2, 2, "2023-10-06"),
    (3, 3, "2023-10-07"),
    (4, 4, "2023-10-08"),
    (5, 5, "2023-10-09"),
    (6, 6, "2023-10-10"),
    (7, 7, "2023-10-11");
