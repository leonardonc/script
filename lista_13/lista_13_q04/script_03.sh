#!/bin/bash

#função para substituir os caracteres que não são letras nem dígitos por <?>

func_c(){
	read -p "Informe o nome do arquivo: " arq
	awk '[[:digits:]]{}'
}
