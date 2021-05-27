#!/bin/bash

# Use  ./build.bash [Dockerfile] [version]

IMAGENAME=facialexpressionrecognition

DOCKERFILE=Dockerfile.expressionRec

VERSION=latest
if [ ! "$2" == "" ]; then
  VERSION=$2
fi

docker build -t $IMAGENAME:$VERSION -f $DOCKERFILE . --no-cache
docker tag $IMAGENAME:$VERSION nicodman/thesis:faceExpression

