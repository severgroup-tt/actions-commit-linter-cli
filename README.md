# actions-commit-linter-cli

[![Release Package](https://github.com/severgroup-tt/actions-commit-linter-cli/actions/workflows/release-package.yml/badge.svg)](https://github.com/severgroup-tt/actions-commit-linter-cli/actions/workflows/release-package.yml)
[![GitHub release](https://img.shields.io/github/release/severgroup-tt/actions-commit-linter-cli.svg)](https://github.com/severgroup-tt/actions-commit-linter-cli/releases/)

Run [commitlint](https://commitlint.js.org/) in your GitHub Actions pipiline!

## Usage

See [action.yml](action.yml)


## Example

```yaml
name: Commitlint

on: [push]

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: severgroup-tt/actions-commit-linter-cli@latest
```
