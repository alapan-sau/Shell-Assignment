#!/bin/bash

echo "Please enter your SGPA:"
read input

if [ `echo "$input < 5" | bc` -eq 1 ]
then
	echo "PROBATION"
fi
if [ `echo "$input < 6" | bc` -eq 1 ]
then
	echo "AGLE SEM PHOD DENGE"
fi
if [ `echo "$input >= 6" | bc` -eq 1 ]
then
	input=`echo "16-$input" | bc`
	echo "You need SGPA $input next sem"
fi

