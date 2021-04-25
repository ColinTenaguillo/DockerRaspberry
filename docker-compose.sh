#!/bin/bash
# docker-compose.sh

docker network create api

if [ $1 == 'prod' ]
then
  docker build -f Dockerfile.influxdb . -t pi/influxdb:latest
fi

if [ $1 == 'dev' ]
then
  docker build -f Dockerfile . -t pi/api:latest
fi