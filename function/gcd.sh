gcd()
{
	local a=$1
	local b=$2
	if ((a % b == 0))
	then
		echo "$b"
	else
		echo "$(gcd $b $((a % b)))"
	fi
}

lcm()
{
	local a=$1
	local b=$2
	local g=$(gcd $a $b)
	echo "$((a * b / g))"
}

read -p "Enter first number: " a
read -p "Enter second number: " b
echo "GCD $(gcd $a $b)"
echo "LCM $(lcm $a $b)"
