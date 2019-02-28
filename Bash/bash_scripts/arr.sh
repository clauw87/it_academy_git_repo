#!/bin/bash

declare -A arr
arr["name"]="Vasallo"
arr["id"]="87102806793"
for i in "${!arr[@]}"
do 
    echo "$i: ${arr[$i]}"
done
