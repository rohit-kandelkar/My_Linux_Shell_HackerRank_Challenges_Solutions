#You need to read a list of country names (one per line), make an array (which is like a list of things), and then repeat that list three times (so it has three copies of the same countries). Finally, you need to print the full list, with each country separated by a space.

#CODE:
# Step 1: Read input into the array
arr=($(cat))

# Step 2: Concatenate the array with itself twice
arr=("${arr[@]}" "${arr[@]}" "${arr[@]}")

# Step 3: Output the concatenated array with spaces
echo ${arr[@]}

