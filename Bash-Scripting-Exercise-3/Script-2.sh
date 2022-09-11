#!/bin/bash

#For Sequence Identification
#https://www.wolframalpha.com/examples/mathematics/discrete-mathematics/sequences

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
    #For loop to run the loop as many times as the 'n' variable
    for i in $( seq 1 $n ) ; do
        #Sequence Start = 1/2 (i^2 - i + 2) | Example i = 4: 1/2 (4^2 - 4 + 2 ) => 1/2 (16 - 4 + 2) => 1/2 (12 + 2) => 1/2 * 14 => 7
        #Sequence End = 1/2 i (i + 1) | Example i = 4: 1/2 4 (4 + 1) => 1/2 * 4 * 5 => 2 * 5 => 10
        #Printf to remove the decimal places and bc to do the math
        echo $( seq $(printf '%.0f' $( echo " (1 / 2) * ( ( ($i^2) - $i ) + 2 ) " | bc -l )) $( printf '%.0f' $( echo " ( (1 / 2) * $i) * ($i + 1) " | bc -l )) )
    done
else
    #A integer was not entered by the user
    echo "You did not enter the number correctly"
    exit 1
fi

#Success
exit 0