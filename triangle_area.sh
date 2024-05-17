echo "enter 3 sides"
read a
read b
read c

s=$(echo "scale=1; ($a + $b + $c) / 2" | bc)
area=`echo "scale=1; sqrt($s * ($s - $a) * ($s - $b) * ($s - $c))" | bc`

if [ $(echo "$area > 0" | bc) -eq 1 ]
then
    echo "area $area"
else
    echo "triangle not possible"
fi
