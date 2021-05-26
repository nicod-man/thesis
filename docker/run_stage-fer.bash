#!/bin/bash

# Use  ./run.bash [version]

IMAGENAME=stageferrecognition

VERSION=latest
if [ ! "$1" == "" ]; then
  VERSION=$1
fi

SPD_DIR=`pwd | gawk '{ print gensub(/\/docker/, "", 1) }'`

echo "Running image $IMAGENAME:$VERSION ..."

docker run -it \
    --name stageferrecognition--rm \
    --privileged \
    --net=host \
    -v $SPD_DIR:/home/robot/src/stagepersondetection \
    -v $HOME/playground/images:/home/robot/images \
    $IMAGENAME:$VERSION
