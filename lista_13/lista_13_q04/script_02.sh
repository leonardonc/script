#!/bin/bash

#função que remove os dígitos do arquivo

func_b(){
	read -p "Informe o nome do arquivo para remover os dígitos: " arq
	sed -E 's/[[:digit:]]//g' < $arq
}
