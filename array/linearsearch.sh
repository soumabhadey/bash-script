echo -n "Enter array: "
read -a arr

echo -n "Enter search element: "
read search

i=-1
found=0
for element in ${arr[@]}
do
	i=$((i + 1))
	if [ $element -eq $search ]
	then
		found=1
		echo "Position $((i + 1))"
	fi
done

if [ $found -eq 0 ]
then
	echo "Not found"
fi