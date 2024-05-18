factorial() {
	local n=$1
	if [[ $n -eq 0 ]]; then
		echo "1"
	else
		echo "$(($(factorial $((n - 1))) * n))"
	fi
}

combination() {
	local n=$1
	local k=$2
	local fn=$(factorial $n)
	local fk=$(factorial $k)
	local fnk=$(factorial $((n - k)))
	echo "$((fn / (fk * fnk)))"
}

pascal() {
	local n=$1
	for ((i = 0; i < n; ++i)); do
		for ((j = 0; j <= i; ++j)); do
			echo -n "$(combination $i $j) "
		done
		echo
	done
}

read -p "Enter number of lines: " n
pascal $n
