#!/bin/bash

ls -l

jq . reg-time.json

name="${{ env.name }}"
echo "step name $name"

last="${{ steps.vars.outputs.last }}"
echo "step name $last"