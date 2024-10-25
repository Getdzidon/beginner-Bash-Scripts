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

# Calculates the average of the three scores
average_score=$(( (score_1 + score_2 + score_3) / 3 ))

# Determines the grade based on the average score calculated above
if (( average_score >= 90 && average_score <= 100 )); then
    grade="A"
 elif (( average_score >= 80 && average_score <= 89 )); then
    grade="B"
 elif (( average_score >= 70 && average_score <= 79 )); then
    grade="C"
 elif (( average_score >= 60 && average_score <= 69 )); then
    grade="D"
 else
    grade="F"
fi

# Displays the average score and its corresponding grade
echo -e "${PURPLE}Your Average score is: ${YELLOW}$average_score${NC}"
echo -e "${BLUE}This is corresponding to Grade: ${GREEN}$grade${NC}"

echo
read -p "Press [Enter] key to exit..."