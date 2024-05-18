read -p "Enter date of birth (dd-mm-yyyy): " bdate

IFS="-"
set $bdate
bday=$1
bmonth=$2
byear=$3

thisday=$(date +"%d")
thismonth=$(date +"%m")
thisyear=$(date +"%Y")

((days = thisday - bday))
((months = thismonth - bmonth))
((years = thisyear - byear))

if ((days < 0))
then
  ((days += 30))
  ((--months))
fi

if ((months < 0))
then
  ((months += 12))
  ((--years))
fi

echo "$years years $months months $days days"
