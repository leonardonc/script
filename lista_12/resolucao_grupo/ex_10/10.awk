BEGIN{

cont=1	

}

{
if (NR==cont)
	{printf $1
	 for (i=2; i<=NF; i++) printf substr($i, 1, 1)
	 printf "\n"
	 cont = cont+5
	}
}
