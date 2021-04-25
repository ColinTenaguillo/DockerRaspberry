# Projet Docker
## _Docker Raspberry_

[![N|Solid](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Docker_%28container_engine%29_logo.svg/1280px-Docker_%28container_engine%29_logo.svg.png)]()

Le projet consiste à récupérer la donnée de température/humidité grâce à une raspberry permettant de les insérer dans une base de données influxdb, via un script Python.
Une API NodeJS permettra par la suite de recupérer la donnée sur la raspberry.


## Technologies choisies

- Nom : pourquoi
- Nom : pourquoi
- 
- 


## Différentes étapes du projet

* Création des containers
  * influxdb
  * datacollector
  * api
* Création du docker-compose
* Communication entre les containers d'un docker-compose
  * Les services sont reliés à un même réseaux virtuelle 
*  Création d'un script afin d'automatiser les containers et le docker-compose

## Commandes à effectuer

eeeeeeee

```sh
cd dillinger
npm i
node app
```

> Note: `--capt-add=SYS-ADMIN` is required for PDF rendering.

eeeeeeeeee

```sh
npm install
```
> Note: 


## Problèmes rencontrés

- Datacollector : installation du service sudo
- Gérer le fonctionnement des services bluetooth

