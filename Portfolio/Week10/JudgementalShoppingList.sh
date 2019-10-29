#!/bin/bash
#cat /home/student/CSI6203/Portfolio/Week9/shopping.csv
#!/bin/bash
awk 'BEGIN { FS=","; currency="$"; print "Item         | Quantity | Price |Total    | Comments "}
if ( $4>5 )
printf " %-12s |%9d |%c%05.2f | %c%05.2f| That's a bit expensive! Are you sure?\n ", $1, $2, currency, $3 ,currency, $2*$3
elif ( $2>5 )
printf " %-12s |%9d |%c%05.2f |%c%05.2f | Do you really need that many?\n ", $1, $2, currency, $3, currency, $2*$3
elif ( $4<3 )
printf " %-12s |%9d |%c%05.2f |%c%05.2f | Such a cheapstake!\n ", $1, $2, currency, $3, currency, $2*$3}'
