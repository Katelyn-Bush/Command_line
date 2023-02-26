#!/bin/bash
 5
 6 #Katelyn Bush 
 7 #ITP270 
 8 #CLI Redirection Solution 
 9
10
11 #Create a file
12 touch rivers.txt
13
14
15 #Add five river names to it
16 echo -e "Amazon River\n" > rivers.txt
17 echo -e  "Nile River \n"  >> rivers.txt
18 echo -e  "Yangtze River\n"  >> rivers.txt 
19 echo -e  "Danube River\n" >> rivers.txt
20 echo -e  "Potomac River\n " >> rivers.txt

#Replace the word "amazon" with "ohio"
24 sed's/Amazon/ohio/g'rivers.txt > new_rivers.txt
25
26
27 #Sort the river names alphabetically 
28 sort rivers.txt > new_rivers_v2.txt
29
30
31 #Use command to filter out duplicates
32 uniq new_rivers_v2.txt > new_rivers_v3.txt
33
34 Compare the original file and the modified copy
35 diff rivers.txt new_rivers_v3.txt

touch rivers.txt && echo -e "Amazon River\nNile River\nYangtze River\nPotomac River\nDanube River\nPotomac River" > rivers.txt && sort rivers.txt | uniq > rivers2.txt | sed 's\Amazon\Ohio\g' rivers2.txt > rivers3.txt  && diff rivers.txt rivers3.txt
