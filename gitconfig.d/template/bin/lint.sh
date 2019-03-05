#!/bin/sh

usage() {
	echo "Usage: $0 -e EXTENSION LINTER" 1>&2
}

exit_abnormal() {
	usage
	exit 1
}

options=$(getopt -l "extension:" -o "+e:" -a -- "$@")
eval set -- "$options"
while true
do
	case $1 in
		-e|--extension)
			shift
			export extension=$1
			;;
		--)
			shift
			break;;
	esac
	shift
done

if [ -z "$extension" ]
then
	exit_abnormal
fi

git diff --cached --name-status | grep ".$extension$" | sed 's/^\w\s//' | while read -r file
do
	staged_file=$(mktemp --suffix=-STAGED)
	git show ":$file" > "$staged_file"
	tmp_file=$(mktemp --suffix=-FIXED)
	cat "$staged_file" > "$tmp_file"

	$@ "$tmp_file" >> /dev/null
	if [ $? -ne 0 ]
	then
		echo "A problem occured"
		exit 1
	fi

	diff -u "$staged_file" "$tmp_file"
	if [ $? -eq 1 ]
	then
		echo "Correct this with:"
		echo "diff -u \"$staged_file\" \"$tmp_file\" | patch \"$file\""
		exit 1
	fi
done

