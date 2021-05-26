#!/bin/bash

# func que remove letras maiúsculas do arq

func_a(){
	read -p "Informe o nome do arquivo para remover as letras maiúsculas: " arq
	tr -d '/[A-Z]/' < $arq
}
