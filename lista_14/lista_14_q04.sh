#!/bin/bash

read -p "Informe o nome do arquivo: " arq

l=$(wc -l $arq | awk '{print $1}')

#FOR para preencher o vetor com cada linha do arquivo
for ((i=1;i<=$l;i++ )); do
	linha=$(awk "NR==$i" $arq)
	VET[$i]="$linha"
done

#FOR para contar as palavras de cada linha
for ((j=1;j<=$l;j++ )); do
	cont=$(echo ${VET[$j]} | wc -w)
	echo ${VET[$j]} | cut -d " " -f1 > tmp		#imprime a primeira palavra
	for ((k=2;k<$cont;k++)); do			#FOR para imprimir o primeiro caractere da segunda a penúltima palavras
		echo ${VET[$j]} | cut -d " " -f$k | cut -c 1 | tr '\n' '. \n' >> tmp
	done
	echo ${VET[$j]} | cut -d " " -f$cont >> tmp	#imprime a última palavra
	cat tmp | sed -E 's/[[:punct:]]/. /g' | xargs
done
rm tmp
