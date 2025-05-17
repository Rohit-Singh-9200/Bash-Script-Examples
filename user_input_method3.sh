#!/bin/bash

##################################################################################
# Method 3 - Request user to pass values in in terminal without echo message
##################################################################################

# Prompt the user for 1st number and read it into the 'num1' variable
read -p "Please enter the First Number: " num1

# Prompt the user for 2nd number and read it into the 'num2' variable
read -p "Please enter the Second Number: " num2

sum=$((num1 + num2))
echo "Sum of input Values are: $sum"

