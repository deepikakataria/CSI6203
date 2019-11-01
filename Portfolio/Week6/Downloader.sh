#!/bin/bash
read -p "please type the url of the file you want to download:" url
# This command is used to print and take value from the user and save it in the variable called url
read -p "please type the destination folder:" destination
# This command is used to print and take the value from the user and save it in a variable called destination
wget -P $destination  $url
# wget command is used  to download a file from the internet from the user given url and save it to the user given destination
echo -e "Download Function Complete"
# This command is used to print (Download Function Complete)
