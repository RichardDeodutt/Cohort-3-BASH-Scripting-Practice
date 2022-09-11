#!/bin/bash

#This script is to read in a 'n' and generate a pattern given below
#Pattern

#1
#1 2
#1 2 3
#1 2 3 4

#Read 'n'
read -p "Enter a integer number: " n

#Check to make sure n is a integer
if [ -n "$n" ] && [ "$n" -eq "$n" ] ; then
    #For loop to run the loop as many times as the 'n' variable
    for i in $( seq 1 $n ) ; do
        #Echo the sequence of integers from 1 to the 'i' variable which can be considered a count of how many times the loop ran
        echo $( seq 1 $i )
    done
else
    #A integer was not entered by the user
    echo "You did not enter the number correctly"
    exit 1
fi

#Success
exit 0