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
echo 
echo "Choose 1-4:"
read CHOICE

case $CHOICE in

	1)
		bash stream.sh
 	;;

	2)
		bash watch.sh
 	;;

	3)
		echo "===================="
		echo "WEBCAM CONFIGURATION"
		echo "===================="
	;;

        4)
		echo "==================="
                echo "SOUND CONFIGURATION"
                echo "==================="
	;;

	*)
		echo "OTHERS"
	;;
esac
