IFS=","
set -- $1
arr=($@)
n=${#arr[@]}
sum=0
for ((i = 0; i < n; ++i))
do
	((sum += arr[i]))
done
avg=$(echo "scale = 2; $sum / $n" | bc)
echo $avg
