#!/bin/bash

main() {
	local i
	echo -n "$$" > /tmp/deamon.pid

	for ((i=0;i<10;i++)); do
		echo "${i}: $0 $@"

		sleep 1
	done
}

main "$@"

