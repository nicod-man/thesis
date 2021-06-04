#!/bin/bash

CACHE=""

IMAGENAME_PD=persondetection
IMAGENAME_FER=facexpressionrecognition
IMAGENAME_FD=facedetection

DOCKERFILE_PD=Dockerfile.personDetection
DOCKERFILE_FER=Dockerfile.expressionRec
DOCKERFILE_FD=Dockerfile.faceDetection

# Cache argument
if [ ! "$1" == "" ]; then
   CACHE=$1
fi

# Dockerfile arguments
if [ ! "$2" == "" ]; then
  DOCKERFILE_PD=$2
fi
if [ ! "$3" == "" ]; then
  DOCKERFILE_PD=$3
fi
if [ ! "$4" == "" ]; then
  DOCKERFILE_PD=$4
fi

VERSION=latest
if [ ! "$5" == "" ]; then
  VERSION=$5
fi

echo "-----------------"
echo "- building images - "
echo "-----------------"

docker build -t $IMAGENAME_PD:$VERSION -f $DOCKERFILE_PD . $CACHE
docker build -t $IMAGENAME_FER:$VERSION -f $DOCKERFILE_FER . $CACHE
docker build -t $IMAGENAME_FD:$VERSION -f $DOCKERFILE_FD . $CACHE

docker tag $IMAGENAME_PD:$VERSION nicodman/thesis:persondetection
docker tag $IMAGENAME_FER:$VERSION nicodman/thesis:faceExpression
docker tag $IMAGENAME_FD:$VERSION nicodman/thesis:facedetection