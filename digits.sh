echo -n "Enter a number: "
read num

case $num in
    [0-9])
        echo "Single digit number"
        ;;
    [1-9][0-9])
        echo "Double digit number"
        ;;
    [1-9][0-9][0-9])
        echo "Three digit number"
        ;;
    *)
        echo "None.."
        ;;
esac