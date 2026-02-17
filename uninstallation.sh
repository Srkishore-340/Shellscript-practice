#!/bin/bash

# Function to validate command execution
VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "$2 ... FAILURE"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}

# Root check
if [ $(id -u) -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

echo "Stopping Services..."

systemctl stop nginx 2>/dev/null
systemctl stop mysqld 2>/dev/null

echo "Removing Packages..."

dnf remove nginx -y
VALIDATE $? "Removing Nginx"

dnf remove mysql-server -y
VALIDATE $? "Removing MySQL"

dnf remove nodejs -y
VALIDATE $? "Removing NodeJS"

echo "Cleaning unused dependencies..."
dnf autoremove -y
VALIDATE $? "Autoremove"

echo "Uninstallation Completed Successfully"
