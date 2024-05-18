echo "enter year"
read y

if [ $((y % 4)) -eq 0 -a \( $((y % 100)) -ne 0 -o $((y % 400)) -eq 0 \) ]
then
    echo "leap year"
else
    echo "not leap"
fi