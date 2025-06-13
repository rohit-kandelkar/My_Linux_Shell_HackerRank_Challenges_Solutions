#You're given an array of integers where all but one integer occur in pairs. Your task is to find the number that occurs only once.

#CODE:
# Step 1: Read the input values
read N  # Read the number of elements
read -a arr  # Read the array of integers into the array `arr`

# Step 2: XOR all elements to find the unique number
unique_number=0
for num in "${arr[@]}"; do
    unique_number=$((unique_number ^ num))
done

# Step 3: Output the unique number
echo $unique_number