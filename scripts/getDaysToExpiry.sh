#!/bin/bash

set -eu

source ./scripts/functions.sh

DaysToExpiry
days=$?

echo $days
