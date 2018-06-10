FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
build-essential \
git \
golang-go \
python \
ruby ruby-dev rubygems \
rpm && \
gem install --no-ri --no-rdoc fpm

ENV GOPATH=/home/go
ENV PATH=$PATH:/home/go

WORKDIR /home/go
CMD /bin/bash
