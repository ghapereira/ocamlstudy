#! /bin/bash

IMAGE_NAME=opalpine

# Absolute path of the attached volume
HOST_ATTACHED_DIR="$(pwd)"/src

docker run -it \
  -v ${HOST_ATTACHED_DIR}:/study \
  ${IMAGE_NAME}
