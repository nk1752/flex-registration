#!/bin/bash

current_timestamp=$(date +%s)
#echo "current_timestamp -> $current_timestamp"

#get expiration timestamp from reg-time.json

jq . reg-time.json

future_date="$(jq -r '.expiration_date[:19]' reg-time.json)"
future_timestamp=$(date -d "$future_date" +%s)
#echo "future_timestamp -> $future_timestamp"

time_diff=$(($future_timestamp - $current_timestamp))
#echo "time_diff -> $time_diff"

days=$(($time_diff / 86400))
#echo "script days -> $days"

echo "$days"
