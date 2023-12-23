#!/bin/bash

# This script checks for available package updates and notifies the user

# Check for updates
sudo apt update > /dev/null 2>&1

# Check if there are any upgrades available
upgrade_count=$(sudo apt list --upgradable | grep -c upgradable)

# Notify the user if updates are available
if [ "$upgrade_count" -gt 0 ]; then
    echo "Updates are available. Please run 'sudo apt upgrade' to install them."
else
    echo "No updates available at this time."
fi