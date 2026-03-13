#!/bin/bash


while true; do
OPTION1=$(whiptail --title "Menu" --menu "Choose an option" 25 78 16 \
"Proceed" "Return to the main menu." \
"Exit" "Add a user to the system." 3>&1 1>&2 2>&3)

if [ "$OPTION1" = "Proceed" ]; then
        :
else
        exit 0
fi

OPTION2=$(whiptail --title "Command Selection" --menu "Choose an option" 25 78 16 \
"Grep" "Use grep" \
"Awk" "Use awk" 3>&1 1>&2 2>&3)

if [ "$OPTION2" = "Grep" ]; then
        FILENAME=$(whiptail --inputbox "Filename to grep:" 25 78 \
        --title "File Name" 3>&1 1>&2 2>&3)

        OUTPUT=$(grep "e" "$FILENAME")

        whiptail --title "$FILENAME Output" --msgbox "$OUTPUT" 25 78 16 3>&1 1>&2 2>&3
elif [ "$OPTION2" = "Awk" ]; then
        FILENAME=$(whiptail --inputbox "Filename to Awk:" 25 78 \
        --title "File Name" 3>&1 1>&2 2>&3)

        OUTPUT=$(awk -F',' '{print $2}' "$FILENAME")

        whiptail --title "$FILENAME Output" --msgbox "$OUTPUT" 25 78 3>&1 1>&2 2>&3
else
        exit 0
fi

done
