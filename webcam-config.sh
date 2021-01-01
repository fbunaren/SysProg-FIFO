#!/bin/bash
echo "==================="
echo "WEBCAM CONFIGURATION"
echo "Driver: uvcvideo"
echo "==================="

BIN=0

read -r -p "1. Set Fix Bandwidth (y/n)" FIX_BANDWIDTH
read -r -p "2. Restrict Frame Rate (y/n)" RESTRICT_FRAME_RATE

if [[ "$FIX_BANDWIDTH" == "y" ]] 
then
	BIN=$(( $BIN + 128 ))
else
	BIN=$(( $BIN - 128 ))	
fi

if [[ "$RESTRICT_FRAME_RATE" = "y" ]] 
then
	BIN=$(( $BIN + 512 ))
else
	BIN=$(( $BIN - 512 ))
fi

# Save Configuration
sudo rmmod uvcvideo
sudo modprobe uvcvideo quirks=$BIN

