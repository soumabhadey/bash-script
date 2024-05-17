echo "Enter number of lines"
read n

for ((i = 0; i < n; ++i))
do
    coef=1
    for ((j = 1; j <= n - i - 1; ++j))
    do
        echo -n " "
    done

    for ((j = 0; j < i + 1; ++j))
    do
        echo -n "$coef "
        coef=$((coef * (i - j) / (j + 1)))
    done

    echo ""
done