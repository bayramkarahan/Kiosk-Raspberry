#!/bin/bash
xset s noblank
xset s off
xset -dpms
killall pcmanfm
killall lxpanel
unclutter &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

/usr/bin/chromium-browser --incognito --noerrdialogs --disable-infobars --kiosk /home/pi/a.html &

while true; do
   xdotool keydown ctrl+Tab; xdotool keyup ctrl+Tab;
   sleep 10
done

