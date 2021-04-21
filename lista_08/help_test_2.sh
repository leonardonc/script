#!/bin/bash


echo "Escolha uma das opções ou digite 'Sair' para sair"

read -p "Digite a sua opção (logica|aritmetica|strings|variaveis|arquivos|extended): " opc

while [ "$opc" != "sair" ];do
	case $opc in
		"logica")     echo -e "\nParâmetros LÓGICOS do comando test: "
			      echo " ! EXPRESSION - expressão falsa"
			      echo "   EXPRESSION1 -a EXPRESSION2 - ambas expressões são verdadeiras"
			      echo "   EXPRESSION1 -o EXPRESSION2 - qualquer expressão é verdadeira";;
			      
		"aritmetica") echo -e "\nParâmetros ARITMÉTICOS do comando test: "
		       	      echo " INTEIRO1 -eq INTEIRO2 - Inteiro 1 é igual ao inteiro 2"
		       	      echo " INTEIRO1 -ge INTEIRO2 - Inteiro 1 é maior ou igual ao inteiro 2"
		       	      echo " INTEIRO1 -gt INTEIRO2 - Inteiro 1 é maior que o inteiro 2"
		       	      echo " INTEIRO1 -le INTEIRO2 - Inteiro 1 é menor ou igual ao inteiro 2"
		       	      echo " INTEIRO1 -lt INTEIRO2 - Inteiro 1 é menor que o inteiro 2"
		       	      echo " INTEIRO1 -ne INTEIRO2 - Inteiro 1 não é igual ao inteiro 2";;

		"strings")    echo -e "\nParâmetros para STRINGS do comando test:"
		       	      echo "STRING 1 = STRING2 -  as strings são iguais"
		              echo "STRING 1 != STRING2 - as strings não são iguais" ;;

		"variaveis")  echo -e "\nParâmetros para VARIÁVEIS do comando test:"
			      echo "-n STRING - o comprimento da string é diferente de zero"
			      echo "-z STRING - o comprimento da string é zero" ;;

		"arquivos")   echo -e "\nParâmetros para ARQUIVOS do comando test:"
		              echo "-f FILE - saber se arquivo existe e é um arquivo regular"
		              echo "-e FILE - saber se o arquivo existe"
		              echo "-d FILE - saber se é um diretório"
			      echo " Para saber mais parâmetros sobre arquivos, consulte o manuel do comando 'test' (man test)"     ;;

		"extended")   echo "Ajuda Extended [[ ]]:"
		       	      echo "O uso da notação estendida serve para evitar erros ao comparar variáveis as quais não se sabe o conteúdo. Por exemplo: duas variáveis,'a' e 'b' são strings, logo se forem comparadas com colchetes simples, sem identificá-las como strings usandos aspas duplas, ocorrerá erro. Outro exemplo é quando a variavél recebe uma string com espaço em branco, que da mesma forma anterior, ocorrerá erro se não comparada com colchetes duplos."
		              echo ' a="abc"; b="xyz" ; [$a = $b ] ' "Haverá erro"
			      echo ' a="abc"; b="xyz" ; [[$a = $b]]' "Não haverá erro"	      ;;

		*)            echo "opção inválida" ;;
	esac
	echo -e "\n"
	read -p "Digite a sua opção (logica|aritmetica|strings|variaveis|arquivos|extended): " opc

done

