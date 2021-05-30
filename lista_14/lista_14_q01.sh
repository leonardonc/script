#!/bin/bash

#dizer o maior número dado pelo usário

read -p "Digite números separados por espaço: " A

maior_do_array() {
	for i in ${A[*]}; do	
		if [[ $i > $maior ]] ; then
			maior=$i
		fi
	done
}

maior_do_array

echo "O maior número é: " $maior

