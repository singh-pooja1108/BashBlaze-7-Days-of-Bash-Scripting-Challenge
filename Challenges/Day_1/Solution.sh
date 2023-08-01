#!/bin/bash

#Author : Pooja Singh
#Date   : 1-Aug-23
#Repo   : prajwalpd7
#purpose : 7 days bash script challange ---Day1 (Train with Shubham)

#Task-1 comments

#This script shows the use of comments in a Bash script.
#Comments start with the `#` symbol and are used to add explanatory notes.

#Print a message to the terminal

echo "Hello, My name is Pooja Singh!"

#this line is a comment and will be ignored when the script is executed.

#Task-2 echo

#This script uses the `echo` command to print a custom message.

echo "Welcome to train with shubham batch 4"

#Task-3 Variables

#This script shows how to declare and assign values to variables in bash.
#Declare variables

name="Puneet"
age=35

#Print the values of the variables
echo "Name: $name"
echo "Age: $age"

#Task-4 Using variables 

#This script takes 2 variables as input and prints their sum.

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
sum=$((num1 + num2))

#print the result
echo "The sum of $num1 and $num2 is: $sum"


#Task-5 Using built-in variables

#This script utilizes built-in variables to display relevant information.

echo "My current bash path: $BASH"
echo "Bash version i am using: $BASH_Version"
echo "PID of bash I am running: $$"
echo "Home directory of current user: $HOME"
echo "Present working directory of current user: $PWD"

#This script uses wildcards to list all files with a specific extension in a directory.

echo "searching files with .sh extenion "
ls .sh


