#!/bin/bash

UPATH="/home/$1"

mkdir $UPATH; chown $1:users $UPATH; chmod 700 $UPATH
