#!/bin/bash
awk 'BEGIN {
      FS=","; currency="$"
printf " %-12s | %-4s| %-5s | %-6s| %-10s\n ", "Item", "Quantity", "Price", "Total", "Comment"
printf "_____________|_________|_______|_______|______________\n"
}
#These command is used for printing and formatting the table
{
printf "%-12s  |%-8s |%-6s |%-6s |", $1, $2, "$" $3, "$" $2*$3
{
if ($2*$3 > 5){print "Thats a bit expensive! Are you sure?" }
else if ($2 > 5){print "Do you really need that many?" }
else if ($3 < 3){print "Such a cheapstake!" }
else {print " "}
}
}' ../Week9/shopping.csv
#These command are used for matching the conditions and then printing the comments accordingly

awk 'BEGIN {FS=","} ; {T="TOTAL"} ; {currency="$"} ; {SUM+=$2} ; {SU+=$3} ; {S+=$2*$3} END {printf "%-12s  |%4d     |%c%03.2f |%c%05.2f\n", T, SUM, currency, SU, currency, S }' ../Week9/shopping.csv
# these commands are used to print the total of the column in the last row
