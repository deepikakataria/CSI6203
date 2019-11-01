#!/bin/bash
echo -e "editing file.."
echo -e "DONE!"
# These echo command is used to print.
sed -i '/Linux/ i\The next line contains the word LINUX ' LinuxInfo.txt
# Here sed command is used for inserting the line
# -i is a flag used to save the edited data back to the file
# i\ is used to add extra line before the line containing the word Linux
