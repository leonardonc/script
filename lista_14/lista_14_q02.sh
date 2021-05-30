#!/bin/bash


declare -A VETOR #declarando array associativo

read -p "Digite o nome do arquivo: " arq

l=$(wc -l q2 | awk '{print $1}') #num de linhas do arquivo


#preenchendo o vetor com as chaves/nomes econtrados na primeira coluna do arquivo
for ((i=1;i<=$l;i++)); do
	nome=$(awk '{print $1}' $arq | xargs | cut -d " " -f$i)
	VETOR["$nome"]="0"
done


#primeiro FOR varre o VETOR atribuindo a chave a $j
#segundo FOR captura os nomes um por um e armazena na variável $nome
#o IF compara a chave, $j, com o nome, $nome, e faz a soma

for j in ${!VETOR[*]}; do
	for (( k=1;k<=$l;k++ )); do
		nome=$(awk '{print $1}' $arq | xargs | cut -d " " -f$k)
		if [ "$j" == "$nome" ]; then
			nota=$(awk '{print $2}' $arq | xargs | cut -d " " -f$k)
			VETOR[$j]=$(bc <<< "${VETOR[$j]}+$nota")
		fi
	done
done


#esse FOR imprime o resultado
for k in ${!VETOR[*]}; do
	echo $k " tem a ponturação de: " ${VETOR[$k]};
done



