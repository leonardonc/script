#!/bin/bash



#resolução da questão 02


read -p "Digite a base: " a
read -p "Digite a expressão que deseja resolver: " b

bc <<< "obase=${a};${b}"

echo "Fim"
