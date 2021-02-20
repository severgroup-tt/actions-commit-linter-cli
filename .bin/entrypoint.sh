#!/usr/bin/env bash

set -eou pipefail

COMMITLINT_HOME="/commitlint"
COMMITLINT_CONFIG="${COMMITLINT_HOME}/commitlint.config.js"
PATH="${COMMITLINT_HOME}/node_modules/.bin:${PATH}"

COMMIT_MESSAGE=$(git log -1 --pretty=format:"%s")

echo "${COMMIT_MESSAGE}" | commitlint --config "${COMMITLINT_CONFIG}" --verbose
