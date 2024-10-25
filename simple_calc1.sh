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
echo

echo -e "${MAGENTA}Choose a number corresponding to an arithmetic operation below:
1. Add '+'
2. Subtract '-'
3. Multiply '*'
4. Divide '/'${NC}"
echo
read operation
echo

echo -e "${CYAN}Enter the Second number: ${NC}"
read number2
echo

# Function to perform division using bc (this function comes in handy when the denominator is bigger than the numerator)
divide() {
    echo "scale=1; $number1 / $number2" | bc
}

# Perform the chosen aithmetic operation and displays the result
if [ "$operation" == "+" ] || [ "$operation" == 1 ]; then
    result=$((number1 + number2))
    echo -e "${GREEN}Result: $number1 + $number2 = ${YELLOW}$result${NC}"

elif [ "$operation" == "-" ] || [ "$operation" == 2 ]; then
    result=$((number1 - number2))
    echo -e "${GREEN}Result: $number1 - $number2 = ${YELLOW}$result${NC}"

elif [ "$operation" == "*" ] || [ "$operation" == 3 ]; then
    result=$((number1 * number2))
    echo -e "${GREEN}Result: $number1 * $number2 = ${YELLOW}$result${NC}"

elif [ "$operation" == "/" ] || [ "$operation" == 4 ]; then
    # Checks if the second number used dividing the first number is not zero (0)
    if [ "$number2" -ne 0 ]; then
        result=$(divide $number1 $number2)
        echo -e "${GREEN}Result: $number1 / $number2 = ${YELLOW}$result${NC}"

    # Checks if the second number used in the division is zero and returns an error
    else
        echo -e "${RED}Error! Division by zero (0) is not allowed.${NC}"
            fi
else
    echo -e "${RED}Operation Invalid.${NC}"
fi
echo
read -p "Press [Enter] key to exit..."     