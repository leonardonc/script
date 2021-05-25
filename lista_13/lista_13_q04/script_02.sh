#!/bin/bash

#função que remove os dígitos do arquivo

func_b(){
	read -p "Informe o nome do arquivo: " arq
	sed -E 's/[[:digit:]]//g' < $arq
}
