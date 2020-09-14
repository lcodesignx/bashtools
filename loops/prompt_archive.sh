#!/bin/bash

# Script prompts user for name to archive
read -p "Enter a user name: " USER
echo "Archiving user: $USER"

# Lock the account
passwd -l $USER

# Create an archive of the home directory
tar cf /archives/${USER}.tar.gz /home/${USER}

# Removing the user account from system
echo "Removing ${USER} from system"
userdel -r ${USER}
