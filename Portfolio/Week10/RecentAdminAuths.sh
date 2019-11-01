#!/bin/bash
# These command will access /var/log/auth.log and if the condition fullfil then print the  message
echo -e "Auth Loh:"
cat /var/log/auth.log | awk '{
if ($NF == "root")
{
print "\n" $1 " "$2" - "$3" : \n" $5
printf "\t"
for (i=6; i<NF; i++)
printf $i " ";
if (NF >=6)
print $NF;
}
}'
