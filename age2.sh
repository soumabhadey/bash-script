echo "Enter the date of birth: "
read dob
IFS="/"
set $dob
d=$1
m=$2
y=$3

curr_d=`date +%d`
curr_m=`date +%m`
curr_y=`date +%Y`

declare -a month
month=(31 28 31 30 31 30 31 31 30 31 30 31)

if ((curr_y % 4 == 0 && (curr_y % 100 != 0 || curr_y % 400 == 0)))
then
	month[1]=29
fi

if [ $d -gt $curr_d ]
then
	curr_d=$((curr_d + month[m-1]))
	curr_m=$((curr_m-1))
fi

if [ $m -gt $curr_m ]
then
	curr_y=$((curr_y-1))
	curr_m=$((12+curr_m))
fi

d1=$((curr_d-d))
m1=$((curr_m-m))
y1=$((curr_y-y))

echo "Age will be: $y1 years $m1 months $d1 days"
