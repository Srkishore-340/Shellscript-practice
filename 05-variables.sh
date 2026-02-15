#!/bin/bash

# Ask for username
echo "Please enter your username:"
read USER_NAME
echo "User name is $USER_NAME"

# Ask for password (hidden input)
echo "Please enter your password:"
read -s PASSWORD
echo
echo "Password is $PASSWORD"

# Take arguments from command line
PERSON1=$1
PERSON2=$2

# Conversation
echo "$PERSON1: Hello $PERSON2, How are you?"
echo "$PERSON2: Hi $PERSON1, I am fine thanks for asking. How are you doing?"
echo "$PERSON1: Doing fine. What are you learning $PERSON2?"
echo "$PERSON2: I am learning Shell. What about you?"
