#You need to read a single character input from the user and then print:
#"YES" if the character is 'Y' or 'y'.
#"NO" if the character is 'N' or 'n'.
#If any other character is provided, the program should display "Invalid input".

#CODE:
#read one character from user
read character

#Compare the inputs and display the result
if [[ $character = "Y" || $character = "y" ]]; then
  echo "YES"
elif [[ $character = "N" || $character = "n" ]]; then
  echo "NO"
else
  echo "Invalid input"
fi
