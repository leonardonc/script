#!/bin/bash

echo -e "___Questão 02 da lista 02___\n\n"

read -p "Digite o primeiro caminho de diretório: " a

read -p "Digite o segundo caminho de diretório: " b

read -p "Digite o terceiro caminho de diretório: " c


echo "os aquivos do primeiro diretório são: "

ls $a

echo "os arquivos do segundo diretório são: "

ls $b

echo "os arquivos do terceiro diretório são: "

ls $c


echo -e "\n\n___FIM___"
