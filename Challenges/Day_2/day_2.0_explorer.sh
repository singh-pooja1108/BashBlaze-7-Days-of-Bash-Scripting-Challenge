#!/bin/bash

#Author : Pooja Singh
#Date   : 5-Aug-23
#Repo   : prajwalpd7
#purpose : 7 days bash script challange ---Day1 (Train with Shubham)

# Upon execution without any command-line arguments, the script will display a welcome message
if [ $# -eq 0 ]
then
    echo -e "Welcome to the Interactive File and Directory Explorer!\n"
fi

echo -e "Files and Directories in the current Path:\n"


# This command will print the name and size of files in human readable format.
ls -lh | awk 'NR > 1 {print $9,"  ", "(",$5,")"}'


# The input string will be stored in a variable named inputString.
read -p "Enter a line of text (Press Enter without text to exit): " inputString


# This while loop with take the input from the user continuously and count the no. of characters in the whole string.

while [ "$inputString" != "" ] ; do

      characterCount=${#inputString}
      echo "The input string '$inputString' has '$characterCount' characters"
      read -p "Enter a line of text (Press Enter without text to exit): " inputString
done

echo ""

# if no string passed by user then it will exit and will show a message.
echo " Exiting the Interactive Explorer. Goodbye!"

