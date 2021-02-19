#!/bin/bash

USERNAME=""
CR_PAT=""

REGISTRY="ghcr.io"
OWNER="severgroup-tt"

IMAGE_NAME="actions-commitlint"
IMAGE_TAG="v1.0.0-beta.0"

printf "${CR_PAT}" | docker login "${REGISTRY}" \
  --username "${USERNAME}" \
  --password-stdin

docker tag "${IMAGE_NAME}:${IMAGE_TAG}" "${REGISTRY}/${OWNER}/${IMAGE_NAME}:${IMAGE_TAG}"
docker tag "${IMAGE_NAME}:${IMAGE_TAG}" "${REGISTRY}/${OWNER}/${IMAGE_NAME}:latest"

docker push "${REGISTRY}/${OWNER}/${IMAGE_NAME}:${IMAGE_TAG}"
docker push "${REGISTRY}/${OWNER}/${IMAGE_NAME}:latest"
