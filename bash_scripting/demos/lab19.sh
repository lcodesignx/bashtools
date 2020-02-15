#!/bin/bash

# check if argument was provided
if [ -z $1 ]
then
    echo You have to provide an argument
    exit 2
fi

# check what arguments were provided
if [ $1 = "yes" ]
then
    echo "that's nice"
elif [ $1 = "no" ]
then
    echo "I'm sorry to hear that"
else
    echo "unknown argument provided"
fi
