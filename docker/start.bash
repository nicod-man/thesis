#!/bin/bash

#home/nico/stagepersondetection

DCF=docker-compose.yml 
XSERVER=""
export SPD_DIR=`pwd | gawk '{ print gensub(/\/docker/, "", 1) }'` 

echo "Running all services..."

docker-compose -f $DCF pull $XSERVER persondetection facedetection fer
docker-compose -f $DCF up -d $XSERVER persondetection facedetection fer

sleep 5
docker ps
sleep 3