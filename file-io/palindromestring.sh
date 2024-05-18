ispalindromestring() {
	local line=$1
	local length=${#line}

	for ((i = 0; i < length / 2; ++i)); do
		if [[ ${line:i:1} != ${line:length-i-1:1} ]]; then
			echo 0
			return
		fi
	done
	echo 1
}



file=$1

if [[ -f $file ]]; then
	exec < $file
	echo -n > palindromestringout.txt
	while read line; do
		echo -n "$line - " >> palindromestringout.txt
		if [[ $(ispalindromestring $line) -eq 1 ]]; then
			echo "palindrome" >> palindromestringout.txt
		else
			echo "not palindrome" >> palindromestringout.txt
		fi
	done
else
	echo "$file does not exist"
fi
