#!/bin/bash -x
declare -A result
flipCoinSimulation(){
head=0;
tail=0;

#using loop uc2

read -p "Enter a number for flip coin :" n

for (( i=0; i<n; i++ ))
{
	a=$((RANDOM%2));

	if [[ a -eq 1 ]]
		then
			head=$((head+1))
		else
			tail=$((tail+1))
	fi
}
echo "Number of head win "$head"
echo "Number of tail win "$tail"

result[H]="$head"
result[T]="$tail"
echo "Dictionary : " ${result[@]}
}
flipCoinSimulation
