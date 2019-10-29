#!/bin/bash
area()
{
for (( i=1 ; i<=10 ; i++ ))
do
for (( j=1 ; j<=10 ; j++ ))
do
a=$((i*j/2))
echo "base: $i height: $j area: $a"
done
done
}

area
