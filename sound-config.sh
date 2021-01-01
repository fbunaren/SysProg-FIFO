#!/bin/bash
echo "==================="
echo "SOUND CONFIGURATION"
echo "==================="
echo "1. Enable Intel HD audio interface."
echo "2. Disable Intel HD audio interface."
echo ""
echo "3. Automatic power-saving (10 seconds)"
echo "4. Disable power-saving"

echo ""
echo "Choose 1-4:"
read SOUND_CHOICE

case $SOUND_CHOICE in

        1)
                sudo rmmod snd_hda_intel
		sudo modprobe snd_hda_intel enable=Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y,Y

        ;;

        2)
                sudo rmmod snd_hda_intel
                sudo modprobe snd_hda_intel enable=N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N,N
        ;;

        3)
                sudo rmmod snd_hda_intel
		sudo modprobe snd_hda_intel power_save=10
        ;;

        4)
		sudo rmmod snd_hda_intel
                sudo modprobe snd_hda_intel power_save=0
        ;;

esac

