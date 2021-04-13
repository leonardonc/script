#!/bin/bash

echo -e "\nDIRS:"
for x in $(ls); do
	#echo $x
	if test -d $x; then
		echo $x
	fi
done


echo -e "\nFILES:"
for y in $(ls);do
	if test -f $y; then
		echo $y
	fi
done

echo -e "\nLINKS:"
for z in $(ls);do
	if test -h $z; then
		echo $z
	fi
done

