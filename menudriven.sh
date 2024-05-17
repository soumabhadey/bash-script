clear
while [ 1 ]
do
    clear
    echo "1. Number of lines in this file"
    echo "2. Present working directory"
    echo "3. Calendar of given year"
    echo "4. Date"
    echo "5. Contents of this file"
    echo "6. Search pattern in this file"
    echo "7. Exit"
    echo -n "Enter choice: "
    read choice

    case $choice in
        1)
            ans=$(wc -l menudriven.sh)
            echo "Number of lines: $ans"
            ;;
        2)
            ans=$(pwd)
            echo "Present working directory: $ans"
            ;;
        3)
            echo -n "Enter year: "
            read year
            ans=$(cal $year)
            echo "Date: $ans"
            ;;
        4)
            ans=$(date)
            echo "Date: $ans"
            ;;
        5)
            ans=$(cat menudriven.sh)
            echo "Contents:-"
            echo "$ans"
            ;;
        6)
            echo -n "Enter pattern: "
            read pattern
            ans=$(grep -i -n $pattern menudriven.sh)
            echo "Search results:-"
            echo "$ans"
            ;;
        7)
            echo "Exit.."
            break
            ;;
        *)
            echo "Invalid choice"
    esac
    echo "Press enter to continue.."
    read
done