#GREP (#1):
#You are given a text file and need to display all the lines that contain the word the. The search must be case-sensitive, meaning that it should only match instances of the exactly (i.e., not The, THE, or any part of a word).

#CODE:
grep -w "the"


#GREP (#2):
#You need to display all the lines in a given text that contain the word the, with a case-insensitive search. Additionally, the word the should be treated as a whole word, and not as part of another word (e.g., "there", "together").

#CODE:
grep -iw "the"


#GREP (#3):
#In this task, you are required to filter out the lines that contain the word that from a given text. The search should not be case-sensitive, and the remaining lines should maintain their relative order from the input file.

#CODE:
grep -iv "that"

