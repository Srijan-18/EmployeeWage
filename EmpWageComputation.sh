#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

IS_FULL_TIME=1
IS_PART_TIME=2
MAX_WORKING_DAYS=20
MAX_WORKING_HOURS=100
WAGE_PER_HOUR=20
employeeDailyWage=0
employeeDailyHours=0
employeeWorkHours=0
employeeWorkDays=0
employeeMonthlyWage=0;
while  (( employeeWorkHours<MAX_WORKING_HOURS && employeeWorkDays<MAX_WORKING_DAYS ))
do
	employeeAttendance=$(( RANDOM%3 ))
	case $employeeAttendance in
		$IS_PART_TIME)
			employeeDailyHours=8
			employeeWorkHours=$((employeeWorkHours+employeeDailyHours))
		;;

		$IS_FULL_TIME)
			employeeDailyHours=8
			employeeWorkHours=$((employeeWorkHours+employeeDailyHours))
		;;

		*)
			employeeDailyHours=0
		;;
	esac
	((employeeWorkDays++))
	employeeDailyWage=$((WAGE_PER_HOUR*employeeDailyHours))
	employeeMonthlyWage=$((employeeMonthlyWage+employeeDailyWage))
done

