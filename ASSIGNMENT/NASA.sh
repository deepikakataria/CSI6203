#!/bin/bash
GET_DESCRIPTION="yes"
PICTURES_DIR=~
DESCRIPTION_DIR=~
## This is a function to load a page and silently download the html file of the page
function get_page {
wget http://apod.nasa.gov/apod/ --quiet -O /tmp/apod.html
grep -m 1 jpg /tmp/apod.html | sed -e 's/<//' -e 's/>//' -e 's/.*=//' -e 's/"//g' -e 's/^/http:\/\/apod.nasa.gov\/apod\//' > /tmp/pic_url
}
## This function is used to print the Image Credit on the page 
function print_credit {
    credit=$(curl -s https://apod.nasa.gov/apod/ap$TODAY.html |
    sed -n '/redit/,/Explanation/{ /html>/d; s/<[^>]*>//g; p}' |
    sed -e 's/<[^>]*.//g; s/^.*>//g' |
    sed -e 's/Explanation//g' |
    sed -e 's/ Image Credit &//gi' |
    sed -e 's/Copyright//gi;s/Image Credit://gi')
    printf "Image Credit $credit\n"
}
## This function is used to print the title of the image on the page
function print_title {
name=$(curl -s https://apod.nasa.gov/apod/ap$TODAY.html |
grep '<title>' |
sed -e 's/<title>//g' |
sed -e 's/.*- //g')
printf "Title: $name\n"
}
## This function is used to print the explanation on the page
function print_content {
content=$(curl -s https://apod.nasa.gov/apod/ap$TODAY.html |
sed -n '/Explanation:/,/<center>/{ /html>/d; s/<[^>]*>/ /g; p}' |
sed -e 's/<[^>]*.//g' |
sed -e 's/^.*>//g') 
printf "$content\n"
}

## Main
# This takes the date from the user
TODAY=$1
if [ ${GET_DESCRIPTION} == "yes" ]; then
# Here we have called the function to print the image credit of the image posted on the date given by the user
print_credit
# Here we have called the function to print the title of the image posted on the date given by the user
print_title
# Here we have called the function to print the explanation of the image posted on the date given by the user
print_content 
# Here we have called the function to get the page and download the image from it and then rename it as the title of the image
get_page
PICURL='/bin/cat /tmp/pic_url'
wget --quiet $PICURL -O $PICTURES_DIR/${1}_apod.jpg
mv /home/student/${1}_apod.jpg /home/student/CSI6203/Assignment
for dir in "$@"
do 
mv "${1}_apod.jpg" "$name.jpg"
done
else
echo "ERROR MESSAGE- SITE CAN'T REACHED"
exit 1
fi