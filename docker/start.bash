#!/bin/bash

#home/nico/stagepersondetection

DCF=docker-compose.yml 
XSERVER=""
export SPD_DIR=`pwd | gawk '{ print gensub(/\/docker/, "", 1) }'` 

echo "---------------------------"
echo "- Running all services -"
echo "---------------------------"

# docker-compose rm -f
# docker-compose -f $DCF pull $XSERVER fer facedetection persondetection
# docker-compose -f $DCF up --build -d $XSERVER fer facedetection persondetection
docker-compose down
docker-compose up -d



sleep 3
docker ps
sleep 3