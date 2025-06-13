#You are given a list of country names, and your task is to:
#Read the country names into an array. Filter out (remove) all the country names that contain the letter 'a' or 'A'. Output the remaining country names that do not contain 'a' or 'A'.

#CODE:
# Step 1: Read the input into the array
arr=($(cat))  # Read the list of countries into the array `arr`

# Step 2: Loop through the array and filter out names containing 'a' or 'A'
result=()
for country in "${arr[@]}"; do
    if [[ ! "$country" =~ [aA] ]]; then
        result+=("$country")  # Add the country to the result array if it doesn't contain 'a' or 'A'
    fi
done

# Step 3: Output the filtered countries
# If the result array is empty, print a blank line. Otherwise, print the filtered countries.
if [ ${#result[@]} -eq 0 ]; then
    echo ""  # Print a blank line if no countries are left
else
    echo "${result[@]}"  # Print the remaining countries
fi