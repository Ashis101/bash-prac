#!/bin/bash
# Display what the user typed on command line
echo "You executed this command:${0}"

# Display the path and filename of the script.
echo "You used $(dirname ${0}) as the path to the $(basename ${0}) script."

# Tell them hom many arguments they passed in.
# (Inside the script they are parameters,outside they are arguments.)

NUMBER_OF_PARMETERS="${#}"
echo "You supplied ${NUMBER_OF_PARMETERS} arguments on the commnad line."

# Make sure they at least supply one argument.
if [[ "${NUMBER_OF_PARMETERS}" -lt 1 ]]
then 
    echo "Usage:${0} Username [USER_NAME]..."
    exit 1
fi

for i in  ${@}
do 
    echo "Power of ${@}"
    PASSWORD=$(date +%s%N | sha256sum | head -c48)
    echo "${i}:${PASSWORD}"
done


