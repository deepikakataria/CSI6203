#!/bin/bash
awk 'BEGIN { FS=","; currency="$"; print "Item               | Quantity     | Price"}
{ printf "%-12s       | %2d           | %c%05.2f\n", $1, $2, currency, $3}' ./shopping.csv

