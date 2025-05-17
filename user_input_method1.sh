#!/bin/bash

##########################################################
# Method1 - Pass values while running the script
# Example ./userinput.sh 2 3
###########################################################

set -e

a=$1
b=$2

#sum=$(expr $a + $b)
sum=$((a + b))
echo "Sum of input Values are: $sum"

