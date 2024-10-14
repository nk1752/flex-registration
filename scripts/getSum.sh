#!/bin/bash

# call sum function from scripts directory
source ./scripts/functions.sh
result=$(sum $1 $2)

echo $result

