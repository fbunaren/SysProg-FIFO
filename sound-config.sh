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
                echo 1 > /sys/module/snd_hda_intel/parameters/enable
        ;;

        2)
                echo 0 > /sys/module/snd_hda_intel/parameters/enable
        ;;

        3)
                echo 10 > /sys/module/snd_hda_intel/parameters/power_save
        ;;

        4)
                echo 0 > /sys/module/snd_hda_intel/parameters/power_save
        ;;

esac

