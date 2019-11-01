#!/bin/bash
echo "Your shopping list is as follows:"
#this command is used to print.
awk 'BEGIN {
     FS=","
}
{
	print $1
}' shopping.csv
# This will be used to print first field in the file shopping.csv also field seperator is used to seperate the field by ","
