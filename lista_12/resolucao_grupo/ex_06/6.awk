BEGIN {print "Alunos Aprovados:"}

{
	contador = 0;
	k=0
	n=0
	
	for ( i=1; i<=NF; i++ )
	{
		if ( $i ~ /[0-9]+/ ) contador = contador+$i;
		else {nome[k] = $i; k++}
		
	}
	if (contador/3 >= 70 )
	{	for (i=0; i<k; i++)
			printf nome[i]" "
		print _
	}
}
