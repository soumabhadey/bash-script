read -p "Enter time1 in hh:mm:ss " time1
read -p "Enter time2 in hh:mm:ss " time2

t1=$time1
t2=$time2

IFS=":"
set -- $t1
((s1 = $1 * 3600 + $2 * 60 + $3))

set -- $t2
((s2 = $1 * 3600 + $2 * 60 + $3))


if ((s1 >= s2)); then
    ((s = s1 - s2))
else
    ((s = s2 - s1))
fi

((m = s / 60))
((s = s % 60))

((h = m / 60))
((m = m % 60))

echo "$h:$m:$s"