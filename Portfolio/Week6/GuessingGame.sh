#!/bin/bash

getNumber()
{
	[ $REPLY -lt 42 ] && echo " Too Low "
	[ $REPLY -gt 42 ] && echo " Too High "
	[ $REPLY -eq 42 ] && echo " Correct! "
}
echo "this is the start of the guessing game"
until (( REPLY == 42 )); do
read -p  "please type a number between 1 to 100: " REPLY
getNumber
done
echo "Thank you!"
exit 0
