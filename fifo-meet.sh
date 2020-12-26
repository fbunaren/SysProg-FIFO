#!/bin/bash
clear
cat logo.txt

echo "======================"
echo "Menu: "
echo "======================"
echo "1. Start Streaming"
echo "2. Watch Streamer"
echo "3. Configure Webcam"
echo "4. Configure Sound"
echo "5. About FIFO Meet"
echo 
echo "Choose 1-5:"
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

	*)
		echo "[ FIFO MEET]"
		echo "========================"
		echo "SSH Based Streaming Platform"
		echo ""
		echo "Copyright (C) FIFO Team"
	;;
esac
