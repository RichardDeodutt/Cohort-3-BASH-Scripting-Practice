#!/bin/bash

#This script is to print all file related information in present working directory (e.g.: size, permission & size etc…)

#Use the ls command with the l argument for long list format, a argument for all files including hidden files, h argument for human readable format

#Runs the command and if it runs then exits with code 0 else it will exit with code 1
ls -lah && exit 0 || exit 1