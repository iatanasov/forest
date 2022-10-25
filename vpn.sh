#!/bin/sh
# nmcli connection up RedHatGlobalVPN
ret=$(nmcli -t  --fields connection.id  connection show --active  RedHatGlobalVPN)
if [[ $ret == *"RedHatGlobalVPN"* ]]
then
    echo ""
else
    echo ""
fi
