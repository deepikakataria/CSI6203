#!/bin/bash

VAR1=$1
#$1 is the command line through which the input is taken from user and set into a variable VAR1
printError()
#Here printError is the functio, which is being called here in the end of the program
{
	echo -e "\033[31mERROR:\033[0m" $VAR1
#Here in the function we had use colour coding to print ERROR
}

printError
