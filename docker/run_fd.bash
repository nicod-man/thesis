#!/bin/bash

IMAGENAME=facedetection

VERSION=latest
if [ ! "$1" == "" ]; then
  VERSION=$1
fi

IMAGENAME=nicodman/thesis
VERSION=facedetection

#home/nico/stagepersondetection
SPD_DIR=`pwd | gawk '{ print gensub(/\/docker/, "", 1) }'`

echo "Running image $IMAGENAME:$VERSION ..."

docker run -it \
	--name FACEDETECTION --rm \
	--privileged \
	--net=host \
	--device=/dev/video0:/dev/video0 \
	-e DISPLAY=$DISPLAY \
	-v $SPD_DIR/models/face_recognition/:/home/robot/src/face_recognition/ \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	$IMAGENAME:$VERSION