#!/bin/bash


#questão 2

if test ! $x; then
	read -p "Não existe. Digite um valor para essa variável X: " x
else
	echo "A variável X existe e o valor é $x"
fi


if test ! $y; then
	read -p "Não existe. Digite um valor para essa variável Y: " y
else
	echo "A variável Y existe e o valor é $y"
fi


if test ! $z; then
	read -p "Não existe. Digite um valor para essa variável Z: " z	
else
	echo "A variável Z existe e o valor é $z"
fi

echo "A soma das variáveis é: $((x + y + z))"
