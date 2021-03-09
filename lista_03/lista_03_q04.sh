#!/bin/bash

a=$1
b=$2
c=$3

qtd_1=$(wc -l ${a} | cut -d ' ' -f1)
qtd_2=$(wc -l ${b} | cut -d ' ' -f1)
qtd_3=$(wc -l ${c} | cut -d ' ' -f1)

soma=$(($qtd_1+$qtd_2+$qtd_3))

echo "A soma da quantidade de linhas dos arquivos é: ${soma}"

echo "Fim"
