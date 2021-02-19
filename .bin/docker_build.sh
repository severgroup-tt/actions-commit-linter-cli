#!/usr/bin/env bash

set -eou pipefail

docker build \
  -t "${IMAGE_NAME}:${IMAGE_TAG}" \
  -f "${DOCKER_FILE}" \
  "${DOCKER_BUILD_PATH}"
