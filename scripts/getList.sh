#!/bin/bash

ls -l

jq . reg-time.json

name=$1
echo "env name $name"

last=$2
echo "step name $last"