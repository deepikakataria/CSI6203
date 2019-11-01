#!/bin/bash
awk 'BEGIN { FS=","; currency="$"; print "Item         | Quantity | Price |Total"}
{ printf "%-12s |%9d |%c%05.2f | %c%05.2f\n", $1, $2, currency, $3,currency, $2*$3}' ./shopping.csv
#Here awk command is used with the field seperator and print Item, Quantity, Price and Total and used printf command to print the values by taking it from the file shopping.csv  
awk 'BEGIN {FS = ","} ; {T="TOTAL"} ; {currency="$"} ; {SUM+=$2} ; {SU+=$3} ; {S+=$2*$3}  END {printf "%-12s |%9d |%c%05.2f | %c%05.2f\n", T, SUM, currency, SU, currency, S }' ./shopping.csv 
#Here awk command is used with printf command to print total of each column
