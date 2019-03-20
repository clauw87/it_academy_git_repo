#!/bin/bash

# with required argument
#read -p "which? " a
#while [[ -z "$a" ]]; do
#read -p "must respond " a
#done
#echo "$a selected."


#with deafault value instead
read -p "which? [default is cat] " a
while [[ -z "$a" ]]; do
	a="cat"
done
echo "$a selected."



