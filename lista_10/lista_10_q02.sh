#!/bin/bash


echo -e "Script para remover linhas vázias com o grep.\n"

read -p "Digite o nome do arquivo: " arq

cat $arq | grep -E '^.'
