#!/bin/bash
read -p "Please type the name of the folder you want to open " name
# read -p is the command for printing output and taking input from the user and storing it in the variable, here the variable is name.
ls /home/student/CSI6203/Portfolio/$name
# ls command is use to list the contents of the folder.
exit 0