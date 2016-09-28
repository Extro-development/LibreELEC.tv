#!/bin/sh

sync
ifconfig wlan0 down
sleep 1
modprobe -r dhd
echo mem >/sys/power/state
sleep 3
modprobe dhd
sleep 1
ifconfig wlan0 up

exit 0
