#!/bin/bash

#script que remote linhas vazias com o comando sed


read -p "Digite o nome do arquivo:" arq

sed -n /./p < $arq 

