#!/bin/bash

echo -e "Resolução da questão 1 \n"

read -p "Digite dois números inteiros separados por espaço: " a b

(( ${a} > ${b} )) && echo "o menor é: ${b}" || echo "o menor é: ${a}"


echo "fim"
