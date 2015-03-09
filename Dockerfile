FROM rayman/ros-indigo-ros-base
MAINTAINER Julian Cerruti <jcerruti@creativa77.com.ar>

# Install system dependencies
RUN apt-get update && apt-get install -y --force-yes tmux wget
RUN apt-get install -y --force-yes ros-indigo-turtlebot-navigation
RUN apt-get install -y --force-yes ros-indigo-rocon
RUN apt-get install -y --force-yes ros-indigo-roslint
RUN apt-get install -y --force-yes ros-indigo-yocs-msgs
RUN apt-get install -y --force-yes python-rosinstall
RUN apt-get install -y --force-yes gnome-terminal
RUN apt-get install -y --force-yes ros-indigo-usb-cam ros-indigo-web-video-server

# TODO: modify /etc/avahi/avahi-daemon.conf to set enable-dbus=no

# Create userid for building and running ROS applications
RUN useradd -m ros
RUN adduser ros root
