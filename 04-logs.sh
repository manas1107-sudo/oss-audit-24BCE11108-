#!/bin/bash
# Author: Manas (24BCE11108)
# Purpose: Log File Analyzer

# Suggested log path for Git: /var/log/git.log

echo "================================================================================"
echo "                   Git AUDIT - LOG FILE ANALYZER              "
echo "================================================================================"

count=0
while IFS= read -r line;
    do
        if [[ "$line" == *"$2"* ]]; then
            ((count++))
        fi
    done < "$1"

echo "Found $count occurrences of '$2' in $1"

tail -n 5 "$1" | grep "$2"

echo "================================================================================"