#!/bin/bash

################################################################
# Method 2 - Request user to pass values in terminal as input
################################################################

# Prompt the use to enter 1st number
echo "Please enter the First Number: "

# Read the user's input and store it in the 'num1' variable
read num1

# Prompt the use to enter 2nd number
echo "Please enter the Second Number: "

# Read the user's input and store it in the 'num2' variable
read num2

# Sum of these numbers
sum=$((num1 + num2))
echo "Sum of input Values are: $sum"

