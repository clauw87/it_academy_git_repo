#!/bin/bash
# This is my first bash script
#a=Hello
#b=$(ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4)
#c=16
#declare -u d="wtf"
#d=2
#e=$((d+2))
#echo $a!. I have $c ms. Time to execute is $b.  $d! Tell me $e.
[[ "cat" == "cat" ]] 
echo $?
[[ "cat" == "dog" ]] 
echo $?
[[ 20 -gt 100 ]] 
echo $?
[[ 20 -lt 100 ]] 
echo $?
echo
a=""
b="cat"
[[ -z $a && -n $b ]]
echo $?


