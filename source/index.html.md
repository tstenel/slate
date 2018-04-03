---
title: DataStamp API Reference

search: true
---

# Introduction

Bienvenue dans la documentation de l'API de DataStamp !

# API Administrateurs

Tous les endpoints documentés dans cette partie sont en rapport avec les comptes administrateurs de l'application

## AUTHENTIFICATION

Authentification des administrateurs

> Éxemple de réponse JSON:

```json

  {
   data: { 
          firstname: "michel",
          lastname: "dupont",
          id: 4
      }
  } 

```

### HTTP Request

`POST /api/admin/auth`

### Parametres de la requette

Parametre | Description
--------- | -----------
username | Nom d'utilisateur
password | Mot de passe utilisateur

## CRÉATION DE COMPTE

Création d'un compte administrateur

> Éxemple de réponse JSON:

```json

  {
   data: "Account Created"
  } 

```

### HTTP Request

`POST /api/admin/new`

### Parametres de la requette

Parametre | Description
--------- | -----------
username | Nom d'utilisateur
password | Mot de passe utilisateur
firstName | Prénom
lastName | Nom de famille
sender | Envoyeur


## MODIFY ADMIN

Modifie les données de l'administrateur ':name'

> Éxemple de réponse JSON:

```json

{
    data: "USER MODIFIED"
}

```

### HTTP Request

newpassword | vide si changepassword est faux
`POST /api/user/:name`

### Parametres de la requette

Parametre | Description
--------- | -----------
sender | Envoyeur
firstname | Prénom
lastname | Nom de famille
changepassword | (boolean) true si le mot de passe doit etre changé
newpassword | vide si changepassword est faux


## GET INFOS

Récupère les information de l'administrateur ':name'

> Éxemple de réponse JSON:

```json

  {
   data: {
   	username: "JeanMich",
   	firstname: "Jean-michel",
   	lastname: "Dupont",
   	id: 5,
	"created": "2018-04-03T14:32:33.000Z",
    "updated": "2018-04-03T14:33:17.000Z"
   }
  } 

```

### HTTP Request

`GET /api/admin/:name`

### Parametres de la requette

Parametre | Description
--------- | -----------
pas de parametres

## GET ACTIONS

Récupère les actions de l'administrateur ':name'

> Éxemple de réponse JSON:

```json

{
    data: [
        {
            "id": 2,
            "userName": "test",
            "senderName": "gfi_admin",
            "date": "2018-04-03T14:35:25.000Z",
            "action": "ADD ADMIN",
            "createdAt": "2018-04-03T14:35:25.000Z",
            "updatedAt": "2018-04-03T14:35:25.000Z"
        }
    ]
}

```

### HTTP Request

`GET /api/admin/:name/actions`

### Parametres de la requette

Parametre | Description
--------- | -----------
pas de parametres

## SUPRESSION COMPTE

Supprime le compte de l'administrateur ':name'

> Éxemple de réponse JSON:

```json

{
    data: "ADMIN DELETED"
}

```

### HTTP Request

`POST /api/admin/:name/delete`

### Parametres de la requette

Parametre | Description
--------- | -----------
sender | Envoyeur

# API UTILISATEURS

Tous les endpoints documentés dans cette partie sont en rapport avec les comptes utilisateurs de l'application

## AUTHENTIFICATION

Authentification des utilisateurs

> Éxemple de réponse JSON:

```json

  {
   data: { 
          firstname: "michel",
          lastname: "dupont",
          id: 4
      }
  } 

```

### HTTP Request

`POST /api/user/auth`

### Parametres de la requette

Parametre | Description
--------- | -----------
username | Nom d'utilisateur
password | Mot de passe utilisateur

## CRÉATION DE COMPTE

Création d'un compte utilisateur

> Éxemple de réponse JSON:

```json

  {
   data: "Account Created"
  } 

```

### HTTP Request

`POST /api/user/new`

### Parametres de la requette

Parametre | Description
--------- | -----------
username | Nom d'utilisateur
password | Mot de passe utilisateur
firstName | Prénom
lastName | Nom de famille
sender | Envoyeur

## MODIFY USER

Modifie les données de l'utilisateur ':name'

> Éxemple de réponse JSON:

```json

{
    data: "USER MODIFIED"
}

```

### HTTP Request

newpassword | vide si changepassword est faux
`POST /api/user/:name`

### Parametres de la requette

Parametre | Description
--------- | -----------
sender | Envoyeur
firstname | Prénom
lastname | Nom de famille
changepassword | (boolean) true si le mot de passe doit etre changé
newpassword | vide si changepassword est faux


## GET INFOS

Récupère les information de l'utilisateur ':name'

> Éxemple de réponse JSON:

```json

  {
   data: {
   	username: "JeanMich",
   	firstname: "Jean-michel",
   	lastname: "Dupont",
   	id: 5,
	"created": "2018-04-03T14:32:33.000Z",
    "updated": "2018-04-03T14:33:17.000Z"
   }
  } 

```

### HTTP Request

`GET /api/user/:name`

### Parametres de la requette

Parametre | Description
--------- | -----------
pas de parametres

## GET ACTIONS

Récupère les actions de l'utilisateur ':name'

> Éxemple de réponse JSON:

```json

{
    data: [
        {
            id: 2,
            userName: "test",
            senderName: "gfi_admin",
            date: "2018-04-03T14:35:25.000Z",
            action: "ADD USER",
            createdAt: "2018-04-03T14:35:25.000Z",
            updatedAt: "2018-04-03T14:35:25.000Z"
        }
    ]
}

```

### HTTP Request

`GET /api/user/:name/actions`

### Parametres de la requette

Parametre | Description
--------- | -----------
pas de parametres

## GET DATA

Récupère les données personnelles de l'utilisateur ':name'

> Éxemple de réponse JSON:

```json

{
    data: {
    	userId: 1,
        id: 2,
        address: "36 rue des Examples",
        birthPlace: "Paris",
        birthDate: "2000-01-01",
        familyStatus: "Married",
        professionalStatus: "Unemployed",
        children: 2
    }
}

```

### HTTP Request

`GET /api/user/:name/data`

### Parametres de la requette

Parametre | Description
--------- | -----------
pas de parametres


## GET CARS

Récupère les voitures de l'utilisateur ':name'

> Éxemple de réponse JSON:

```json

{
    data: [
        {
            userId: 2,
            carMake: "peugeot 306",
            buyDate: "2000-03-04",
            licensePlate: "AB-789-CD"

        },
        {
            userId: 2,
            carMake: "citroen c4",
            buyDate: "2006-05-01",
            licensePlate: "RR-444-EE"

        }
    ]
}

```

### HTTP Request

`GET /api/user/:name/cars`

### Parametres de la requette

Parametre | Description
--------- | -----------
pas de parametres

## GET HASH

Récupere le hash actuel de l'utilisateur ':name' dans la base de donnée et dans la blockchain

> Éxemple de réponse JSON:

```json

{
	servHash: "6c2b944cd76618b2112a6176497d7f0678205557463efebf24634edee26d748c2598c79e13502c895b74aad66dcd873a0483da30b43f1961997b069939a87258" ,
	blockchainHash: "3326986b73db073a0f276daee9f2a08ddd30260794d3aa6135800ddc49b1b1fdf350f5d04a3102ea9fa131712f7fc4da9a47b473d3534f0e20cff7567b909cf7"
}

```

### HTTP Request

`GET /api/user/:name/hash`

### Parametres de la requette

Parametre | Description
--------- | -----------
pas de parametres


## ADD/MODIFY DATA

Modifie les données personelles de l'utilisateur ':name'

> Éxemple de réponse JSON:

```json

{
    data: "MODIFIED DATA"
}

```

### HTTP Request

`POST /api/user/:name/data`

### Parametres de la requette

Parametre | Description
--------- | -----------
sender | Envoyeur
address | addresse 
birthPlace | lieu de naissance 
birthDate | date de naissance 
familyStatus | status famillial 
professionalStatus | status professionel 
children | nombre d'enfants


## ADD CAR

Ajoute un voiture à l'utilisateur ':name'

> Éxemple de réponse JSON:

```json

{
    data: "ADDED CAR"
}

```

### HTTP Request

`POST /api/user/:name/cars`

### Parametres de la requette

Parametre | Description
--------- | -----------
sender | Envoyeur
carMake | Type de voiture
licensePlate | Plaque d'immatriculation
buyDate | Date d'achat

## MODIFY CAR

Modifie la voiture ':id' de l'utilisateur ':name'

> Éxemple de réponse JSON:

```json

{
    data: "MODIFIED CAR"
}

```

### HTTP Request

`POST /api/user/:name/cars/:id`

### Parametres de la requette

Parametre | Description
--------- | -----------
sender | Envoyeur
carMake | Type de voiture
licensePlate | Plaque d'immatriculation
buyDate | Date d'achat


## DELETE CAR

Supprime la voiture ':id' de l'utilisateur ':name'

> Éxemple de réponse JSON:

```json

{
    data: "DELETED CAR"
}

```

### HTTP Request

`POST /api/user/:name/cars/:id/delete`

### Parametres de la requette

Parametre | Description
--------- | -----------
sender | Envoyeur


## SUPRESSION COMPTE

Supprime le compte de l'utilisateur ':name'

> Éxemple de réponse JSON:

```json

{
    data: "USER DELETED"
}

```

### HTTP Request

`POST /api/user/:name/delete`

### Parametres de la requette

Parametre | Description
--------- | -----------
sender | Envoyeur

# API EVENEMENTS

## GET USER EVENTS

Récupère les évenements de l'utilisateur ':name'

> Éxemple de réponse JSON:

```json

{
    data: [
        {
            user: "0xcb61ad33d3763aed2bc16c0f57ff251ac638d3d03ab7550adfd3e166c2e7adb6",
            action: "ADD USER",
            sender: "0x2f461e74c82c9dbeba2d5f48e86c069a4037bb13aeca0f382ac0af1a1436bd88",
            rowHash: "0x6bdc15e3a3a9937890ad2ada07cee1673b15bc4d14a57d480c6f40d52b8f3740",
            date: "Tue Apr 03 2018 16:32:33 GMT+0200 (CEST)",
            origin: "0xaa182cc9a5ae06921a4554566f000f77da7be394",
            txHash: "0x10652d48a39222a55489b291795835b6a9ebb6021391f5a9197d42a84d55131b",
            blockHash: "0xb5715c4100c48750bf17d62610cf8c904b5d1589d1f831dd7cefaff1e0b07e47",
            blockNum: 5
        }
    ]
}

```

### HTTP Request

`GET /events/user/:name`

### Parametres de la requette

Parametre | Description
--------- | -----------
pas de parametres

## GET SENDER EVENTS

Récupère les évenements envoyés par ':name'

> Éxemple de réponse JSON:

```json

{
    data: [
        {
            user: "0xcb61ad33d3763aed2bc16c0f57ff251ac638d3d03ab7550adfd3e166c2e7adb6",
            action: "ADD USER",
            sender: "0x2f461e74c82c9dbeba2d5f48e86c069a4037bb13aeca0f382ac0af1a1436bd88",
            rowHash: "0x6bdc15e3a3a9937890ad2ada07cee1673b15bc4d14a57d480c6f40d52b8f3740",
            date: "Tue Apr 03 2018 16:32:33 GMT+0200 (CEST)",
            origin: "0xaa182cc9a5ae06921a4554566f000f77da7be394",
            txHash: "0x10652d48a39222a55489b291795835b6a9ebb6021391f5a9197d42a84d55131b",
            blockHash: "0xb5715c4100c48750bf17d62610cf8c904b5d1589d1f831dd7cefaff1e0b07e47",
            blockNum: 5
        },
         {
            user: "0xqsmdooo2Qxkkkqpbbbssec0f57ff251ac638d3d03ab7550adfd3e166c2e7adb6",
            action: "ADD USER",
            sender: "0x2f461e74c82c9dbeba2d5f48e86c069a4037bb13aeca0f382ac0af1a1436bd88",
            rowHash: "0x6sqdqsdppnpgofkxmmlda07cee1673b15bc4d14a57d480c6f40d52b8f3740",
            date: "Tue Apr 10 2018 15:11:32 GMT+0200 (CEST)",
            origin: "0xaa182cc9a5ae06921a4554566f000f77da7be394",
            txHash: "0x10652d48a39222a55489b291795835b6a9ebb6021391f5a91cwmxkqzojgpsod",
            blockHash: "0xijziahpoubpiaubzpfijsqpxicugacqa111235019qserqssf23",
            blockNum: 99
        }
    ]
}

```

### HTTP Request

`GET /events/sender/:name`

### Parametres de la requette

Parametre | Description
--------- | -----------
pas de parametres