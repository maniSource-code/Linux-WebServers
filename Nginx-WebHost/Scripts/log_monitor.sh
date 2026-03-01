#!/bin/bash

SECURE_LOG="/var/log/secure" #ssh logfile
ACCESS_LOG="/var/log/nginx/access.log" #nginx access.log
ERROR_LOG="/var/log/nginx/error.log" #nginx error.log

DATE=$(date +%Y-%m-%d_%H-%M-%S)

OUTPUT_FILE="/home/mani/log_monitor/log-$DATE.txt"

echo "===== Log Report - $DATE =====" >> $OUTPUT_FILE

# Count failed login attempts
FAILED_LOGINS=$(grep "Failed password" $SECURE_LOG | wc -l)
echo "Failed Login Attempts: $FAILED_LOGINS" >> $OUTPUT_FILE

# Count 404 errors
ERROR_404=$(grep " 404 " $ACCESS_LOG | wc -l)
echo "404 Errors: $ERROR_404" >> $OUTPUT_FILE

# Count total errors in error log
ERROR_COUNT=$(wc -l < $ERROR_LOG )
echo "Total Error Log Lines: $ERROR_COUNT" >> $OUTPUT_FILE

echo "Report saved to $OUTPUT_FILE"