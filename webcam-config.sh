#!/bin/bash
echo "==================="
echo "WEBCAM CONFIGURATION"
echo "Driver: uvcvideo"
echo "==================="

BIN = 0

read -p "1. Set Fix Bandwidth (y/n)" FIX_BANDWIDTH
read -p "2. Restrict Frame Rate (y/n)" RESTRICT_FRAME_RATE

if ["$FIX_BANDWIDTH" = "y"]; then
	
fi
