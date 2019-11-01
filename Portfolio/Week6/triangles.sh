#!/bin/bash
area()
# There command area() area used to make a function
{
for (( i=1 ; i<=10 ; i++ ))
do
for (( j=1 ; j<=10 ; j++ ))
do
# here two for loops are runned one for base and the other for height
a=$((i*j/2))
# Tharea command area a mathematical calculation for calculating the area of a triangles 
echo "base: $i height: $j area: $a"
# Tharea command will print the values of base, height and area
done
done
}

area
