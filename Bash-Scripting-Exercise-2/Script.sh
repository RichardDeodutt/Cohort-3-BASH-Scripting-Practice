#!/bin/bash

#This script is to read in a 'n'and generate a pattern given below
#Pattern

#1
#1 2
#1 2 3
#1 2 3 4

#Read 'n'
read -p "Enter a integer number: " n

if [ -n "$n" ] && [ "$n" -eq "$n" ] ; then
    for i in $( seq 1 $n ) ; do
        echo $( seq 1 $i )
    done
else
    echo "You did not enter the number correctly"
fi

#Success
exit 0