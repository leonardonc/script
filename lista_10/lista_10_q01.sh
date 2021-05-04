#!/bin/bash

#script para listar segundo argumentos de linha de comando

case $1 in
	"a") echo "Listagem dos diretórios da pasta atual:"
		ls -al | grep ^d | tr -s ' ' | cut -d ' ' -f9;;
	
	"b") echo "Listagem dos arquivos executaveis:"
		for x in $(ls -l | grep ^-);do
	    		if test -x $x; then
				echo $x
			fi
		done ;;

	"c") echo "Listagem dos scripts shell:"
		ls -l | grep [.][s][h]$ | tr -s ' ' | cut -d ' ' -f9;;

	"d") echo "Listagem dos links simbólicos:"
		ls -l | grep ^l | tr -s ' ' | cut -d ' ' -f'9-11';;

	"e") echo "Listagem dos arquivos com tamanho menor que 100 bytes:"
		ls -l | tr -s ' ' | cut -d ' ' -f'5,9' | grep -E '\b^[0-9]{1,2}\b' 		;;
esac

