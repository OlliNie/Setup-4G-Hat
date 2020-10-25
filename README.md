# Setup-4G-Hat
## dependincies
libqmi-utils (https://www.freedesktop.org/wiki/Software/libqmi/)
- Used to talk with 4g hat (turn on cell antenna etc)
udhcpc(https://udhcp.busybox.net/README.udhcpc)
- Used to assign IP addresses
## Intalling dependencies
sudo apt install libqmi-utils && udhcpc
## Requirements
usb cable from 4g hat to usb inport of raspi required.   This will allow cdc-wdm0 to populte in..
