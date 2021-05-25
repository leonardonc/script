#!/bin/bash

#script para pigar usando função


ping_test(){
	ping -c 2 $1 &> /dev/null
	if (( $? == 0 )); then
		echo "OK"
	else
		echo "FALHA"
	fi
}



read -p "Digite um endereço de IP: " ip


ping_test $ip
