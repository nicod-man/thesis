#!/bin/bash

IMAGENAME=bodypix

VERSION=latest
if [ ! "$1" == "" ]; then
  VERSION=$1
fi

IMAGENAME=nicodman/thesis
VERSION=persondetection

#home/nico/stagepersondetection
SPD_DIR=`pwd | gawk '{ print gensub(/\/docker/, "", 1) }'` 

echo "Running image $IMAGENAME:$VERSION ..."

docker run -it \
	--name FER --rm \
	--privileged \
	--net=host \
	--env="DISPLAY" \
	--device=/dev/video0:/dev/video0 \
	-v $SPD_DIR/models/Person-Detection-and-Tracking:/home/robot/src/Person-Detection-and-Tracking \
	-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
	$IMAGENAME:$VERSION