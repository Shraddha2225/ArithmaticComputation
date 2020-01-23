#!/bin/bash -x
echo "Welcome to Sorting Arithmetic Computation"
read -p  "Enter three numbers from user" a  b  c
echo "value of a: $a"
echo "value of b: $b"
echo "value of c: $c"

#compute operation
operation1=$((a + b * c ))
echo "First Operation(a+b*c): $operation1"
operation2=$((a * b + c))
echo "Second Operation(a*b+c): $operation2"
operation3=$( echo "scale=2; $c + $a / $b" | bc )
echo "Third Operation(c+a/b): $operation3"
