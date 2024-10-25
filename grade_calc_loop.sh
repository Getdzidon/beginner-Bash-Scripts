#!/bin/bash

#Grade Calculator

#Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
WHITE='\033[0;37m'
NC='\033[0m' # No Color

#Looping Mechanism: The entire script is placed inside a while true; do ... done loop, which ensures it will keep running until you explicitly break out of the loop.

#Loops until the user decides to quit
while true; do
   #Prompts the user to enter the first, second, and, third exam score
   echo -e "${CYAN}Enter exam score 1: ${NC}"
   read score_1

   echo
   echo -e "${CYAN}Enter exam score 2: ${NC}"
   read score_2

   echo
   echo -e "${CYAN}Enter exam score 3: ${NC}"
   read score_3

   echo
   echo -e "${GREEN}You entered the following exam scores: ${CYAN}$score_1, $score_2, ${GREEN}and ${CYAN}$score_3${NC}"
   echo

   #User Confirmation: After inputting the scores, the user is asked if they want to continue with the entered scores (Do you want to continue with these scores? (yes/no)). If they type "yes", the average and grade are calculated and displayed, and the loop breaks, ending the script. If they type "no", the loop restarts from the beginning, prompting them to enter the scores again.
   
   #Confirm with the user if they want to continue
   echo -e "Do you want to continue? (yes/no)"
   read response

   if [ "$response" == "yes" ]; then
      #Calculate the average of the three scores above
      average_score=$(( (score_1 + score_2 + score_3) / 3 ))
   
      #Determines the grade based on the average score calculated above
      if (( "$average_score" >= 90 && "$average_score" <= 100 )); then
        grade="A"

       elif (( "$average_score" >= 80 && "$average_score" <= 89 )); then
        grade="B"

       elif (( "$average_score" >= 70 && "$average_score" <= 79 )); then
        grade="C"

       elif (( "$average_score" >= 60 && "$average_score" <= 69 )); then
        grade="D"

      else
        grade="F"
      fi


      #Displays the average score and its corresponding grade
      echo -e "${PURPLE}Your Average score is: ${YELLOW}$average_score${NC}"
      echo -e "${BLUE}This is corresponding to Grade: ${GREEN}$grade${NC}"

      #Exit the loop after displaying the result    
      break

   else
      #If the user enters "no", loop back to the start
      echo -e "${RED}Let's start over!${NC}"
   fi

done
echo
read -p "Press [Enter] key to exit..."