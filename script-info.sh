#!/bin/bash

############################
# Execution Time Tracking
############################

START_TIME=$(date +%s)
echo "Script started at: $START_TIME"

sleep 10

END_TIME=$(date +%s)
TOTAL_TIME=$((END_TIME - START_TIME))

echo "Script executed in: $TOTAL_TIME seconds"


############################
# Special Variables Section
############################

echo "---------------------------------"
echo "All args passed to script: $@"
echo "Number of args passed: $#"
echo "Script name: $0"
echo "Present directory: $PWD"
echo "User running script: $USER"
echo "Home directory: $HOME"
echo "PID of this script: $$"

sleep 100 &
echo "PID of recently executed background process: $!"

echo "All args using * : $*"
