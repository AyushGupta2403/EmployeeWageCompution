#!/bin/bash -x
#Welcome to Employee Wage Computation Program on Master Branch

#Variable
isPresent=1
randomCheck=$((RANDOM%2))
timeCheck=$((RANDOM%2))
isFullTime=1
isParttime=0
workHours=0
workdays=1

#constants
WAGE_PER_HOUR=20
DAYS_IN_MONTH=20
TOTAL_WORKING_HOURS=100

function workingHours()
{
	timeCheck=$1
	case $timeCheck in $isFullTime )
		empHrs=8
		;;
		$isPartTime )
		emphrs=8
		;;
	*)
		empHrs=0
		;;
	esac
		echo $emphours
}
while (( workHours<TOTAL_WORKING_HOURS && workDays<DAYS_IN_MONTH ))
do
	timeCheck=$((RANDOM%3))
	empHrs=$(( workingHours $timeCheck ))
	workHours=$(( $workHours + $empHrs ))
	((workDays++))
done
#calculating total salary based on work hours
totalSalary=$(( $workHours*$WAGE_PER_HOUR ))
echo "Total Salary:"
echo $totalSalary
