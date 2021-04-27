#!/bin/bash


read -p "digite o nome do arquivo: " arq

qtd_lin=$(wc -l $arq | cut -d ' ' -f1)

repete=$(($qtd_lin / 3))

lin=3

if (($qtd_lin % 3 == 0)); then
	echo "A quantidade de exibição é: $repete"
	for ((i=1;i<=$repete;i++));do
		read -p "Pressione enter para exibir o arquivo por grupo de 3 linhas"
		echo "exibição $i: "
		cat $arq | head -$lin | tail -3
		lin=$(($lin+3))
	done
fi

if (($qtd_lin % 3 != 0));then
	echo "A quantidade de exibição é: $(($repete+1))"
	fim=$(($qtd_lin % 3))
	for ((i=1;i<=$repete;i++))do
		read -p "Pressione enter para exibir o arquivo por grupo de 3 linhas"
		echo "exibição $i"
		cat $arq | head -$lin | tail -3
		lin=$(($lin+3))
	done
	read -p "Pressione enter para exibir o arquivo por grupo de 3 linhas"
	echo "exibição $(($repete+1))"
	cat $arq | head -$qtd_lin | tail -$fim
fi
