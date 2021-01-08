#!/bin/bash
echo "Enter A:"
read x
echo "Enter B:"
read y
let lcm=$x*$y
function gcd ()
{
	if [ $y -eq 0 ]
	then
		echo "GCD: $x"
	else
		let temp=$x
		let x=$y
		let y=temp%$y
		gcd
	fi	
}
gcd
let lcm=$lcm/$x
echo "LCM: $lcm"
