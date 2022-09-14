#!/bin/bash
#sudo du -hsx /var/* | sort -rh | head -1
PS3="Enter a chore number:"
while true; do
    select choice in ErrorLogFiles AddUser LatestLogin TopTenHomes TopTenVar Exit; do
        case $choice in
        ErrorLogFiles)
            sudo grep -i error /var/log/*
            break
            ;;
        AddUser)
            ./add_user.sh
            break
            ;;
        TopTenHomes)
            ./top10.sh home
            break
            ;;
        LatestLogin)
            last -10
            break
            ;;
        TopTenVar)
            ./top10.sh var
            break
            ;;
        Exit)
            exit 0
            break
            ;;
        esac
    done
done
