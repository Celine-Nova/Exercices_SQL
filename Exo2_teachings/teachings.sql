-- Ecrire une requête pour créer ces 2 tables en prenant en compte la jointure
-- table clients
CREATE TABLE `clients` (
    `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `compagnyName` varchar(70) NOT NULL,
    `firstName` varchar(50) NOT NULL,
    `lastName` varchar(50) NOT NULL,
    `email` varchar(70) NOT NULL,
    `phone` varchar(50) NOT NULL,
    `address` varchar(50) NOT NULL,
    `zipCode` varchar(50) NOT NULL,
    `city` varchar(50) NOT NULL,
    `country` varchar(50) NOT NULL,
    `state` tinyint(1) NOT NULL;
 
-- table orders
CREATE TABLE `orders` ( `id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `typePresta` varchar(50) NOT NULL, `designation` varchar(70) NOT NULL,
    `clientId` INTEGER NOT NULL, FOREIGN KEY(clientId) REFERENCES clients(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    `nbDays` INTEGER NOT NULL,
    `unitPrice` INTEGER NOT NULL,
    `state` integer NOT NULL );

-- Remplissez la base de données au travers des insertions
-- insertions données table clients
INSERT INTO `clients` (`id`, `compagnyName`, `firstName`, `lastName`, `email`, `phone`, `address`, `zipCode`, `city`, `country`, `state`) VALUES
    (1, 'Capgemini', 'Fabrice', 'Martin', 'martin@mail.com', '06.56.85.84.33', 'abc', 'xyz', 'Nantes', 'France', 0),
    (2, 'M2I Formation', 'Julien', 'Martin', 'lamard@mail.com', '06.11.22.33.44', 'abc', 'xyz', 'Paris', 'France', 1),
    (3, 'ATOS', 'Titine', 'Rosenberg', 't@gmail.com', '06.06.03.05.02', 'abc', 'xyz', 'Bordeaux', 'France', 1),
    (4, 'SOPRA STERIA', 'Olivier', 'pitchouli', 'pitchouli@gmail.com', '06.06.03.05.02', 'abc', 'xyz', 'Perpignan', 'France', 0);

-- insertions données table  orders
INSERT INTO `orders` (`id`, `typePresta`, `designation`, `clientId`, `nbDays`, `unitPrice`, `state`) VALUES
    (1, 'Formation', 'Angular init', 2, 3, 1200, 0),
    (2, 'Formation', 'React avancé', 2, 3, 1000, 2),
    (3, 'Coaching', 'Neact Techlead', 1, 20, 900, 2),
    (4, 'Coaching', 'Nest.js Techlead', 1, 50, 800, 1),
    (5, 'Coaching', 'Nest.js Techlead', 3, 70, 300, 1),
    (6, 'Coaching', 'Nest.js Techlead', 3, 500, 1800, 1),
    (7, 'Coaching', 'Jakarta EE', 3, 83, 1950, 1),
    (8, 'Coaching', 'JAngular Techlead', 4, 83, 1950, 1),
    (9, 'Coaching', 'JAngular Techlead', 2, 22, 179, 2),
    (10, 'Coaching', 'SQL', 4, 10, 500, 1),
    (11, 'Formatop,', 'Java', 4, 456, 195, 2);

-- Afficher toutes les formations sollicités par le client M2i formation
SELECT * FROM clients JOIN orders ON clients.id= clientId WHERE clients.compagnyName = "M2I Formation";

-- Afficher les noms et contacts de tous les contacts des clients qui ont sollicité un coaching 
SELECT clients.firstName, clients.lastName, clients.email, clients.phone FROM clients JOIN orders ON clients.id = clientId WHERE orders.typePresta= "Coaching"

-- Afficher les noms de tous les contacts des clients qui ont sollicité un coaching pour un accompagnement en Nest.js
SELECT clients.firstName, clients.lastName, clients.email, clients.phone, orders.designation FROM clients JOIN orders ON clients.id = clientId WHERE orders.typePresta = "Coaching" AND orders.designation LIKE "Nest%"

/* Pour chacune des demandes de formation, afficher le prix UHT et prix TTC en se basant sur le unité Price(TJM) et le nombre de jours de prestation tout en sachant que la TVA est de 20%.*/
-- Presta Formation HT
CREATE VIEW v_totalExcludeTaxe AS SELECT orders.typePresta, orders.unitPrice, orders.nbDays, CONCAT((orders.unitPrice*nbDays), " ", "€") AS totalHT FROM orders WHERE orders.typePresta="Formation";
-- Presta Formation TTC
CREATE VIEW v_totalIncludeTaxe AS SELECT typePresta, totalHT, CONCAT(ROUND(totalHT+(totalHT*20/100))," ", "€") as TTC FROM `v_totalexcludetaxe` 

SELECT * FROM `v_totalincludetaxe`;

-- Lister toutes les prestations qui sont confirmés et qui vont rapporter plus 30.000€
-- Presta HT
CREATE VIEW v_prestaHT AS SELECT orders.typePresta, orders.unitPrice, orders.nbDays, CONCAT((orders.unitPrice*nbDays), " ", "€") AS totalHT FROM orders WHERE orders.state=2;
-- Preast TTC
CREATE VIEW v_prestattc AS SELECT *, CONCAT(ROUND(totalHT+(totalHT*20/100))," ", "€") as TTC FROM v_prestaht

SELECT * FROM `v_prestattc` WHERE TTC > 30000
