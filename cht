#!/usr/bin/env bash

#languages=`echo "python cpp c" | tr ' ' '\n'`
languages=$(cat ~/Documents/languages)
core_utils=$(cat ~/Documents/coreutils)

selected=`printf "$languages\n$core_utils\n" | fzf`
read -p 'query: ' query

if printf $languages | grep -qs $selected
then
    tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
else
    tmux neww bash -c "curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done"
fi
