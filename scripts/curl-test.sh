#!/bin/bash

# This script is used to test the curl command
# It sends a GET request to the specified URL and prints the response
# The script takes one argument: the URL to send the request to
# Example usage: ./test_curl.sh https://www.example.com

# set current directory to working directory of the script
# this is necessary because the script is run from a different directory
# and the relative paths used in the script are incorrect
# this line sets the current directory to the directory where the script is located
# which is the root directory of the projec

echo "can you see this"

http_code=$(curl -so /dev/null -w "%{http_code}" $1)
echo "http_code -> $http_code"
echo $http_code

