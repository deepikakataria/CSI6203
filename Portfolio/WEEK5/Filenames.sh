#!/bin/bash
for file in $(cat 'filenames.txt');
# cat command is used to output the contents of a file
do
if [ -d "$file" ]; then
# -d is used for all directories and for comparision we use []
echo " $file is a directory "
elif [ -f "$file" ]; then
# -f is used for all normal files 
echo " $file is a file "
elif [  "$file" ]; then
echo " I don't know what $file is! "
fi
done
exit 0
