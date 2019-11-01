#!/bin/bash
sh  ./IPinfo.sh | sed -n 2p
sh  ./IPinfo.sh | sed -n 5p
# These commands will run the program Ipinfo.sh and will only print the 2 and 5 line of the output of the program 
