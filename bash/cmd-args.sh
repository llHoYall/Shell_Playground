#!/bin/bash

# Global Variables ------------------------------------------------------------#
flag_a=0
separator=""

# Parse command line arguments ------------------------------------------------#
while getopts "ab:" option
do
	case $option in
		a)
			flag_a=1
			;;
		b)
			separator="$OPTARG"
			;;
		\?)
			echo "Usage: command-arguments.sh [-a] [-b seperator] <target_dir>" 1>&2
			exit 1
			;;
	esac
done

shift $(expr $OPTIND - 1)
path="$1"

# Process argument ------------------------------------------------------------#
# argument 'a'
if [ $flag_a -eq 1 ]; then
	ls -a -- "$path"
else
	ls -- "$path"
fi

# argument 'b'
if [ -n "$separator" ]; then
	echo "$separator"
fi
