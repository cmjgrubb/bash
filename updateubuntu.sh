#!/bin/bash

# Author: CMJ Grubb
# Date: 02/28/2022
# Description: Script to update Ubuntu 21.10 Desktop

# Ensure script is being run as root
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "This script must be run as root!"
    exit
fi

# Update programs in apt repositories and clean up
apt-get update
apt-get upgrade -y
apt-get autoremove --purge -y
apt-get autoclean -y

# Update Snaps
snap refresh
