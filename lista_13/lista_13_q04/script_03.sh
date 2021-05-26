#!/bin/bash

#função para substituir os caracteres que não são letras nem dígitos por <?>

func_c(){
	read -p "Informe o arquivo para substituir os caracteres que não são letras nem dígitos por <?>: " arq
	awk '{gsub("[[:punct:]]","<?>"); print $0}' $arq
}
