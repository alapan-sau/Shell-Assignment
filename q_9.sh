#!/bin/bash
let input=$1

if [ $input -ge 500 ]
then
	let input=$input-500
	printf "%s" "D"
fi

if [ $input -ge 400 ]
then
	let input=$input-400
	printf "%s" "CD"
fi

while [ $input -ge 100 ]
do
	let input=$input-100
	printf "%s" "C"
done

if [ $input -ge 90 ]
then
        let input=$input-90
        printf "%s" "XC"
fi

if [ $input -ge 50 ]
then
        let input=$input-50
        printf "%s" "L"
fi

if [ $input -ge 40 ]
then
        let input=$input-40
        printf "%s" "XL"
fi

while [ $input -ge 10 ]
do
        let input=$input-10
        printf "%s" "X"
done

if [ $input -ge 9 ]
then
        let input=$input-9
        printf "%s" "IX"
fi

if [ $input -ge 5 ]
then
        let input=$input-5
        printf "%s" "V"
fi

if [ $input -ge 4 ]
then
        let input=$input-50
        printf "%s" "IV"
fi

while [ $input -ge 1 ]
do
        let input=$input-1
        printf "%s" "I"
done

