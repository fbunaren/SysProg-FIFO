#!/bin/bash
echo "==================="
echo "WEBCAM CONFIGURATION"
echo "Driver: uvcvideo"
echo "==================="

BIN=$(cat /sys/module/uvcvideo/parameters/quirks)
BIN=$(python3 -c "print(int('$BIN',16))")

read -r -p "1. Set Fix Bandwidth (y/n)" FIX_BANDWIDTH
read -r -p "2. Restrict Frame Rate (y/n)" RESTRICT_FRAME_RATE

if [[ "$FIX_BANDWIDTH" == "y" ]] 
then
	BIN=$(python3 -c "print(int('$BIN',16) + 128)")
else
	BIN=$(python3 -c "print(int('$BIN',16) - 128)")
fi

if [[ "$RESTRICT_FRAME_RATE" = "y" ]] 
then
	BIN=$(python3 -c "print(int('$BIN',16) + 512)")
else
	BIN=$(python3 -c "print(int('$BIN',16) - 512)")
fi

# Convert BIN to HEX
BIN=$(python3 -c "print(hex('$BIN'))")

# Save Configuration
sudo rmmod uvcvideo
sudo modprobe uvcvideo quirks=$BIN

