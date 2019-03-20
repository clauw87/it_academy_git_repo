#!/bin/bash

read -p "What year? [nnnn] " a
while [[ ! $a =~ [0-9]{4}  ]]; do
	read -p "I said a year!!! [nnnn] " a
done
echo "Year $a was selected"
