#!/bin/bash
"/home/student/CSI6203/Portfolio/Week6/triangles.sh"
#This command is used to run  the triangles.sh from Week6
"/home/student/CSI6203/Portfolio/Week6/triangles.sh" | awk 'BEGIN{print "Total Area:"}{sum=sum+$6}END{print sum}'
#This command will take the input from trianfles.sh and will do the sum of areas and then print the sum

