FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
build-essential \
git \
golang-go \
go-dep \
python \
ruby ruby-dev rubygems \
rpm && \
gem install --no-ri --no-rdoc fpm

ARG HOME
ARG USER_ID

RUN mkdir -p "$HOME" && chown "$USER_ID" "$HOME"

ENV GOPATH="$HOME/go"
ENV PATH="$PATH:$GOPATH/bin"

WORKDIR "$HOME/go"
CMD /bin/bash
