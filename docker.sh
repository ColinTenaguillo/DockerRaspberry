#!/bin/bash
# docker.sh

if [ $1 == 'influxdb' ] || [ $1 == 'all' ]
then
  docker build -f Dockerfile.influxdb . -t pi/influxdb:latest
fi

if [ $1 == 'api' ] || [ $1 == 'all' ]
then
  docker build -f Dockerfile . -t pi/api:latest
fi

if [ $1 == 'dev' ] || [ $1 == 'all' ]
then
  docker build -f Dockerfile.dev . -t pi/dev:latest
fi

if [ $1 == 'datacollector' ] || [ $1 == 'all' ]
then
  docker build -f Dockerfile.datacollector . -t pi/datacollector:latest
fi
