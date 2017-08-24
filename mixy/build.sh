#!/bin/bash

build() {
  VERSION=$1

  TAG=${VERSION}

# base
  docker build \
    -t pixelmilk/mixy \
    --squash \
    --compress \
    . || exit $?

# tag
  echo
  echo Tagging pixelmilk/mixy:${TAG}
  docker tag pixelmilk/mixy pixelmilk/mixy:${TAG} \
    || exit $?
    
}

#     Version
build "latest"