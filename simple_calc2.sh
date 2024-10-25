#!/bin/bash

# Simple_Calculator

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# The below prompts the user to enter the first number, second number and select and arithmetic operation
echo -e "${BLUE}Enter the First number: ${NC}"
read number1

echo -e "${MAGENTA}Choose arithmetic operation (+, -, *, /): ${NC}" 
read operation

echo -e "${CYAN}Enter the Second number: ${NC}"
read number2

# Perform the chosen aithmetic operation and displays the result
if [ "$operation" == "+" ]; then
    result=$((number1 + number2))
    echo -e "${GREEN}Result: ${YELLOW}$result${NC}"

elif [ "$operation" == "-" ]; then
    result=$((number1 - number2))
    echo -e "${GREEN}Result: ${YELLOW}$result${NC}"

elif [ "$operation" == "*" ]; then
    result=$((number1 * number2))
    echo -e "${GREEN}Result: ${YELLOW}$result${NC}"

elif [ "$operation" == "/" ]; then
    # Checks if the second number used dividing the first number is not zero (0)
    if [ "$number2" -ne 0 ]; then
        result=$(($number1 / $number2))
        echo -e "${GREEN}Result: ${YELLOW}$result${NC}"

    # Checks if the second number used in the division is zero and returns an error
    else
        echo -e "${RED}Error! Division by zero (0) is not allowed.${NC}"
            fi
else
    echo -e "${RED}Operation Invalid.${NC}"
fi
echo
read -p "Press [Enter] key to exit..."