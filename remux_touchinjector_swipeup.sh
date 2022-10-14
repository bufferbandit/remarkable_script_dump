#!/bin/sh

# using touchinjector to switch remix instead of genie 
# because touchinjector recognizes gestures better

if [[ $(journalctl -u remux --no-pager|grep -P \
            "(DISPLAYED LAUNCHER FOR|CURRENT APP IS)"|tail -1) == *"CURRENT APP IS"* ]] ; then
    echo hide > /run/remux.api
    echo "[*] launcher shown";
else
    echo show > /run/remux.api
    echo "[*] laucher hidden";
fi
