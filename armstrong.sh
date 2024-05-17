echo "enter number"
read num

tmp=$num
c=0
while [ $tmp -ne 0 ]
do
    c=$((c + 1))
    tmp=$((tmp / 10))
done

tmp=$num
sum=0
while [ $tmp -ne 0 ]
do
    sum=$((sum + (tmp % 10) ** c))
    tmp=$((tmp / 10))
done

if [ $sum -eq $num ]
then
    echo "armstrong"
else
    echo "not armstrong"
fi
