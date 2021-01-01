#!/bin/bash
#cd /home/user/fifo/SysProg-FIFO
cd "${0%/*}"
clear
cat logo.txt
echo SSH Based Streaming Platform

echo "======================"
echo "Menu: "
echo "======================"
echo "1. Start Streaming"
echo "2. Watch Streamer"
echo "3. Configure Webcam"
echo "4. Configure Sound"
echo "5. About FIFO Meet"
echo "6. Exit"
echo 
echo "Choose 1-6:"
read CHOICE

case $CHOICE in

	1)
		bash stream.sh
 	;;

	2)
		bash watch.sh
 	;;

	3)
		bash webcam-config.sh
	;;

        4)
		bash sound-config.sh
	;;

	5)
		echo "[ FIFO MEET]"
		echo "========================"
		echo "SSH Based Streaming Platform"
		echo ""
		echo "Copyright (C) FIFO Team"
	;;
	6)
		exit
	;;
esac
