#!/bin/bash

set -e

current_timestamp=$(date +%s)

future_date="$(jq -r '.expiration_date[:19]' reg-time.json)"
future_timestamp=$(date -d "$future_date" +%s)

time_diff=$((future_timestamp - current_timestamp))

days=$((time_diff / 86400))


echo "$days"
