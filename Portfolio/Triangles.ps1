for ($i=1; $i -le 10; $i++)
{
    for ($j=1; $j -le 10; $j++)
    {
## here two for loops are runned one for base and the other for height
     $a=$i*$j/2 
## This is a mathematical calculation for calculating the area of a triangles
     write-output "The area for a triangle with base: $i and height: $j is: $a"
## This command is used to print the output, the area of the triangle
    }
}