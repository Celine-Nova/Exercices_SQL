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
INSERT INTO telephones(name, manufacturer, price, units_sold) VALUES(
    "N1280", "Nokia", "199", "1925"),
    ("Iphone 4", "Apple", "399", "9436"),
    ("Galaxy S 5", "Samsung", "299", "2359"),
    ("S5620 Monte", "Samsung", "250", "2385"),
    ("N8", "Nokia", "150", "7543"),
    ("Droid", "Motorola", "150", "8395"),
    ("Iphone 13 Pro Max", "Apple", "1300", "12849"),
    ("Galaxy Note 20", "Samsung", "1100", "10353");