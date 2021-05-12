#!/bin/bash

#scrip para ...

case $1 in
	"a") read -p "Digite o nome do arquivo para remover todas as letras: " arq
		sed -E 's/[a-zA-Z]//g' < $arq	;;
	"b") read -p "Digite o nome do arquivo para remover todos os dígitos: " arq
		sed -E 's/\b[0-9]\b//g' < $arq	;;
	"c") read -p "Digite o nome do arquivo para substituir os caracteres que não são letras nem dígitos por <?>: " arq
		cat $arq | sed -E -e 's/[[:punct:]]/<?>/g' -e 's/\b[[:digit:]]\b/<?>/g';;
esac

