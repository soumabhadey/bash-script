fibonacci()
{
	local n=$1
	if ((n <= 2))
	then
		echo "$((n - 1))"
	else
		echo "$(($(fibonacci $((n - 1))) + $(fibonacci $((n - 2)))))"
	fi
}

read -p "Enter number of terms: " n
for ((i = 1; i <= n; ++i))
do
	echo -n "$(fibonacci $i) "
done
echo
