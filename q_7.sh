#!/bin/bash
echo "Enter name:"
read name

echo "Enter DOB:"
read str

M=`date +%m`
Y=`date +%Y`

IFS='-'
read -a ARR <<< "$str"

let m=12-${ARR[0]}+$M
let y=-${ARR[1]}+$Y

let y=$y*12
let y=$y+$m-12

echo "Hello $name your age is $y months."
