#!/bin/sh -l
set -eu
echo "Snyk action"

if [ -n "$SNYK_TOKEN" ]; then
  echo "Running snyk test"
  sh -c "./snyk-linux test -e=$SNYK_TOKEN $*"
fi
