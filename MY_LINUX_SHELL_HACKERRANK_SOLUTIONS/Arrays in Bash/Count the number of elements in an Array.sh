#You are given a list of country names, each on a new line. Your task is to:
#Read the country names into an array. Display the count of elements in the array (i.e., the number of country names).

#CODE:
arr=($(cat))  # Read the country names into an array `arr`
echo ${#arr[@]}  # Output the number of elements in the array
