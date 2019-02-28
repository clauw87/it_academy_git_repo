#!/bin/bash 
# This is a basic bash script
for i in 1 2 3 
do
echo $i
done
echo
for i in {1..5} 
do
echo $i
done
echo

for i in {1..10..2} 
do
echo $i
done

echo
echo

for (( i=1; i<=10; i++))
do 
echo $i
done

echo
echo

arr=("apple" "banana" "cherry")
for i in ${arr[@]}
do 
echo $i
done



