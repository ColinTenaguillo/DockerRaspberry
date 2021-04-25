#!/bin/bash
# docker-compose.sh

docker network create api


if [ $1 == 'dev' ]
then
  docker-compose -f docker-compose.dev.yml up --build
fi

if [ $1 == 'prod' ]
then
  docker-compose up --build
fi