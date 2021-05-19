#!/bin/bash

#resolução da lista de awk, questão 2, separar em arquivos diferentes os rankings

#usar o arquivo 'q2' como entrada

read -p "Digite o nome do arquivo: " arq
awk '{print $1" "$2}' < $arq > meninos		#usando o awk para imprimir os campos 1 e 2
awk '{print $3" "$4}' < $arq > meninas		#imprimindo os campos 3 e 4

echo -e "\n"
cat meninos

echo -e "\n"
cat meninas

rm meninos meninas
