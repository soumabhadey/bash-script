echo "enter number"
read num

sum=0
for ((i=1; i <= num / 2; i++))
do
    if [ $((num % i)) -eq 0 ]
    then
        sum=$((sum + i))
    fi
done

if [ $sum -eq $num ]
then
    echo "perfect number"
else
    echo "not a perfect number"
fi
