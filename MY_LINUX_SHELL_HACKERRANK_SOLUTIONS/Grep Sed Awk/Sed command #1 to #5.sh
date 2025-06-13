#Sed command (#1):
#In this task, we need to replace the first occurrence of the word "the" with "this" on each line of input. The search and replacement should be case-sensitive, meaning only the lowercase word "the" should be replaced, not "The" or "THE".

#CODE:
sed 's/\bthe\b/this/'

# s/\bthe\b/this/: This command tells sed to:
#(1) \b: Match word boundaries, so it only matches the word "the" and not part of other words like "there" or "other".
#(2) the: This is the literal string to be matched.
#(3) this: This is the string to replace "the" with.


#Sed command (#2):
#In this task, you're asked to replace all occurrences of the word "thy" (case-insensitive) with "your" in the given input. Let's walk through how to do this using sed.

#CODE:
sed -e 's/\bthy\b/your/Ig'


#Sed command (#3):
#The task here is to highlight all occurrences of the word "thy" (case-insensitive) by wrapping them up in brace brackets.

#CODE:
sed -e 's/thy/{&}/gI'


#Sed command (#4):
#The task you're describing is to mask the first three groups of four digits (12 digits in total) of a credit card number, while leaving the last group (the final four digits) visible. For this, sed can be used to substitute the first part of the credit card number with asterisks (*), while leaving the last part intact.

#CODE:
sed -r 's/[0-9]{4}[ ]/**** /g'


#Sed command (#5):
#The task you're describing requires reversing the order of the segments in each credit card number. Specifically, each credit card number has 4 space-separated segments, and we need to reverse their order.

#CODE:
sed -E 's/([0-9]{4}) ([0-9]{4}) ([0-9]{4}) ([0-9]{4})/\4 \3 \2 \1 /g'
