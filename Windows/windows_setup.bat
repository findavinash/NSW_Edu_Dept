@echo off

goto comments
Script name	:	process_count.sh
Description	:	This script is used to setup the process count job in Windows OS
Author		:	Avinash Kunder
Date		:	25/07/2020
:comments

REM Create a user
net user avinash /add /homedir:"C:\Users\avinash"

REM Copy the executable script to user home location
copy process_count.exe C:\Users\avinash\

REM Create the service
sc.exe create processcount binPath= "C:\Users\avinash\process_count.exe" type= own start= auto

REM Start the service
sc.exe start processcount