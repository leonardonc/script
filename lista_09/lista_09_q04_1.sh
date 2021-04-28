#!/bin/bash

#utilizei o comando 'ipcalc' o qual foi necessário instalar

#se não for aceito, por getileza, olhar o arquivo lista_09_04_2.sh onde a questão é resolvida de outra maneira.

read -p "Digite um endereço IP: " ip

oct_1=$(echo $ip | cut -d '.' -f1)
oct_2=$(echo $ip | cut -d '.' -f2)
oct_3=$(echo $ip | cut -d '.' -f3)
oct_4=$(echo $ip | cut -d '.' -f4)

ipcalc $ip | head -1 | tr -s ' ' | tr ' ' '.' > temp.txt

bin1=$(cat temp.txt | cut -d '.' -f6)
bin2=$(cat temp.txt | cut -d '.' -f7)
bin3=$(cat temp.txt | cut -d '.' -f8)
bin4=$(cat temp.txt | cut -d '.' -f10)


echo "Octeto #1: $oct_1 em binário $bin1"
echo "Octeto #2: $oct_2 em binário $bin2"
echo "Octeto #3: $oct_3 em binário $bin3"
echo "Octeto #4: $oct_4 em binário $bin4"

rm temp.txt
