#!/bin/sh

filename="$(xdg-user-dir PICTURES)/Screenshots/$(date +%Y-%m-%d-%k-%M-%S).png"

if [ "$DESKTOP_SESSION" == "sway" ]
then
	grim -g "$(slurp)" "$filename" && wl-copy < "$filename"
	exit $?
fi

scrot -s "$filename" && xclip "$filename"
exit $?
