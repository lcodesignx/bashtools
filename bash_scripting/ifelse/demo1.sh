#!/bin/bash

# Conditional tests

# Prompt user for number
echo "Enter a number: "

read NUMBER

if [ $NUMBER -lt 5 ]
then
    echo "You entered a SMALL number"
elif [ $NUMBER -gt 5 ]
then
    echo "You entered a LARGE number"
else
    echo "Something went wrong"
fi
