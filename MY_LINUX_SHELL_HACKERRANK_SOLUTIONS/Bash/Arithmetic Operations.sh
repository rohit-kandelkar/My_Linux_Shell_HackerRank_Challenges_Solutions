#You are given a mathematical expression that contains operators like +, -, *, /, ^ (exponentiation), and parentheses. Your task is to evaluate the expression and display the result rounded to 3 decimal places.

#CODE:
# Read the mathematical expression
read expression

# Evaluating the expression using bc with scale set for more precision
result=$(echo "$expression" | bc -l)

# Rounding the result to 3 decimal places and printing it
printf "%.3f\n" $result
