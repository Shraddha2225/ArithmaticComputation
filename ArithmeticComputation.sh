#!/bin/bash -x 

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
for ((i=0; i<4; i++))
do
	Dictarray[i]=${operations[operation$((i+1))]}
done


#print key#
echo "key : ${!operations[@]} "
#print values#
echo "values : ${operations[@]}"
#print the array here#
echo "Values From Dictionary Array: ${Dictarray[@]}"
#echo "Length of array: "${#Dictarray[@]}

#ASCENDING ORDER SORTING#
length=${#Dictarray[@]}
for ((i=0; i<length; i++))
do
	for((j=0; j<length; j++))
	do
		if [[ ${Dictarray[j]%.*} -gt ${Dictarray[j+1]%.*} ]]
		then
			temp=${Dictarray[j]}
			Dictarray[j]=${Dictarray[j+1]}
			Dictarray[j+1]=$temp
		fi
	done
done

#printing sorted array in ascending order# 
echo "Array Sorted In Ascending Order:${Dictarray[@]}"
