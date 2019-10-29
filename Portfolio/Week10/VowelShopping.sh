#!/bin/bash
echo "Your shopping list is as follows:"
awk 'BEGIN {
     FS=","
}
/^[aeiou]/ {
     print "starts with a vowel: " $1
}'  ../Week\9/shopping.csv
awk 'BEGIN {
     FS=","
}
/^[o]/{
      print "starts with o: " $1
}' ../Week\9/shopping.csv   
awk 'BEGIN {
     FS=","
}
/[A-Z A-Z]/{
   print "has more than one word:" $1
}' ../Week\9/shopping.csv
awk 'BEGIN {
     FS=","
}
/[0-9.0]/{
   print "have a whole number price:" $1
}' ../Week\9/shopping.csv
