#!/bin/bash

set -eu

# call sum function from scripts directory
source ./scripts/functions.sh

sum $1 $2
result=$?

echo $result

