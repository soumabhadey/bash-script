echo "Enter operator"
read choice
echo "Enter 2 numbers"
read num1
read num2

case $choice in
	'+')
		ans=`expr $num1 + $num2`
		echo "$ans"
		;;
	'-')
		ans=`expr $num1 - $num2`
		echo "$ans"
		;;
	'*')
		ans=`expr $num1 \* $num2`
		echo "$ans"
		;;
	'/')
		ans=`echo "scale=2; $num1 / $num2" | bc`
		echo "$ans"
		;;
	*)
		echo "Invalid choice"
esac
