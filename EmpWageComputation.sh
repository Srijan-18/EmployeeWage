#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

IS_FULL_TIME=1
IS_PART_TIME=2
WAGE_PER_HOUR=20
employeeDailyWage=0;
employeeWorkHours=0
employeeAttendance=$(( RANDOM%3 ))
case $employeeAttendance in
	$IS_PART_TIME)
		employeeWorkHours=8
	;;

	$IS_FULL_TIME)
		employeeWorkHours=8
	;;

	*)
		employeeWorkHours=0
	;;
esac

employeeDailyWage=$(( WAGE_PER_HOUR*employeeWorkHours))

