#Write a Bash script that accepts a name as input and displays a greeting in the format: Welcome (name).

#CODE:
# Ask for user input and store it in the variable 'name'
read -p "Enter your name: " name

# Ensure the name is not empty
if [ -z "$name" ]; then
  echo "Name cannot be empty!"
else
  echo "Welcome $name"
fi
