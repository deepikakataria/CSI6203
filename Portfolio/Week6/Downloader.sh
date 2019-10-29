#!/bin/bash
read -p "please type the url of the file you want to download:" url
read -p "please type the destination folder:" destination
wget -P $destination  $url
echo -e "Download Function Complete"
