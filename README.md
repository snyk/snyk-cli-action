# Snyk CLI GitHub Action

A [GitHub Action](https://help.github.com/en/articles/about-github-actions) to run [Snyk](https://snyk.io/) CLI - a build-time tool to find & fix known vulnerabilities in open-source dependencies

# Usage

Example with GitHub Actions Workflow

```
name: Non-Master - Plan

on:
  push:
    branches:
      - '*'
      - '!master'
  pull_request:
    branches:
      - 'master'

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Snyk
        working-directory: ./my_lambda/
        uses: snyk/snyk-cli-action@master
        env:
          SNYK_TOKEN: ${{secrets.SNYK_TOKEN}}
```

Where your GitHub repo has
a [GitHub Actions Secret](https://help.github.com/en/articles/virtual-environments-for-github-actions#creating-and-using-secrets-encrypted-variables) `SNYK_TOKEN` as generated in your [Snyk Account Settings](https://app.snyk.io/account)
