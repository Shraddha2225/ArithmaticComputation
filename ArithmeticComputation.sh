#!/bin/bash -x
echo "Welcome to Sorting Arithmetic Computation"
read -p  "Enter three numbers from user" a  b  c
echo "value of a: $a"
echo "value of b: $b"
echo "value of c: $c"

#compute operation
operation1=$((a + b * c ))
echo "first operation(a+b*c): $operation1"
