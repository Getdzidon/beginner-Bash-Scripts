#!/bin/bash

#GRADE CALCULATOR

read -p "Enter the First Exam score: " score1
echo
read -p "Enter the Second Exam score: " score2
echo
read -p "Enter the Third Exam score: " score3
echo

average_score=$(((score1 + score2 + score3) / 3))

if
(("$average_score" >= 90 && "$average_score" <= 100 )); then
grade="A"

elif
(("$average_score" >= 80 && "$average_score" <= 89 )); then
grade="B"

elif
(("$average_score" >= 70 && "$average_score" <= 79 )); then
grade="C"

elif
(("$average_score" >= 60 && "$average_score" <= 69 )); then
grade="D"

else
grade="F"

fi

echo The Average score is: $average_score
echo That is corresponding to Grade: $grade