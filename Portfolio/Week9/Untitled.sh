#!/bin/bash
awk 'BEGIN { FS=","; currency="$"; print "Item         | Quantity | Price |Total"}
{ printf "%-12s |%9d |%c%05.2f | %c%05.2f\n", $1, $2, currency, $3,currency, $2*$3}' ./shopping.csv
##awk 'BEGIN { FS=","; currency="$"; print "Total:       |%9d |%c%05.2f %c%05.2f\n", currency,           |       |"}
##{ printf  "%-12s       |%9d      |%c%05.2f  |%c%05.2f\n", SUM+=$2 }' ./shopping.csv
awk 'BEGIN {FS = ","} ; {SUM+=$2}' ./shopping.csv > pole.txt
cat pole.txt
#printf  "Total:       |%9d |%c%05.2f  |%c%05.2f\n"
##awk {for(i=2;i<=NF;i++)a[i]+=$i; print $0} END{l="sum";i=2;while(i in a){l=l""a[i];i++}; print l}' ./shopping.csv
#awk 'BEGIN { FS=","; currency="$"; T="TOTAL:" } 
#{ printf  SUM+=$2 }'
#{ printf "%-12s |%9d |%c%05.2f |%c%05.2f", T, SUM+=$2, currency, SUM+=$3, currency, SUM+=$2*$3}' ./shopping.csv
#{ printf "%-12s |%9d |%c%05.2f |%c%05.2f", T, $SUM, currency, $SU, currency, $S}' ./shopping.csv
