#!/bin/bash

######################################################
# This Script is to get all the general system
# username and its UID
#
######################################################
#set -x
set -e
set -o pipefail

username=$(sudo cat /etc/passwd | awk -F: '($3>999){ print $1,$3 }')

echo "######### Here are the list of general users and their OID in this system ##########"
echo "$username"

