#!/usr/bin/bash

if [[ $USER != "root" ]]; then
	echo "error: this script must be run as root"
	exit 1
fi

rm -f /usr/bin/mksite
rm -rf /usr/share/mksite.d
