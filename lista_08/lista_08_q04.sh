#!/bin/bash

cont=0

while read a; do
	if ping -c 4 $a; then
		echo "SUCESSO"
	else
		VETOR[$cont]=$a
		cont=$(($cont+1))
	fi
done < ips.txt

echo -e "\nLista de IPs inacessíveis: "
for ((i=0; i<$cont; i++)); do
	echo ${VETOR[$i]}
done



