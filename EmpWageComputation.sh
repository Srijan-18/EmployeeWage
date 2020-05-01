#!/bash/bin -x

echo "Welcome to Employee Wage Computation"
empAttendace=$(( RANDOM%2 ))
IS_PRESENT=1
if [ $empAttendance -eq 1 ]
then
echo "Employee is Present"
else
echo "Employee is Absent"
fi

