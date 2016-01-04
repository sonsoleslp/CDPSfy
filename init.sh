#!/bin/bash

#sudo convoy create volume voldata
#docker create -v /CDPSfy/Frontend/public/media --volume-driver=convoy --name datavol aalferez/app /bin/true
#docker create -v /data/db --volume-driver=convoy --name datadb mongo /bin/true
docker-compose stop
docker-compose rm
(cd Frontend && npm update)
docker build -t aalferez/app -f Backend/App/Dockerfile --rm=true .
docker-compose build
docker-compose up
