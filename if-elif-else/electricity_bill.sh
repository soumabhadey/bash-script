echo "enter bill unit"
read n

if [ $n -ge 0 -a $n -le 200 ]
then
    amt=`echo "scale=2; 0.50 * $n" | bc`
elif [ $n -ge 201 -a $n -le 400 ]
then
    amt=`echo "scale=2; 100 + 0.65 * ($n - 200)" | bc`
elif [ $n -ge 401 -a $n -le 600 ]
then
    amt=`echo "scale=2; 250 + 0.80 * ($n - 400)" | bc`
elif [ $n -gt 600 ]
then
    amt=`echo "scale=2; 425 + 1.25 * ($n - 600)" | bc`
fi

echo "bill amount $amt"