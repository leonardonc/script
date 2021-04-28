#!/bin/bash

#resolução da questão 1, script p/ imprimir uma linha específica de um dado arquivo

a=$1
n=$2

if test -f $a;then
	num=$(wc -l $a | cut -d ' ' -f1)
	if (($(wc -l $a | cut -d ' ' -f1) >= $n));then
		cat $a | head -$n | tail -1
	else
	       	echo "Falha: o arquivo $a possui apenas $num linhas"
	fi
else
	echo "Erro, o arquivo não existe"
fi
