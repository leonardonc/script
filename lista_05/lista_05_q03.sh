#!/bin/bash

echo "resolução da questão 3"

read -p "Digite dois nomes de arquivos separados por espaço: " a b

ls ${a} &> /dev/null && qtd1=$(wc -l ${a} | cut -d ' ' -f1) || echo "${a} não é arquivo"

ls ${b} &> /dev/null && qtd2=$(wc -l ${b} | cut -d ' ' -f1) || echo "${b} não é arquivo"

(( ${qtd1} > ${qtd2} ))2> /dev/null && echo "o arquivo ${a} tem mais linhas (${qtd1})" 2> /dev/null || echo "o arquivo ${b} tem mais linhas (${qtd2})" 2> /dev/null


echo "fim"
