#!/bin/bash

#This script is to demonstrating remote login & file transfer functions using ssh and scp

#Read the 'mode'
read -p "SSH or SCP? " Mode

#Lowercase the input
echo "$Mode" | tr '[:upper:]' '[:lower:]'

if [ -z "$Mode" ]; then
    echo "No Mode was entered"
    exit 1
else
    
fi

#Success
exit 0