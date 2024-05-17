# s = 1 + x^2 / 2 + x^4 / 4 + ...... x^2n / 2n

factorial() {
	local n=$1
	if [ $n -eq 0 ]; then
		echo "1"
	else
		echo "$(($(factorial $((n - 1))) * n))"
	fi
}

power() {
	local x=$1
	local y=$2
	if [[ $y -eq 0 ]]; then
		echo "1"
	else
		echo "$((x * $(power $x $((y - 1)))))"
	fi
}

series() {
	local x=$1
	local n=$2
	local s=1

	for ((i = 1; i <= n; ++i)); do
		f=$(factorial $((2 * n)))
		p=$(power $x $((2 * n)))
		s=$(echo "scale = 2; $s + $p / $f" | bc)
	done

	echo "$s"
}

read -p "x = " x
read -p "n = " n
echo "Sum = $(series $x $n)"
