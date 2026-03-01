#!/bin/bash

WEB_ROOT="/usr/share/nginx/*"

# backup directory
BACKUP_DIR="/home/mani/log_monitor/backup"

DATE=$(date +%Y-%m-%d_%H-%M-%S)
#backup file name
BACKUP_FILE="nginx_backup_$DATE.tar.gz"

# Create backup directory if not exists
mkdir -p $BACKUP_DIR
#compress and archive backup
tar -czf $BACKUP_DIR/$BACKUP_FILE $WEB_ROOT 

# Delete older backups
find $BACKUP_DIR -name "*.tar.gz" -type f -mtime +7 -delete

echo "Older than 7 days backups are deleted"
