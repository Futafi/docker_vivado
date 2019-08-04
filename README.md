Futafi Vivado Docker environment
====================================
forked from [360nosc0pe Vivado Docker environment](https://github.com/360nosc0pe/docker_vivado).

This repo contains a Dockerfile and a bunch of helper scripts to run Vivado inside a docker container.

Building
--------

### Building the container

Download Vivado in the right version and put it into the `files` subdirectory.
Put `install_config.txt` in same directory.

Edit `.env` file as you want.

To built the container just run:

    $ ./build.sh

If you want to run the container, run:

    $ docker-compose run vivado

The container will mount the $PROJECTDIR directory written in `.env` into `/project`.
