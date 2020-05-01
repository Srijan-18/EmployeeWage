#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

IS_FULL_TIME=1
IS_PART_TIME=2
MAX_WORKING_DAYS=20
WAGE_PER_HOUR=20
employeeDailyWage=0
employeeWorkHours=0

employeeMonthlyWage=0;
for (( count=1;count<=$MAX_WORKING_DAYS; count++))
do
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

	employeeDailyWage=$((WAGE_PER_HOUR*employeeWorkHours))
	employeeMonthlyWage=$((employeeMonthlyWage+employeeDailyWage))
done

