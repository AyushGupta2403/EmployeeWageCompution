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
DAYS_IN_MONTH=20

if [ $isPresent  == $randomCheck ]
then
	case $timeCheck in $isFullTime )
			echo "Employee is present and is a FullTime Employee"
			empHrs=8
					;;
	$isPartTime )
			echo "Employee is present and is a PartTime Employee"

			empHrs=8
        				;;
	esac
else
		echo "Employee is absent"
		empHrs=0
fi

wagePerDay=$(( $WAGE_PER_HOUR*$empHrs ))
salary=$(( $wagePerDay*$DAYS_IN_MONTH ))
echo " Salary " $salary
