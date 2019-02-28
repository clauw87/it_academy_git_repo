#!/bin/bash

# This is a basic bash script on input arguments

#echo $1
#echo $2

for i in $@
do
	echo $i
done


echo "There were $# arguments."
