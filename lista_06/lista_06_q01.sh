#!/bin/bash

#questão 01 da lista 06 (imprimir os números pares)

a=$1
b=$2

echo -e "Os pares são: \n"

for (( i=${a}; i<=${b}; i++ )) do
	x=$(bc <<< "${i}%2")
	#echo "${x}"
	(( ${x}==0 )) && echo "O número ${i} é par"

	#if (( ${x}==0 )); #tentativa de fazer com if
	#then
	#	echo "O número ${i} é par"
	#fi
done

echo -e "\nfim"
