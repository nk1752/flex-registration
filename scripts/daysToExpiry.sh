#!/bin/bash

days_to_expiry(){
    local expiry_date=$1
    local current_date=$(date +%s)
    local expiry_date=$(date -d "$expiry_date" +%s)
    local days_to_expiry=$(( ($expiry_date - $current_date) / 86400 ))
    return $days_to_expiry
}
