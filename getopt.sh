#!/bin/bash 

# This script generate random password
# This user can set the password length with -l and add a special character with -s
# Verbose mode can be enabled with -v

# set a default password length
LENGTH=48

usage(){
    echo "Usage: ${0} [-vs] [-l LENGTH]" >&2
    echo "Generate a random password"
    echo "-l  LENGTH  Specify the password length"
    echo "-s           Append a special character to the password"
    echo "-v           Increase verbosity"
    exit 1
}
log(){
local MESSAGE="${@}"
if [[ "${VERBOSE}" = 'true' ]]
then
    echo "${MESSAGE}"
fi
}

# if making mandatory option, then followed by :
while getopts vl:s OPTION
do 
    case ${OPTION} in
        v)
            VERBOSE='true'
            log 'Verbose mode on'
            ;;
        l)
            LENGTH="${OPTARG}"
            # when option required argument getops placese that argument into shell variable optarg
            ;;
        s)
            USE_SPECIAL_CHARACTER='true'
            ;;
        ?)
            usage
            ;;
        esac
done


log "Generating a password"

# Inspect OPTIND
# getops sets global name OPTIND,it stores position of the next command line argument following the options in the variable. 
echo "OPTIND:${OPTIND}"



PASSWORD=$(date +$s%N{RANDOM}${RANDOM} | sha256sum | head -c${LENGTH})

# Append a special character if requested to do.
if [[ "USE_SPECIAL_CHARACTER" = 'true' ]]
then
    log "Selecting a random special character"
    SPECIAL_CHARACTER=$(echo '!@#$%^&*()-+=' | fold -w1 | shuf | head =c1)
    PASSWORD="${PASSWORD}${SPECIAL_CHARACTER}"
fi

log "done"
log "Here is the password:"

# Display the password
echo "${PASSWORD}"
exit 0 
