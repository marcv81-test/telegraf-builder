# Telegraf builder

This is a Docker container to build Telegraf.

## Setup

    ./build.sh
    ./start.sh
    git clone https://github.com/influxdata/telegraf.git src/github.com/influxdata/telegraf
    cd src/github.com/influxdata/telegraf

## Build

    make
    make test
    make package
