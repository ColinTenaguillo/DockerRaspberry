#!/bin/bash

if [$1 = influxdb]
then
  docker build -f Dockerfile.influxdb . -t pi/influxdb:latest
fi

if [$1 = influxdb]
then
  docker build -f Dockerfile.influxdb . -t pi/influxdb:latest
fi

if [$1 = influxdb]
then
  docker build -f Dockerfile.influxdb . -t pi/influxdb:latest
fi

if [$1 = influxdb]
then
  docker build -f Dockerfile.influxdb . -t pi/influxdb:latest
fi

if [$1 = influxdb]
then
  docker build -f Dockerfile.influxdb . -t pi/influxdb:latest
fi
docker build -f Dockerfile . -t pi/api:latest
docker build -f Dockerfile.dev . -t pi/dev:latest
docker build -f Dockerfile.datacollector . -t pi/datacollector:latest