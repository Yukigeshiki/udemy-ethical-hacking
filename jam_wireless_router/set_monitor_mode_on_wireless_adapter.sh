#!/bin/bash -ex

sudo ifconfig ${wireless_adapter} down 

sudo macchanger -r ${wireless_adapter} | grep "New MAC"

sudo iwconfig ${wireless_adapter} mode monitor

sudo ifconfig ${wireless_adapter} up 

iwconfig ${wireless_adapter} | grep Mode

