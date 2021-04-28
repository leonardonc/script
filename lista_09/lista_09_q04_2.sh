#!/bin/bash

#resolução da questão 4 utilizando apenas comandos econtrados no bash
#script para mostrar em binário um endereço IP

read -p "Digite um endereço IP: " ip

oct_1=$(echo $ip | cut -d '.' -f1)
oct_2=$(echo $ip | cut -d '.' -f2)
oct_3=$(echo $ip | cut -d '.' -f3)
oct_4=$(echo $ip | cut -d '.' -f4)

bin1=$(echo "obase=2;$oct_1"|bc)
bin2=$(echo "obase=2;$oct_2"|bc)
bin3=$(echo "obase=2;$oct_3"|bc)
bin4=$(echo "obase=2;$oct_4"|bc)


echo "Octeto #1: $oct_1 em binário $bin1"
echo "Octeto #2: $oct_2 em binário $bin2"
echo "Octeto #3: $oct_3 em binário $bin3"
echo "Octeto #4: $oct_4 em binário $bin4"

