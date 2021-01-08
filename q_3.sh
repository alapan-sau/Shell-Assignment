#!/bin/bash
let input=$1
ping -c $input google.com | head -1
let temp=$input+1
ping -c $input google.com | head -$temp | tail -$input | awk 'BEGIN{i=1} /.*/{printf "%d.% s\n",i,$0; i++}'
ping -c $input google.com | tail -4
