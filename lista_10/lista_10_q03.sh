#!/bin/bash


#script para checar senha

cont=0

while (($cont!=3)); do
	
	read -p "Digite uma senha: " s

	if echo $s | grep -Eq --color '[a-z]';then
		cont=$(($cont+1))
	fi

	if echo $s | grep -Eq --color '[A-Z]';then
		cont=$(($cont+1))
	fi

	if echo $s | grep -Eq --color '[0-9]';then
		cont=$(($cont+1))
	fi

	if (($cont == 3)); then
		echo "SUCESSO | Senha obedece ao padrão"
	else
		echo "ATENÇÃO | Tente outra senha"
		cont=0
	fi
done

#echo $cont

