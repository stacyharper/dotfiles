#!/bin/bash

declare -A commands

while [[ $# > 1 ]]
do
	commands[$1]="$2"
	shift
	shift
done

dmenu_command="/usr/bin/dmenu -nf '{{@@ foreground @@}}' -nb '{{@@ background @@}}' -sb '{{@@ focused_bg @@}}' -sf '{{@@ focused_fg @@}}' -fn '{{@@ font_name @@}}-{{@@ font_size @@}}'"
[ ! -z "$1" ] && export dmenu_command=$(printf '%s -p "%s"' "$dmenu_command" "$1")

selected=$(for label in "${!commands[@]}"; do echo "$label"; done | eval "$dmenu_command")
if [ ! -z "$selected" ] && [ ! -z "${commands[$selected]}" ]
then
	exec ${commands[$selected]}
fi
