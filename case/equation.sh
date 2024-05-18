echo -n "x = "
read x

echo -n "n = "
read n

case $n in
	1)
		y=`expr 1 + $x \* $x`
		;;
	2)
		y=$(echo "scale=2; 1 + $x / $n" | bc)
		;;
	3)
		y=$((1 + 2 * x))
		;;
	*)
		y=$((1 + n * x))
		;;
esac

echo "y = $y"
