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
	
	d=$(( RANDOM%4 ))
	case $d in
		0)
			 hh=$(($hh+1))
			;;
		1) 
			ht=$(($ht+1))
			;;
		2)
			th=$(($th+1))
			;;
		3)
			tt=$(($tt+1))
			;;
		*)
			echo "Went Wrong"
			;;
	esac

	t=$(( RANDOM%7 ))
	case $t in
		0)
			hhh=$(($hhh+1))
			;;
		1)
			hht=$(($hht+1))
			;;
		2)
			hth=$(($hth+1))
			;;
		3)
			htt=$(($htt+1))
			;;
		4)
			thh=$(($thh+1))
			;;
		5)
			tht=$(($tht+1))
			;;
		6)
			tth=$(($tth+1))
			;;
		7)
			ttt=$(($ttt+1))
			;;
		*)
			echo "somethin went wrong"
			;;
	esac

}
echo "Number of head win "$head"
echo "Number of tail win "$tail"
result[H]="$head"
result[T]="$tail"
echo "Dictionary : " ${result[@]}

echo "---------------------------------------------------------------------------"

echo "number of hh combination " $hh
echo "number of ht combination " $ht
echo "number of th combination " $th
echo "number of tt combination " $tt


echo "----------------------------------------------------------------------------"
echo "number of hhh combination " $hhh
echo "number of hht combination " $hht
echo "number of hth combination " $hth
echo "number of htt combination " $htt
echo "number of thh combination " $thh
echo "number of tht combination " $tht
echo "number of ttt combination " $ttt


}

flipCoinSimulation
