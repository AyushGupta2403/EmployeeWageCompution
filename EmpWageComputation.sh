#!/bin/bash -x
#Welcome to Employee Wage Computation Program on Master Branch

#Variable
isPresent=1
randomCheck=$((RANDOM%2))
timeCheck=$((RANDOM%2))
isFullTime=1
isParttime=0

#constants
WAGE_PER_HOUR=20
EMP_HOUR_FULL_TIME=8
EMP_HOUR_PART_TIME=8

if [ $isPresent  == $randomCheck ]
then
	case $timeCheck in $isFullTime )
		echo "Employee is present and is a FullTime Employee"
		wagePerDay=$(( $WAGE_PER_HOUR * $$EMP_HOUR_FULL_TIME ))
		echo "Wage Per Day" $wagePerDay
					;;
	$isPartTime )
		echo "Employee is present and is a PartTime Employee"

		wagePerDay=$(( $WAGE_PER_HOUR*$EMP_HOUR_PART_TIME ))
        	echo "Wage Per Day" $wagePerDay
					;;
	esac
else
		echo "Employee is absent"
fi
