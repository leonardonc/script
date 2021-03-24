#!/bin/bash

echo -e "resolução da questão 05 \n"

a=$1

ls ${a} &> /dev/null && qtd=$(wc -l ${a} | cut -d ' ' -f1)

ls ${a} &> /dev/null && (( $qtd >= 5 )) || echo "BAD"

echo "fim"
