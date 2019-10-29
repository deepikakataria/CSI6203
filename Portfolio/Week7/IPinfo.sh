#!/bin/bash
#get info about networking
net_info="$(ifconfig)"

addresses=$(echo "$net_info" | sed -n '/inet / {
s/inet/IP Address:/
s/netmask/\n\t\tSubnet Mask:/
s/broadcast/\n\t\tBroadcast Address:/
p
}')

#format output
echo -e "IP Addresses on this PC are:\n$addresses"
