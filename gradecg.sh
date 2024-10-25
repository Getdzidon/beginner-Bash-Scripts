#!/bin/bash

# Grade Calculator

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
WHITE='\033[0;37m'
NC='\033[0m' # No Color

# Loop until the user decides to quit
while true; do
    # Prompts the user to enter the first, second, and, third exam score
    echo -e "${CYAN}Enter the First exam score: ${NC}"
    read score_1

    echo
    echo -e "${CYAN}Enter the Second exam score: ${NC}"
    read score_2

    echo
    echo -e "${CYAN}Enter the Third exam score: ${NC}"
    read score_3

    echo
    echo You entered the following exam scores: $score_1, $score_2, and $score_3
    echo

    # Confirm with the user if they want to continue
    echo -e "Do you want to continue with these scores? (yes/no)"
    read response

    if [ "$response" == "yes" ]; then
        # Calculate the average of the three scores above
        average_score=$(( (score_1 + score_2 + score_3) / 3 ))

        # Determine the grade based on the average score
        if [ "$average_score" -ge 90 ]; then
            grade="A"
        elif [ "$average_score" -ge 80 ]; then
            grade="B"
        elif [ "$average_score" -ge 70 ]; then
            grade="C"
        elif [ "$average_score" -ge 60 ]; then
            grade="D"
        else
            grade="F"
        fi

        # Display the average score and its corresponding grade
        echo -e "${PURPLE}Your Average score is: ${YELLOW}$average_score${NC}"
        echo -e "${BLUE}This is corresponding to Grade: ${GREEN}$grade${NC}"
        
        # Exit the loop after displaying the result
        break
    else
        # If the user enters "no", loop back to the start
        echo -e "${RED}Let's start over!${NC}"
    fi
done

read -p "Press [Enter] key to exit..."
