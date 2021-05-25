#!/bin/bash

source lista_13_q01.sh

read -p "Digite o nome do arquivo: " arq

cat $arq | xargs > tmp
cont=$(wc -w tmp | awk '{print $1}')
maior=0

for ((i=1;i<=$cont;i++)); do
	l=$(cut -d " " -f$i < tmp 2> /dev/null)	
	func_maior $l $maior 2> /dev/null
	if (( $result_1 > $maior )); then
		maior=$result_1
	fi
done

menor=$maior

for ((i=1;i<=$cont;i++)); do
	l=$(cut -d " " -f$i < tmp 2> /dev/null)	
	func_menor $l $menor 2> /dev/null
	if (( $result_2 < $menor )); then
		menor=$result_2
	fi
done

rm tmp

echo "O maior número do arquivo é $maior"
echo "O menor número do arquivo é $menor"
