#!/bin/bash

#script para listar em ordem de quantidade de linhas os aquivos do diretório

a=$1

for x in $(ls $a)
do

	wc -l $x | sort -r

done

