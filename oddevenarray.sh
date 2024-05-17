echo -n "Enter an array: "
read -a arr

i=-1
j=-1
declare -a odd
declare -a even

for element in ${arr[@]}
do
	if [ $((element % 2)) -eq 0 ]
	then
		j=$((j + 1))
		even[$j]=$element
	else
		i=$((i + 1))
		odd[$i]=$element
	fi
done

echo "Odd array: ${odd[@]}"
echo "Even array: ${even[@]}"