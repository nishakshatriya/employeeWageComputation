totalDays=$(($totalDays+1))#!/bin/bash/ -x

WORKING_DAYS_PER_MONTH=20
FULLDAY_WORKING_HOUR=8
HALFDAY_WORKING_HOUR=4
isFullDay=1
isHalfDay=0
monthlyWage=0
totalHour=0
totalDays=0
WAGE_PER_HOUR=25
echo "Welcome to Employee Wage Computation"

while [[ $totalHour -le 100 && $totalDays -le 20 ]]
do

	presenty=$((RANDOM%2))
	if [ $presenty -eq 1 ]
	then
		echo "Employee Present"
		workingHours=$((RANDOM%2))
		case $workingHours in
			$isFullDay)
				totalHour=$(($totalHour+$FULLDAY_WORKING_HOUR))
				fullDayWage=$(($WAGE_PER_HOUR*$FULLDAY_WORKING_HOUR))
				echo "Wage per day is:" $fullDayWage
				totalDays=$(($totalDays+1))
				;;
			$isHalfDay)
				totalHour=$(($totalHour+$HALFDAY_WORKING_HOUR))
				halfDayWage=$(($WAGE_PER_HOUR*$HALFDAY_WORKING_HOUR))
				echo "Wage per day is:" $halfDayWage
				totalDays=$(($totalDays+1)) 
				;;
		esac

	else
		echo "Employee Absent"
	fi
done

