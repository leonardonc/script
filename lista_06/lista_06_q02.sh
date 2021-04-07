#!/bin/bash

# script para calcular e exibir a soma de todos os números entre dois num fornecidos

read -p "Digite dois números: " a b

soma=0

for ((i=${a}; i<=${b}; i++)) do
	#echo "${i}"
	soma=$(( $soma+$i))
done

echo "O resultado da soma é: ${soma}"
