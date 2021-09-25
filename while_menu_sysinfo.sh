#!/bin/bash
cat << EOF
Enter following options
1. To find the system information
2. To find the disk usage in the system.
3. To find the spaced in the directory.
EOF
echo -e "Enter the option given to get required information"
read -r option

case $option in

    1 )
       echo "The host name : $HOSTNAME"
       ;;
    2 )
       echo "The disk usage in the system is"
       df -h
       ;;
    3 )
        if [ $(id -u) -eq 0 ]
        then
          echo "Space used is "
          du -sh /home/*
        else
          echo "The space used in the current directory is"
          du -sh $HOME
        fi
        ;;
     * )
       echo " You have entered the wrong option"

esac
