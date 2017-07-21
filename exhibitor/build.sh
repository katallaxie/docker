#!/bin/bash

build() {
  EXHIBITOR_VERSION=$1
  ZOOKEEPER_VERSION=$2

  TAG=${EXHIBITOR_VERSION}-${ZOOKEEPER_VERSION}

# base
  docker build \
    -t pixelmilk/exhibitor \
    --squash \
    --compress \
    --build-arg ZOOKEEPER_VERSION=${ZOOKEEPER_VERSION} \
    . || exit $?

# tag
  echo
  echo Tagging pixelmilk/exhibitor:${TAG}
  docker tag pixelmilk/exhibitor pixelmilk/exhibitor:${TAG} \
    || exit $?
    
}

#     Exhibitor   ZooKeeper
build "1.5.6"	  	"3.4.10"