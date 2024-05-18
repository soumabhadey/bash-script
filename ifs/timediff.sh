timecompare()
{
	local hr1=$1
	local min1=$2
	local sec1=$3

	local hr2=$4
	local min2=$5
	local sec2=$6

	if [[ $hr1 -gt $hr2 ]]
	then
		echo "1"
	elif [[ $hr1 -lt $hr2 ]]
	then
		echo "-1"
	else
		if [[ $min1 -gt $min2 ]]
		then
			echo "1"
		elif [[ $min1 -lt $min2 ]]
		then
			echo "1"
		else
			if [[ $sec1 -gt $sec2 ]]
			then
				echo "1"
			elif [[ $sec1 -lt $sec2 ]]
			then
				echo "1"
			else
				echo "0"
			fi
		fi
	fi
}

time1=$1
time2=$2

IFS=":"

set -- $time1
hr1=$1
min1=$2
sec1=$3

set -- $time2
hr2=$1
min2=$2
sec2=$3

if [[ $(timecompare $time1 $time2) -ge 0 ]]
then
	seconds=$((sec1 - sec2))
	minutes=$((min1 - min2))
	hours=$((hr1 - hr2))
else
	seconds=$((sec2 - sec1))
	minutes=$((min2 - min1))
	hours=$((hr2 - hr1))
fi

if [[ $seconds -lt 0 ]]
then
	seconds=$((seconds + 60))
	minutes=$((minutes - 1))
fi

if [[ $minutes -lt 0 ]]
then
	minutes=$((minutes + 60))
	hours=$((hours - 1))
fi

echo "$hours hours $minutes minutes $seconds seconds"
