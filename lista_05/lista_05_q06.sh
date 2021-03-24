#!/bin/bash


echo -e "resolução da questão 6\n"

read -p "digite dois números com casas decimais, os números devem ser separados por espaço: " a b

if [ 1 -eq "$(echo "${a} > ${b}" | bc -l)" ]
then
	echo "${b}"
else
	echo "${a}"
fi


#(( bc <<< ${a} > ${b} )) && echo "${b}" || echo "${a}"
