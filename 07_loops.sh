#!/bin/bash

# NAMES="Ashis Banerjee"

# for i in $NAMES
# do 
#     echo "HElllo $i"
# done

FILES=$(ls *.txt)
NEW="loop_change"

for i in $FILES
    do 
        echo $i
        echo "Renaming $i to $NEW-$i"
        mv $i $NEW-$i
    done
