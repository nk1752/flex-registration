#!/bin/bash

# set -e

# call sum function from scripts directory
source ./scripts/functions.sh

sum $1 $2
result=$?

echo "$result"

