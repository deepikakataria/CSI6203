#!/bin/bash
read -p " Type a folder name: " name
# read -p is the command used for printing and taking input from user storing it into a variable, here that variable is name.
mkdir $name
# mkdir is the command used for making directories.
read -s -p "Type your secret password" pass
# -s is the command used for hiding the sensitive data like passwords.
echo -e " Your secret password is $pass" > secret.txt
# echo command is used for printing.
# -e is the escape sequences for some characters to enable.
mv /home/student/CSI6203/Portfolio/Week2/secret.txt /home/student/CSI6203/Portfolio/Week2/$name
# mv command is used for moving a file
exit 0