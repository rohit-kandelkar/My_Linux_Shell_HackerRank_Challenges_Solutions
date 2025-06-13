#You are given a list of country names, each on a new line. Your task is to:
#Read the country names into an array. Slice the array to display the countries that lie between positions 3 and 7 (inclusive). Indexing starts from 0.

#CODE:
# Step 1: Read the input into the array
arr=($(cat))  # Read the list of countries into the array `arr`

# Step 2: Check if the array has enough elements (at least 8 elements, from 0 to 7)
if [ ${#arr[@]} -lt 8 ]; then
    echo "Error: Not enough countries in the list."
    exit 1
fi

# Step 3: Slice the array from index 3 to 7 (inclusive) and display the result
echo ${arr[@]:3:5}

