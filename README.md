# Brief_Aubondeal
Brief pour formation Simplon, réalisation de MPD + docs


## Règles de gestion AuBonDeal

Il est possible de consulter tous les produits disponibles dans la boutique.

Lorsqu'un visiteur souhaite effectuer une commande, il doit posséder une compte utilisateur par contre rien n'empêche un visiteur d'accéder à la liste des produits en stock.

Toute commande doit valider un produit minimum et a un prix total supérieur à 0.

### Concernant les comptes utilisateurs :

    Un compte utilisateur nécessite un nom d'utilisateur et un mot de passe de longueur minimale de 10 caractères et d'un maximum 20 caractères, comportant au minimum une lettre minuscule, une lettre majuscule, un chiffre et un caractère spécial.
        
        - Le nom d'utilisateur ne peut être ni nul, ni vide et ne peut pas correspondre à un autre utilisateur de la base de données.

        - Le compte utilisateur doit comporter un pseudonyme, il ne peut être ni nul, ni vide.

        - Le mot de passe de l'utilisateur ne peut être ni nul, ni vide.

        - La suppression d'un utilisateur conserve l'historique de ses commandes.

### Concernant les produits :

        - Le nom du produit ne peut être ni nul, ni vide.

        - Le prix ne peut pas être nul et doit être supérieur ou égal à 0.

        - La quantité en stock doit être supérieure ou égale à 0.

        - La suppression d'un produit n'entraine pas la suppression des commandes dans lequel figure le produit.

       - Un produit peut figurer dans plusieurs commandes.

### Concernant les commandes :

        - Chaque commande correspond à un identifiant unique et associée à un utilisateur existant.

        - Un utilisateur peut passer plusieurs commandes ou n'en passer aucune.

        - Le montant total de la commande doit être strictement supérieur à 0.

        - La quantité de produits commandés doit être strictement supérieure à 0.

        - La suppression d'une commande ne supprime pas le compte utilisateur associé.
