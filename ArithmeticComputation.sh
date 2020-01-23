#!/bin/bash 

declare -A  operations
echo "Welcome to Sorting Arithmetic Computation"
read -p  "Enter three numbers from user" a  b  c
echo "value of a: $a"
echo "value of b: $b"
echo "value of c: $c"

#compute operation
operations[1]=$((a + b * c ))
operations[2]=$((a * b + c))
operations[3]=$( echo "scale=2; $c + $a / $b" | bc )
operations[4]=$((a % b + c))

#get values from array#
k=0
for i in  ${!operations[@]}
do
	Dictarray[$k]=${operations[$i]}
	((k++))
done

#print the array here#
echo "Values From Dictionary Array: ${Dictarray[@]}"
#print key#
echo "key : ${!operations[@]} "
#print values#
echo "values : ${operations[@]}"
