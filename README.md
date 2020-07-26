# NSW_Edu_Dept
Project submission for NSW Education Dept - process count by - **Avinash Kunder**

# Project information
This project contains a program that will count the number of processes executing on a machine and output the count as an integer.
There are 2 sets of programs - for use on machines installed with Linux OS and Windows OS.
These programs will be executed as a service by a user named 'avinash'

# Getting started
These instructions will help you to get a copy of this project up and running

## Prerequisites
You will need a machine installed with Linux OS and a machine installed with Windows OS.
There are 2 folders - Linux and Windows - each for the code that will be executed in the respective OS.
The programs contain a setup script which needs to be executed with an adminstrator/root priviledged account.

## Features
The setup program will execute the following series of steps:
1. Create a user named 'avinash'

2. Copy the executable script to the user home directory

3. Create the service

4. Start the service

The program execution interval can be updated by updating the script - default interval is set as 10 seconds
The program executes at the set interval continuously until the service is stopped

## Installation
1. Clone the repo
> git clone https://github.com/findavinash/NSW_Edu_Dept.git

2. For **Linux OS** - use the program in the base folder named Linux

3. Execute the setup script - unix_setup.sh
> sh unix_setup.sh

4. For **Windows OS** - use the program in the base folder named Windows

5. Execute the setup script - windows_setup.bat
> double click on windows_setup.bat

## Usage
Once the setup script is executed - the program will be deployed and executed
Use below commands to see the output:
### Linus OS
> systemctl status processcount

### Windows OS
> sc query processcount

Use below commands to stop the service:
### Linux OS
> systemctl stop processcount

### Windows OS
> sc stop processcount

The interval of the program execution can be controlled by modifying a variable in the script
### Linux OS
> systemctl stop processcount
> vi process_count.sh
> Update the value of variable interval. Default value set is 10 seconds
> systemctl start processcount

### Windows OS
> sc stop processcount
> edit process_count.bat
> Update the value of variable interval. Default value set is 10 seconds
> sc start processcount



