#!/bin/bash

#Comparison
####
# -eq [a==b] 
# -ne [a!=b]
# -gt [a > b]
# -ge [a >= b]
# -lt [a < b]
# -le [a <= b]
####

echo " Comparing two number"
read -p "Number-1: " NUM
read -p "Number-2: " NUM2

if [ $NUM -gt $NUM2 ]
then
    echo "$NUM is greter than $NUM2"
else
    echo "$NUM is less than $NUM2"
fi