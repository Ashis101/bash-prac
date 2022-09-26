#!/bin/bash

# function sayhello(){
#     echo "Hello $1 ,from $2"
# }

# sayhello "Ashis" "wb"

#making foleder with content

# mkdir hello
# touch hello/hello.txt
# echo "hello hello hello " >> hello/hello.txt
# echo " created hello/hello.txt"

log(){
    # This function a message to syslog and to standard output if verbose is true
    local MESSAGE="${@}"
    if [[ "${VERBOSE}" = 'true' ]]
    then
        echo "${MESSAGE}"
        logger -t funfol ${MESSAGE}
    fi
}

readonly VERBOSE='false'

log 'rock on'

backupfile(){
    local FILES=${1}
    if [[ -f "${FILES}" ]]
    then
        local BACKUPFILE="/var/tmp/$(basename ${FILES}).$(date +%F-%N)"
        log "Backup ${FILES} to ${BACKUPFILE}"
        # The exit status of the function will be the exit status of the cp command
        cp -p ${FILES} ${BACKUPFILE}
    else
        # The file does not exist,so return a non-zero status
        return 1
    fi     
}