#!/bin/bash

# Use  ./build.bash [Dockerfile] [version]

IMAGENAME=facialexpressionrecognition

DOCKERFILE=Dockerfile.ExpressionRec

VERSION=latest
if [ ! "$2" == "" ]; then
  VERSION=$2
fi

docker build -t $IMAGENAME:$VERSION -f $DOCKERFILE 
docker tag $IMAGENAME:$VERSION nicodman/thesis:faceExpression

