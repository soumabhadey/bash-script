f1=$1
if [[ -f $f1 ]]; then
	exec < $f1
fi
echo "Day        Temperature        Weather" > weatherout.txt
while read line; do
	set $(echo $line)
	echo -n "$1        $2        " >> weatherout.txt
	t=$2
	case $t in
		3[5-9] | 40)
			echo "Very Hot" >> weatherout.txt;;
		3[0-4])
			echo "Hot" >> weatherout.txt;;
		2[0-9])
			echo "Moderate" >> weatherout.txt;;
		1[0-9])
			echo "Cool" >> weatherout.txt;;
		[5-9])
			echo "Cold" >> weatherout.txt;;
		[0-4])
			echo "Very Cold" >> weatherout.txt;;
	esac
done
