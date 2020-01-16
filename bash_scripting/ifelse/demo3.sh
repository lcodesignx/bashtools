#!/bin/bash

# if-else statement tests
MY_SHELL="csh"

if [ "$MY_SHELL" = "bash" ]
then
    echo "You seem to like the bash shell."
else
    echo "You DON'T seem to like the bash shell."
fi
