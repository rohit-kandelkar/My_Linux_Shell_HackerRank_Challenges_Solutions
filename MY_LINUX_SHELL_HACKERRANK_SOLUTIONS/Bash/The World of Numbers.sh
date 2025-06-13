#You need to compute and print the sum, difference, product, and quotient of two integers, where the quotient should only display the integer part.

#CODE:
# Reading the two integers
read a
read b

# Calculate sum, difference, product
sum=$((a + b))
difference=$((a - b))
product=$((a * b))

# Check if b is zero before performing division
if [ $b -eq 0 ]; then
    echo "Error: Division by zero is not allowed."
else
    quotient=$((a / b))
    echo $sum
    echo $difference
    echo $product
    echo $quotient
fi