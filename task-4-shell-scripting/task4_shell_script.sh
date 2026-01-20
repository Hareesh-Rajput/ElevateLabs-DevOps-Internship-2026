#!/bin/bash
# ==========================================
# DevOps Internship - Task 4
# Organization : Elevate Labs (MSME Supported)
# Task         : Shell Scripting Basics
# Author       : Hareesh
# Year         : 2026
# ==========================================

echo "======================================"
echo "   DEVOPS INTERNSHIP - ELEVATE LABS   "
echo "======================================"

# System Information
echo
echo "===== SYSTEM INFORMATION ====="
USER_NAME=$(whoami)
DATE=$(date)

echo "User Name : $USER_NAME"
echo "Date      : $DATE"

# Disk Usage
echo
echo "===== DISK USAGE ====="
df -h

# Memory Usage
echo
echo "===== MEMORY USAGE ====="
free -h

# CPU Information
echo
echo "===== CPU INFORMATION ====="
lscpu | head -10

# If-Else Example
echo
echo "===== AGE CHECK (IF-ELSE) ====="
age=20

if [ $age -ge 18 ]
then
  echo "You are an Adult"
else
  echo "You are a Minor"
fi

# Loop Example
echo
echo "===== LOOP EXAMPLE ====="
for i in 1 2 3 4 5
do
  echo "Number: $i"
done

# Backup Automation
echo
echo "===== BACKUP TASK ====="
BACKUP_DIR="$HOME/backup"
SOURCE_DIR="$HOME"

mkdir -p $BACKUP_DIR

tar -czf $BACKUP_DIR/home_backup_$(date +%F).tar.gz $SOURCE_DIR 2>/dev/null

echo "Backup completed successfully!"
echo "Backup location: $BACKUP_DIR"

# Output Redirection (Log)
echo "Script executed on $DATE by $USER_NAME" >> script_log.txt

echo
echo "===== SCRIPT EXECUTION COMPLETED ====="
