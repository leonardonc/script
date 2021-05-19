#!/bin/bash

#scrip para mostrar o terceiro campo das linhas e somá-los caso o primeiro seja igual
#esse script depende do script 'script.awk'

read -p "Digite o nome do arquivo: " arq

read -p "Digite o nome do usuário: " user

awk '/'$user'/{print $3}' < $arq > tmp	#o nome do usuário é condição para imprimir o campo 3 num arquivo


qtd=$(awk -f script.awk < tmp)		#usei o script awk para somar a coluna

echo "O total baixado pelo usuário $user é: $qtd"

rm tmp
