#!/bin/bash -x

echo "Welcome to Employee Wage Computation"
empAttendance=$(( RANDOM%2 ))
IS_PRESENT=1
WAGE_PER_HOUR=20
employeeDailyWage=0;
employeeWorkHours=0
if [ $empAttendance -eq $IS_PRESENT ]
then
	employeeWorkHours=8
else
	employeeWorkHours=0
fi

employeeDailyWage=$(( WAGE_PER_HOUR*employeeWorkHours))

