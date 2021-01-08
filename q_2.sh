#!/bin/bash

find . -type d -ls | while read a b c d e f g h i j k
                     do
                             let g=$g/1024
                             echo $k" "$g "KB"
                     done

echo

find -type d |  while read -r dir; 
		do
			m=$(find "$dir" -maxdepth 1 -type f | wc -l)
			n=$(find "$dir" -maxdepth 1 -type d | wc -l)
			let a=$m+$n
			echo $dir"        "$a
		done
