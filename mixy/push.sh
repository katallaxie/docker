#!/bin/bash

push() {
  VERSION=$1

  TAG=${VERSION}

# base
  echo
  echo Pushing pixelmilk/mixy:${TAG}
  docker push pixelmilk/mixy:${TAG} || exit $?
}

#    Version 
push "latest"
