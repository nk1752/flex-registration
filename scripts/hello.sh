#!/bin/bash

# call sum function from scripts directory
source ./scripts/functions.sh
result=$(sum 2 3)
name=$1
echo "Hello $name! sum is $result"

