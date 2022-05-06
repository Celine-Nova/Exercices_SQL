-- Créer une base de données appelée sales
CREATE DATABASE sales;

/* Créer une table appelée telephones avec les colonnes suivantes :
*   1. **name** : chaîne de caractères qui représente le modèle du téléphone
*  2. **manufacturer** : chaîne de caractères qui représente le fabricant
*  3. **price** :  un nombre qui représente le prix UHT
*  4. **units_sold** : nombre qui représentent la quantité vendue
*/

 CREATE TABLE telephones(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    price FLOAT NOT NULL,
    units_sold INTEGER NOT NULL
    );

-- Insérer les données
INSERT INTO telephones(name, manufacturer, price, units_sold) VALUES
    ("N1280", "Nokia", 199, 1925),
    ("Iphone 4", "Apple", 399, 9436),
    ("Galaxy S 5", "Samsung", 299, 2359),
    ("S5620 Monte", "Samsung", 250, 2385),
    ("N8", "Nokia", 150, 7543),
    ("Droid", "Motorola", 150, 8395),
    ("Iphone 13 Pro Max", "Apple", 1300, 12849),
    ("Galaxy Note 20", "Samsung", 1100, 10353);

-- Ecrire une requête pour liste tous les modèles de téléphones
    SELECT name FROM telephones;

-- Ecrire une requête pour lister tous les telephone(name, manufacturer) de tous les téléphone dont le prix est supérieur à 200€
    SELECT `name`, `manufacturer` FROM `telephones` WHERE price > 200;

-- Ecrire une requête pour lister tous les telephones(name, manufacturer) de tous les téléphones dont le prix est varie entre 150 et 200€
    SELECT `name`, `manufacturer` FROM `telephones` WHERE price BETWEEN 150 AND 200;

-- Lister tous les téléphones de marque samsung et Apple
    SELECT name,manufacturer FROM telephones WHERE manufacturer="Samsung" OR manufacturer="Apple";
    SELECT * FROM `telephones` WHERE manufacturer IN ('Samsung','Apple');

-- Afficher le revenu total pour les téléphones vendues.Pour chaque téléphone, vous avez le prix et la quantité vendu
    SELECT price, units_sold, SUM(price*units_sold) AS total_price FROM telephones GROUP BY name;

