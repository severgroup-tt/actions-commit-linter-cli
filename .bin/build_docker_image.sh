#!/bin/bash

DOCKER_FILE=".config/docker/Dockerfile"
DOCKER_BUILD_PATH="."

IMAGE_NAME="actions-commitlint"
IMAGE_TAG="v1.0.0-beta.0"

docker build \
  -t "${IMAGE_NAME}:${IMAGE_TAG}" \
  -f "${DOCKER_FILE}" \
  "${DOCKER_BUILD_PATH}"
