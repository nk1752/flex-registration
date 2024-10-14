#!/bin/bash

#set -e

source ./scripts/functions.sh

ls -l
jq . reg-time.json

Display $1 $2