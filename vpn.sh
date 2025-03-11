#!/bin/sh
ret=$(nmcli -t --fields NAME,DEVICE,STATE connection show --active)
if [[ $ret == *"tun0:tun0:activated"* ]]; then
    echo ""
else
    echo ""
fi
