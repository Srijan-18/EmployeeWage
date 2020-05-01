#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

IS_FULL_TIME=1
IS_PART_TIME=2
WAGE_PER_HOUR=20
employeeDailyWage=0;
employeeWorkHours=0
empAttendance=$(( RANDOM%3 ))
if [ $empAttendance -eq $IS_FULL_TIME ]
then
	employeeWorkHours=8
elif [ $empAttendance -eq $IS_PART_TIME ]
then
	employeeWorkHours=8
else
	employeeWorkHours=0
fi

employeeDailyWage=$(( WAGE_PER_HOUR*employeeWorkHours))

