#You are given a set of integers. The first number represents how many integers follow. Your task is to compute the average of these integers and display it rounded to 3 decimal places.

#CODE:
# Read number of elements
read N

# Initialize sum variable
sum=0

# Loop to read integers and compute the sum
for ((i=0; i<N; i++)); do
    read num
    sum=$((sum + num))
done

# Compute and print the average, rounded to 3 decimal places
printf "%.3f\n" $(echo "$sum / $N" | bc -l)