#!/bin/bash

IMAGENAME=FacialExpressionRecognition

VERSION=latest
if [ ! "$1" == "" ]; then
  VERSION=$1
fi

IMAGENAME=nicodman/thesis
VERSION=faceExpression

#home/nico/stagepersondetection
SPD_DIR=`pwd | gawk '{ print gensub(/\/docker/, "", 1) }'`

echo "Running image $IMAGENAME:$VERSION ..."

docker run -it \
	--name FacialExpressionRecognition --rm \
	--privileged \
	--net=host \
	--env="DISPLAY" \
	--device=/dev/video0:/dev/video0 \
	-v $SPD_DIR/models/Real-Time-Face-Expression-Recognition:/home/robot/src/Real-Time-Face-Expression-Recognition \
	-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
	$IMAGENAME:$VERSION