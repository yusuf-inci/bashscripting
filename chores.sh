#!/bin/bash
#sudo du -hsx /var/* | sort -rh | head -1
PS3="Enter a chore number."
while true; do
    select choice in ErrorLogFiles AddUser LatestLogin TopTenHomes Exit; do
        case $choice in
        Exit)
            exit 0
            break
            ;;
        esac
    done
done
