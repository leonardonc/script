#!/bin/bash



#resolução da questão 04 


for x in ${*}
do
	
	ls $x &> /dev/null && echo -e "$x SIM\n" || echo -e "$x NAO\n"
	
done
