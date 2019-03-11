#!/bin/sh

function notify {
	from=`formail -X From: < $1`
	sub=`formail -X Subject: < $1`

	from=${from//</\(}
	from=${from//>/\)}
	from=${from//&/\.}
	sub=${sub//</\(}
	sub=${sub//>/\)}
	sub=${sub//&/\.}

	sub=${sub:0:200}
	from=${from:0:75}

	/usr/bin/notify-send -u normal "$from" "$sub"
}

/usr/bin/notify-send -u low "System" "Listening for emails"

for mail_dir in $HOME/.mails/*/INBOX/new/
do
	echo "Watching $mail_dir"
	while mail_name=$(/usr/bin/inotifywait -q -e create -e moved_to --format '%f' "$mail_dir")
	do
		notify "$mail_dir/$mail_name"
	done&
done
