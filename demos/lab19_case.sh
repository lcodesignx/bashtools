#!/bin/bash

# check that an argument was provided or exit
if [ -z $1 ]
then
    echo "You have to provide an argument"
    exit 2
fi

# rewrite argument in lowercase
TEXT=$(echo $1 | tr "[:upper:]" "[:lower:]")

# evaluate arguments
case $TEXT in
    yes)
        echo "that's nice"
        ;;
    no)
        echo "I'm sorry to hear that"
        ;;
    *)
        echo "unknown argument provided"
        ;;
esac
