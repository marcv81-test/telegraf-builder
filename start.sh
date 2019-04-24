#!/bin/sh

if [ -z "$HOME" ]
then
  echo "HOME not defined"
  exit 1
fi

USER_ID=`id -u`:`id -g`

echo "HOME=$HOME"
echo "USER_ID=$USER_ID"

docker build docker \
  --build-arg HOME="$HOME" \
  --build-arg USER_ID="$USER_ID" \
  -t golang-builder

docker run \
  -it --rm -u="$USER_ID" \
  -v "`pwd`/go":"$HOME/go" \
  -v /etc/passwd:/etc/passwd -v /etc/group:/etc/group \
  -v /var/run/utmp:/var/run/utmp \
  golang-builder
