Project Title : Production-Style Linux Nginx Web Server Setup & Hosting

Set up a production-ready Linux web server with security, monitoring, automation, and backup configuration.

PHASE 1: Server Setup & User Management

  Step 1: System Preparation
  
    . Install a Linux server (Ubuntu/Rocky).
    . Update the system packages.

  Step 2: User & Group Management
  
    . Create a new group for developers.
    . Create two users and add them to the group.
    . Configure password policies.
    . Give sudo access to only one user.

PHASE 2: Web Server Deployment

  Step 3: Install Web Server
  
    . Install Nginx or Apache.
    . Start and enable the service.
    . Create a custom HTML page.
    . Configure firewall to allow web traffic.

PHASE 3: File Permissions & Security

  Step 4: Secure Web Directory
  
    . Change ownership of web root.
    . Set proper file permissions.
    . Prevent unauthorized access.
    . Disable root SSH login.

PHASE 4: Log Monitoring & Automation

  Step 5: Log Monitoring Script
  
    . Identify web server log location.
    . Create a shell script that:
    . Counts failed login attempts
    . Counts 404 errors
    . Save output to a file.

  Step 6: Automate Using Cron
  
    . Schedule log monitoring script to run every 5 minutes.
    . Schedule a system health report daily.

PHASE 5: Backup & Recovery

  Step 7: Automated Backup
  
    . Create a backup directory.
    . Compress web files.
    . Add date to backup filename.
    . Schedule daily backup.

PHASE 6: System Monitoring

  Step 8: Monitor System Performance
  
    . Monitor CPU usage.
    . Monitor memory usage.
    . Monitor disk usage.
