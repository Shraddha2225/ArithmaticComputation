#!/bin/bash 

declare -A  operations
echo "Welcome to Sorting Arithmetic Computation"
read -p  "Enter three numbers from user" a  b  c
echo "value of a: $a"
echo "value of b: $b"
echo "value of c: $c"

#compute operation
operations[operation1]=$((a + b * c ))
operations[operation2]=$((a * b + c))
operations[operation3]=$( echo "scale=2; $c + $a / $b" | bc )
operations[operation4]=$((a % b + c))

#get values from array#
for ((i=0; i<5; i++))
do
	Dictarray[i]=${operations[operation$((i+1))]}
done

#print the array here#
echo "Values From Dictionary Array: ${Dictarray[@]}"
#print key#
echo "key : ${!operations[@]} "
#print values#
echo "values : ${operations[@]}"

