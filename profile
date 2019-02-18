#!/bin/bash

if [ -x "/usr/bin/gnome-keyring-daemon" ]; then
	eval $(/usr/bin/gnome-keyring-daemon --start)
	export SSH_AUTH_SOCK
fi

# Define LS_COLOR
eval $(dircolors)
