# La Méthode MERISE

La méthode Merise est une méthode d'analyse, de conception et de réalisation de systèmes d'informations.

Née dans les années 70 par des études menées par des responsables de SSII de l'époque, elle a été pensée et élaborée pour une réflexion internationale sur l'analyse systémique (analyse faite selon les principes interdisciplinaires de la systémique, étude d'objets complexes par leurs échanges)

La force de la méthode Merise est de structurer les besoins des décideurs de façon simple et compréhensible. Merise améliore la communication entre les différents acteurs du processus de développement. Cette méthode, grâce à ses modèles, encadre le projet et de ce fait protège les intervenants d’un possible développement hors sujet.

Suivre ce cheminement intellectuel peut aussi aider l’entreprise à mieux se connaître, mieux se comprendre et ainsi mieux communiquer.

Le projet Merise s’articule autour d’un schéma directeur qui détermine et planifie le projet et ses enchaînements.

La méthode s'organise sur 3 axes principaux, conceptuel, logique et physique.

![Diagramme MERISE](https://upload.wikimedia.org/wikipedia/commons/6/63/MERISE.svg "Diagramme MERISE")


## Modèle Conceptuel de Données MCD

Le MCD repose sur les notions d'entité et d'association et sur les notions de relations.

L'entité est définie comme un objet de gestion considéré d'intérêt pour représenter l'activité à modéliser. À son tour, chaque entité (ou objet) est porteuse d'une ou plusieurs propriétés simples, dites atomiques (exemples : code, nom, capitale, population, superficie) dont l'une, unique et discriminante, est désignée comme identifiant.

L'association est un lien sémantique entre entités :

    * 1 entité reliée à elle-même : la relation est dite réflexive,
    * 2 entités : la relation est dite binaire (ex : une usine 'est implantée' dans un pays),
    * 3 ou plus : ternaire, voire de dimension supérieure. En fait, hormis le cas d'une date (la table date disparaît) si une relation a 3 points d'attache ou plus, on peut réécrire la relation en transformant la relation en table et en transformant les liens en relations.

Cette description sémantique est enrichie par la notion de cardinalité, celle-ci indique le nombre minimum (0 ou 1) et maximum (1 ou n) de fois où une occurrence quelconque d'une entité peut participer à une association.

    "0,1 ⇒ NULL, les clés de l'entité migrent"
    "1,1 ⇒ NOT NULL, les clés de l'entité migrent"
    "(1,1) ⇒ NOT NULL PRIMARY KEY, les clés de l'entité migrent"
    "0,n ⇒ NULL, les clés de l'entité ne migrent pas"
    "1,n ⇒ NOT NULL, les clés de l'entité ne migrent pas"

## Modèle Logique de Données MLD

La transcription d'un MCD en modèle logique des données ou encore appelé schéma relationnel s'effectue selon quelques règles simples qui consistent d'abord à transformer toute entité en table, avec l'identifiant comme clé primaire, puis à observer les valeurs prises par les cardinalités maximum de chaque association pour représenter celle-ci soit par l'ajout d'une clé étrangère dans une table existante, soit par la création d'une nouvelle table dont la clé primaire est obtenue par concaténation de clés étrangères correspondant aux entités liées.

## Niveau Physique

Les réponses apportées à ce dernier niveau permettent d'établir la manière concrète dont le système sera mis en place.

    * le Modèle Physique des Données (ou MPD ou MPhD) permet de préciser les systèmes de stockage employés (implémentation du MLD dans le SGBD retenu)
    * le Modèle Opérationnel des Traitements (ou MOT ou MOpT) permet de spécifier les fonctions telles qu'elles seront ensuite réalisées par le programmeur.