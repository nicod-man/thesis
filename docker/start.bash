#!/bin/bash

#home/nico/stagepersondetection

DCF=docker-compose.yml 
XSERVER=""
export SPD_DIR=`pwd | gawk '{ print gensub(/\/docker/, "", 1) }'` 

echo "Running all services..."

docker-compose -f $DCF pull $XSERVER fer facedetection persondetection
docker-compose -f $DCF up -d $XSERVER fer facedetection persondetection

sleep 3
docker ps
sleep 3