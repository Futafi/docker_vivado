#!/bin/bash

cd $(dirname $0)

source ./.env

if [ ! -f files/$VIVADO_SETUP ]; then
    echo "Xilinx Vivado installation .tar.gz file not found. Cannot continue."
    exit 1
fi

trap 'kill $(jobs -p)' EXIT

# Start webserver for setup file download
python3 -m http.server 8000 &

# Build the docker container
docker-compose build

exit $?
