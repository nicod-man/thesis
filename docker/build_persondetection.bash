#!/bin/bash

# Use  ./build.bash [Dockerfile] [version]

IMAGENAME=PersonDetection

DOCKERFILE=Dockerfile.personDetection
if [ ! "$1" == "" ]; then
  DOCKERFILE=$1
fi

VERSION=latest
if [ ! "$2" == "" ]; then
  VERSION=$2
fi

docker build -t $IMAGENAME:$VERSION -f $DOCKERFILE .
docker tag $IMAGENAME:$VERSION nicodman/thesis:persondetection