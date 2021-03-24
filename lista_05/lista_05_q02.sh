#!/bin/bash

echo "resolução da questão 02\n"

a=$1
b=$2
c=$3

ls ${a} &> /dev/null && echo "o arquivo ${a} existe" || echo "o arquivo ${a} não existe"
ls ${b} &> /dev/null && echo "o arquivo ${b} existe" || echo "o arquivo ${b} não existe"
ls ${c} &> /dev/null && echo "o arquivo ${c} existe" || echo "o arquivo ${c} não existe"




echo "fim"
