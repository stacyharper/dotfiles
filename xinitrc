#!/bin/sh

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.Xresources ] && xrdb ~/.Xresources

session=${1:-i3}

case $session in
	i3|i3wm           ) exec i3;;
	kodi              ) exec kodi;;
	kde               ) exec startkde;;
	xfce|xfce4        ) exec startxfce4;;

	# No known session, try to run it as command
	*                 ) exec $1;;
esac
