#!/bin/sh

program_installed() {
	type "$1" > /dev/null
	if [ $? -ne 0 ]
	then
		notify-send -u critical "$1 is not installed"
		exit 1
	fi
}

program_installed xdg-user-dir
filename="$(xdg-user-dir PICTURES)/Screenshots/$(date '+%Y-%m-%d-%H-%M-%S').png"
mkdir -p $(dirname "$filename")

if [ "$XDG_SESSION_TYPE" == "wayland" ]
then
	program_installed grim
	program_installed slurp
	program_installed wl-copy

	grim -g "$(slurp)" "$filename" && wl-copy < "$filename"
	returned=$?
	[ $returned -eq 0 ] && echo "$filename"
	exit $returned
fi

program_installed scrot
program_installed xclip

scrot -s "$filename" && xclip "$filename"
returned=$?
[ $returned -eq 0 ] && echo "$filename"
exit $returned
