#!/bin/bash

############################################################################################
# This Script is to list of general users on the system and their corresponding user IDs
############################################################################################
#set -x
set -e
set -o pipefail

username=$(sudo cat /etc/passwd | awk -F: '($3>999){ print $1,$3 }')

# ($3>999) is because by default regular user UID are more than 1000

echo "######### Here are the list of general users and their OID in this system ##########"
echo "$username"

