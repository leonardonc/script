#!/bin/bash


#script para verificar o padrão de e-mail.

read -p "Digite o endereço de e-mail: " e

if echo $e | grep -Eq '^([a-z0-9]+)\@([a-z0-9]+)?$'; then
	echo "Padrão correto"
else
	echo "Errado"
fi

