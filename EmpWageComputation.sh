#!/bash/bin -x

echo "Welcome to Employee Wage Computation"
empAttendace=$(( RANDOM%2 ))
IS_PRESENT=1
if [ $empAttendance -eq $IS_PRESENT ]
then
echo "Employee is Present"
else
echo "Employee is Absent"
fi

