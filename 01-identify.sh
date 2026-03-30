#!/bin/bash
# Author: Manas (24BCE11108)
# Purpose: System Identity Report

echo "================================================================================"
echo "                   Git AUDIT - SYSTEM IDENTITY                   "
echo "================================================================================"

echo "Linux Distribution: $(cat /etc/os-release | grep PRETTY_NAME | cut -d '=' -f2- | tr -d '"')"
echo "Kernel Version:     $(uname -r)"
echo "Current User:       $(whoami)"
echo "Home Directory:     $(pwd)"
echo "System Uptime:      $(uptime)"
echo "Current Date/Time:  Mon Mar 30 2026 18:07:27 GMT+0000 (Coordinated Universal Time)"
echo "--------------------------------------------------------------------------------"
echo "Message: This system runs on Open Source software, providing freedom to study, change, and distribute."
echo "================================================================================"