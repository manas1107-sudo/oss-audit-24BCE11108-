#!/bin/bash
# Author: Manas (24BCE11108)
# Purpose: Disk and Permission Auditor

dirs=("/etc" "/var/log" "/usr/bin" "/home" "/root/.git" "/home/$(whoami)/.git")

echo "================================================================================"
echo "                   Git AUDIT - DIRECTORY AUDITOR                "
echo "================================================================================"

echo "Directory          Size          Permissions          Owner"

echo "--------------------------------------------------------------------------------"
for dir in "${dirs[@]}";
    do
        if [ -d "$dir" ]; then
            size=$(du -sh "$dir" | cut -f1)
            permissions=$(stat -c "%a" "$dir")
            owner=$(stat -c "%U" "$dir")
            echo "$dir          $size          $permissions          $owner"
        else
            echo "$dir          N/A          N/A          N/A"
        fi
    done

echo "================================================================================"