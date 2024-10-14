#!/bin/bash

ls -l

jq . reg-time.json

name=${{ steps.vars.outputs.name }}
echo $name