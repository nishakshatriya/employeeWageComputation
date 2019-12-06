#!/bin/bash/ -x

WAGE_PER_HOUR=20
FULLDAY_WORKING_HOUR=8
HALFDAY_WORKING_HOUR=4
echo "Welcome to Employee Wage Computation"

presenty=$((RANDOM%2))
if [ $presenty -eq 1 ]
then
	dailyWage=$(( $WAGE_PER_HOUR * $WORKING_HOUR ))
	echo "Employee Present"
	echo $dailyWage
else
	echo "Employee Absent"
fi
