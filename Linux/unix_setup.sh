#!/bin/bash

#############################################################################################################
# Script name	:	unix_setup.sh
# Description	:	This script is used to setup the process count job in Windows OS
# Author		:	Avinash Kunder
# Date			:	25/07/2020
#############################################################################################################

# Create a user
useradd avinash || true

# Copy the process count script to user home location
cp process_count.sh /home/avinash/

# Create the service
cp processcount.service /usr/lib/systemd/system/
ln -sf /usr/lib/systemd/system/processcount.service /etc/systemd/system/multi-user.target.wants/processcount.service

# Reload the service daemon
systemctl daemon-reload

# Start the service
systemctl start processcount.service

#Enable the service
systemctl enable processcount.service
