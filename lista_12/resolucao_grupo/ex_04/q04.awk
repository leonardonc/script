
{
if ($1 in nome)
	total[$1]=total[$1]+$3
else
{	total[$1]=$3
	nome[$1]=$1
}
}

END{
	for (i in nome)
		print i,total[i]
}
