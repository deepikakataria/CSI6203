#!/bin/bash
read -p "please type the url of the file you want to download:" url
read -p "please type the destination folder:" destination
wget -P $destination  $url
echo -e "Download Function Complete"
cp /home/student/CSI6203/Portfolio/Week7/$destination/*.html /home/student/CSI6203/Portfolio/Week7
sed -n 's/.*<title>\(.*\)<\/title>.*/\1/ip;T;q' index.html > pole.txt
echo -e "Downloaded a page with the title:" 
cat pole.txt
