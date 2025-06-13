#This task involves creating a fractal tree in ASCII art. The tree's structure is formed by recursively adding smaller "Y" shapes at each iteration.

#CODE:
declare -A a  # Declare an associative array to store our grid

# Function to generate the fractal tree
f() {
    local d=$1    # Depth of recursion (iterations)
    local l=$2    # Length of branches
    local r=$3    # Row where the current branch starts
    local c=$4    # Column where the current branch starts

    # Base case: stop recursion if depth reaches 0
    [[ $d -eq 0 ]] && return

    # Create the vertical segment of the current branch
    for ((i=l; i>0; i--)); do
        a[$((r-i)),$c]=1
    done

    # Adjust row to start from the tip of the vertical branch
    ((r -= l))

    # Create the left and right slanted segments
    for ((i=l; i>0; i--)); do
        a[$((r-i)),$((c-i))]=1  # Left branch
        a[$((r-i)),$((c+i))]=1  # Right branch
    done

    # Recursively generate smaller branches
    f $((d-1)) $((l/2)) $((r-l)) $((c-l))  # Left recursive call
    f $((d-1)) $((l/2)) $((r-l)) $((c+l))  # Right recursive call
}

# Read the depth of recursion (N)
read n

# Start the fractal generation (Initial position at row 63, column 49 with length 16)
f $n 16 63 49

# Loop through the grid and print the result
for ((i=0; i<63; i++)); do
    for ((j=0; j<100; j++)); do
        # If a position is marked as '1', print '1', otherwise print '_'
        if [[ ${a[$i,$j]} ]]; then
            printf "1"
        else
            printf "_"
        fi
    done
    echo  # Move to the next line after printing each row
done
