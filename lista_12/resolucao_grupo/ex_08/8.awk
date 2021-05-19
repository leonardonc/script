#Melhore o script da questão anterior para que além do número de aprovados e reprovados, seja exibido um histograma das médias, isto é, o número de médias entre 0 e 9.9999, o número de médias entre 10 e 1.9999, ...., o número de médias entre 8 e 9.99999 e o número de médias entre 9 e 10.

BEGIN {printf "Histograma das Médias\n"}

{
        contador = 0;
	
	for ( i=1; i<=NF; i++ )
		if ( $i ~ /[0-9]+/ ) contador = contador+$i;
        
	media=contador/3
	if (media >= 0 && media < 10) media1++
	else if (media >=10 && media<20) media2++
	else if (media >=20 && media<30) media3++	
        else if (media >=30 && media<40) media4++
	else if (media >=40 && media<50) media5++
	else if (media >=50 && media<60) media6++
	else if (media >=60 && media<70) media7++
	else if (media >=70 && media<80) media8++
	else if (media >=80 && media<90) media9++
	else (media10++)
	
	if (media >= 70 ) apr++ 
	else rep++
               
}
END {
	printf "\n  MÉDIA    QTDE\n\n"
	print " 0 - 9,9   ",	media1
	print "10 - 19,9  ",	media2
	print "20 - 29,9  ",	media3
	print "30 - 39,9  ",	media4
	print "40 - 49,9  ",	media5
	print "50 - 59,9  ",	media6
	print "60 - 69,9  ",	media7
	print "70 - 79,9  ",	media8
	print "80 - 89,9  ",	media9
	print "90 - 100   ",	media10
	printf "\n"
	print "Aprovados =",apr
	print "Reprovados = ",rep
}
