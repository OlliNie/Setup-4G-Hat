#!/bin/sh

SET_ONLINE_RESPONSE=$(sudo qmicli -d /dev/cdc-wdm0 --dms-set-operating-mode='online')
if [[ $SET_ONLINE_RESPONSE == *"successfully"* ]]; then
sudo ip link set wwan0 down		# change the wwan0 to the one returned above if different
echo 'Y' | sudo tee /sys/class/net/wwan0/qmi/raw_ip
sudo ip link set wwan0 up
sudo qmicli -p -d /dev/cdc-wdm0 --device-open-net='net-raw-ip|net-no-qos-header' --wds-start-network="apn='internet',ip-type=4" --client-no-release-cid
fi
