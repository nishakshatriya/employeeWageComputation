#!/bin/bash/ -x
echo "Welcome to Employee Wage Computation"

presenty=$((RANDOM%2))
if [ $presenty -eq 1 ]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
