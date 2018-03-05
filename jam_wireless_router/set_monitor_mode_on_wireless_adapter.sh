#!/bin/bash -ex

sudo ifconfig ${wireless_adapter} down 

sudo iwconfig ${wireless_adapter} mode monitor

sudo ifconfig ${wireless_adapter} up 

iwconfig ${wireless_adapter} | grep Mode

