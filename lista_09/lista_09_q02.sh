#!/bin/bash

#resolução da questão 2, script para remover linhas vazias

read -p "Digite o nome do arquivo: " arq

cat $arq | tr -d '\n'

echo -e "\n"
