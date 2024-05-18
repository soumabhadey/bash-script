echo "enter number"
read num

tmp=$num
rev=0
while [ $tmp -ne 0 ]
do
    rev=$((rev * 10 + tmp % 10))
    tmp=$((tmp / 10))
done

if [ $rev -eq $num ]
then
    echo "palindrome"
else
    echo "not palindrome"
fi
