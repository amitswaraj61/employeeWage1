#! /bin/bash

#WelcomeMessage

echo "welcome to employeeWageComputation"

#employeeAttendence

echo "enter the num"
read num
present=0
absent=0
for(( i=1 ; i <=num; i++ ))
  do
     if [ $(( $RANDOM % 2)) -eq 0 ]
        then
          (( present++ ))
    else
          (( absent++ ))
    fi
 done
echo "Employee is presnt : $present"
echo "Employee is absent : $absent"


#calculateDailyWage

fullDay=8
perHour=20
ans=$(($perHour * $fullDay))
echo "calculate Daily Employee Wage : $ans" 

#addPartTime

Hour=20
Day=8
partDay=4
ans1=$(($Hour * (($Day + $partDay))))
echo "add part time employee and wage : $ans1"
