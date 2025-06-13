#You are given two integers, X and Y. The task is to compare these two integers and print:
#"X is less than Y" if X is smaller than Y.
#"X is greater than Y" if X is greater than Y.
#"X is equal to Y" if both are equal.

#CODE:
# Read two integers from the user
read X
read Y

# Compare the integers
if [[ $X -lt $Y ]]; then
  echo "X is less than Y"
elif [[ $X -gt $Y ]]; then
  echo "X is greater than Y"
else
  echo "X is equal to Y"
fi