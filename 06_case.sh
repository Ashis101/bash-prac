#!/bin/bash

# Case Statement
# ;; means ending a statement
# *) means default 
# esac is ending the case statement

read -p "Are you 21 or over? y/n"  ans

case "$ans" in
    [yY] | [yY][eE][sS])
        echo "You can have a beer :)"
    ;;
    [nN] | [nN][oO])
        echo "Sorry, no drinking"
    ;;
    *)
        echo "Please enter yes/no"
    ;;
esac