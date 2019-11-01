#!/bin/bash
#get info about networking
net_info="$(ifconfig)"

addresses=$(echo "$net_info" | sed -n '/inet / {
s/inet/IP Address:/
s/netmask/\n\t\tSubnet Mask:/
s/broadcast/\n\t\tBroadcast Address:/
# These s command is used to substitute the output text like for example to substitute inet into IP Address
p
# This p command is used to print
}')

#format output
echo -e "IP Addresses on this PC are:\n$addresses"
