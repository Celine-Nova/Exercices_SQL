# Database teachings

## Créer une table appelée clients:
   1. id: number
   2. companyName: string
   3. firstName: string
   4. lastName: string 
   5. email: string
   6. phone: string
   7. address: string
   8. zipCode: string
   9. city: string
  10. country: string
  11. state : (0, 1) (ACTIVE, INACTIVE)

**_on ne peux pas supprimer définitivement un client_**
   
## Créer une table appelée orders:
   1. id: number
   2. typePresta: string
   3. designation: string
   4. clientId: number 
   5. nbDays: number
   6. unitPrice: number
   7. totalExcludeTaxe: number
   8. totalWithTaxe: number
   9. state: number (0,1,2) (CANCELED, OPTION, CONFIRMED)
