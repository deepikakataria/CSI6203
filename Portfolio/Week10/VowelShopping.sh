#!/bin/bash
echo "Your shopping list is as follows:"
awk 'BEGIN {
     FS=","
}
#These commands are used to check those lines which start with a vowel and then print those lines
/^[aeiou]/ {
     print "starts with a vowel: " $1
}'  ../Week\9/shopping.csv
awk 'BEGIN {
     FS=","
}
# These commands are used to check those line which start with a letter o and then print those lines
/^[o]/{
      print "starts with o: " $1
}' ../Week\9/shopping.csv   
awk 'BEGIN {
     FS=","
}
# These commands are used to check those lines which have more than two words and then print those lines
/[A-Z A-Z]/{
   print "has more than one word: " $1
}' ../Week\9/shopping.csv

awk 'BEGIN {
     FS=","
}
# These commands are used to check those lines which have a whole number price and then print those lines
!/\./{
   print "Whole number price: " $1
}' ../Week\9/shopping.csv
