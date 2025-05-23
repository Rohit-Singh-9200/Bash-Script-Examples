#!/bin/bash

###############################################################
# For Loop example to print individual letter in a word
##############################################################

# Prompt the user to enter word and store it into the 'word' variable
read -p "Enter the Word: " word

# Get the length of the entered word
len_of_word=${#word}

# Print the length of the word
echo "Length of the word is: " $len_of_word

# Print each letter in a word
for (( i=0; i<$len_of_word; i++ ))
do
  echo ${word:$i:1}

# ${word:$i:1} -  Extracts the character at position i

done


