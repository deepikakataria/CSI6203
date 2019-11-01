#!/bin/bash
awk 'BEGIN { FS=","; currency="$"; print "Item               | Quantity     | Price"}
{ printf "%-12s       | %2d           | %c%05.2f\n", $1, $2, currency, $3}' ./shopping.csv
# Here awk command is used with the field seperator , print and printf  to take the values from the file shopping.csv and print it in a particular format
