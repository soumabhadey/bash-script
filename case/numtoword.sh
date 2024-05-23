# convert number to words 123 - One Two Three

count() {
    local n=$1
    local rev=0
    local c=0
    while [[ $n -ne 0 ]]
    do
        c=$((c + 1))
        n=$((n / 10))
    done
    echo $c
}


read -p "Enter a number: " n
c=`count $n`

while [[ $c -ne 0 ]]
do
    div=$((10 ** (c - 1)))
    r=$((n / div))
    case $r in
        0)
            echo -n "Zero "
            ;;
        1)
            echo -n "One "
            ;;
        2)
            echo -n "Two "
            ;;
        3)
            echo -n "Three "
            ;;
        4)
            echo -n "Four "
            ;;
        5)
            echo -n "Five "
            ;;
        6)
            echo -n "Six "
            ;;
        7)
            echo -n "Seven "
            ;;
        8)
            echo -n "Eight "
            ;;
        9)
            echo -n "Nine "
            ;;
    esac
    n=$((n % div))
    c=$((c - 1))
done
echo