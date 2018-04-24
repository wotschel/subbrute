#!/bin/bash

a=$(grep -ce "^$1$" names.txt)

echo "$1 - $a"

if [ $a -eq 0 ];
then
	echo $1 >> names.txt
	echo "Added $1"

	sort names.txt >tmp.txt
	mv tmp.txt names.txt
fi
