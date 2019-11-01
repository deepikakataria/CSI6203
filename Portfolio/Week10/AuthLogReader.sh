#!/bin/bash
echo -e "Auth Loh:"
cat /var/log/auth.log | awk '{
print "\n" $1 " "$2" - "$3" : \n" $5
p.rintf "\t"
}
#This command will process the /var/log/auth..log
{
for (i=6; i<NF; i++)
 printf $i " ";
if (NF >=6)
print $NF;
}'
# This for loop is to get the entire message
