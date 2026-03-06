#!/bin/bash

ip=$(ip a | grep "inet6" | awk '{print $2}' | grep "/64")

echo $ip > ipv6.file

hash=$(sha256sum ipv6.file | awk '{print $1}')

echo "***************************************************"
echo "IPv6 Address = " + $ip
echo ""
echo "Sha256 Hash = " + $hash
echo ""
echo "***************************************************"


