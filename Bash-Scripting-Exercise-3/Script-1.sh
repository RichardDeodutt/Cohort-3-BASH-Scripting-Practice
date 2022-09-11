#!/bin/bash

#This script is to read in a 'n' and generate a pattern given below
#Pattern

#1
#2 3
#4 5 6
#7 8 9 10

#Read 'n'
read -p "Enter a integer number: " n

#Check to make sure n is a integer
if [ -n "$n" ] && [ "$n" -eq "$n" ] ; then
    #The 'j' variable stores the last number the sequence stoped at for the loop
    j=1
    #For loop to run the loop as many times as the 'n' variable
    for i in $( seq 1 $n ) ; do
        #Update the 'j' variable to the last posiotion the sequence stoped on the last loop
        j=$(($j + $i-1))
        #Echo the sequence of integers from 'j' to the 'j + i-1' variables
        echo $( seq $j $(($j + $i-1)) )
    done
else
    #A integer was not entered by the user
    echo "You did not enter the number correctly"
    exit 1
fi

#Success
exit 0