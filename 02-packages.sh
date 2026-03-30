#!/bin/bash
# Author: Manas (24BCE11108)
# Purpose: FOSS Package Inspector

# Detect the package manager
if [ -x "$(command -v apt)" ]; then
    package_manager="apt"
    package_name="git"
elif [ -x "$(command -v yum)" ]; then
    package_manager="yum"
    package_name="git"
else
    echo "Unsupported package manager"
    exit 1
fi

echo "================================================================================"
echo "                   Git AUDIT - PACKAGE INSPECTOR                "
echo "================================================================================"

echo "Status: $package_name is $(if $package_manager list --installed | grep -q $package_name; then echo "INSTALLED"; else echo "NOT INSTALLED"; fi) on this $(uname -s) system."
echo "Version: $(if $package_manager list --installed | grep -q $package_name; then $package_manager show $package_name | grep Version | cut -d ' ' -f2; else echo "N/A"; fi)"
echo "--------------------------------------------------------------------------------"
echo "FOSS Philosophy Notes:"
echo " - Git: Git is a free and open source distributed version control system."
echo " - Linux: Linux is a free and open source operating system."
echo " - Vim: Vim is a free and open source text editor."
echo " - GCC: GCC is a free and open source compiler."
echo "================================================================================"