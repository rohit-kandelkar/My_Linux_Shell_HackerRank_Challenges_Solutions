#Input: A list of country names, each on a new line.
#Output: You need to read the countries into an array and display the country name at index 3 (i.e., the 4th country in the list). Indexing starts at 0.

#CODE:
# Step 1: Read the input into an array
arr=($(cat))

# Step 2: Check if the array has enough elements
if [ ${#arr[@]} -lt 4 ]; then
    echo "Error: Not enough countries in the input."
    exit 1
fi

# Step 3: Display the element at index 3 (4th element)
echo ${arr[3]}