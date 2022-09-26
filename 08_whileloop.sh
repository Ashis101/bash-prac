#!/bin/bash

# line=1

# while read -r CURRENT_LINE
#     do 
#         echo "$line:$CURRENT_LINE"
#         ((line++))
#     done < "loop_change-ae.txt"

# Demonstrate the use of shift and while loops.

# Display the first three parameters.

echo "Parameter 1: ${1}"
echo "Parameter 2: ${2}"
echo "Parameter 3: ${3}"
echo 

# Loop through all the positional parameters.

while [[ "${#}" -gt 0 ]]
do
    echo "Number of Parameters: ${#}"
    echo "Parameters 1:${1}"
    echo "Parameters 2:${2}"
    echo "Parameters 3:${3}"
    echo 
    shift
done
