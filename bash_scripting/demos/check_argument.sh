#!/bin/bash
# Check if file exists

if [ -z $1 ]
then
    echo you have to provide an argument
    exit 6
else
    echo the argument is $1
fi
