#! /bin/bash

# getting sorted number of ports used in computer
# use -4 as an arguments to limit to tcpv4 ports.

netstat -nutl ${1} | grep ':' | awk '{print $4}' | awk -F ':' '{print $NF}' 

# counting how many lines are associated with bash in /etc/passwd

