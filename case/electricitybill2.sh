echo "Enter units consumed"
read n

ans=0
case $n in
	[0-9]|[0-9][0-9]|1[0-9][0-9])
		ans=`echo "scale=2; 0.50 * $n" | bc`
		;;
	2[0-9][0-9]|3[0-9][0-9])
		ans=`echo "scale=2; 100 + 0.65 * ($n - 199)" | bc`
		;;
	4[0-9][0-9]|5[0-9][0-9])
		ans=`echo "scale=2; 250 + 0.80 * ($n - 399)" | bc`
		;;
	*)
		ans=`echo "scale=2; 425 + 1.25 * ($n - 599)" | bc`
		;;
esac

echo "Bill amount: $ans"
