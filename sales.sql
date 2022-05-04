-- Créer une base de données appelée sales
CREATE DATABASE sales;

/*Créer une table appelée telephones avec les colonnes suivantes :
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