#!/bin/bash
sed -i 's/the area of a triangle with base/base/g; s/and height/height/g; s/is/area/g' /home/student/CSI6203/Portfolio/Week6/triangles.sh
"/home/student/CSI6203/Portfolio/Week6/triangles.sh"
echo -e "Total Area is equal to " 
"/home/student/CSI6203/Portfolio/Week6/triangles.sh" | awk 'BEGIN{sum=0}{sum=sum+$6}END{print sum}' #echo -e "Total area is equal to" 
