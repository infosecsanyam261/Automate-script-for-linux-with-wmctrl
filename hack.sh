#!/bin/bash
wmctrl -s 0
sleep 3
exec /root/shell/terminator-pentest.sh &
sleep 4
exec /root/shell/firefox-pentest.sh &
sleep 3
exec /root/shell/zim.sh &
sleep 8
wmctrl -s 1
sleep 4
exec /root/shell/terminator-research.sh &
sleep 3
exec /root/shell/firefox-research.sh &
sleep 3
exec /root/shell/chrome.sh &
sleep 8
wmctrl -s 0 #You will be left at this workspace when the script finishes executing
sleep 2
exec /root/shell/audio.sh &
sleep 2
exec /root/shell/burp.sh &
sleep 10

