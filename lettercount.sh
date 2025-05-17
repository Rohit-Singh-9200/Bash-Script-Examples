#!/bin/bash

###################################################################
# This script is to calulcate repeated letter count in a word
###################################################################

a=subbookkeeper

grep -o e <<< $a | wc -l

# <<< is passing the $a value as standard input to grep command

