#! /bin/bash

#WelcomeMessage

echo "welcome to employeeWageComputation"

#employeeAttendence

function employeeAttendence {

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

 }

#calculateDailyWage

fullDay=8
perHour=20
function calculateDailyWage {
ans=$(($perHour * $fullDay))
echo "calculate Daily Employee Wage : $ans" 

}

#addPartTime

Hour=20
Day=8
partDay=4
function addPartTime {

ans1=$(($Hour * (($Day + $partDay))))
echo "add part time employee and wage : $ans1"

}

#caseStatements

function caseStatement {

echo  "enter your choice"
echo " press 1 for attendence"
echo " press 2 for dailyEmployeeWage"
echo " press 3 for addPartTime"  
read ch
       case $ch in 
       
        1) employeeAttendence
        ;;
        2) calculateDailyWage
        ;;
        3) addPartTime
        ;;
        *) caseStatement
        ;;
       
        esac
       }
        caseStatement

#uc5

empWagePerHr=20
empFullTime=1
empPartTime=2
daysPerMonth=20
totalSalary=0
function EmployeeMang() {

for (( i=1; i<=$daysPerMonth; i++ ))
do
        random=$((RANDOM%3))
        case $random in
        $empFullTime )
             empHr=8 ;;

        $empPartTime )
              empHr=4 ;;

         * )
              empHr=0 ;;
         esac

         salary=$(( $empWagePerHr * $empHr ))
         echo "daily salary := $salary"
         TotalSalary=$(( $salary + $totalSalary )) 

         TotalSalary=$(( $salary + $totalSalary ))
 done
}

EmployeeMang
echo "total salary is = $TotalSalary"

#uc6

empWagePerHr=20 
empFullTime=1
empPartTime=2 
dayzPerMonth=20
TotalSalary=0 
Total_hr=0
Total_Max_hr=100 

function EmployeeManagement () {

	while [ $Total_hr -le $Total_Max_hr  ]
	do
	random=$((RANDOM%3))
	case $random in

     	$empFullTime )
		empHr=8 ;;

	$empPartTime )
		empHr=4 ;;
	
	* )
		empHr=0 ;;
	esac
		
	Total_hr=$(($Total_hr + $empHr))

	salary=$(( $empWagePerHr * $Total_hr ))

	TotalSalary=$(( $salary + $TotalSalary ))
	done
}

EmployeeManagement
 echo "Total Salary for 100hr is " = $TotalSalary 

#uc7

EMP_WAGE_PER_HR=20 
EMP_FULL_TIME=1
EMP_PART_TIME=2 
DAYZ_PER_MONTH=20
TOTAL_MAX_HR=100

totalSalary=0 
totalHr=0
 

function GetWorkingHours ()
{
	
	for (( i=1; i<=$DAYZ_PER_MONTH; i++ ))
	do
	random=$((RANDOM%3))
	case $random in

     	$EMP_FULL_TIME )
		EMP_HR=8 ;;

	$EMP_PART_TIME )
		EMP_HR=4 ;;
	
	* )
		EMP_HR=0 ;;
	esac
		
	totalHr=$(($totalHr + $EMP_HR))
done
	
}

GetWorkingHours 

 echo "Total work hours is " = $totalHr  

#uc8

EMP_WAGE_PER_HR=20 
EMP_FULL_TIME=1
EMP_PART_TIME=2 
DAYZ_PER_MONTH=20
TOTAL_MAX_HR=100

totalSalary=0 
totalHr=0
salary=0

declare -a ArrayForWages

function GetWorkingHours ()
{

	for (( i=1; i<=$DAYZ_PER_MONTH; i++ ))
	do
	random=$((RANDOM%3))
	case $random in

	$EMP_FULL_TIME )
		EMP_HR=8 ;;

	$EMP_PART_TIME )
		EMP_HR=4 ;;

	* )
		EMP_HR=0 ;;
	esac

	totalHr=$(( $totalHr + $EMP_HR ))
	Salary=$(( $EMP_WAGE_PER_HR * $EMP_HR ))

	totalSalary=$(( $EMP_WAGE_PER_HR * $totalHr  ))

	ArrayForWages=( $Salary $totalSalary )
        echo "Daily wages along with total wages" ${ArrayForWages[@]} 


        done
}

	GetWorkingHours 
