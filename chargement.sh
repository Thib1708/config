#!/bin/bash

i=0

while [ $i -le 24 ]
do
	j=0
	let expr=4*i
	printf "\r\033[2K\033[38;5;75m%d%%" "$expr"
	while [ $j -le $i ]
	do 
		printf "\033[38;5;75m▮" "$expr" 
		((j++))
	done
	sleep 0.2
	((i++))
done
printf "\r\033[2K\033[1;32m100%%▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮\n"