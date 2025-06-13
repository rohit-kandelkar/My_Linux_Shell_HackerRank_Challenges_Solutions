#You are given a list of countries, each on a new line. Your task is to:
#Read the country names into an array. Transform the names by replacing the first capital letter (if present) in each country name with a dot (.). Display the entire array with the transformed country names, separated by spaces.

#CODE:
# Step 1: Read the input into an array
arr=($(cat))

# Step 2: Process each country name and replace the first capital letter with a dot
for i in "${!arr[@]}"; do
    arr[$i]=$(echo "${arr[$i]}" | sed 's/[A-Z]/./')
done

# Step 3: Display the modified array with space-separated country names
echo "${arr[@]}"