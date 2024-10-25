 #!/bin/bash

read -p "please input your 1st course marks: " c1
echo
read -p "please input your 2nd course marks: " c2
echo
read -p "please input your 3rd course marks: " c3
echo

result=$(( ($c1 + $c2 + $c3) / 3 ))

if [[ $result -ge 90 && $result -le 100 ]]; then
   echo "your Grade is $result corresponding to Grade A"

elif
   [[ $result -ge 80 && $result -le 89 ]]; then
   echo "your Grade is $result corresponding to Grade B"

elif
   [[ $result -ge 70 && $result -le 79 ]]; then
   echo "your Grade is $result corresponding to Grade C"

elif
   [[ $result -ge 60 && $result -le 69 ]]; then
   echo "your Grade is $result corresponding to Grade D"

else
   echo "your Grade is $result corresponding to Grade F"

fi









