#!/bin/bash
sudo dpkg --force-all -i myx11vnc.deb
sudo cp kiosk.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable kiosk.service
sudo systemctl start kiosk.service
sudo cp wpa_supplicant.conf /etc/wpa_supplicant/
sudo cp splash.png /usr/share/plymouth/themes/pix/splash.png
sudo reboot

