FROM node:current-alpine3.13

WORKDIR /commitlint

RUN apk add --no-cache \
 bash git

RUN yarn add \
  @commitlint/cli@11.0.0 \
  @commitlint/config-conventional@11.0.0

COPY .config/commitlint/commitlint.config.js ./commitlint.config.js

COPY .bin/entrypoint.sh ./entrypoint.sh

ENTRYPOINT ["/commitlint/entrypoint.sh"]
