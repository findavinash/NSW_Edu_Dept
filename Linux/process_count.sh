#!/bin/bash

#############################################################################################################
# Script name	:	process_count.sh
# Description	:	This script is used to count the number of processes currently executing in the system
# Author		:	Avinash Kunder
# Date			:	25/07/2020
#############################################################################################################

#***********************************
# Initialise variables
#***********************************
p_count=0
interval=10
current_time=`date '+%Y%m%d%H%M%s'`

#***********************************
# Get the count of processes
#***********************************

while true
do
	p_count=$(ps -e --no-headers | wc -l)
	echo "Number of processes at "+${current_time}+" is"+${p_count}

	sleep ${interval}
done
