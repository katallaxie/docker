#!/bin/bash

build() {
  MESOS_VERSION=$1
  MESOSPHERE_TAG=$2

  TAG=${MESOS_VERSION}-${MESOSPHERE_TAG}

# base
  docker build \
    --compress \
    -t pixelmilk/mesos \
    -f base/Dockerfile \
    --build-arg MESOS_VERSION=${TAG} \
    . || exit $?

# tag
  echo
  echo Tagging pixelmilk/mesos:${TAG}
  docker tag pixelmilk/mesos pixelmilk/mesos:${TAG} \
    || exit $?

# agent, master
  for role in agent master; do
    echo
    echo Building pixelmilk/mesos-${role}
    docker build \
      --compress \
      -t pixelmilk/mesos-${role}:${TAG} \
      -f ${role}/Dockerfile \
      . || exit $?
  done
    
}

# curl http://169.254.169.254/latest/meta-data/local-ipv4

#     Mesos version   Mesosphere tag
build "1.3.0"	  	    "2.0.3"