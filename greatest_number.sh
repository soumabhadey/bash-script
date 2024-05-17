echo "enter three numbers"
read a
read b
read c
if [ \( $a -ge $b \) -a \( $a -ge $c \) ]
then
    echo "$a is greatest"
elif [ $b -ge $a -a $b -ge $c ]
then
    echo "$b is greatest"
else
    echo "$c is greatest"
fi