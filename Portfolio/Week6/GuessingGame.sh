#!/bin/bash

getNumber()
# Here getNumber is a function which is called here in the program
{
	[ $REPLY -lt 42 ] && echo " Too Low "
	[ $REPLY -gt 42 ] && echo " Too High "
	[ $REPLY -eq 42 ] && echo " Correct! "
# These command compares the user input that whether it is lesser then, greater then or equal to 42 and then print accordingly whether it is too low, too high or correct
}
echo "this is the start of the guessing game"
# This command prints that this is the start of the guessing game
until (( REPLY == 42 )); do
# This command will repeat the following task until REPLY is equal to 42
read -p  "please type a number between 1 to 100: " REPLY
# This command prints and takes the value from user and save it in REPLY variable 
getNumber
# There it is calling the getNumber function
done
echo "Thank you!"
exit 0
