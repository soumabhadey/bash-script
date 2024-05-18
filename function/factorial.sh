factorial() {
	local n=$1
	if [ $n -eq 0 ]; then
		echo "1"
	else
		echo "$(($(factorial $((n - 1))) * n))"
	fi
}

read -p "Enter a number: " n
echo "$n! = $(factorial $n)"
