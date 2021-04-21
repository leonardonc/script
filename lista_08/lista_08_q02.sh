#!/bin/bash


while true; do
	ls /tmp/chave.txt &> /dev/null
	if (( $? > 0 )); then
		echo "a data é: $(date +%d.%m.%y) , a hora é: $(date "+%H:%M:%S")"
		#date "+%H:%M:%S"
		sleep 2
	else
		break
	fi
done

