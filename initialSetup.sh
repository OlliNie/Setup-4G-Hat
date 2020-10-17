#!/bin/sh


#sudo apt update -y && sudo apt full-upgrade -y
#sudo apt-get install libqmi-utils #used to communicate with 4g hat
#sudo apt-get install expect  
#disable console on serial port, this is needed to talk to  4g hat
#sudo sed -i 's/console=serial0,115200/''/' /boot/cmdline.txt
#sudo sed -i "s/ \+/ /g;s/^ //;s/ $//" /boot/cmdline.txt
#sudo touch /boot/ssh #enable ssh 
sudo touch /home/pi/startupScript.sh
sudo chmod +x+w /home/pi/startupScript.sh
(crontab -u pi -l; echo "@reboot /bin/bash /home/pi/startupScript.sh" ) | crontab -u pi - 
#sudo reboot
