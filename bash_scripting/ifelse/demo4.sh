#!/bin/bash

# if-elseif-else statement tests
MY_SHELL="zsh"

if [ "$MY_SHELL" = "bash" ]
then
    echo "You seem to like the bash shell."
elif [ "$MY_SHELL" = "csh" ]
then
    echo "You don't seem to like the bash shell. You like csh."
else
    echo "You don't like any of the shells. Maybe ksh."
fi
