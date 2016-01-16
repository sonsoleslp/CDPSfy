#!/bin/bash

#sudo convoy create musicdata
#sudo convoy create mongodata

docker-compose stop
docker-compose rm -f

# Solo se construye una vez
(cd Frontend && npm update)
docker build -t aalferez/app -f Backend/App/Dockerfile --rm=true .

(cd API && npm update)
docker build -t aalferez/api -f Backend/API/Dockerfile --rm=true .

# Cambio en la imagen del balancer
docker-compose build
docker-compose up
