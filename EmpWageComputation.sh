#!/bin/bash -x
#Welcome to Employee Wage Computation Program on Master Branch

#Variable
isPresent=1
randomCheck=$((RANDOM%2))

#constants
WAGE_PER_HOUR=20
EMP_HOUR_FULL_TIME=8

if [ $isPresent  == $randomCheck ]
then
	echo "Employee is present"
	wagePerDay=$(( $WAGE_PER_HOUR * $EMP_HOUR_FULL_TIME ))
	echo $wagePerDay

else
	echo "Employee is Absent"
fi
