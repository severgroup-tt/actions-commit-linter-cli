#!/usr/bin/env bash

set -eou pipefail

PATH="node_modules/.bin:${PATH}"

COMMITLINT_CONFIG="./commitlint.config.js"
COMMIT_MESSAGE=$(git log -1 --pretty=format:"%s")

echo "${COMMIT_MESSAGE}" | commitlint --config "${COMMITLINT_CONFIG}" --verbose
