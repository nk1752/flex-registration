#!/bin/bash

# set -e

source ./scripts/functions.sh

HttpCode
if [ $? -ne 0 ]; then
  echo "Error: HttpCode"
  exit 1
else
  result=$?
  echo $result  
  exit 0
fi
