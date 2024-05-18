power()
{
	local x=$1
	local y=$2
	if [[ $y -eq 0 ]]; then
		echo "1"
	else
		echo "$((x * $(power $x $((y - 1)))))"
	fi
}

read -p "Enter number: " x
read -p "Enter power: " y
echo "$x ^ $y = $(power $x $y)"
