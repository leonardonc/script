#!/bin/bash

#script que pede dois números e retorna o maior deles, usando função

func_maior(){
	if (($1 > $2)) ; then
		result_1=$1
	else
		result_1=$2
	fi
	#echo "o maior é: $result_1"
}

func_menor(){
	if (($1 > $2)) ; then
		result_2=$2
	else
		result_2=$1
	fi
}

read -p "Digite dois números: " a b

func_maior $a $b
echo "O maior é: $result_1"
func_menor $a $b
echo "o menor é: $result_2"

