#!/bin/bash
#These command are used to retrive the data from the web page and then print its heading and paragraph text only
curl -s http://example.com |\
tr '\n' ' ' |\
grep -oE '<div>.*<\/div>' |\
sed -e 's/<[^>]*>//g'
 
