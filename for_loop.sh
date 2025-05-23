#!/bin/bash

read -p "Enter the Word: " word

len_of_word=${#word}

echo "Length of the word is: " $len_of_word

for (( i=0; i<$len_of_word; i++ ))
do
  echo ${word:$i:1}

# ${word:$i:1} -  Extracts the character at position i

done


