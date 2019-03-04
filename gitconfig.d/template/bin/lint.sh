#!/bin/sh

usage() {
	echo "Usage: $0 [ -o OUTPUT ] -p PERSON -a ACTION -f FEELINGS -n NEEDS" 1>&2
}

exit_abnormal() {
	usage
	exit 1
}

while getopts "e:l:r:o:" options; do
	case "${options}" in
		e)
			extension=${OPTARG}
			;;
		l)
			linter=${OPTARG}
			;;
		o)
			linter_options=${OPTARG}
			;;
		r)
			linter_dry_run=${OPTARG}
			;;
		:)
			echo "Error: -${OPTARG} requires an argument."
			exit_abnormal
			;;
		*)
			exit_abnormal
			;;
	esac
done


if [ -z "$extension" ] || [ -z "$linter" ]
then
	exit_abnormal
fi

[ -z "$linter_dry_run" ] && linter_dry_run=$linter

git diff --cached --name-status | grep ".$extension$" | sed 's/^\w\s//' | while read -r file
do
	tmp_file=$(mktemp)
	git show ":$file" > "$tmp_file"

	$linter $linter_options $linter_dry_run "$tmp_file" >> /dev/null 2>&1

	if [ $? -ne 0 ]
	then
		$linter $linter_options "$tmp_file" >> /dev/null 2>&1
		diff -u "$file" "$tmp_file"
		exit 1
	fi
done

