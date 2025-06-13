#You are given three integers representing the sides of a triangle. The task is to classify the triangle based on the following conditions:
#EQUILATERAL: All three sides are equal.
#ISOSCELES: Any two sides are equal.
#SCALENE: All three sides are different.

#CODE:
# Read input for the three sides of the triangle
read X
read Y
read Z

# Check if all sides are equal
if [[ $X -eq $Y && $X -eq $Z ]]; then
  echo "EQUILATERAL"
  
# Check if any two sides are equal
elif [[ $X -eq $Y || $X -eq $Z || $Y -eq $Z ]]; then
  echo "ISOSCELES"

# If no sides are equal, it's a scalene triangle
else
  echo "SCALENE"
fi

