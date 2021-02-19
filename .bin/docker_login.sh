#!/usr/bin/env bash

set -eou pipefail

echo "${DOCKER_PASSWORD}" | docker login "${REGISTRY}" \
  --username "${DOCKER_USERNAME}" \
  --password-stdin
