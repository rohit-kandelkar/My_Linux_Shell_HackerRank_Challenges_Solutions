#You are given a list of country names, each on a new line. Your task is to:
#Read the country names into an array. Display the entire array with a space between each country's name.

#CODE:
# Read all input lines into an array
mapfile -t arr  # Read all lines into the array `arr`

# Display the entire array, space-separated
echo "${arr[@]}"

#NOTE:
#mapfile -t arr:
#This reads all lines from the input and stores them directly into the array arr. The -t option strips the newline characters from each line.
