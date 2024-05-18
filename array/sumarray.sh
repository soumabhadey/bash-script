echo "Enter array: "
read -a arr

sum=0
for element in ${arr[@]}
do
	sum=$((sum + element))
done

echo "Sum: $sum"