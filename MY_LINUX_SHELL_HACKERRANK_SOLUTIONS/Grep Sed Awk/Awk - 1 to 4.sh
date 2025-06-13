#Awk - 1:
#The objective here is to identify lines in a file that don't contain all three scores for students in the given format:
#[Identifier] [English Score] [Math Score] [Science Score]

#CODE:
awk '{ if ($2 == "" || $3 == "" || $4 == "") print "Not all scores are available for " $1 }'


#Awk - 2:
#The goal here is to determine if a student passes or fails based on their scores in three subjects: English, Math, and Science. A student passes if all their scores are 50 or higher. If any score is below 50, the student fails.

#CODE:
awk '{ print $1 " : " ($2 < 50 || $3 < 50 || $4 < 50 ? "Fail" : "Pass") }'


#Awk - 3:
#In this task, we need to calculate the average of scores for each student and assign them a grade based on the following criteria:
#Grade A: Average >= 80, Grade B: 60 <= Average < 80, Grade C: 50 <= Average < 60, Fail: Average < 50

#CODE:
awk '{ 
       total=$2+$3+$4; 
       avg=total/3; 
       if (avg >= 80) 
           print $0 " : A"; 
       else if (avg >= 60) 
           print $0 " : B"; 
       else if (avg >= 50) 
           print $0 " : C"; 
       else print $0 " : FAIL"; }'


#Awk - 4:
#The objective is to concatenate every two lines of input with a semi-colon (;). For each pair of lines, you need to join the lines into one, separated by ;. If there is an odd number of lines, the last line will be printed without any pairing.

#CODE:
awk 'END{ if((NR%2)) print p ";" }!(NR%2){ print p ";" $0 }{ p = $0 }'
