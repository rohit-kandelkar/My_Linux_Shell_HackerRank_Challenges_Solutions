#GREP A:
#You are given a text file piped to your command. Your task is to search for lines that contain any of the following words (case-insensitive):
#the, that, then, those
#Display the matching lines without altering their relative order.

#CODE: 
grep -iwe "the\|that\|then\|those"


#GREP B:
#You are provided with credit card numbers (N in total), each formatted as four space-separated segments of four digits. You need to identify credit card numbers that contain two or more consecutive occurrences of the same digit, even if they are separated by spaces.

#CODE:
grep '\([0-9]\) *\1'

#Explanation of the Regular Expression:
#[0-9]: This matches any digit.
#(1) \( and \): These parentheses are used for grouping the regular expression. In this case, they capture a single digit.
#(2) *: Matches zero or more spaces between the repeated digits.
#(#) \1: This is a backreference to the captured digit. It matches the same digit that was captured earlier in the group.
#The regular expression works by finding a digit, followed by zero or more spaces, then that same digit again. This identifies credit card numbers with consecutive digits, even if there are spaces in between them.