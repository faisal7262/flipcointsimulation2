#!/bin/bash -x

flipCoinSimulation(){
a=$((RANDOM%2))
if [[ $a -eq 1 ]]
then
	echo "Head"
else
	echo "tail"
fi
}
flipCoinSimulation
