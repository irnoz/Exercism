#!/usr/bin/bash

get_name() {
	if [ -z "$1" ]; then
		echo "you"
	else 
		echo "$1"
	fi
}

main() {
	local name=$(get_name "$1")
	echo "One for $name, one for me."
}

main "$@"
