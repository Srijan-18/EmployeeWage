#!/bin/bash -x

echo "Welcome to Employee Wage Computation"
declare -A employeeDailyWage
IS_FULL_TIME=1
IS_PART_TIME=2
MAX_WORKING_DAYS=20
MAX_WORKING_HOURS=100
WAGE_PER_HOUR=20
employeeDailyHours=0
employeeWorkHours=0
employeeWorkDays=0
employeeMonthlyWage=0

function dailyWorkHours()
{
	case $1 in
		$IS_PART_TIME)
			echo 4
		;;

		$IS_FULL_TIME)
			echo 8
		;;

		*)
			echo 0
		;;
	esac
}
while  (( employeeWorkHours<MAX_WORKING_HOURS && employeeWorkDays<MAX_WORKING_DAYS ))
do
	employeeAttendance=$(( RANDOM%3 ))
	employeeDailyHours=$( dailyWorkHours $employeeAttendance )
	employeeWorkHours=$((employeeWorkHours+employeeDailyHours))
	((employeeWorkDays++))
	employeeDailyWage["Day"$employeeWorkDays]=$((WAGE_PER_HOUR*employeeDailyHours))
	employeeMonthlyWage=$((employeeMonthlyWage+employeeDailyWage["Day"$employeeWorkDays]))
done
echo ${!employeeDailyWage[@]} ${employeeDailyWage[@]}
