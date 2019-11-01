#!/bin/bash
read -p "please type the url of the file you want to download:" url
# this command is used to print and take the user input into the variable called url
read -p "please type the destination folder:" destination
# this command is used to print and take the user input into the variable called destination
wget -P $destination  $url
# wget command is used to download a file from the internet which is given by the user and and save it into the destination which is also given by the user
echo -e "Download Function Complete"
# this command is used to print
cp /home/student/CSI6203/Portfolio/Week7/$destination/*.html /home/student/CSI6203/Portfolio/Week7
# this command is used to copy the .html file from destination folder into Week7 directory
sed -n 's/.*<title>\(.*\)<\/title>.*/\1/ip;T;q' *.html > pole.txt
# this command is used to retrive the title of the web page from the .html file and save it onto a file named pole.txt
echo -e "Downloaded a page with the title:" 
# this command is used to print
cat pole.txt
# cat command is used to print 
