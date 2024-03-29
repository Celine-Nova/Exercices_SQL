# Database teachings

## Créer une table appelée clients:
   1. **id**: number
   2. **companyName**: string
   3. **firstName**: string
   4. **lastName**: string 
   5. **email**: string
   6. **phone**: string
   7. **address**: string
   8. **zipCode**: string
   9. **city**: string
  10. **country**: string
  11. **state** : (0, 1) (ACTIVE, INACTIVE)

**_on ne peux pas supprimer définitivement un client_**
   
## Créer une table appelée orders:
   1. **id**: number
   2. **typePresta**: string
   3. **designation**: string
   4. **clientId**: number 
   5. **nbDays**: number
   6. **unitPrice**: number
   7. **totalExcludeTaxe**: number
   8. **totalWithTaxe**: number
   9. **state**: number (0,1,2) (CANCELED, OPTION, CONFIRMED)

==============================================================================
### 1. Ecrire une requête pour créer ces 2 tables en prenant en compte la jointure
### 2. Remplissez la base de données au travers des insertions
### 3. Afficher toutes les formations sollicités par le client M2i formation


![Résultat requête formation par client M2i](./img/requete1.jpg)
 
### 4. Afficher les noms et contacts de tous les contacts des clients qui ont sollicité un coaching

![Résultat requête contacts client en coaching](./img/requete2.jpg)

### 5. Afficher les noms et contacts de tous les contacts des clients qui ont sollicité un coaching pour les accompagnements Nest.js

![Résultat requête contact client en coaching pour Nest](./img/requete3.jpg)

### 6. Pour chacune des demandes de formation, afficher le prix UHT et prix TTC en se basant sur le unité Price(TJM) et le nombre de jours de prestation tout en sachant que la TVA est de 20%.

![Résultat requête tarifs HT et TTC des formations](./img/requete4.jpg)

### 7. Lister toutes les prestations qui sont **_confirmés_** et qui vont rapporter plus **_30.000€_**

![Résultat requête tarifs HT et TTC des formations](./img/requete5.jpg)



