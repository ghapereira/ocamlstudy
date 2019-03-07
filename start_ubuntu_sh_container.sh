#! /bin/bash
# This is a script that initiates a Docker container running the bash
# process, with an attached volume, for a macOS environment.

IMAGE_NAME=ubuntu
HOST_NIC=en1

# Maps to localhost
HOST_IP=host.docker.internal

# Absolute path of the attached volume
HOST_ATTACHED_DIR=/Users/ghapereira/dev/ocaml
CONTAINER_ATTACHED_DIR=/src

PROCESS_TO_RUN=/bin/bash

# --name: This is a named container
# HOST_IP: needed for accessing services in the host machine
# -v: mapping the volume as [local]:[destination]

docker run \
  --name $IMAGE_NAME \
  -e HOST_IP=$HOST_IP \
  -v $HOST_ATTACHED_DIR:$CONTAINER_ATTACHED_DIR \
  -t -i \
  $IMAGE_NAME $PROCESS_TO_RUN
