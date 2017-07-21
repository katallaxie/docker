#!/bin/bash

push() {
  EXHIBITOR_VERSION=$1
  ZOOKEEPER_VERSION=$2

  TAG=${EXHIBITOR_VERSION}-${ZOOKEEPER_VERSION}

# base
  echo
  echo Pushing pixelmilk/exhibitor:${TAG}
  docker push pixelmilk/exhibitor:${TAG} || exit $?

}

#    Exhibitor  ZooKeeper
push "1.3.0"	"3.4.10"
