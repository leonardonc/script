#!/bin/bash

#a partir de um dado arquivo (q10) crair uma lista com os nomes de usuários no formato 'ThiagoGdS'

read -p "Digite o nome do arquivo: " arq

cont=$(wc -l $arq | awk '{print $1}')

for ((i=1;i<=$cont;i=$i+5))do
	cat $arq | awk "NR==$i" >> tmp			#criei um arquivo somente com os nomes
done

cont_lin=$(cat tmp | wc -l)				#contei a quantidade de linhas

for ((i=1;i<=$cont_lin;i++))do
	cont_plv=$(cat tmp | awk "NR==$i" | wc -w)		#contei a quantidade palavras em cada linha
	cat tmp | awk "NR==$i" | awk '{print $1}' > tmp$i	#armazenei a primeira palavra da linha num arquivo 
	for ((j=2;j<=$cont_plv;j++))do
		cat tmp | awk "NR==$i" | cut -d " " -f$j | cut -b 1 >> tmp$i	#adicionei a primeira letra das demais palavras no arquivo
	done
	cat tmp$i | xargs | sed 's/ //g' >> lista		#tranformei de coluna para linha e removi os espaços
done

echo -e "\nA lista de nomes de usuários é: "
cat lista

rm lista
rm tmp tmp1 tmp2 tmp3 tmp4
