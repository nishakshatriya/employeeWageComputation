totalDays=$(($totalDays+1))#!/bin/bash/ -x
#CONSTANT
WORKING_DAYS_PER_MONTH=20
FULLDAY_WORKING_HOUR=8
HALFDAY_WORKING_HOUR=4

#VARIABLES
isFullDay=1
isHalfDay=0
monthlyWage=0
totalHour=0
totalDays=0
WAGE_PER_HOUR=20
counter=0
echo "Welcome to Employee Wage Computation"

function getWorkingHours(){
	workingHoursOption=$((RANDOM%2))
	if [ $workingHoursOption -eq 1 ]
	then
		echo $FULLDAY_WORKING_HOUR
	else
		echo $HALFDAY_WORKING_HOUR
	fi
}

while [[ $totalHour -le 100 && $totalDays -le 20 ]]
do

	presenty=$((RANDOM%2))
	if [ $presenty -eq 1 ]
	then
		echo "Employee Present"
		workingHours=$( getWorkingHours )
		case $workingHours in
			$FULLDAY_WORKING_HOUR)
				fullDayWage=$(($WAGE_PER_HOUR*$FULLDAY_WORKING_HOUR))
				dailyArr[((counter++))]=$fullDayWage
				totalWage=$(($totalWage+$fullDayWage))
				totalArr[((counter++))]=$totalWage

				echo "Wage per day is:" $fullDayWage
				totalDays=$(($totalDays+1))
				;;
			$HALFDAY_WORKING_HOUR )
				halfDayWage=$(($WAGE_PER_HOUR*$HALFDAY_WORKING_HOUR))
				dailyArr[((counter++))]=$halfDayWage
				totalWage=$(($totalWage+$halfDayWage))
				totalArr[((counter++))]=$totalWage

				echo "Wage per day is:" $halfDayWage
				totalDays=$(($totalDays+1)) 
				;;
		esac

	else
		echo "Employee Absent"
	fi
done

echo "Daily Array-->" ${dailyArr[@]}
echo "Total Array-->" ${totalArr[@]}

