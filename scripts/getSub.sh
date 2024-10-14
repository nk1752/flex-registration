#!/bin/bash

# call sum function from scripts directory
source ./scripts/functions.sh

result=$(sub $1 $2)
return $result

