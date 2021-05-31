#!/bin/bash

declare VET

read -p "Digite o nome do arquivo: " arq

l=$(wc -l $arq | awk '{print $1}')

maior=0

for (( i=1;i<=$l;i++  )); do
	linha=$(awk "NR==$i" $arq)
	VET[$i]="$linha"
	qtd=$(echo ${VET[$i]} | wc -w)
	#echo ${VET[$i]} ": tem $qtd palavras"
	if (($qtd > $maior));then
		maior=$qtd
	fi
done

menor=$maior

for (( j=1;j<=$l;j++ )); do
	qtd=$(echo ${VET[$j]} | wc -w)
	if (($qtd < $menor));then
		menor=$qtd
		chave=$j
	fi
done

echo -e "\nOs nomes têm a menor quantidade de palavras são:"

for (( k=1;k<=$l;k++));do
	qtd=$(echo ${VET[$k]} | wc -w)
	if (($qtd == $menor));then
		echo ${VET[$k]}
	fi
done
