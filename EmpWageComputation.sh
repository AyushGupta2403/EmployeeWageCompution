#!/bin/bash -x
#Welcome to Employee Wage Computation Program on Master Branch

#Variable
isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent  == $randomCheck ]
then
	echo "Employee is present"
else
	echo "Employee is Absent"
fi
