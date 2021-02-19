#!/usr/bin/env bash

set -eou pipefail

docker tag "${IMAGE_NAME}:${IMAGE_TAG}" "${REGISTRY}/${OWNER}/${IMAGE_NAME}:${IMAGE_TAG}"
docker tag "${IMAGE_NAME}:${IMAGE_TAG}" "${REGISTRY}/${OWNER}/${IMAGE_NAME}:latest"

docker push "${REGISTRY}/${OWNER}/${IMAGE_NAME}:${IMAGE_TAG}"
docker push "${REGISTRY}/${OWNER}/${IMAGE_NAME}:latest"
