# Projet Docker

## _Docker Raspberry_

![N|Solid](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Docker_%28container_engine%29_logo.svg/1280px-Docker_%28container_engine%29_logo.svg.png)

Le projet consiste à récupérer la donnée de température/humidité de multiples capteurs Ruuvi.
La donnée est récupéré et stocké sur une raspberry.
Une API NodeJS permettra par la suite de recupérer la donnée sur la raspberry.

## Technologies choisies

- [RuuviTag](https://ruuvi.com/) : Capteurs de temperature open source, avec une grosse communaute, et des libs bien documentés
- [Influxdb](https://www.influxdata.com/) : Base de données puissante et adatpé au stockages de données métriques
- [Python](https://www.python.org/) : Language de scripting rapide et efficace pour la recuperation de données des cateurs
- [Express](https://expressjs.com/)/[Typescritp](https://www.typescriptlang.org/) : Preference personnel pour l'écriture d'api rest
- [Sentry](https://sentry.io/welcome/) : Pour une gestion des erreurs plus avancé

## Différentes étapes du projet

- Création des containers
  - influxdb
  - datacollector
    - Verification des services bluetooth
    - Lancement du script python
      - Connection aux capteurs
      - Connection a la bdd
      - Ecriture dans la bdd
  - api
    - Connection a la bdd
    - Recuperation de données
- Création du docker-compose
- Communication entre les containers d'un docker-compose
- Création d'un script afin d'automatiser le lancement des containers

## Commandes à effectuer

### Requirements

- Docker
- Docker-compose 3.7
- Bluez (Linux-only)
  - [BlueZ install guide](http://www.bluez.org/download/)
- BETA: Cross-platform BLE implementation with Bleson communication module
  - [Bleson install guide](https://github.com/TheCellule/python-bleson)

> Note: creation du network.

```sh
docker network create api
```

> Note: lancement des containers de dev

```sh
./docker-compose.sh dev
```

> Note: lancement des containers de prod (non fonctionnel pour le moment)

```sh
npm install
npm run build
./docker-compose.sh prod
```

## Problèmes rencontrés

- Datacollector : installation du service sudo
- Gérer le fonctionnement des services bluetooth
- Script python se lance avant la fin de l'activation des services bluetooth
- Probleme avec l'utilisation de l'ENTRYPOINT ET de CMD d'un Dockerfile (A ne plus jamais refaire)
- Pas de temps pour créer des données de tests donc pas de tests vraiment possible si pas de capteurs ruuvi a disposition
- Docker de prod non fonctionnel pour le moment
