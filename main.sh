#!/bin/bash
wmctrl -s 0 #Switches to workspace 0 [workspaces are numbered from 0]
sleep 3
gnome-terminal --tab-with-profile=office #Say you want a terminal in the 0th workspace
sleep 3
echo "This script is about to run firefox script."
nautilus
exec /root/shell/firefox.sh &  #Maybe a file browser too
sleep 10 #Windows take some time to open. If you switch immediately, they'll open up in wrong workspaces. May have to change the value 2.
wmctrl -s 1 #Switches to workspace 1
gnome-terminal --tab-with-profile=research
sleep 3
echo "This script is about to run burp script."
exec /root/shell/burp.sh &
sleep 2
echo "This script is about to run chrome script."
exec /root/shell/chrome.sh &
sleep 15 
wmctrl -s 0 #You will be left at this workspace when the script finishes executing
