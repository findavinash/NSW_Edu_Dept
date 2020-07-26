@echo off

goto comments
Script name	:	process_count.sh
Description	:	This script is used to count the number of processes currently executing in the system
Author		:	Avinash Kunder
Date		:	25/07/2020
:comments

REM Initialise variables

set /A interval=10


REM Get the count of processes

:loop
	for /F %%I in ('tasklist /NH ^| find /I /C /V ""') do set /A p_count=%%I
	echo %p_count%
	
	timeout /T %interval% /nobreak
	goto :loop
