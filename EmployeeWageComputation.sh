#!/bin/bash/ -x

WAGE_PER_HOUR=20
WORKING_DAYS_PER_MONTH=20
FULLDAY_WORKING_HOUR=8
HALFDAY_WORKING_HOUR=4
isFullDay=1
isHalfDay=0
monthlyWage=0
echo "Welcome to Employee Wage Computation"

for(( i=0; i<20; i++))
do

	presenty=$((RANDOM%2))
	if [ $presenty -eq 1 ]
	then
		echo "Employee Present"
		workingHours=$((RANDOM%2))
		case $workingHours in
			$isFullDay)
				fullDayWage=$(($WAGE_PER_HOUR*$FULLDAY_WORKING_HOUR)) 
				echo "Wage per day is:" $fullDayWage
				;;
			$isHalfDay)
				halfDayWage=$(($WAGE_PER_HOUR*$HALFDAY_WORKING_HOUR))
				echo "Wage per day is:" $halfDayWage 
				;;
		esac
	else
		echo "Employee Absent"
	fi
done
