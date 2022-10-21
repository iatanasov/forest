#!/bin/sh
# nmcli connection up RedHatGlobalVPN
ret=$(nmcli -t  --fields connection.id  connection show  RedHatGlobalVPN)
ret=$?
if [ $ret -eq 0 ]
then
    echo ""
else
    echo ""
fi
