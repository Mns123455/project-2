#!/bin/bash
echo "===== System Monitor Script Started ====="

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
LOGFILE="system_status_$DATE.log"

echo "User: $(whoami)" > $LOGFILE
echo "Current Directory: $(pwd)" >> $LOGFILE

# Uptime (works in Ubuntu, fallback in Git Bash)
if type uptime >/dev/null 2>&1; then
    echo "Uptime: $(uptime)" >> $LOGFILE
else
    echo "Uptime: $(date)" >> $LOGFILE
fi

# Memory usage (works in Ubuntu, fallback in Git Bash)
if type free >/dev/null 2>&1; then
    echo "Memory Usage:" >> $LOGFILE
    free -h >> $LOGFILE
else
    echo "Memory Usage: Not available in Git Bash" >> $LOGFILE
fi

# Disk usage (works in Ubuntu, partial in Git Bash)
if type df >/dev/null 2>&1; then
    echo "Disk Usage:" >> $LOGFILE
    df -h >> $LOGFILE 2>/dev/null
else
    echo "Disk Usage: Not available in Git Bash" >> $LOGFILE
fi

echo "===== System Monitor Script Completed ====="
echo "Log saved in $LOGFILE"

