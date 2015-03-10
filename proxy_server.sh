#!/bin/bash

# Figure out the full path of the directory where this script is
my_loc="$(cd "$(dirname $0)" && pwd)"

# Start a docker container from our rocon image
xhost +
sudo docker run \
  -h server \
  --privileged \
  -p 9090:9090 \
  -p 8080:8080 \
  -ti \
  -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v ${my_loc}/workspace:/home/ros/workspace ekumen/rocon-web-proxy \
  /bin/bash -c "tmux"
