#!/bin/bash

echo -e "resolução da questão 4\n"

a=$1
b=$2

qtd1=$(ls ${a} | wc -l)
qtd2=$(ls ${b} | wc -l)

(( ${qtd1} > ${qtd2} )) && echo -e "o diretório ${a} tem mais arquivos:\n $(ls ${a})" || echo -e "o diretório ${b} tem mais arquivos:\n $(ls ${b})"




