#!/bin/bash

echo -e "script para excluir arquivos com permissão de escrita - cuidado!\n"

for x in $(ls); do
	if test -x $x; then
		echo -e "\nO arquivo $x será excluído"
		read -p "confirmar? (YES||NO) " p
		if [ "$p" = "yes" ]; then
			rm -fr $x
		else
			echo "arquivo não excluído"
		fi
	fi
done
