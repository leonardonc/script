#!/bin/bash


#resolução da questão 01

if [ "$1" = "logica" -o "$2" = "logica" -o "$3" = "logica" -o "$4" = "logica" -o "$5" = "logica" 2> /dev/null ];then
	echo -e "\n\nAjuda sobre os parâmetros LÓGICOS do comando 'test':"
	echo "'      ! EXPRESSION        ' - expressão falsa "
	echo "'EXPRESSION1 -a EXPRESSION2' - ambas expressões são verdadeiras"
	echo -e "'EXPRESSION1 -o EXPRESSION2' - qualquer expressão é verdadeira\n\n"
fi



if [ "$1" = "aritmetica" -o "$2" = "aritmetica" -o "$3" = "aritmetica" -o "$4" = "aritmetica" -o "$5" = "aritmetica" 2> /dev/null ];then

	echo -e "\nAjuda sobre os parâmetros ARITMÉTICOS do comando 'test':"
	man test | grep "INTEGER1"
fi



if [ "$1" = "strings" -o "$2" = "strings" -o "$3" = "strings" -o "$4" = "strings" -o "$5" = "strings" 2> /dev/null ];then

	echo -e "\nAjuda sobre os parâmetros para STRINGS do comando 'test':"
	man test | grep "STRING1"
fi



if [ "$1" = "variaveis" -o "$2" = "variaveis" -o "$3" = "variaveis" -o "$4" = "variaveis" -o "$5" = "variaveis" 2> /dev/null ];then

	echo -e "\nAjuda sobre os parâmetros para VARIÁVEIS do comando 'test':"
	man test | grep -w "STRING"
fi



if [ "$1" = "arquivos" -o "$2" = "arquivos" -o "$3" = "arquivos" -o "$4" = "arquivos" -o "$5" = "arquivos" 2> /dev/null ];then

	echo -e "\nAjuda sobre os parâmetros para ARQUIVOS do comando 'test':"
	man test | grep -w "FILE"
fi

