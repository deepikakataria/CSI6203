#!/bin/bash
echo -e "editing file"
echo -e "DONE!"
sed -i '/Linux/ i\The next line contains the word LINUX ' LinuxInfo.txt
#sed -n 's/Linux/Papa/g' LinuxInfo.txt
