#!/bin/sh

/usr/bin/notify-send -u low "System" "Listening for emails"

for mail_dir in $HOME/.mails/*/*/new/
do
	echo "Watching $mail_dir"
	while mail_name=$(/usr/bin/inotifywait -q -e create -e moved_to --format '%f' "$mail_dir")
	do
		$HOME/bin/notify-email.sh "$mail_dir/$mail_name"
	done&
done
