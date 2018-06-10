#!/bin/sh

docker run \
  -it --rm -u=`id -u`:`id -g` \
  -v `pwd`/go:/home/go \
  -v /etc/passwd:/etc/passwd -v /etc/group:/etc/group \
  golang-builder
