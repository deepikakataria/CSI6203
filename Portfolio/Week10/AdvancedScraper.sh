#!/bin/bash
curl -s https://www.ecu.edu.au/degrees/study-areas/science |\
# curl command is used to retrive html from the web page
awk '{
/^Science/
{print $0}
}'
#This awk command is used to parse the required data 
