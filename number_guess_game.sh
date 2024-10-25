#!/bin/bash

# Number Guessing Game

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

# Generate a random number between 1 and 100.
# Note the % in the expression represents modulo operator and it divides the number on the left by the number on the right and returns the reminder

random_number=$(( RANDOM % 101))

# Initialize the number of attempts
attempts=0

# Prompt the user to guess the number
while true; do
    echo -e "${CYAN}Guess a number (between 1 and 100):${NC}"
    read guessed_number

    # Increment the number of attempts
    attempts=$((attempts + 1))

    # Check if the guessed number is too low, too high, or correct
    if (( guessed_number < random_number )); then
        echo -e "${RED}Too Low! Try again${NC}"
        echo
    elif (( guessed_number > random_number )); then
        echo -e "${PURPLE}Too high! Try again${NC}"
        echo
    else
        echo -e "${GREEN}Correct! You guessed the number in ${YELLOW}$attempts ${GREEN}attempts.${NC}"
        break
    fi
done
echo
read -p "Press [Enter] key to exit..."