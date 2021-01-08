#!/bin/bash
arr=( "$@" )
let n=${#arr[@]}
 

  
# Performing Bubble sort  
for ((i = 0; i<n; i++)) 
do
      
    for((j = 0; j<n-1; j++)) 
    do
      
       if [ ${arr[j]} -ge ${arr[$((j+1))]} ]
       then
            # swap 
            let temp=${arr[$j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
       fi
    done
done
for((i = 0; i<n; i++))
do
	printf "%s " "${arr[$i]}"
done
