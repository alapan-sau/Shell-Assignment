#!/bin/bash
let w=$1
let cr=$2
read a <<< $(df -H  | grep -vE '^Filesystem|tmpfs'| awk '{print $1" "$5}' | sed 's/%//g' | grep "" -c )
let i=0
let a=$a+0
while [ $i -lt $a ]
do
        let cnt=$a-$i
        read c d <<< $(df -H  | grep -vE '^Filesystem|tmpfs'| awk '{print $1" "$5}' | sed 's/%//g' | tail -$cnt | head -1)
        if [ $d -lt $w ]
        then
                echo -e "\e[34mOK, $c, $d%"
        fi
        if [ $d -ge $w ]
        then
                if [ $d -gt $cr ]
                then
                        echo -e "\e[31mCRITICAL, $c, $d%"
                else
                        echo -e "\e[33mWARNING, $c, $d%"
                fi
        fi
        let i=$i+1
done
