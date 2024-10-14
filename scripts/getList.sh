#!/bin/bash

ls -l

jq . reg-time.json

name=${{ env.name}}
echo $name