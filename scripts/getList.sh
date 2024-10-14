#!/bin/bash

#set -e

source ./scripts/functions.sh

# setup to read environment variables from github actions workflow
# setup working dir
if [ -n "$GITHUB_WORKFLOW" ]; then
  WORKING_DIR=$GITHUB_WORKSPACE
else
  WORKING_DIR=$(pwd)
fi
echo "WORKING_DIR: $WORKING_DIR"

echo "cat name: $cat"
echo "top level env: $name"


Display $1 $2