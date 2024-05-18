f1=$1
if [[ -f $f1 ]]; then
	exec < $f1
fi
echo "Name        Roll        Marks        Grade" > gradeout.txt
while read line; do
	set `echo $line`
	marks=$3
	case $marks in
		9[0-9] | 100)
			echo "$1        $2        $3        O" >> gradeout.txt;;
		8[0-9])
			echo "$1        $2        $3        E" >> gradeout.txt;;
		7[0-9])
			echo "$1        $2        $3        A" >> gradeout.txt;;
		6[0-9])
			echo "$1        $2        $3        B" >> gradeout.txt;;
		5[0-9])
			echo "$1        $2        $3        C" >> gradeout.txt;;
		4[0-9])
			echo "$1        $2        $3        D" >> gradeout.txt;;
		*)
			echo "$1        $2        $3        F" >> gradeout.txt;;
	esac
done