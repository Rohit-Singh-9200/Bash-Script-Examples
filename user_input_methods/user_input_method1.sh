#!/bin/bash

##########################################################
# Method1 - Pass values while running the script
# Example ./user_input_method1.sh 2 3
###########################################################

set -e

a=$1
b=$2

#sum=$(expr $a + $b)
sum=$((a + b))ls
echo "Sum of input Values are: $sum"

