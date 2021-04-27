#!/bin/bash

read -p "Digite o nome do arquivo: " arq

cat $arq | tr -d '\n'

echo -e "\n"
