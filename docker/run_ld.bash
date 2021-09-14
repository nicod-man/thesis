#!/bin/bash

IMAGENAME=nicodman/thesis
VERSION=legtracking

#home/nico/stagepersondetection
SPD_DIR=`pwd | gawk '{ print gensub(/\/docker/, "", 1) }'`

echo "Running image $IMAGENAME:$VERSION ..."

docker run -it \
	--name ld --rm \
	--privileged \
	--net=host \
	--device=/dev/video0:/dev/video0 \
	-e DISPLAY=$DISPLAY \
	-v $MARRTINO_APPS_HOME:/home/robot/src/marrtino_apps \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v /dev:/dev \
	$IMAGENAME:$VERSION