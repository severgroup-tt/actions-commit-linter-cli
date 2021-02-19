#!/usr/bin/env bash

set -eou pipefail

DOCKER_BUILD_PATH="."
DOCKER_FILE=".config/docker/Dockerfile"
IMAGE_NAME=$(echo "${GITHUB_REPOSITORY}" | sed -e 's,.*/\(.*\),\1,' | tr '[:upper:]' '[:lower:]')
IMAGE_TAG=$(echo "${GITHUB_REF}" | sed -e 's,.*/\(.*\),\1,')
OWNER="severgroup-tt"
REGISTRY="ghcr.io"

echo "DOCKER_BUILD_PATH=${DOCKER_BUILD_PATH}" >> $GITHUB_ENV
echo "DOCKER_FILE=${DOCKER_FILE}" >> $GITHUB_ENV
echo "IMAGE_NAME=${IMAGE_NAME}" >> $GITHUB_ENV
echo "IMAGE_TAG=${IMAGE_TAG}" >> $GITHUB_ENV
echo "OWNER=${OWNER}" >> $GITHUB_ENV
echo "REGISTRY=${REGISTRY}" >> $GITHUB_ENV
