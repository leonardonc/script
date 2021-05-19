BEGIN { cont1=0 }

{
	cont1=cont1 + $1
}

END{print cont1	}

