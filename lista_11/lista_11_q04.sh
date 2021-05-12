#!/bin/bash

#script para mudar formato do num de tel com 11 digitos

read -p "Digite o nome do arquivo que contém a lista de telefones no formato 'xxxxxxxxxxxx': " arq

sed -E 's/([0-9]{2})([0-9]{1})([0-9]{4})([0-9]{4})/(\1) \2 \3-\4/g' < $arq
